//
//  ButtonAddView.swift
//  LaBulleVerte
//
//  Created by Apprenant 43 on 04/07/2023.
//

import SwiftUI

struct ButtonAddView: View {
    @State private var didTap:Bool = false
    @State private var didTap2:Bool = false
    var body: some View {
        HStack {
            Button(action: {
                self.didTap = true
            }) {
                Image(systemName: "plus")
                    .font(.system(size: 13))
            }
            .padding(.all, 5)
            .background(didTap ? Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1)) : Color(UIColor(red: 0.9098039215686274, green: 0.996078431372549, blue: 0.8666666666666667, alpha: 1)))
            .foregroundColor(Color(UIColor(red: 0.35294117647058826, green: 0.796078431372549, blue: 0.4745098039215686, alpha: 1)))
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(UIColor(red: 0.35294117647058826, green: 0.796078431372549, blue: 0.4745098039215686, alpha: 1)), lineWidth: 1)
            )
            Button(action: {
                self.didTap2 = true
            }) {
                Image(systemName: "heart")
                    .font(.system(size: 13))
            }
            .padding(.all, 5)
            .background(didTap2 ? Color(UIColor(red: 0.98, green: 0.73, blue: 0.72, alpha: 1.00)) : Color(UIColor(red: 0.9098039215686274, green: 0.996078431372549, blue: 0.8666666666666667, alpha: 1)))
            .foregroundColor(didTap2 ? Color.pink : Color(UIColor(red: 0.35294117647058826, green: 0.796078431372549, blue: 0.4745098039215686, alpha: 1)))
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(didTap2 ? Color.pink : Color(UIColor(red: 0.35294117647058826, green: 0.796078431372549, blue: 0.4745098039215686, alpha: 1)), lineWidth: 1)
            )
        }
    }
}

struct ButtonAddView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAddView()
    }
}

