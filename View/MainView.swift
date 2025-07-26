//
//  MainView.swift
//  Furniture
//
//  Created by Admin on 21.06.25.
//

import SwiftUI

struct MainView: View {
    @State private var text = ""
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                
                header()
                
                Text("Chairs")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(FurnitureData.chairs) { item in
                            
                            NavigationLink {
                                DetailView(item: item)
                            } label: {
                                CardView(item: item)

                            }

                        }
                    }
                    .padding(.leading)
                }
                
                Text("Sofas")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(FurnitureData.sofas) { item in
                            NavigationLink {
                                DetailView(item: item)
                            } label: {
                                CardView(item: item)
                            }

                            
                        }
                    }
                    .padding(.leading)
                }
                    
            }
            .background(Color("CustomBackground"))
        }
    }
    
    @ViewBuilder
    private func header() -> some View {
        HStack(spacing: 18) {
            
            //TextField
            HStack {
                Image(systemName: "magnifyingglass")
                
                TextField("Search...", text: $text)
            }
            .padding(10)
            .background(Color.white)
            .cornerRadius(10)
            
            
            //Button
            Button {
                print("filter")
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 40, height: 40)
                        .foregroundStyle(.white)
                    Image(systemName: "slider.horizontal.3")
                        .foregroundColor(.black)
                }
            }
        }
        .padding()
    }
    
}

#Preview {
    MainView()
}
