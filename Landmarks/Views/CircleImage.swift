//
//  CircleImage.swift
//  Landmarks
//
//  Created by Liban Abdinur on 7/24/22.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        
        Image("turtlerock")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }// end of overlay
            .shadow(radius: 7)
            
    }// end of body
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
