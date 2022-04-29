//
//  LandmarkRow.swift
//  Landmark
//
//  Created by 김영선 on 2022/03/28.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark : Landmark //해당 landmark 데이터
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            //별표 -> 해당 row 데이터에 isFavorite == true 인 경우,
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks //ModelData object를 사용해서
    
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
            .previewLayout(.sizeThatFits)
    }
}
