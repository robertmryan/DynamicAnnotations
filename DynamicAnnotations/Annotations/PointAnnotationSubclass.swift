//
//  PointAnnotationSubclass.swift
//  DynamicAnnotations
//
//  Created by Robert Ryan on 12/1/21.
//

import UIKit
import MapKit

/// MKPointAnnotation subclass
///
/// Because this subclasses `MKPointAnnotation`, when you change the `coordinate`, this does perform the necessary
/// KVO for associated annotation views to automatically reflect the change.

class PointAnnotationSubclass: MKPointAnnotation {
    convenience init(coordinate: CLLocationCoordinate2D, title: String?, subtitle: String? = nil) {
        self.init()

        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
}
