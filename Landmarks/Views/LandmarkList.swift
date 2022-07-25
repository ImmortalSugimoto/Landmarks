//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Liban Abdinur on 7/24/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        
        NavigationView {
            List(landmarks){ landmark in
                
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
                   
            }// end of list
            .navigationTitle("Landmarks")
        }//end of navigation view
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
           
                           
        
    }
}
