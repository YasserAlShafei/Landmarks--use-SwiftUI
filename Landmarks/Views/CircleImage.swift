//
//  CircleImage.swift
//  Landmarks
//
//  Created by Yasser Al-ShaFei on 1/4/22.
//

import SwiftUI



struct CircleImage: View {
    
    var image: Image
    
    
    var body: some View {
        image
            .clipShape(Circle())
            //.overlay {
            //    Circle().stroke(.gray, lineWidth: 4)
            //}
            .overlay(Circle().stroke())
            .shadow(radius: 7)
    }
}




struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
