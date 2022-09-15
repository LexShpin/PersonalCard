//
//  ContentView.swift
//  AlexCard
//
//  Created by Alexander Shpin on 15.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.64, green: 0.61, blue: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Me")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 350, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 5)
                    )
                Text("Alexander Shpin")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+52 984 313 2061", imageName: "phone.fill")
                InfoView(text: "lexshpin@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
