import QtQuick 2.15
import QtLocation 5.15
import QtPositioning 5.15
import QtGraphicalEffects 1.0

Rectangle {
    id: container
    height: parent.height * .9
    width: parent.width
    color: "red"
    anchors.top: parent.Top
    radius: parent.radius
    z: 2

    //    Plugin {
    //        id: mapPlugin
    //        name: "mapboxgl" // "mapboxgl", "esri", ...
    //        // specify plugin parameters if necessary
    //        // PluginParameter {
    //        //     name:
    //        //     value:
    //        // }
    //    }
    Map {
        id: map
        anchors.fill: parent
        //        plugin: mapPlugin
        plugin: Plugin {
            name: "mapboxgl"
        }
        center: QtPositioning.coordinate(65.0599, 25.4807) //OULU
        zoomLevel: 15
        layer.enabled: true

        //        bearing: 100 // for rotating the map
        layer.effect: OpacityMask {
            // layer effect for shapping the map to the rectangle with radius
            maskSource: Rectangle {
                width: container.width
                height: container.height
                radius: container.radius
            }
        }
    }
}
