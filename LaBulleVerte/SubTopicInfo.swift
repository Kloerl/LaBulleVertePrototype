//
//  SubTopicInfo.swift
//  laBulleVerte
//
//  Created by Apprenant 44 on 29/06/2023.
//

import Foundation

struct SubTopicInfo : Identifiable {
    var id = UUID()
    var name : String
    var image : String
    
}

var subTopicInfos = [
    SubTopicInfo (name: "Projections", image: "projection"),
    SubTopicInfo (name: "Café-citoyens", image: "cafe"),
    SubTopicInfo (name: "Conférences", image: "conference"),
]
