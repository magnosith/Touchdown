//
//  FeaturesTabViiew.swift
//  Touchdown
//
//  Created by magnodev 
//

import SwiftUI

struct FeaturesTabViiew: View {
    var body: some View {
        
        TabView{
            ForEach(players){ player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }//:TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturesTabViiew_Previews: PreviewProvider {
    static var previews: some View {
        FeaturesTabViiew()
            .previewDevice("iPhone 12 pro")
            .background(Color.gray)
    }
}
