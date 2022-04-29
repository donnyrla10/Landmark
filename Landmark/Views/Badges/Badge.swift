//
//  Badge.swift
//  Landmark
//
//  Created by 김영선 on 2022/03/29.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View{
        ForEach(0..<8){ index in
            RotatedBadgeSymbol(
                angle: .degrees(Double(index) / Double(8)) * 360.0
            )
        }
        .opacity(0.5) //불투명도
    }
    
    var body: some View {
        ZStack{
            BadgeBackground()
            GeometryReader{ geometry in
                badgeSymbols
                    .scaleEffect(1.0/4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}