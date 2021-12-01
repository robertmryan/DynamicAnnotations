//
//  DynamicAnnotation.swift
//  DynamicAnnotations
//
//  Created by Robert Ryan on 12/1/21.
//

import UIKit
import MapKit

/// “Dynamic” annotation
///
/// Because `coordinate` is designated as `dynamic`, when you change its value, it does perform the necessary
/// KVO for associated annotation views to automatically reflect the change.

class DynamicAnnotation: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    dynamic var title: String?
    dynamic var subtitle: String?

    init(coordinate: CLLocationCoordinate2D, title: String?, subtitle: String? = nil) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
}
