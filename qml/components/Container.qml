import QtQuick 2.15

Rectangle {
    height: parent.height
    width: parent.width
    color: "#000000"
    anchors.centerIn: parent
    radius: 10

    //Components
    MapScreen {
        id: mapScreen
    }

    //    LeftScreen {
    //        id: left_screen
    //    }

    // LEFT SCREEN ANIMATION
    ParallelAnimation {
        id: show_left_screen
        running: false
        NumberAnimation {
            target: leftScreen
            property: "opacity"
            to: 1.0
            duration: 100
        }
        NumberAnimation {
            target: leftScreen
            property: "x"
            to: 0
            duration: 200
        }
    }
    ParallelAnimation {
        id: hide_left_screen
        running: false
        NumberAnimation {
            target: leftScreen
            property: "opacity"
            to: 0
            duration: 100
        }
        NumberAnimation {
            target: leftScreen
            property: "x"
            to: -5
            duration: 200
        }
    }

    //    MusicBar {
    //        id: musicBar
    //    }

    // ANIMATION MUSIC BAR CAN BE REMOVED
    ParallelAnimation {
        id: show_music_bar
        running: false
        NumberAnimation {
            target: musicBar
            property: "opacity"
            to: 1.0
            duration: 100
        }
        NumberAnimation {
            target: musicBar
            property: "y"
            to: 0
            duration: 250
        }
    }
    BottomMenu {
        id: bottom_menu
        //ANIMATION, CAN BE REMOVED
        ParallelAnimation {
            running: true
            NumberAnimation {
                target: bottom_menu
                property: "opacity"
                to: 1.0
                duration: 200
            }
            NumberAnimation {
                target: bottom_menu
                property: "y"
                to: 0
                duration: 400
            }
        }
    }
}
