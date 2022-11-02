//
//  LocationSearch.swift
//  Spark1
//
//  Created by Jessica Kent on 10/29/22.
//

import SwiftUI

struct LocationSearch: View {
    @State private var startLocationText = ""
    @Binding var showLocationSearch: Bool
  //  @State private var destinationLocationText = ""
    @StateObject var viewModel = LocationSearchViewModel()
    var body: some View {
        VStack{
            // header view
            HStack {
                VStack {
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6, height: 6)
                    
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 24)
                    
                    Rectangle()
                        .fill(Color(.black))
                        .frame(width: 6, height: 6)
                }
                
                VStack {
                    TextField("Curent Location", text:
                                $startLocationText)
                    .frame(height: 32)
                    .background(Color(.systemGroupedBackground))
                    .padding(.trailing)
                    
                    TextField("Charging Station", text: $viewModel.queryFragment)
                        .frame(height: 32)
                        .background(Color(
                            .systemGroupedBackground))
                        .padding(.trailing)
                }
            }
            .padding(.horizontal)
            .padding(.top, 64)
            
            Divider()
                .padding(.vertical)
            
            // list view
            
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(viewModel.results, id: \.self) { result in
                        LocationSearchResultCell(title: result.title, subtitlte: result.subtitle)
                            .onTapGesture {
                                showLocationSearch.toggle()
                            }
                    }
                }
            }
            
        }
        .background(.white)
    }
}

struct LocationSearch_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearch(showLocationSearch: .constant(false))
    }
}
