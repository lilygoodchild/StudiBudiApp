//
//  QuotesPage.swift
//  StudiBudiApp
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI

struct QuotesPage: View {
    var body: some View {
        ZStack{
            VStack(spacing: -200.0) {
                Text("Quotes")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                VStack{
                    HStack {
                        Image("GoldieRet")
                            .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 60.0, height : 450.0)
                        Text("Goldie the Retriever: If you press refresh I'll retrieve you a new quote!")
                    }
                    Spacer()
                }
            }
            
 
        }
    }
}





struct QuotesPage_Previews: PreviewProvider {
    static var previews: some View {
        QuotesPage()
    }
}
