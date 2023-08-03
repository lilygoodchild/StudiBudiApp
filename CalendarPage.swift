//
//  CalendarPage.swift
//  StudiBudiApp
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI

struct CalendarPage: View {
    @State var selectedDate: Date = Date()
    @State  var backgroundColor = Color.white
    
    var body: some View {
        
        VStack(spacing: 50.0) {
          
            VStack(spacing: -200.0){
            Text("Calendar")
                .font(.largeTitle)
                .fontWeight(.bold)
            
                HStack {
                    Image("snail")
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 60.0, height : 450.0)
                    Text("Sally the Snail: Welcome to your calendar, and mood tracker!")
                }
                Divider()

            }
            
            VStack(spacing: -200.0){
                VStack{
                    Text(selectedDate.formatted(date: .abbreviated, time: .standard))
                        .font(.system(size: 28))
                        .bold()
                        .foregroundColor(Color(red: 255/255, green: 194/255, blue: 180/255))
                    
                        .animation(.spring(), value: selectedDate)
                    
                    
                    
                    DatePicker("Select Date", selection: $selectedDate)
                        .padding(.horizontal)
                        .datePickerStyle(.graphical)
                    
                    Text("Today's mood :")
                    Spacer()
                    
                }
                
                
                HStack{
                    Image("happiest")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit).clipShape(Circle())
                        .frame(width: 51.0, height : 450.0)
                        .onTapGesture {
                            backgroundColor = Color(red: 59/255, green: 205/255, blue: 81/255)}
                    
                    
                    
                    Image("happy")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit).clipShape(Circle())
                        .frame(width: 51.0, height : 450.0)
                        .onTapGesture {
                            backgroundColor = Color(red: 178/255, green: 200/255, blue: 67/255) }
                    
                    Image("mid")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit).clipShape(Circle())
                        .frame(width: 51.0, height : 450.0)
                        .onTapGesture {
                            backgroundColor = Color(red: 245/255, green: 206/255, blue: 56/255)}
                    
                    Image("sad")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit).clipShape(Circle())
                        .frame(width: 51.0, height : 450.0)
                        .onTapGesture {
                            backgroundColor = Color(red: 254/255, green: 107/255, blue: 38/255)}
                    
                    Image("angry")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit).clipShape(Circle())
                        .frame(width: 51.0, height : 450.0)
                        .onTapGesture {
                            backgroundColor = Color(red: 252/255, green: 60/255, blue: 48/255)}
                    
                }
                
               
               
                Rectangle()
                    .padding(.all, 33.0)
                    .foregroundColor(backgroundColor)
                
            }.padding()
            
            
        }
        .padding(.top, 1.0)
        
        
        
        
        
        
            
         
        
    }
}

        
        struct CalendarPage_Previews: PreviewProvider {
            static var previews: some View {
                CalendarPage()
            }
        }

