//
//  ContentView.swift
//  CardGame
//
//  Created by Hina on 2024/06/17.
//

import SwiftUI


class CardGameViewModel: ObservableObject {
    var cards = ["2", "3", "4", "5", "6", "7", "8", "9", "😭"]
}
struct ContentView: View {
//    @ObservedObject var viewModel: CardGameViewModel
    var cards = ["2", "3", "4", "5", "6", "7", "8", "9", "😭"]
    private let gridItems: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    @State var isFront = false
    var cardsDictionaly = [["2", "3", "4"],
                           ["5", "6", "7"],
                           ["8", "9", "😭"],]


        var body: some View {
            ZStack {
                Color.green
                    .ignoresSafeArea()
                VStack {
                    Button("Flip") {
                        if isFront {
                            isFront = false
                        } else {
                            isFront = true
                        }
                    }
                    Flip(isFront: isFront,
                         front: {

                        Image("card2") // front
                    },
                         back: {

                        Image("back") // back
                    })
                }
            }
        }
}

#Preview {
    ContentView()
}

//            LazyVGrid(columns: gridItems,
//                      spacing: 20,
//                      content: {
//                // 表示するアイテムを受け取るのみ
//                ForEach(0...9) { item in
//                    Flip(isFront: isFront, // 先に作っておいた変数 isFront
//                         front: {
//
//                             Image("H1") // 表面 ハートのA
//                         },
//                         back: {
//
//                             Image("Back") // カード裏面
//                         })
//                }
//            }
//            )

//                LazyVGrid(columns: columns) {
//                    ForEach(cards, id: \.self) { num in
//                        Text("\(num)")
//                            .padding()
//                            .cornerRadius(8)
//                            .frame(width:80,height: 80)
//                            .background(Color.green)
//                                    }
//                                }



//        return VStack{
//            Grid(items: cards) { card in
//                Text(card)
////                CardView(card: card).onTapGesture {
////                    withAnimation(.easeInOut(duration: 0.5)) {
////                            viewModel.choose(card: card)
////                        }
////                    }
//                    .padding(5)
//            }
//                .padding()
//            .foregroundColor(Color(viewModel.theme.accentColor))
//            Button(action: {
//                withAnimation(.easeInOut) {
//                    viewModel.resetGame()
//                }
//            }, label: {
//                Text("New Game")
//                    .font(.headline)
//            })
//        }
//        .navigationTitle(viewModel.theme.name)
//        .navigationBarItems(trailing:Group{Text("Score: \(viewModel.getScore())")})
//        .accentColor(Color(viewModel.theme.accentColor))
//    }
