//
//  QuotesPage.swift
//  StudiBudiApp
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI

struct QuotesPage: View {
    
        let quotes = ["All our dreams can come true, if we have the courage to pursue them. —Walt Disney", "The secret of getting ahead is getting started. —Mark Twain", "I’ve missed more than 9,000 shots in my career. I’ve lost almost 300 games. 26 times I’ve been trusted to take the game winning shot and missed. I’ve failed over and over and over again in my life, and that is why I succeed. —Michael Jordan", "Everything you can imagine is real. ―Pablo Picasso", "Do one thing every day that scares you. ―Eleanor Roosevelt", "It’s no use going back to yesterday, because I was a different person then. ―Lewis Carroll", "We are what we repeatedly do. Excellence, then, is not an act, but a habit. ―Aristotle", "If you hear a voice within you say, ‘You cannot paint,’ then by all means paint, and that voice will be silenced. ―Vincent Van Gogh", "Some people want it to happen, some wish it would happen, others make it happen. ―Michael Jordan", "I now tried a new hypothesis: It was possible that I was more in charge of my happiness than I was allowing myself to be. ―Michelle Obama", "If opportunity doesn’t knock, build a door. ―Kurt Cobain", "In the middle of every difficulty lies opportunity. ―Albert Einstein", "“If you don’t get out of the box you’ve been raised in, you won’t understand how much bigger the world is. ―Angelina Jolie", "And, when you want something, all the universe conspires in helping you to achieve it. ―Paulo Coelho, The Alchemist", "“Spend a little more time trying to do something with yourself and a little less time trying to impress people. ―The Breakfast Club", "Success isn’t always about greatness. It’s about consistency. Consistent hard work leads to success. Greatness will come. ―Dwayne Johnson", "The secret of change is to focus all your energy, not on fighting the old, but on building the new. ―Socrates", "“I’m still learning. ―Michelangelo", "A winner is a dreamer who never gives up. ―Nelson Mandela", "If you talk about it, it’s a dream. If you envision it, it’s possible. If you schedule it, it’s real. ―Tony Robbins"]
        
        @State private var randomQuote = ""
        
        var body: some View {
            
            ZStack{
                
               // Color(red: 83/255, green: 162/255, blue: 190/255)
                    //.ignoresSafeArea()
                
                VStack(spacing: -200.0) {
                    Text("Quotes")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    //VStack{
                    HStack {
                        
                        Image("GoldieRett")
                            .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 60.0, height : 450.0)
                        Text("Goldie the Retriever: If you press refresh I'll retrieve you a new quote!")
                        
                    }
                    
                    Divider()
                        .padding(10.0)
                    Spacer()
                    Spacer()
                    //header ends here
                    
                    
                    
                    Text(randomQuote)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .padding()
                       
                    Spacer()
                    Spacer()
                    
                    HStack {
                        Spacer()
                        Button {
                            randomQuote = getRandomQuote()
                        } label: {
                            Image(systemName: "arrow.clockwise")
                                
                        }
                        .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                        Button {
                            // Handle the heart button action here...
                        } label: {
                            Image(systemName: "heart")
                        }
                        .foregroundColor(.black)
                        
                        Spacer()
                        Button {
                            // Handle the arrow down button action here...
                        } label: {
                            Image(systemName: "arrow.down.circle")
                        }
                        .foregroundColor(.black)
                        
                        Spacer()
                    }
                    Spacer()
                    // }
                }
                
            }
            
       }
        
        func getRandomQuote() -> String {
            guard !quotes.isEmpty else {
                return "No quotes available."
            }
            let randomIndex = Int.random(in: 0..<quotes.count)
            return quotes[randomIndex]
        }
    }

    struct QuotesPage_Previews: PreviewProvider {
        static var previews: some View {
            QuotesPage()
        }
    }

