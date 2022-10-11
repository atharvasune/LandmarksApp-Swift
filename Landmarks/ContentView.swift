//
//  ContentView.swift
//  Landmarks
//
//  Created by Atharva Sune on 12/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            CustomImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading){
                Text("Foggy Day")
                    .font(.title)
                HStack {
                    Text("Pine Forest")
                        .font(.subheadline)
                    Spacer()
                    Text("Kodaikanal")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About Pine Forest")
                    .font(.title2)
                Text("Description about pine foret kodaikanal")
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
