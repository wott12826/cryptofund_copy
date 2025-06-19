// Modal functionality for checkout page
function showModal() {
    document.getElementById('orderModal').style.display = 'block';
}

function closeModal() {
    document.getElementById('orderModal').style.display = 'none';
}

// Close modal when clicking outside of it
window.onclick = function(event) {
    const modal = document.getElementById('orderModal');
    if (event.target === modal) {
        modal.style.display = 'none';
    }
}

// Add event listener to the Place Order button
document.addEventListener('DOMContentLoaded', function() {
    const placeOrderButton = document.getElementById('place_order');
    if (placeOrderButton) {
        placeOrderButton.addEventListener('click', function(e) {
            e.preventDefault(); // Prevent form submission
            showModal();
        });
    }
}); 