//
//  Landmark.swift
//  Landmark
//
//  Created by 김영선 on 2022/03/28.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Hashable, Identifiable{
    var id : Int
    var name : String
    var state : String
    var description : String
    var park : String
    var isFavorite: Bool
    
    private var imageName: String //to read name of the image from data, computed image property that loads an image from the asset catalog.
    var image : Image{
        Image(imageName)
    }
    
    private var coordinates: Coordinates  //using nested Coordinate
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    //위도 경도 좌표
    struct Coordinates : Hashable, Codable{
        var latitude : Double
        var longitude : Double
    }
}
