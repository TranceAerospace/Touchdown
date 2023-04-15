//
//  ContentView.swift
//  Touchdown
//
//  Created by Mark Trance on 4/12/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                // TODO: - Find iOS 16 version of handling the notch
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        
                        FeatureTabView()
                            .padding(.vertical, 20)
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                        
                        CategoryGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    } //: VStack
                } //: Scroll
            } //: VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } //: ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
