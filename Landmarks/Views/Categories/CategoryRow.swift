//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Atharva Sune on 23/10/22.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing:15) {
                    ForEach(items, id: \.id) { item in
                        NavigationLink {
                            LandmarkDetailView(landmark: item)
                        } label: {
                            CategoryItem(landmark: item)
                        }
                    }
                }
            }
            
        }.frame(height: 225)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks: [Landmark] = ModelData().landmarks;
    
    
    static var previews: some View {
        CategoryRow(
            categoryName: landmarks[0].category.rawValue, items: Array(landmarks.prefix(3))
        )
    }
}
