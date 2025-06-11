// Fancy text animation script
document.addEventListener('DOMContentLoaded', function() {
    const fancyTextElements = document.querySelectorAll('.elementor-widget-cmsmasters-fancy-text__fancy-text');
    
    fancyTextElements.forEach(function(element) {
        // Get the words from data-settings or use default words
        const words = ['whale', 'institution'];
        let currentIndex = 0;
        
        // Create the text elements
        element.innerHTML = '';
        words.forEach(function(word, index) {
            const span = document.createElement('span');
            span.className = 'fancy-text-words' + (index === 0 ? ' active' : '');
            span.textContent = word;
            element.appendChild(span);
        });
        
        // Add cursor
        const cursor = document.createElement('span');
        cursor.className = 'typed-cursor';
        cursor.textContent = '|';
        element.appendChild(cursor);
        
        // Animation function
        function animateText() {
            const spans = element.querySelectorAll('.fancy-text-words');
            spans[currentIndex].classList.remove('active');
            currentIndex = (currentIndex + 1) % words.length;
            spans[currentIndex].classList.add('active');
        }
        
        // Start animation
        setInterval(animateText, 2000);
    });
}); 