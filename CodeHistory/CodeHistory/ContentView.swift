//
//  ContentView.swift
//  CodeHistory
//
//  Created by Rachel Vo on 16/04/2024.
//

import SwiftUI

struct ContentView: View {
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    var body: some View {
        ZStack {
            // Spread color over to the edges of the screen
            mainColor.ignoresSafeArea()
            
            VStack {
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .padding()
                Text("What was the first computer bug?")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                Spacer()
                
                // Answer buttons
                HStack {
                    Button(action: {
                        print("You've taped Ant")
                    }, label: {
                        Text("Ant")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    
                    Button(action: {
                        print("You've taped Beetle")
                    }, label: {
                        Text("Beetle")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    
                    Button(action: {
                        print("You've taped Moth")
                    }, label: {
                        Text("Moth")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    
                    Button(action: {
                        print("You've taped Fly")
                    }, label: {
                        Text("Fly")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                }
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    ContentView()
}



//       VStack {
//            Spacer().frame(width: 50)
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//       }

//        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
//            Color.yellow
//            VStack {
//                Text("Welcome to Code History")
//                Button(action: { print("clicked") },
//                       label: {
//                           Text("Click me").font(.subheadline)
//                       })
//
//            }
//            .frame(width: 200, height: 200)
//            .background(Color.blue)
//            /* VStack {}
//             .frame(width: 100, height: 100)
//             .background(Color.yellow) */
//        }
//        .font(.title)
//        .foregroundColor(.white)
//        .border(Color.black)
