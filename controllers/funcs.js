function showLeftScreen() {
    if (leftScreen == null) {
        var component = Qt.createComponent("components/LeftScreen.qml")
        leftScreen = component.createObject(container)
        if (leftScreen != null) {
            //                leftScreen.anchors.centerIn = root
            leftScreen.closeScreen.connect(destroyLeftScreen)
        }
    }
}

function destroyLeftScreen() {
    if (leftScreen != null) {
        leftScreen.destroy()
        leftScreen = null
    }
}
