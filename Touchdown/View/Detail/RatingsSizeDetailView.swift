//
//  RatingsSizeDetailView.swift
//  Touchdown
//
//  Created by magnodev 
//

import SwiftUI

struct RatingsSizeDetailView: View {
    //MARK: - PROPERTY
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    //MARK: - BODY
    var body: some View {
        HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 3, content: {
            //RATINGS
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    ForEach(1...5, id: \.self){ item in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                        
                    }
                })
                
            })
            
            Spacer()
            
            //SIZES
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5, content: {
                    ForEach(sizes, id: \.self){ size in
                        Text(size)
                            .font(.footnote)
                            .fontWeight(.heavy)
                            .foregroundColor(colorGray)
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(Color.white.cornerRadius(5))
                            .background(RoundedRectangle(cornerRadius: 5)
                                            .stroke(colorGray, lineWidth:2)
                            )
                    }
                })
            })
            
            
        })//: HSTACK
        
        
        
    }
}

struct RatingsSizeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizeDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
