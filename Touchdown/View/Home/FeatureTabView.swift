//
//  FeatureTabView.swift
//  Touchdown
//
//  Created by Mark Trance on 4/13/23.
//

import SwiftUI

struct FeatureTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //: Tab
        .tabViewStyle(.page(indexDisplayMode: .always))
        
    }
}

struct FeatureTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureTabView()
            .background(Color.gray)
    }
}
