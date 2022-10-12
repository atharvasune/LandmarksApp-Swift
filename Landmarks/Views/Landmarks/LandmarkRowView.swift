//
//  RowView.swift
//  Landmarks
//
//  Created by Atharva Sune on 12/10/22.
//

import SwiftUI

struct LandmarkRowView: View {
    let landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50, alignment: .leading)
            Text(landmark.name)
                .font(.headline)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
            } else {
                Image(systemName: "heart")
                    .foregroundColor(.red)
            }
        }
        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRowView(landmark: ModelData().landmarks[0])
            LandmarkRowView(landmark: ModelData().landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
