import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  toggle = () => {
    if (this.cart.style.display === 'block') {
      this.cart.style.display = 'none'
    } else {
      this.cart.style.display = 'block'
    }
  }

  get cart () {
    return document.getElementById('cart')
  }
}
