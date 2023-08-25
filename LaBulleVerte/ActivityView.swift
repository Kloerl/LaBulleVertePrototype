//
//  ActivityView.swift
//  laBulleVerte
//
//  Created by Apprenant 43 on 29/06/2023.
//

import SwiftUI

struct ActivityView: View {
    @State var currentlySelectedId: Int = 1
    @State private var didTap:Bool = false
    @State private var didTap2:Bool = false
    var body: some View {
        NavigationStack {
            ScrollView {
                HStack {
                    GreenButton(text: "Jour", id: 1, currentlySelectedId: $currentlySelectedId)
                    GreenButton(text: "Semaine", id: 2, currentlySelectedId: $currentlySelectedId)
                    GreenButton(text: "Mois", id: 3, currentlySelectedId: $currentlySelectedId)
                }
                .padding(.top)
                VStack {
                    ForEach(activities) {activity in
                        NavigationLink {
                            DetailActivityView(activity: activity)
                                .navigationBarTitleDisplayMode(.inline)
                                .toolbar {
                                    ToolbarItem(placement: .principal) {
                                        VStack {
                                            Text("Détails").font(.headline)
                                        }
                                    }
                                }
                                .toolbarBackground((Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1))), for: .navigationBar)
                                .toolbarBackground(.visible, for: .navigationBar)
                                .toolbarColorScheme (.dark, for: .navigationBar)
                        } label: {
                            VStack {
                                DetailActivityRoundedTitleView(title: activity.date)
                                HStack {
                                    Image(activity.image)
                                        .resizable()
                                        .frame(width:70, height:70)
                                        .cornerRadius(15)
                                        .padding(.leading, 12)
                                        .padding(.trailing, 5)
                                    VStack(alignment: .leading) {
                                        Text(activity.title)
                                            .multilineTextAlignment(.leading)
                                            .foregroundColor(Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1)))
                                        HStack {
                                            Text(activity.date + " à " + activity.time)
                                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.336))
                                                .padding(.top, 1)
                                        }
                                        HStack {
                                            Image(systemName: "person.3.sequence")
                                                .foregroundColor(.gray)
                                            Text("\(activity.participantNumber)")
                                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.336))
                                            Spacer()
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
                                    Spacer()
                                    Image(systemName:"chevron.right.circle")
                                        .foregroundColor(Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1)))
                                        .padding(.trailing)
                                }
                                .padding(.vertical, 10)
                                .background((Color(UIColor(red: 0.9098039215686274, green: 0.996078431372549, blue: 0.8666666666666667, alpha: 1))))
                                .frame(width: 350)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                            }
                        }
                    }
                }
            }
        }
    }
}
    struct ActivityView_Previews: PreviewProvider {
        static var previews: some View {
            ActivityView()
        }
    }
