//
//  DetailActivityView.swift
//  laBulleVerte
//
//  Created by Apprenant 43 on 29/06/2023.
//

import MapKit
import SwiftUI

struct DetailActivityView: View {
    var activity: Activity
    var body: some View {
        ScrollView {
            
            DetailActivityTemplateView(title: activity.title, image: activity.image, date: activity.date, time: activity.time, duration: activity.duration, cost: activity.cost, address: activity.address, about: activity.about, charity: activity.charity, url: activity.url)
            VStack {
                ZStack {
                    DetailActivityMapView()
                }
                DetailActivityRoundedTitleView(title: "Participants attendus")
                DetailActivityParticipantView(profilePicture: "Unknown", partNumber: activity.participantNumber)
                DetailActivityRoundedTitleView(title: "Espace d'échange")
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor((Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1))))
                        .frame(width:350, height:500)
                    VStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .padding(.trailing, 100)
                                    .foregroundColor(Color(UIColor(red: 0.9098039215686274, green: 0.996078431372549, blue: 0.8666666666666667, alpha: 1)))
                                    .frame(width:300, height:100)
                                Image("45")
                                    .resizable()
                                    .clipShape(Circle())
                                    .foregroundColor(.white)
                                    .frame(width:70, height:70)
                                    .overlay(
                                        Circle()
                                            .stroke(Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1)), lineWidth: 3))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 35.0)
                                    .padding(.bottom, 40)
                            }
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .padding(.leading, 100)
                                .foregroundColor(Color(UIColor(red: 0.35294117647058826, green: 0.796078431372549, blue: 0.4745098039215686, alpha: 1)))
                                .frame(width:300, height:100)
                            Image("35")
                                .resizable()
                                .clipShape(Circle())
                                .foregroundColor(.white)
                                .frame(width:70, height:70)
                                .overlay(
                                    Circle()
                                        .stroke(Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1)), lineWidth: 3))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 295.0)
                                .padding(.bottom, 40)
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .padding(.trailing, 100)
                                .foregroundColor(Color(UIColor(red: 0.9098039215686274, green: 0.996078431372549, blue: 0.8666666666666667, alpha: 1)))
                                .frame(width:300, height:100)
                            Image("20")
                                .resizable()
                                .clipShape(Circle())
                                .foregroundColor(.white)
                                .frame(width:70, height:70)
                                .overlay(
                                    Circle()
                                        .stroke(Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1)), lineWidth: 3))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 35.0)
                                .padding(.bottom, 40)
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .padding(.trailing, 100)
                                .foregroundColor(Color(UIColor(red: 0.9098039215686274, green: 0.996078431372549, blue: 0.8666666666666667, alpha: 1)))
                                .frame(width:300, height:100)
                            Image("45")
                                .resizable()
                                .clipShape(Circle())
                                .foregroundColor(.white)
                                .frame(width:70, height:70)
                                .overlay(
                                    Circle()
                                        .stroke(Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1)), lineWidth: 3))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 35.0)
                                .padding(.bottom, 40)
                        }
                        Spacer()
                    }
                    .padding(.top, 15)
                }
            }
        }
    }
}

struct DetailActivityView_Previews: PreviewProvider {
    static var previews: some View {
        DetailActivityView(activity: Activity(title: "Comment sortir de l’éco-anxiété ?", category: "conference", image: "conference", address: "Médiathèque de Rangueil, 19 Rue Claude de Forbin, 31400 Toulouse", location: locations[17], date: "30 Juin", time: "17h30", duration: "2h00", participantNumber: 30, participant: [], cost: "Gratuit", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", charity: "Humus & Associés", url: "https://www.humusetassocies.org"))
    }
}
