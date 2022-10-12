//
//  CustomImage.swift
//  Landmarks
//
//  Created by Atharva Sune on 12/10/22.
//

import SwiftUI

struct CustomImage: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
            .frame(width: 200, height: 200)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
        
        
    }
}

struct CustomImage_Previews: PreviewProvider {
    static var previews: some View {
        CustomImage(image: landmarks[1].image)
    }
}
