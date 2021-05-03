//
//  AddressView.swift
//  CupcakeCorner.
//
//  Created by sanmi_personal on 03/05/2021.
//

import SwiftUI

struct AddressView: View {
    @ObservedObject var order = Order()
    var body: some View {
        Form {
            Section {
                TextField("Name",text: $order.name)
                TextField("Street address", text: $order.streetAddress)
                TextField("City", text: $order.city)
                TextField("Zip", text: $order.zip)
            }
            
            Section {
                NavigationLink(destination: CheckoutView(order: order)) {
                    Text("Check out")
                }
            }
            .disabled(order.hasValidAdress == false)
        }
        .navigationBarTitle("Delivery details", displayMode: .inline)
    }
   
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView()
    }
}
