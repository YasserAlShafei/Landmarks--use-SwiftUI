//
//  ContentView.swift
//  Landmarks
//
//  Created by Yasser Al-ShaFei on 1/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
