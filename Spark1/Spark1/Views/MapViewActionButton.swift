//
//  MapViewActionButton.swift
//  Spark1
//
//  Created by Jessica Kent on 10/29/22.
//

import SwiftUI

struct MapViewActionButton: View {
    @Binding var showLocationSearch: Bool
    
    var body: some View {
        Button{
            withAnimation(.spring()) {
                showLocationSearch.toggle()
            }
            
        }label: {
            Image(systemName: showLocationSearch ?
                  "arrow.left" : "line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        }
        
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct MapViewActionButton_Previews: PreviewProvider {
    static var previews: some View {
        MapViewActionButton(showLocationSearch: .constant(true))
    }
}
