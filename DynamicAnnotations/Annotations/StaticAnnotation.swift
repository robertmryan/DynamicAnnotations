//
//  StaticAnnotation.swift
//  DynamicAnnotations
//
//  Created by Robert Ryan on 12/1/21.
//

import UIKit
import MapKit

/// “Static” annotation
///
/// Even though `coordinate` is a variable, when you change its value, it does not perform the necessary
/// KVO for associated annotation views to automatically reflect the change.

class StaticAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?

    init(coordinate: CLLocationCoordinate2D, title: String?, subtitle: String? = nil) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
}
