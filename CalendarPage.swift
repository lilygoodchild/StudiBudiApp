//
//  CalendarPage.swift
//  StudiBudiApp
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI

struct CalendarPage: View {
    @State var selectedDate: Date = Date()
    
    @State private var isBlueClicked = false
    @State private var isGreenClicked = false
    @State private var isYellowClicked = false
    @State private var isOrangeClicked = false
    @State private var isRedClicked = false
 
    
    
    var body: some View {

        
        
        VStack(alignment: .center, spacing: 0) {
            Text(selectedDate.formatted(date: .abbreviated, time: .standard))
                .font(.system(size: 28))
                .bold()
                .foregroundColor(Color(red: 255/255, green: 194/255, blue: 180/255))
                .padding()
                .animation(.spring(), value: selectedDate)
            Divider()
            Spacer()
            DatePicker("Select Date", selection: $selectedDate)
                .padding(.horizontal)
                .datePickerStyle(.graphical)
                
            // the above is the calendar itself
            
            
            
                
            ZStack{
                VStack(alignment: .leading, spacing: 10.0){
                    Text("Mood")
                    
                    HStack(spacing: 27.0){
                        
                        Button("Red") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            
                            
                        }.foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        
                        Button("Orange") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }.foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        Button("Yellow") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }.foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        Button("Green") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        Button("Blue") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }.foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        
                    }
                    
                    
                }
            }.padding(.all, 21.0).background(Color(red: 255/255, green: 194/255, blue: 180/255)).cornerRadius(20)
        }
        .padding(.vertical, 200)
        
    }
}

struct CalendarPage_Previews: PreviewProvider {
    static var previews: some View {
        CalendarPage()
    }
}
