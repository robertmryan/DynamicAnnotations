//
//  ViewController.swift
//  DynamicAnnotations
//
//  Created by Robert Ryan on 12/1/21.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        addAnnotationsAndChangeCoordinates()
    }

    func addAnnotationsAndChangeCoordinates() {
        let center = CLLocationCoordinate2D(latitude: 37.785834, longitude: -122.406417)
        let camera = MKMapCamera(lookingAtCenter: center, fromDistance: 1000, pitch: 0, heading: 0)
        mapView.camera = camera

        // create starting coordinates on left side of the map

        let start = [0.33, 0.50, 0.66].map {
            CGPoint(x: mapView.bounds.minX + mapView.bounds.width * 0.25, y: mapView.bounds.minY + $0 * mapView.bounds.height)
        }.map {
            mapView.convert($0, toCoordinateFrom: mapView)
        }

        let staticAnnotation = StaticAnnotation(coordinate: start[0], title: "Static")
        let dynamicAnnotation = DynamicAnnotation(coordinate: start[1], title: "Dynamic")
        let pointAnnotation = PointAnnotationSubclass(coordinate: start[2], title: "Subclass")

        mapView.addAnnotations([staticAnnotation, dynamicAnnotation, pointAnnotation])

        // create ending coordinates on the right side of the map

        let end = [0.33, 0.50, 0.66].map {
            CGPoint(x: mapView.bounds.minX + mapView.bounds.width * 0.75, y: mapView.bounds.minY + $0 * mapView.bounds.height)
        }.map {
            mapView.convert($0, toCoordinateFrom: mapView)
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            staticAnnotation.coordinate = end[0]
            dynamicAnnotation.coordinate = end[1]
            pointAnnotation.coordinate = end[2]
        }
    }
}

