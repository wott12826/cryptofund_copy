# PowerShell script to add modal functionality to checkout.html

$content = Get-Content checkout/checkout.html -Raw

# Modal JavaScript to add
$modalJS = @"

		// Modal functionality
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

		// Field validation functionality
		function checkAllFieldsFilled() {
			const requiredFields = [
				'billing_first_name',
				'billing_last_name', 
				'billing_country',
				'billing_state',
				'billing_city',
				'billing_address_1',
				'billing_phone',
				'billing_email'
			];
			
			const placeOrderButton = document.getElementById('place_order');
			
			// Check if all required fields have values
			const allFilled = requiredFields.every(fieldId => {
				const field = document.getElementById(fieldId);
				return field && field.value.trim() !== '';
			});
			
			// Enable/disable button based on validation
			if (placeOrderButton) {
				if (allFilled) {
					placeOrderButton.disabled = false;
					placeOrderButton.style.opacity = '1';
					placeOrderButton.style.cursor = 'pointer';
				} else {
					placeOrderButton.disabled = true;
					placeOrderButton.style.opacity = '0.5';
					placeOrderButton.style.cursor = 'not-allowed';
				}
			}
		}

		// Add event listeners to all required fields
		function setupFieldValidation() {
			const requiredFields = [
				'billing_first_name',
				'billing_last_name', 
				'billing_country',
				'billing_state',
				'billing_city',
				'billing_address_1',
				'billing_phone',
				'billing_email'
			];
			
			requiredFields.forEach(fieldId => {
				const field = document.getElementById(fieldId);
				if (field) {
					field.addEventListener('input', checkAllFieldsFilled);
					field.addEventListener('change', checkAllFieldsFilled);
					field.addEventListener('blur', checkAllFieldsFilled);
				}
			});
		}

		// Add event listener to the Place Order button
		document.addEventListener('DOMContentLoaded', function() {
			const placeOrderButton = document.getElementById('place_order');
			if (placeOrderButton) {
				// Initially disable the button
				placeOrderButton.disabled = true;
				placeOrderButton.style.opacity = '0.5';
				placeOrderButton.style.cursor = 'not-allowed';
				
				// Add click event listener
				placeOrderButton.addEventListener('click', function(e) {
					e.preventDefault(); // Prevent form submission
					showModal();
				});
			}
			
			// Setup field validation
			setupFieldValidation();
			
			// Initial check
			setTimeout(checkAllFieldsFilled, 100);
		});
"@

# Modal HTML to add
$modalHTML = @"

		<!-- Modal HTML -->
		<div id="orderModal" class="modal">
			<div class="modal-content">
				<h2>Thank You!</h2>
				<p>Thank you for your order, we'll contact you soon.</p>
				<button class="modal-close" onclick="closeModal()">Close</button>
			</div>
		</div>

		<!-- Modal Styles -->
		<style>
			.modal {
				display: none;
				position: fixed;
				z-index: 10000;
				left: 0;
				top: 0;
				width: 100%;
				height: 100%;
				background-color: rgba(0, 0, 0, 0.5);
				animation: fadeIn 0.3s ease-in-out;
			}

			.modal-content {
				background-color: #fff;
				margin: 15% auto;
				padding: 40px;
				border-radius: 10px;
				width: 90%;
				max-width: 500px;
				text-align: center;
				position: relative;
				animation: slideIn 0.3s ease-out;
				box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
			}

			.modal h2 {
				color: #333;
				margin-bottom: 20px;
				font-size: 24px;
				font-weight: 600;
			}

			.modal p {
				color: #666;
				font-size: 16px;
				line-height: 1.5;
				margin-bottom: 30px;
			}

			.modal-close {
				background: #007cba;
				color: white;
				border: none;
				padding: 12px 30px;
				border-radius: 5px;
				cursor: pointer;
				font-size: 16px;
				font-weight: 500;
				transition: background-color 0.3s ease;
			}

			.modal-close:hover {
				background: #005a87;
			}

			@keyframes fadeIn {
				from { opacity: 0; }
				to { opacity: 1; }
			}

			@keyframes slideIn {
				from { 
					transform: translateY(-50px);
					opacity: 0;
				}
				to { 
					transform: translateY(0);
					opacity: 1;
				}
			}

			@media (max-width: 768px) {
				.modal-content {
					margin: 20% auto;
					padding: 30px 20px;
					width: 95%;
				}
			}
		</style>
"@

# Create the replacement string
$replacement = $modalJS + "`n		</script>" + $modalHTML

# Replace the closing script tag with modal functionality
$content = $content -replace '</script>', $replacement

# Save the modified content
$content | Set-Content checkout/checkout.html -Encoding UTF8

Write-Host "Modal functionality and field validation have been added to checkout.html" 