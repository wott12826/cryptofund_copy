// Fancy text typing animation script
document.addEventListener('DOMContentLoaded', function() {
    const fancyTextElements = document.querySelectorAll('.elementor-widget-cmsmasters-fancy-text__fancy-text');
    
    fancyTextElements.forEach(function(element) {
        // Get the words from data-settings or use default words
        const words = ['whale', 'institution'];
        let currentWordIndex = 0;
        let currentCharIndex = 0;
        let isDeleting = false;
        let isWaiting = false;
        
        // Clear the element
        element.innerHTML = '';
        
        // Add cursor
        const cursor = document.createElement('span');
        cursor.className = 'typed-cursor';
        cursor.textContent = '|';
        element.appendChild(cursor);
        
        // Create text span
        const textSpan = document.createElement('span');
        textSpan.className = 'typing-text';
        element.insertBefore(textSpan, cursor);
        
        function typeText() {
            const currentWord = words[currentWordIndex];
            
            if (isWaiting) {
                setTimeout(typeText, 1500); // Wait before starting to delete
                isWaiting = false;
                isDeleting = true;
                return;
            }
            
            if (isDeleting) {
                // Remove characters
                textSpan.textContent = currentWord.substring(0, currentCharIndex - 1);
                currentCharIndex--;
                
                if (currentCharIndex === 0) {
                    isDeleting = false;
                    currentWordIndex = (currentWordIndex + 1) % words.length;
                    setTimeout(typeText, 500); // Pause before typing next word
                    return;
                }
            } else {
                // Add characters
                textSpan.textContent = currentWord.substring(0, currentCharIndex + 1);
                currentCharIndex++;
                
                if (currentCharIndex === currentWord.length) {
                    isWaiting = true;
                    setTimeout(typeText, 2000); // Wait at end of word
                    return;
                }
            }
            
            // Continue typing/deleting
            const speed = isDeleting ? 50 : 75; // Deleting is faster
            setTimeout(typeText, speed);
        }
        
        // Start the animation
        setTimeout(typeText, 500); // Initial delay
    });
}); 