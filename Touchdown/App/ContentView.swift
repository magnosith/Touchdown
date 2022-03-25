//
//  ContentView.swift
//  Touchdown
//
//  Created by magnodev 
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    

    
    // MARK: - BODY
    var body: some View {
        
        ZStack{
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack (spacing: 0) {
                    
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                                    	
                    ScrollView(.vertical, showsIndicators: false, content:{
                        VStack(spacing: 0){
                        
                            //TabView - Title - Search - Buy
                            FeaturesTabViiew()
                                .frame(minHeight: 256)
                                .padding(.vertical, 10)
                            
                            //Listgrid of Category - Products
                            CategoryGridView()
                            
                            //Title to be re approach in other products
                            TitleView(title: "Helmets")
                            
                            //Listgrid of Products from top title
                            LazyVGrid(columns: gridLayout, spacing: 30, content: {
                                ForEach(products){ product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
    
                                            withAnimation(.easeOut){
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }//: LOOP
                            })//:GRID
                            .padding(15)
                            
                            //Title to be re approach in other products
                            TitleView(title: "Brands")
                            
                            //Listgrid of brands
                            BrandGridView()
                            
                            
                            
                            
                            // Text about Company and Copyright®
                            FooterView()
                                .padding(.horizontal, 10)
                        }//VSTACK
                    })//SCROLL
                    
                }//:VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }//ZStack
        .ignoresSafeArea(.all, edges: .top)
    }// Body some view
}//: ContentView

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
            .environmentObject(Shop())
    }
}

