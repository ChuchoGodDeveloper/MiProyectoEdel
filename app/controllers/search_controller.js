// app/javascript/controllers/search_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "form"]
  static values = { 
    url: String,
    delay: { type: Number, default: 150 } // Delay más corto para sensación inmediata
  }

  connect() {
    this.timeout = null
    // Guardar referencia al elemento que tenía foco
    this.lastFocusPosition = 0
  }

  search() {
    // Guardar posición del cursor antes de enviar
    if (this.inputTarget === document.activeElement) {
      this.lastFocusPosition = this.inputTarget.selectionStart
    }

    // Limpiar timeout anterior
    clearTimeout(this.timeout)
    
    // Programar nueva búsqueda
    this.timeout = setTimeout(() => {
      this.submitForm()
    }, this.delayValue)
  }

  submitForm() {
    // Enviar el formulario
    this.formTarget.requestSubmit()
    
    // Programar restauración del foco después de que Turbo actualice
    setTimeout(() => {
      this.restoreFocus()
    }, 50)
  }

  restoreFocus() {
    // Asegurar que el input mantenga el foco
    if (!this.inputTarget) return
    
    this.inputTarget.focus()
    
    // Restaurar posición del cursor
    const currentLength = this.inputTarget.value.length
    const newPosition = Math.min(this.lastFocusPosition, currentLength)
    this.inputTarget.setSelectionRange(newPosition, newPosition)
    
    // Pequeño timeout adicional para Turbo Navigation
    setTimeout(() => {
      if (this.inputTarget && this.inputTarget !== document.activeElement) {
        this.inputTarget.focus()
        this.inputTarget.setSelectionRange(newPosition, newPosition)
      }
    }, 100)
  }
}