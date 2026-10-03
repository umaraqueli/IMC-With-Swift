//
//  MeasureView.swift
//  IMC
//
//  Created by Raqueli on 19/09/26.
//

import SwiftUI

struct MeasureView: View {
    let image: String
    let text: String
   @Binding var value: Int
    
    var body: some View {
        HStack{
            Image(systemName: image)
            Text(text)
                .font(.title3)
            Spacer()
            Button{
                value -= 1
            }label: {
                Image(systemName: "minus.circle.fill")
            }
            Text("\(value)")
                .font(.title2)
                .fontWeight(.bold)
                .frame(width: 60)
            Button{
                value += 1
            }label: {
                Image(systemName: "plus.circle.fill")
            }
        }
        .padding()
        .background(.background)
        .clipShape(RoundedRectangle(cornerRadius:6))
        .shadow(color: Color(white: 0.9), radius:6)
        .padding(.vertical,2)
    }
}

#Preview {
    MeasureView(image: "person.badge.key.fill", text: "Sei la", value: .constant(98))
}
