//
//  DetailView.swift
//  Furniture
//
//  Created by Admin on 21.06.25.
//

import SwiftUI

struct DetailView: View {
    var item: FurnitureItem
    @State private var count = 0

    var body: some View {
        ZStack {
            // Фон
            Color("CustomBackground")
                .ignoresSafeArea()

            VStack(spacing: 0) {
                // MARK: - Верх: изображение
                if let uiImage = UIImage(named: item.imageName) {
                    Image(uiImage: uiImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity, maxHeight: 350)
                } else {
                    Text("❌ Image not found: \(item.imageName)")
                        .foregroundColor(.red)
                        .frame(maxWidth: .infinity, maxHeight: 300)
                }

                // MARK: - Низ: описание + корзина
                VStack(spacing: 20) {
                    // Заголовок и характеристики
                    HStack(alignment: .top) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text(item.title)
                                .font(.system(.title, design: .rounded))
                                .fontWeight(.bold)

                            VStack(alignment: .leading, spacing: 4) {
                                Text("Size: 120 / 80 / 120")
                                Text("Weight: 85 kg")
                            }
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        }

                        Spacer()

                        VStack(alignment: .trailing) {
                            HStack(spacing: 2) {
                                ForEach(1..<5) { _ in
                                    Image(systemName: "star.fill")
                                }
                                Image(systemName: "star")
                            }
                            .foregroundColor(.yellow)

                            Text("143 reviews")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .padding(.top, 6)
                        }
                        .padding(8)
                    }

                    // Цена, счётчик, кнопка
                    HStack {
                        Text(item.price)
                            .font(.system(.title3, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.gray)

                        Spacer()

                        HStack(spacing: 20) {
                            Button {
                                if count > 0 { count -= 1 }
                            } label: {
                                Text("-")
                                    .font(.title2)
                                    .frame(width: 30, height: 30)
                            }

                            Text("\(count)")
                                .font(.title3)

                            Button {
                                count += 1
                            } label: {
                                Text("+")
                                    .font(.title2)
                                    .frame(width: 30, height: 30)
                            }
                        }
                        .padding(8)
                        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                    }

                    Button(action: {
                        print("Added to cart")
                    }) {
                        Text("Add to Cart")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(10)
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(30)
                .shadow(radius: 5)
                .padding()
            }
        }
    }
}



#Preview {
    DetailView(item: FurnitureItem(title: "Green Sofa", price: "₴13900", imageName: "GreenSofa"))
}
