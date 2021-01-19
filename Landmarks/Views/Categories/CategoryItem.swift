//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Muzahidul on 19/1/21.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previewds: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        CategoryItem(landmark: landmarks[0])
    }
}
