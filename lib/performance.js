var coinzilla_performance = (function() {
    var coinzilla_performance = {
        push: function(args){
            load["initialized"] = function (args) {
                return new this(args);
            };
            load["initialized"](args);
        }
    };
    var util = {
            getCookie: function(name) {
                var cookieMatch = document.cookie.match(new RegExp(name + '=([^;]+)'));
                if(cookieMatch) {
                    return decodeURIComponent(cookieMatch[1]);
                }else return null;
            },
            setCookie: function(name, value, days) {
                if (days === null || typeof days == 'undefined') {
                    days = null;
                } else {
                    var date;
                    if (typeof days == 'number') {
                        date = new Date();
                        date.setTime(date.getTime() + days * 24 * 60 * 60 * 1e3);
                    } else {
                        date = days;
                    }
                    days = '; expires=' + date.toUTCString();
                }
                var domain = window.location.hostname;
                document.cookie = name + '=' + encodeURIComponent(value) + days + ';domain=.'+domain+'; path=/';
            },
            setLocalStorage: function(name, value){
                localStorage.setItem(name, value);
            },
            getLocalStorage: function(name){
                if (localStorage.getItem(name)) return localStorage.getItem(name);
            },
            remove: function(name){
                var domain = window.location.hostname;
                if(util.isCookieEnabled()) document.cookie = name+"=; expires=Thu, 01 Jan 1970 00:00:00 UTC;domain=."+domain+"; path=/;";
                if(util.isLocalStorageEnabled()) localStorage.removeItem(name);
            },
            isCookieEnabled: function(){
                return navigator.cookieEnabled;
            },
            isLocalStorageEnabled: function () {
                return typeof localStorage !== 'undefined';
            },
            parseQuery: function () {
                var vars = {};
                var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi,
                    function (m, key, value) {
                        vars[key] = value;
                    });
                return vars;
            }
        },
        load = function (args,content) {
            this.construct(args,content)
        };

    load.prototype = {
        construct: function(args){
            this.saveParams(util.parseQuery());
            if(typeof args.event !== "undefined" ) {
                var params = this.getParams();
                if(!params) return false;
                args.zone = params.utm_term;
                args.campaign = params.utm_campaign;
                if (args.event === "register") {
                    if(params.registered === 1) return;
                    this.exec(args);
                    params.registered = 1;
                    this.saveParams(params);

                }
                if (args.event === "sale") {
                    this.exec(args);
                    util.remove("coinzilla_performance");
                }
            }
        },
        exec: function (args) {
            var _url = 'https://request-global.czilladx.com/serve/lead.php?z='+args.zone+'&c='+args.campaign+'&e='+args.event;
            var xhr = new XMLHttpRequest();
            xhr.withCredentials = true;
            xhr.open('GET', _url);
            xhr.send();

        },
        saveParams: function (data) {
            if(typeof data !== "undefined") {
                if(typeof data.utm_source === "undefined") return false;
                if(typeof  data.utm_campaign === "undefined") return false;
                if(typeof data.utm_term === "undefined") return false;
                if(typeof data.registered === 'undefined') data.registered = 0;
                if (data.utm_source === "coinzilla") {
                    if (util.isLocalStorageEnabled()) {
                        util.setLocalStorage("coinzilla_performance", JSON.stringify(data));
                    }
                    if (util.isCookieEnabled()) {
                        util.setCookie("coinzilla_performance", JSON.stringify(data), 28);
                    }
                }
            }else return false;
        },
        getParams: function () {
            var params = "";
            try {
                if (util.isLocalStorageEnabled()) {
                    params = JSON.parse(util.getLocalStorage("coinzilla_performance"));
                }
            }catch (e) {params = "";}
            try {
                if (util.isCookieEnabled()) {
                    if (typeof params !== "object")
                        params = JSON.parse(util.getCookie("coinzilla_performance"));
                }
            }catch (e) {params = "";}
            if(typeof params === 'undefined') return false;
            if(typeof params !== "object") return false;
            if(params === null) return false;
            if(typeof params.utm_source !== 'undefined'){
                if(params.utm_source !== "coinzilla") return false;
            }else return false;
            if(typeof params.utm_campaign === "undefined") return false;
            if(typeof params.utm_term === "undefined") return false;

            return params;
        }

    };
    if(typeof window.coinzilla_performance !== "undefined"){
        for(var i=0; i<window.coinzilla_performance.length;i++){
            coinzilla_performance.push(window.coinzilla_performance[i]);
        }
    }
    return coinzilla_performance;
})();