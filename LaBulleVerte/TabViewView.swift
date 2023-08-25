//
//  TabViewView.swift
//  LaBulleVerte
//
//  Created by Apprenant 43 on 30/06/2023.
//

import SwiftUI

struct TabViewView: View {
    @State private var selection = 2
    var body: some View {
        TabView(selection:$selection) {
            Group {
                NavigationStack {
                    MapView()
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbar {
                            ToolbarItem(placement: .principal) {
                                VStack {
                                    Text("Carte").font(.headline)
                                    //                                    Text("Subtitle").font(.subheadline)
                                }
                            }
                        }
                        .toolbarBackground((Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1))), for: .navigationBar)
                        .toolbarBackground(.visible, for: .navigationBar)
                        .toolbarColorScheme (.dark, for: .navigationBar)
                }
                .tabItem {
                    VStack {
                        Text("Carte")
                        Image(systemName: "globe.europe.africa")
                    }
                }
                .tag(1)
                NavigationStack {
                    MainTopicView()
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbar {
                            ToolbarItem(placement: .principal) {
                                VStack {
                                    Text("La Bulle Verte").font(.headline)
                                    //                                    Text("Subtitle").font(.subheadline)
                                }
                            }
                        }
                        .toolbarBackground((Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1))), for: .navigationBar)
                        .toolbarBackground(.visible, for: .navigationBar)
                        .toolbarColorScheme (.dark, for: .navigationBar)
                }
                .tabItem {
                    VStack {
                        Text("Activités")
                        Image(systemName: "sparkles")
                    }
                }
                .tag(2)
                NavigationStack {
                    SearchView()
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbar {
                            ToolbarItem(placement: .principal) {
                                VStack {
                                    Text("Recherche").font(.headline)
                                    //                                    Text("Subtitle").font(.subheadline)
                                }
                            }
                        }
                        .toolbarBackground((Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1))), for: .navigationBar)
                        .toolbarBackground(.visible, for: .navigationBar)
                        .toolbarColorScheme (.dark, for: .navigationBar)
                }
                .tabItem {
                    VStack {
                        Text("Recherche")
                        Image(systemName: "magnifyingglass")
                    }
                }
                .tag(3)
                NavigationStack {
                    ProfilView35()
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbar {
                            ToolbarItem(placement: .principal) {
                                VStack {
                                    Text("Mon profil").font(.headline)
                                    //                                    Text("Subtitle").font(.subheadline)
                                }
                            }
                        }
                        .toolbarBackground((Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1))), for: .navigationBar)
                        .toolbarBackground(.visible, for: .navigationBar)
                        .toolbarColorScheme (.dark, for: .navigationBar)
                }
                        .tabItem {
                            VStack {
                                Text("Profil")
                                Image(systemName: "person")
                            }
                        }
                        .tag(4)
                
            }
            .toolbarBackground((Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1))), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarColorScheme (.dark, for: .tabBar)
        }
    }
}
    

struct TabViewView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewView()
    }
}
