//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Mark Trance on 4/15/23.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // NavBar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top
                )
            // Header
            HeaderDetailView()
                .padding(.horizontal)
            // Detail Top Part
            TopPartDetailView()
                .padding(.horizontal)
            // Detail Bottom Part
            // Ratings + Sizes
            // Description
            // Quantity + Favorite
            // Add to cart
            Spacer()
        } //: VStack
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: sampleProduct.red,
                          green: sampleProduct.green,
                          blue: sampleProduct.blue
                         ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
