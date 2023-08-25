//
//  SubTopicOutdoor.swift
//  laBulleVerte
//
//  Created by Apprenant 44 on 29/06/2023.
//

import Foundation

struct SubTopicOutdoor : Identifiable {
    var id = UUID()
    var name : String
    var image : String
    
}

var subTopicOutdoors = [
    SubTopicOutdoor (name: "Éco fermes", image: "ferme"),
    SubTopicOutdoor (name: "Jardins", image: "jardin"),
    SubTopicOutdoor (name: "Biodiversité", image: "bio"),
]
