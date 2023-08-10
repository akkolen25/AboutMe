//
//  ContentView.swift
//  AboutMe
//
//  Created by scholar on 8/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var aboutMe = ""
    
    var body: some View {
        ZStack {
            Color(.systemGray4)
                .ignoresSafeArea()
            VStack (alignment: .leading, spacing: 20.0){

                Image("mirrorPic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .border(/*@START_MENU_TOKEN@*/Color(hue: 0.877, saturation: 0.914, brightness: 1.0)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/13/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                HStack(spacing: 20.0) {
                    Text("Nirjara Akkole")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Button("More About Me") {
                        aboutMe = "Hey! Some of my hobbies include playing tennis, and being on the speech and debate team at my school. Recently, I've been obsessed with the show the Summer I Turned Pretty and have become an emerging Swiftie!"
                    }
                    .padding()
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.839, saturation: 1.0, brightness: 1.0)/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                    
                }
                .padding()
                .background(Rectangle() .foregroundColor(.white))
                .cornerRadius(15)
                .shadow(radius: 15)
                .padding()
            
                Text(aboutMe)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.884, saturation: 0.668, brightness: 0.376))
                    .padding(.all)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
