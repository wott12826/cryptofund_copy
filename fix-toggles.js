// Fix for CMSMasters Toggles (Accordion)
(function() {
    'use strict';
    
    // Wait for DOM to be ready
    function initToggles() {
        const toggleTitles = document.querySelectorAll('.elementor-widget-cmsmasters-toggles__title');
        
        if (toggleTitles.length === 0) {
            // If toggles not found, try again after a short delay
            setTimeout(initToggles, 100);
            return;
        }
        
        console.log('Found', toggleTitles.length, 'toggle elements');
        
        toggleTitles.forEach(function(title) {
            // Remove any existing event listeners
            const newTitle = title.cloneNode(true);
            title.parentNode.replaceChild(newTitle, title);
            
            newTitle.addEventListener('click', function(e) {
                e.preventDefault();
                e.stopPropagation();
                
                console.log('Toggle clicked:', this.querySelector('.elementor-widget-cmsmasters-toggles__title-text').textContent);
                
                const isActive = this.classList.contains('active-toggle');
                const contentId = this.getAttribute('aria-controls');
                const content = document.getElementById(contentId);
                
                // Close all other toggles
                toggleTitles.forEach(function(otherTitle) {
                    if (otherTitle !== newTitle) {
                        otherTitle.classList.remove('active-toggle');
                        otherTitle.setAttribute('aria-expanded', 'false');
                        const otherContentId = otherTitle.getAttribute('aria-controls');
                        const otherContent = document.getElementById(otherContentId);
                        if (otherContent) {
                            otherContent.style.display = 'none';
                        }
                    }
                });
                
                // Toggle current toggle
                if (isActive) {
                    newTitle.classList.remove('active-toggle');
                    newTitle.setAttribute('aria-expanded', 'false');
                    if (content) {
                        content.style.display = 'none';
                    }
                } else {
                    newTitle.classList.add('active-toggle');
                    newTitle.setAttribute('aria-expanded', 'true');
                    if (content) {
                        content.style.display = 'block';
                    }
                }
            });
            
            // Add hover effect
            newTitle.addEventListener('mouseenter', function() {
                if (!this.classList.contains('active-toggle')) {
                    this.style.color = '#ff00f5';
                }
            });
            
            newTitle.addEventListener('mouseleave', function() {
                if (!this.classList.contains('active-toggle')) {
                    this.style.color = '';
                }
            });
        });

        // NEW: Click on trigger emulates click on title
        document.querySelectorAll('.elementor-widget-cmsmasters-toggles__trigger').forEach(function(trigger) {
            trigger.addEventListener('click', function(e) {
                e.preventDefault();
                e.stopPropagation();
                const title = this.closest('.elementor-widget-cmsmasters-toggles__title');
                if (title) title.click();
            });
        });
    }
    
    // Initialize when DOM is ready
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', initToggles);
    } else {
        initToggles();
    }
    
    // Also try to initialize after a delay in case scripts load later
    setTimeout(initToggles, 1000);
    setTimeout(initToggles, 2000);
    
})(); 