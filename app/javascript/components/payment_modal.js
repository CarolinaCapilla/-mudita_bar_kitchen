import Swal from 'sweetalert2'

const paymentButton = document.querySelector('.payment-modal')

function changeClass () {
  const paymentStatus = document.getElementById('payment')
  paymentStatus.classList.replace('in-progress', 'completed')
  const paymentIcon = document.getElementById('payment-icon')
  paymentIcon.classList.replace('fa-sync-alt', 'fa-check')
  const enjoyStatus = document.getElementById('enjoy')
  enjoyStatus.classList.add('completed')
  const enjoyIcon = document.getElementById('enjoyIcon')
  enjoyIcon.classList.replace('fa-times-circle','fa-check')
  document.getElementById('confirmation-title').innerHTML = 'Knock Knock, your pizza\'s here 🍕🎉'
};

function paymentButtonPopOut() {
  if (paymentButton != null) {
    paymentButton.addEventListener('click', (event) => {
      Swal.fire({
        title: 'Card details confirmed',
        text: 'Payment completed',
        icon: 'success',
        confirmButtonText: 'OK',
        timer: 5000,
        onClose: () => {
          changeClass();
        }
      });
    });
  }
}


export { paymentButtonPopOut }