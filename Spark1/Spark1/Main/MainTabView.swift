//
//  MainTabView.swift
//  Spark1
//
//  Created by Jessica Kent on 10/29/22.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
           LocationSearchActivationView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            //LocationSearch(showLocationSearch: Binding<Bool>)
            
            FavoriteView()
                .tabItem{
                    Image(systemName: "heart")
                }
            ProfileView()
                .tabItem{
                    Image(systemName: "person")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
