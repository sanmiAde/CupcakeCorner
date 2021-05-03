//
//  CheckoutView.swift
//  CupcakeCorner.
//
//  Created by sanmi_personal on 03/05/2021.
//

import SwiftUI

struct CheckoutView: View {
    @ObservedObject var order = Order()
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack {
                    Image("cupcakes")
                        .resizable()
                        .scaledToFit()
                        .frame(width:geo.size.width)
                    
                    Text("Your total is $\(self.order.cost, specifier: "%.2f")").font(.title)
                    
                    Button("Place order") {
                        
                    }.padding()
                }
            }
            .navigationBarTitle("Check out", displayMode: .inline)
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
    }
}
