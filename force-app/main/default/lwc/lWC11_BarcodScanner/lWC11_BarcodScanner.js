import { LightningElement, track } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { getBarcodeScanner } from 'lightning/mobileCapabilities';

export default class LWC11_BarcodScanner extends LightningElement {
  sessionScanner;
  @track scannedBarcodes;

  connectedCallback() {
      this.sessionScanner = getBarcodeScanner();
  }

  beginScanning() {
      // Reset scannedBarcodes before starting new scanning session
      this.scannedBarcodes = [];

      // Make sure BarcodeScanner is available before trying to use it
      if (this.sessionScanner != null && this.sessionScanner.isAvailable()) {
          const scanningOptions = {
              barcodeTypes: [this.sessionScanner.barcodeTypes.QR],
              instructionText: 'Scan barcodes — Click ✖︎ when done',
              successText: 'Successful scan.'
          };
          this.sessionScanner.beginCapture(scanningOptions)
          .then((scannedBarcode) => {
              this.processScannedBarcode(scannedBarcode);
              this.continueScanning();
          })
          .catch((error) => {
              this.processError(error);
              this.sessionScanner.endCapture();
          })
      }
      else {
          console.log("BarcodeScanner unavailable. Non-mobile device?");
      }
  }

  async continueScanning() {
      // Pretend to do some work; see timing note below.
      await new Promise((resolve) => setTimeout(resolve, 1000));
      
      this.sessionScanner.resumeCapture()
      .then((scannedBarcode) => {
          this.processScannedBarcode(scannedBarcode);
          this.continueScanning();
      })
      .catch((error) => {
          this.processError(error);
          this.sessionScanner.endCapture();
      })
  }

  processScannedBarcode(barcode) {
      // Do something with the barcode scan value:
      // - look up a record
      // - create or update a record
      // - parse data and put values into a form
      // - and so on; this is YOUR code
      console.log(JSON.stringify(barcode));
      this.scannedBarcodes.push(barcode);
  }

  processError(error) {
      // Check to see if user ended scanning
      if (error.code == 'userDismissedScanner') {
          console.log('User terminated scanning session via Cancel.');
      }
      else {
          console.error(error);
      }
  }

  get scannedBarcodesAsString() {
      return this.scannedBarcodes.map(barcodeResult => {
          return barcodeResult.value;
      }).join('\n\n');
  }

}