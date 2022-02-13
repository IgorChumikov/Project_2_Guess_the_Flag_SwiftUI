//
//  ContentView.swift
//  Project_2_Guess_the_Flag_SwiftUI
//
//  Created by Игорь Чумиков on 13.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        VStack(spacing: 30) {
            VStack {
                Text("Tap the flag of")
                Text(countries[correctAnswer])
            }
            ForEach(0..<3) { number in
                Button {
                    print("tap")
                } label: {
                    Image(self.countries[number])
                        .renderingMode(.original)
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
