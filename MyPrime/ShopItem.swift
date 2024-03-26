//
//  ShopItem.swift
//  MyPrime
//
//  Created by Amit Patel on 26/03/24.
//

import SwiftUI

struct ShopItem: View {
    
    var imageName: String
    var title: String
    var price: Double
    var color: Color
    var selfIndex: Int
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(color)
                .opacity(0.25)
                .frame(width: 170, height: 230)
            VStack {
                Image(imageName)
                    .resizable()
                    .frame(width: 80, height: 80)
                Text(title)
                Button() {
                    cartItems.append(shopItems[selfIndex])
                } label: {
                    Text("$\(String(format: "%.2f", price))")
                        .foregroundColor(.white)
                        .frame(width: 100, height: 40)
                        .background(color)
                }
            }
        }
    }
}
#Preview {
    ShopItem(imageName: "PrimeBlue", title: "BLUE RASPBERRY", price: 29.99, color: .blue, selfIndex: 0)
}
