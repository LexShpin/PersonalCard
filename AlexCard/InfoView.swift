//
//  InfoView.swift
//  AlexCard
//
//  Created by Alexander Shpin on 15.09.2022.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.purple)
                    Text(text)
                }
            )
            .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+52 984 313 2061", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
