//
//  QRGeneratorView.swift
//  MC2 KOP CARD
//
//  Created by Amalia . on 30/06/22.
//

import SwiftUI


struct QRGeneratorView: View {
    
    @Binding var email: String
    @Binding var password: String
    @State private var text = ""
        
    var body: some View {
            VStack {
                Text("Show your code to your friend!")
                    .font(.title2)
                    .foregroundColor(.black)
                    .padding()
                Image(uiImage: UIImage(data: getQRCodeDate(email: email)!)!)
                    .resizable()
                    .frame(width: 300, height: 300)
            }
        }
        
        func getQRCodeDate(email: String) -> Data? {
            guard let filter = CIFilter(name: "CIQRCodeGenerator") else { return nil }
            let data = email.data(using: .ascii, allowLossyConversion: false)
            filter.setValue(data, forKey: "inputMessage")
            guard let ciimage = filter.outputImage else { return nil }
            let transform = CGAffineTransform(scaleX: 10, y: 10)
            let scaledCIImage = ciimage.transformed(by: transform)
            let uiimage = UIImage(ciImage: scaledCIImage)
            return uiimage.pngData()!
        }
    }
