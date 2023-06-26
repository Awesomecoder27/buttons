//
//  ContentView.swift
//  buttons
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    // place vars here
    @State private var showDetails = false
    var body: some View {
            VStack {
                Text("about me")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color(hue: 0.817, saturation: 1.0, brightness: 0.33))
                
                
                Image("profile")
                    .resizable()
                    .frame(width: 350, height: 275)
                    .border(Color(hue: 0.817, saturation: 1.0, brightness: 0.33), width: 15)
                
                
                // button
                Button("Facts About Me!") {
                    self.showDetails = true
                }
                .font(.title2)
                .fontWeight(.bold)
                .buttonStyle(.borderedProminent)
                .tint(Color(hue: 0.817, saturation: 1.0, brightness: 0.33))
            }
            .background(Color(hue: 0.357, saturation: 0.389, brightness: 0.975))
            .padding()
            .sheet(isPresented: $showDetails) {
                VStack{
                    Text("Facts About Me")
                        .fontWeight(.black)
                        .foregroundColor(Color(hue: 0.817, saturation: 1.0, brightness: 0.33))
                    HStack{
                        Image("drawing")
                            .resizable(resizingMode: .stretch)
                            .padding()
                        Text("I love to draw. I often eaither draw with pencils, or draw digitally.")
                            .fontWeight(.heavy)
                            .foregroundColor(Color(hue: 0.357, saturation: 0.389, brightness: 0.975))
                    }
                    .padding()
                    .background(Color(hue: 0.817, saturation: 1.0, brightness: 0.33))
                    .cornerRadius(10)
                    HStack{
                        Image("videogame")
                            .resizable(resizingMode: .stretch)
                            .padding()
                        Text("In addition to drawing, I'm also enjoy playing videogames. My favorite video game is undertale.")
                            .fontWeight(.heavy)
                            .foregroundColor(Color(hue: 0.357, saturation: 0.389, brightness: 0.975))
                    }
                    .padding()
                    .background(Color(hue: 0.817, saturation: 1.0, brightness: 0.33))
                    .cornerRadius(10)
                    HStack{
                        Image("read")
                            .resizable(resizingMode: .stretch)
                            .padding()
                        Text("I also love reading. My favorite series right now is the mortal instruments, but I also enjoy horror and thriller books.")
                            .fontWeight(.heavy)
                            .foregroundColor(Color(hue: 0.357, saturation: 0.389, brightness: 0.975))
                        
                    }
                    // wow a comment
                    .padding()
                    .background(Color(hue: 0.817, saturation: 1.0, brightness: 0.33))
                    .cornerRadius(10)
                    
                    
                    Button("Go back"){
                        self.showDetails = false
                    }
                    .padding()
                    .background(Color(hue: 0.817, saturation: 1.0, brightness: 0.33))
                    .cornerRadius(10)
                    .padding()
                    .foregroundColor(Color(hue: 0.357, saturation: 0.389, brightness: 0.975))
                    .fontWeight(.bold)
                    
                }
            }
        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
