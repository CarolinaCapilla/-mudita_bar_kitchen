import Swal from 'sweetalert2'

const paymentButton = document.querySelector('.payment-modal')

const paymentButtonPopOut = () => {
  paymentButton.addEventListener('click', (event) => {
    Swal.fire({
      title: 'Error!',
      text: 'Do you want to continue',
      icon: 'error',
      confirmButtonText: 'Cool'
    });
  });
}

export { paymentButtonPopOut }