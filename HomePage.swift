//
//  HomePage.swift
//  StudiBudiApp
//
//  Created by scholar on 03/08/2023.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Color(red: 255/255, green: 255/255, blue: 255/255)
                .ignoresSafeArea()
                
               
                VStack(alignment: .center ,spacing: 5.0) {
                    Text("Home")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                    Spacer()
                }
                
                
                
                VStack {
                
                    
                    Image("appicon")
                    // .resizable(resizingMode: .stretch)
                    //.aspectRatio(contentMode: .fit)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 250.0, height: 250.0)
                    
                    
                    
                    Text("Hi, Welcome to Studi Buddi")
                        .font(.title3)
                        .fontWeight(.regular)
                        .foregroundColor(Color.black)
                
                
                    
                    
                    
                }
                VStack(spacing: 650) {
                    Text("")
                    Divider()
                        .frame(height: 3)
                        .overlay(.black)
                }
                
                
                
                .toolbar {
                    
                    ToolbarItemGroup(placement: .status) {
                       
                        HStack {
                            
                            NavigationLink(destination: CalendarPage()) {
                                Image(systemName: "calendar")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.black)
                                Spacer()
                                
                                
                                
                            }
                            
                            
                            NavigationLink(destination: NewsPage()) {
                                Image(systemName: "newspaper")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.black)
                                Spacer()
                                
                            }
                            
                            
                            NavigationLink(destination: HomePage()) {
                                Image(systemName: "house")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.black)
                                Spacer()

                                
                                
                            }
                            
                            
                            
      //hi
                            
                            NavigationLink(destination: ResourcesPage()) {
                                Image("resourcesicon")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                Spacer()
                                
                                

                                
                            }
                            
                            NavigationLink(destination: QuotesPage()) {
                            Image(systemName: "quote.bubble")
                                    
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.black)
                                
                            }
                            
                            
        
                            
                        }
                        
                    }
                    
                    
                }
                
                
            }
            //
        }
        //              .toolbar {
        //                  Image(systemName: "newspaper")
        //
        //                   // .toolbar {
        //                        //Image(systemName: "")
        //                 //}
        //
        //
        //
    }
    
    
    
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
    }
    
    
}
