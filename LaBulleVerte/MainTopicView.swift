//
//  MainTopicView.swift
//  laBulleVerte
//
//  Created by Apprenant 44 on 29/06/2023.
//

import SwiftUI

struct MainTopicView: View {
    var body: some View {
//        ScrollView {
            NavigationStack {
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.white)
                            .frame(width:350, height:30)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke((Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1)))))
                            .padding(.vertical, 8)
                        
                        HStack {
                            Text ("🖌️")
                                .font(.system(size: 25))
                                .padding(.leading, 30)
                            Text ("Activités manuelles")
                                .font(.custom("Poppins-Regular", size: 25))
                                .font(.title2)
                                .fontWeight(.bold)
                            Spacer()
                        }
                    }
                    .padding(10)
                    
                    HStack {
                        ForEach(subTopicManuals) {subTopicManual in
                            VStack {
                                NavigationLink {
                                    ActivityView()
                                        .navigationBarTitleDisplayMode(.inline)
                                        .toolbar {
                                            ToolbarItem(placement: .principal) {
                                                VStack {
                                                    Text(subTopicManual.name).font(.headline)
                                                }
                                            }
                                        }
                                        .toolbarBackground((Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1))), for: .navigationBar)
                                        .toolbarBackground(.visible, for: .navigationBar)
                                        .toolbarColorScheme (.dark, for: .navigationBar)
                                } label: {
                                    Image (subTopicManual.image)
                                        .resizable()
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                        .frame(width:100, height: 100)
                                        .padding(6)
                                }
                                Text (subTopicManual.name)
                                    .fontWeight(.light)
                            }
                        }
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.white)
                            .frame(width:350, height:30)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke((Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1)))))
                            .padding(.vertical, 8)
                        
                        HStack {
                            
                            Text ("⛺️")
                                .font(.system(size: 25))
                                .padding(.leading, 30)
                            Text ("Plein air")
                                .font(.custom("Poppins-Regular", size: 25))
                                .font(.title2)
                                .fontWeight(.bold)
                            Spacer ()
                        }
                    }
                    .padding(10)
                    
                    HStack {
                        ForEach(subTopicOutdoors) {subTopicOutdoor in
                            VStack {
                                NavigationLink {
                                    ActivityView()
                                        .navigationBarTitleDisplayMode(.inline)
                                        .toolbar {
                                            ToolbarItem(placement: .principal) {
                                                VStack {
                                                    Text(subTopicOutdoor.name).font(.headline)
                                                }
                                            }
                                        }
                                        .toolbarBackground((Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1))), for: .navigationBar)
                                        .toolbarBackground(.visible, for: .navigationBar)
                                        .toolbarColorScheme (.dark, for: .navigationBar)
                                } label: {
                                    Image (subTopicOutdoor.image)
                                        .resizable()
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                        .frame(width:100, height: 100)
                                        .padding(6)
                                }
                                //                            Spacer()
                                Text (subTopicOutdoor.name)
                                    .multilineTextAlignment(.center)
                                
                                
                            }
                        }
                    }
                    //                .padding()
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.white)
                            .frame(width:350, height:30)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke((Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1)))))
                            .padding(.vertical, 8)
                        
                        HStack {
                            Text ("🗣️")
                                .font(.system(size: 25))
                                .padding(.leading, 30)
                            Text ("Savoirs et transmission")
                                .font(.custom("Poppins-Regular", size: 25))
                                .font(.title2)
                                .fontWeight(.bold)
                            
                            Spacer()
                        }
                    }
                    .padding(10)
                    
                    HStack {
                        ForEach(subTopicInfos) {subTopicInfo in
                            VStack {
                                NavigationLink {
                                    ActivityView()
                                        .navigationBarTitleDisplayMode(.inline)
                                        .toolbar {
                                            ToolbarItem(placement: .principal) {
                                                VStack {
                                                    Text(subTopicInfo.name).font(.headline)
                                                }
                                            }
                                        }
                                        .toolbarBackground((Color(UIColor(red: 0, green: 0.38823529411764707, blue: 0.36470588235294116, alpha: 1))), for: .navigationBar)
                                        .toolbarBackground(.visible, for: .navigationBar)
                                        .toolbarColorScheme (.dark, for: .navigationBar)
                                } label: {
                                    Image (subTopicInfo.image)
                                        .resizable()
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                        .frame(width:100, height: 100)
                                        .padding(6)
                                }
                                Text (subTopicInfo.name)
                            }
                        }
                    }
                }
                //                .padding()
            }
        }
    }
//}



struct MainTopicView_Previews: PreviewProvider {
    static var previews: some View {
        MainTopicView()
    }
}
