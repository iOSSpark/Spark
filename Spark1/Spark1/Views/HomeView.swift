//
//  HomeView.swift
//  Spark1
//
//  Created by Jessica Kent on 10/28/22.
//

import SwiftUI

struct HomeView: View {
    @State private var showLocationSearchView = false
    
    var body: some View {
        ZStack(alignment: .top) {
            SparkMapViewRepresentable()
                .ignoresSafeArea()
            
            if showLocationSearchView {
                LocationSearch(showLocationSearch: $showLocationSearchView)
            } else {
                LocationSearchActivationView()
                    .padding(.top, 72)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            showLocationSearchView.toggle()

                        }
                    }
                
            }
            MapViewActionButton(showLocationSearch: $showLocationSearchView)
                .padding(.leading)
                .padding(.top, 4)
        }
            
           
        }
    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
