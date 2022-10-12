//
//  LandmarksListView.swift
//  Landmarks
//
//  Created by Atharva Sune on 12/10/22.
//

import SwiftUI

struct LandmarksListView: View {
    let landmarksList: [Landmark] = landmarks
    var body: some View {
        NavigationView {
            List {
                ForEach(landmarksList) { landmark in
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
    }
}
