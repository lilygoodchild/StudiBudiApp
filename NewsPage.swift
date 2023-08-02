//
//  NewsPage.swift
//  StudiBudiApp
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI



struct NewsPage: View {

    var body: some View {

        VStack(spacing: 20) {

            Text("Latest News")

                .padding()

                .font(.largeTitle)

                .foregroundColor(.blue)

                .padding(.top, 40.0)

            

            LinkButton(title: "News Article 1", url: "https://caitlinhouston.medium.com/10-ways-reset-your-mind-when-youre-feeling-overwhelmed-dc5ba6ebf3c7")

            LinkButton(title: "News Article 2", url: "https://caitlinhouston.medium.com/10-ways-reset-your-mind-when-youre-feeling-overwhelmed-dc5ba6ebf3c7")

            LinkButton(title: "News Article 3", url: "https://medium.com/@elif.sht6/7-important-ways-to-maintain-your-mental-health-a6a5427142f7")

            

            Spacer()

        }

        .padding()

    }

    struct LinkButton: View {

        let title: String

        let url: String

        

        var body: some View {

            Button(action: {

                openNewsArticle(url: url)

            }) {

                HStack {

                    Image(systemName: "newspaper")

                        .foregroundColor(.blue)

                    

                    Text(title)

                        .foregroundColor(.blue)

                        .font(.headline)

                }

                .padding()

                .background(Color.gray.opacity(0.2))

                .cornerRadius(10)

            }

        }

        func openNewsArticle(url: String) {

            if let articleURL = URL(string: url) {

                UIApplication.shared.open(articleURL)

            }

        }

    }

    

    //hi

    

    

    struct NewsPage_Previews: PreviewProvider {

        static var previews: some View {

            NewsPage()

        }

    }

}
