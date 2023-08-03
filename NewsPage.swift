//
//  NewsPage.swift
//  StudiBudiApp
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI



struct NewsPage: View {
    
    var body: some View {
        ZStack {
            
          

            VStack(alignment: .center, spacing: 5) {
                
                    Text("News")
                    
                    
                    
                    .font(.largeTitle)
                        .foregroundColor(.black)
                        .bold()
                        
                
                    //final iteration
                
                                   
                Spacer()
                
                HStack {
                        Image("tally")
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .scaledToFit()
                        .frame(width: 80.0, height : 43.0)
                        Text("Tally the turtle: access useful articles for your mental health!")
                                           
                                   }
                        Divider()
                          .padding(.bottom, 2.0).padding(.top,1.0)
                
               
                    
                    LinkButton(title: "Confidence and Self Esteem", url: "https://www.mind.org.uk/for-young-people/feelings-and-experiences/confidence-and-self-esteem/?gclid=CjwKCAjw_aemBhBLEiwAT98FMmJ7aFprl89IlVtq-YpNcKJvCa964RXl8gUpMHH_-GPovwli-NZhHhoCkCMQAvD_BwE",imageName: "confidence")
                    
                    LinkButton(title: "Introduction into Mental Health ", url: "https://www.mind.org.uk/for-young-people/introduction-to-mental-health/",imageName: "introductionintomentalhealth")
                    
                    LinkButton(title: "Looking after your Mental Health as a Student", url: "https://medium.com/@elif.sht6/7-important-ways-to-maintain-your-mental-health-a6a5427142f7",imageName:"student")
                    
                
                
                Spacer()
                
            }
            .padding(.top, -3.0)
            
        }
        
        .padding()
        
    }
    
    struct LinkButton: View {
        
        let title: String
        
        let url: String
        
        let imageName: String
        
        
        
        
        var body: some View {
            
            Button(action: {
                
                openNewsArticle(url: url)
                
            }) {
                VStack(spacing: 13.0) {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.top, 45.0)
                        .cornerRadius(10)
                        .frame(width: 190.0, height: 80.0)
                        .foregroundColor(.black)
                       
                    Spacer()
                    
                    Text(title)
                
                        .foregroundColor(.black)
                        .padding(.vertical, 10.0)
                        .frame(width: 190.0, height: 90.0)
                }
                .padding([.top, .leading, .trailing])
                .background(Color(red: 211/255.0, green: 181/255.0, blue: 255/255.0).opacity(0.2))
                .cornerRadius(10)
                
                HStack {
                    

                    
                }
            
                
                .cornerRadius(10)
                
            }
            
        }
        
        func openNewsArticle(url: String) {
            
            if let articleURL = URL(string: url) {
                
                UIApplication.shared.open(articleURL)
                
            }
            
        }
        
        
        
        
        
        
        
        
        
        
        
        struct NewsPage_Previews: PreviewProvider {
            
            static var previews: some View {
                
                NewsPage()
                
            }
            
        }
        
        
    }
}
