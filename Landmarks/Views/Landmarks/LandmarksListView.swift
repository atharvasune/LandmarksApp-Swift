//
//  LandmarksListView.swift
//  Landmarks
//
//  Created by Atharva Sune on 12/10/22.
//

import SwiftUI

struct LandmarksListView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredList: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favourites Only")
                        .font(.title3)
                        .foregroundColor(.red)
                }
                 ForEach(filteredList) { landmark in
                    NavigationLink {
                        LandmarkDetailView(landmark: landmark)
                    } label: {
                        LandmarkRowView(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarksListView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksListView()
            .environmentObject(ModelData())
    }
}
