//
//  CardView.swift
//  Furniture
//
//  Created by Admin on 21.06.25.
//

import SwiftUI

struct CardView: View {
    
    var item: FurnitureItem
    
    @State private var isTaped = false
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            Text(item.title)
                .font(.system(.headline, design: .rounded))
                .foregroundColor(.black)
            
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                Text(item.price)
                    .font(.system(size: 15, weight: .semibold, design: .rounded))
                    .foregroundColor(.gray)
                
                Spacer()
                
                Image(systemName: isTaped ? "heart.fill" : "heart")
                    .onTapGesture {
                        isTaped = true
                    }
            }
        }
        .padding()
        .background(Color.white)
        .frame(width: 172, height: 230)
        .cornerRadius(20)
        
        
        
    }
}

#Preview {
    CardView(item: FurnitureItem(title: "Green Sofa", price: "₴13900", imageName: "GreenSofa"))
}
