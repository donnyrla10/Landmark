//
//  CircleImage.swift
//  Landmark
//
//  Created by 김영선 on 2022/03/28.
//

import SwiftUI

struct CircleImage: View {
    var image: Image //해당 landmark의 이미지 데이터를 받아와서 출력해야됨
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(){
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
//            .previewLayout(.sizeThatFits)
    }
}
