//
//  FavouriteButton.swift
//  Landmarks
//
//  Created by Atharva Sune on 12/10/22.
//

import SwiftUI

struct FavouriteButton: View {
    @Binding var isSet :Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            if isSet {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
            } else {
                Image(systemName: "heart")
                    .foregroundColor(.red)
            }
        }
    }
}

struct FavouriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteButton(isSet: .constant(true))
    }
}
