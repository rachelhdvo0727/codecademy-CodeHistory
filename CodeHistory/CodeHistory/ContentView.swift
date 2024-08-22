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
    let question = Question(
            questionText: "What was the first computer bug?",
            possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
            correctAnswerIndex: 2)
    
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
                    ForEach(0..<question.possibleAnswers.count) {
                        AnswerIndex in
                        
                        Button(action: {
                            print("You've tapped on option with the text: \(question.possibleAnswers[AnswerIndex]))")
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[AnswerIndex])
                        })
                    }
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
