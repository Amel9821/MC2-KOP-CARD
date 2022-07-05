//
//  QRCodeScanner.swift
//  MC2 KOP CARD
//
//  Created by Amalia . on 03/07/22.
//

import SwiftUI
import CodeScanner

struct QRCodeScanner: View {
    
    @Binding var showQRScan: Bool
    @State private var isPresentingScanner = false
    @State private var scannedCode: String = ""
    @State var showFriend = false
    
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
        NavigationView{
        VStack(spacing: 10) {
            Button {
                showFriend.toggle()
            } label: {
                Text("Show \(scannedCode) KOP Card")
                    .font(Font.system(size: 20, design: .rounded))
                        .padding()
                        .frame(width: 280, height: 50, alignment: .center)
                        .background(Color("ColorButton"))
                        .cornerRadius(10)
                        .foregroundColor(Color("ColorText"))
                        .padding()
            }
            Button("Scan QR Code") {
                self.isPresentingScanner = true
        }
            .sheet(isPresented: $isPresentingScanner) {
                self.scannerSheet
            }
        }
        .sheet(isPresented: $showFriend) {
            ProfilFriend(showFriend: $showFriend)}
        .toolbar {
            ToolbarItem(placement: .cancellationAction) {
                Button {
                    showQRScan.toggle()
                }
                label : {
                    Text("Back")
                        .foregroundColor(.blue)
                }
            }
        }
    }
    }
    
//struct QRCodeScanner_Previews: PreviewProvider {
//    static var previews: some View {
//        QRCodeScanner()
//    }
//}
}

