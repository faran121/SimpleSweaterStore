//
//  CartView.swift
//  SweaterStore
//
//  Created by Maliks on 07/09/2023.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    ProductRow(product: product)
                }
                
                HStack {
                    Text("Total")
                    Spacer()
                    Text("$\(cartManager.price).00")
                        .bold()
                }
                .padding()
                
                PaymentButton(action: {})
                    .padding()
                
            }
            else {
                Text("Your cart is empty")
            }
        }
        .navigationTitle("My Cart")
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
