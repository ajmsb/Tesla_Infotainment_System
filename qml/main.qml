import QtQuick 2.15
import QtQuick.Window 2.15

import "components"

//import "script.js" as showFunc
Window {
    id: root
    width: 1920 * .7
    height: 1200 * .7
    visible: true
    title: qsTr("Tesla Info System")
    color: "#00000000"

    //        remove title window
    flags: Qt.SplashScreen | Qt.FramelessWindowHint
    Container {
        id: container
    }

    /*--------FUNCTIONS----------*/
    property var leftScreen: null
    property var musicBar: null
}
