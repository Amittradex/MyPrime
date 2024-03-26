//
//  ContentView.swift
//  MyPrime
//
//  Created by Amit Patel on 24/03/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var changeScreen = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 50){
                Image("sprime")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                
                Text("Unleash Your Prime")
                    .font(.system(size: 36, weight: .semibold, design: .rounded))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, -15)
                Text("PRIME By Logan Paul x KSI")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                
                Button() {
                    changeScreen = true
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 40)
                        
                        Text("MY PRIME")
                            .foregroundStyle(.white)
                            .bold()
                        
                    }
                } .frame(width: 200, height: 70)
                    .foregroundStyle(.black)
                
            } .navigationDestination(isPresented: $changeScreen) {
                Shop()  
                
            }
        }
    }
}

#Preview {
    ContentView()
}
