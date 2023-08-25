//
//  SubTopic.swift
//  laBulleVerte
//
//  Created by Apprenant 44 on 29/06/2023.
//

import Foundation

struct SubTopicManual : Identifiable {
    var id = UUID()
    var name : String
    var image : String
    var activities : [Activity]
    
}

var subTopicManuals = [
    SubTopicManual(name: "Loisirs créatifs", image: "creatif", activities: [Activity(title: "Confection de couches pour bébé", category: "creatif", image: "creatif", address: "MJC Pont des Demoiselles, 63bis avenue St Exupéry, 31400 Toulouse", location: locations[0], date: "28 Juin", time: "14h30", duration: "2h30", participantNumber: 12, participant: [""], cost: "10", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", charity: "Pro-portion", url: "https://www.pro-portion.fr"), Activity(title: "Upcyclage de chutes de tissu", category: "creatif", image: "creatif", address: "La Maison, 16bis Chemin de Mange Pomme, 31520 Ramonville", location: locations[1], date: "29 Juin", time: "15h00", duration: "2h", participantNumber: 15, participant: ["String"], cost: "Gratuit", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", charity: "Mission Zéro Déchet", url: "https://zerowastetoulouse.org/qui-sommes-nous/")]),
    SubTopicManual (name: "DIY", image: "diy", activities: [Activity(title: "Fabrication de jardinières", category: "tool", image: "bricolage", address: "CPIE Terres Toulousaines, 10 rue d'Arcachon, 31200 Toulouse", location: locations[2], date: "30 Juin", time: "18h", duration: "2h", participantNumber: 25, participant: [""], cost: "Gratuit", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", charity: "CPIE Terres Toulousaines", url: "http://cpieterrestoulousaines.org"), Activity(title: "Construction de nichoir à chauve-souris",category: "tool", image: "bricolage", address: "Jardin pédagogique de Negreneys, 100 rue de Négreneys, 31200 Toulouse", location: locations[3], date: "3 Juillet", time: "14h30", duration: "2h30", participantNumber: 10, participant: [""], cost: "10", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", charity: "Les Petits Débrouillards Occitanie", url: "https://www.lespetitsdebrouillardsoccitanie.org")]),
    SubTopicManual (name: "Bricolage", image: "bricolage", activities: [Activity(title: "Fabrication de jardinières", category: "tool", image: "bricolage", address: "CPIE Terres Toulousaines, 10 rue d'Arcachon, 31200 Toulouse", location: locations[2], date: "30 Juin", time: "18h", duration: "2h", participantNumber: 25, participant: [""], cost: "Gratuit", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", charity: "CPIE Terres Toulousaines", url: "http://cpieterrestoulousaines.org"), Activity(title: "Construction de nichoir à chauve-souris",category: "tool", image: "bricolage", address: "Jardin pédagogique de Negreneys, 100 rue de Négreneys, 31200 Toulouse", location: locations[3], date: "3 Juillet", time: "14h30", duration: "2h30", participantNumber: 10, participant: [""], cost: "10", about: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", charity: "Les Petits Débrouillards Occitanie", url: "https://www.lespetitsdebrouillardsoccitanie.org")]),
]


