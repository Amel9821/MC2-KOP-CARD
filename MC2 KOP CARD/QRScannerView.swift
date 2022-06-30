//
//  QRScannerView.swift
//  MC2 KOP CARD
//
//  Created by Amalia . on 30/06/22.
//

import SwiftUI
import CodeScanner

struct QRScannerView: View {
    @State private var isPresentingScanner = false
    @State private var scannedCode: String = "Scan a QR code to get started."
    
    var scannerSheet : some View {
        CodeScannerView(
            codeTypes: [.qr],
            completion: { result in
                if case let .success(code) = result {
                    self.scannedCode = code.string
                    self.isPresentingScanner = false
                }
            }
        )
    }
    var body: some View {
        VStack(spacing: 10) {
            Text(scannedCode)
            Button("Scan QR Code") {
                self.isPresentingScanner = true
        }
            .sheet(isPresented: $isPresentingScanner) {
                self.scannerSheet
            }
        }
    }
struct QRScannerView_Previews: PreviewProvider {
    static var previews: some View {
        QRScannerView()
    }
}
}
