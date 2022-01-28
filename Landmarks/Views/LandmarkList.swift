//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Yasser Al-ShaFei on 1/4/22.
//

import SwiftUI
import MapKit



struct LandmarkList: View {
    
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    //NavigationLink {
                        //LandmarkDetail(landmark: landmark)
                    //} label: {
                        LandmarkRow(landmark: landmark)
                    //}
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}



struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
