//
//  Shop.swift
//  MyPrime
//
//  Created by Amit Patel on 26/03/24.
//

import SwiftUI

struct Shop: View {
    
    @State var goToCart = false
    
    var columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var items: [[Any]] = shopItems
    
    
    var body: some View {
        NavigationView {
            VStack(spacing: 5) {
                VStack {
                    Text("HYDRATION")
                        .frame(width: 320, alignment: .leading)
                        .foregroundColor(.black)
                    
                    Image("PrimeBanner")
                        .resizable()
                        .frame(width: 350, height: 200)
                        .cornerRadius(10)
                    
                }
                .padding(20)
                ScrollView() {
                    LazyVGrid(columns: columns, spacing: 30) {
                        ForEach(0..<items.count, id:\.self) { item in
                            ShopItem(imageName: items[item][0] as! String, title: items[item][1] as! String, price: items[item][2] as! Double, color: items[item][3] as! Color, selfIndex: item)
                        }
                    }
                }.padding(15)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: Cart(), isActive: $goToCart) {
                        Image(systemName: "cart")
                    }
                }
            }
        }
    }
}

#Preview {
    Shop()
}
