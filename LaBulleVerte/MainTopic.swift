//
//  MainTopic.swift
//  laBulleVerte
//
//  Created by Apprenant 44 on 29/06/2023.
//

import Foundation

struct MainTopic : Identifiable {
    var id = UUID()
    var icon : String
    var name : String
}

var mainTopics = [
    MainTopic (icon: "🖌️", name: "Activités manuelles"),
    MainTopic (icon: "⛺️", name: "Plein air"),
    MainTopic (icon: "🗣️", name: "Savoirs et transmission"),
]



//mainTopic
//icon
//name (plein air)
//[subTopic]
//
//



