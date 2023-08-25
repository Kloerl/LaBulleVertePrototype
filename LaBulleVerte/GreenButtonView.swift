//
//  GreenButtonView.swift
//  LaBulleVerte
//
//  Created by Apprenant 43 on 03/07/2023.
//

import SwiftUI

struct GreenButton: View {
    var text: String
    let id: Int
    @Binding var currentlySelectedId: Int
    var body: some View {
        Button(action: { self.currentlySelectedId = self.id }, label: { Text(text)
                .fontWeight(.bold)
        })
            .frame(width: 110, height: 35)
            .foregroundColor(id == currentlySelectedId ? Color(UIColor(red: 0.9098039215686274, green: 0.996078431372549, blue: 0.8666666666666667, alpha: 1)) :  Color(UIColor(red: 0.35294117647058826, green: 0.796078431372549, blue: 0.4745098039215686, alpha: 1)))
            .background(id == currentlySelectedId ? Color(UIColor(red: 0.35294117647058826, green: 0.796078431372549, blue: 0.4745098039215686, alpha: 1)) : Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1)))
            .cornerRadius(15)
    }
}

struct GreenButtons: View {
    @State var currentlySelectedId: Int = 0
    var body: some View {
        HStack {
            GreenButton(text: "Jour", id: 1, currentlySelectedId: $currentlySelectedId)
            GreenButton(text: "Semaine", id: 2, currentlySelectedId: $currentlySelectedId)
            GreenButton(text: "Mois", id: 3, currentlySelectedId: $currentlySelectedId)
        }
    }
}


struct GreenButtonView_Previews: PreviewProvider {
    static var previews: some View {
        GreenButtons()
    }
}
