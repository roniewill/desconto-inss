import { Controller } from "@hotwired/stimulus"

import Inputmask from "inputmask";

export default class extends Controller {

  connect() {
    const phone_field = document.getElementsByClassName("phone-mask")
    const cep_field = document.getElementsByClassName("cep-mask")
    const salary_field = document.getElementsByClassName("salary-mask").value
    const cpf_field = document.getElementsByClassName("cpf-mask")

    const phone_mask = new Inputmask("(99) 9 9999-9999")
    const cep_mask = new Inputmask("99999-999")
    const salary_mask = new Inputmask('decimal', {integerDigits: 4, rightAlign: false} )
    const cpf_mask = new Inputmask("999.999.999-99")

    phone_mask.mask(phone_field)
    cep_mask.mask(cep_field)
    salary_mask.mask(salary_field)
    cpf_mask.mask(cpf_field)
  }
}
