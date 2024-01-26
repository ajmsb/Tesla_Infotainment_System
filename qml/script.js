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

function showMusicBar() {
    if (musicBar == null) {
        var component = Qt.createComponent("components/MusicBar.qml")
        musicBar = component.createObject(container)
        if (musicBar != null) {
            //                leftScreen.anchors.centerIn = root
            musicBar.closeScreen.connect(destroyMusicBar)
        }
    }
}

function destroyMusicBar() {
    if (musicBar != null) {
        musicBar.destroy()
        musicBar = null
    }
}
