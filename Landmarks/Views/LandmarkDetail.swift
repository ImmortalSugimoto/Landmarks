//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Liban Abdinur on 7/24/22.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                        
                }//end of hstack
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }//  end of second vstack
            .padding()
           
        }//first scrollview
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        
            
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
