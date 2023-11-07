import { Controller } from "@hotwired/stimulus"

import AutoNumeric from 'autonumeric'

export default class extends Controller {
  static targets = [ 'salary', 'inss' ]

  connect() {
    const autoNumericOptionsVND = {
      digitGroupSeparator        : '.',
      decimalCharacter           : ',',
      decimalCharacterAlternative: ',',
      currencySymbolPlacement    : AutoNumeric.options.currencySymbolPlacement.suffix,
      decimalPlaces              : 2,
      selectNumberOnly           : true,
      unformatOnSubmit           : true
    }

    new AutoNumeric(this.salaryTarget, autoNumericOptionsVND)
    new AutoNumeric(this.inssTarget, autoNumericOptionsVND)
  }

  setInssDiscount () {
    let inssDiscount = this.inssCalculation(this.salary())
    console.log("INSS Discount: " + inssDiscount)
    AutoNumeric.getAutoNumericElement(this.inssTarget).set(inssDiscount)
    console.log("INSS : " + this.inssTarget.value)
  }

  unformatFields () {
    AutoNumeric.getAutoNumericElement(this.salaryTarget).formUnformat()
    AutoNumeric.getAutoNumericElement(this.inssTarget).formUnformat()
  }

  salary () {
    return AutoNumeric.getAutoNumericElement(this.salaryTarget).getNumber()
  }

  inss () {
    return AutoNumeric.getAutoNumericElement(this.inssTarget).getNumber()
  }


  // INSS CALCULATION
  inssCalculation (salary) {
    if (salary <= 1045.00) {
      return this.firstTrack(salary)
    } else if (salary >= 1045.01 && salary <= 2089.60){
      return this.secondTrack(salary)
    } else if (salary >= 2089.61 && salary <= 3134.40) {
      return this.thirdTrack(salary)
    } else if (salary >= 3134.41 && salary <= 6101.06) {
      return this.fourthTrack(salary)
    } else {
      `Sorry, ${salary} is out from track.`
    }
  }

  firstTrack(salary){
    console.log("First Track: " + salary * 0.075)
    return salary * 0.075
  }

  secondTrack(salary){
    let track = 1045.00 * 0.075
    return ((salary - 1045.00) * 0.09) + track
  }

  thirdTrack(salary){
    let track = 1045.00 * 0.075
    let track2 = (2089.60 - 1045.00) * 0.09
    return ((salary - 2089.60) * 0.12) + track + track2
  }

  fourthTrack(salary){
    let track = 1045.00 * 0.075
    let track2 = (2089.60 - 1045.00) * 0.09
    let track3 = (3134.40 - 2089.60) * 0.12
    return ((salary - 3134.40) * 0.14) + track3 + track2 + track
  }
}
