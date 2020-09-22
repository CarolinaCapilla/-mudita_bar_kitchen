import Swal from 'sweetalert2'

const paymentButton = document.querySelector('.payment-modal')

const paymentButtonPopOut = () => {
  if (paymentButton != null){
    paymentButton.addEventListener('click', (event) => {
      Swal.fire({
        title: 'Card details confirmed',
        text: 'Payment completed',
        icon: 'success',
        confirmButtonText: 'OK'
      });
    });
  }
}

export { paymentButtonPopOut }