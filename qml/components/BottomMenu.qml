import QtQuick 2.15
import QtQuick.Layouts 1.15
import "../script.js" as U

Rectangle {
    id: menu_container
    height: parent.height * .10
    width: parent.width
    color: "#000000"
    anchors.bottom: parent.bottom
    radius: parent.radius
    z: 1
    y: -5
    opacity: 0
    /*--------------Left Row-------------*/
    Item {
        id: left_row
        height: parent.height
        anchors {
            left: parent.left
            right: center_row.left
        }

        Row {
            //            spacing: parent.width * .1
            anchors {
                //                leftMargin: 20
                left: parent.left
            }
            height: parent.height
            width: parent.width * .95

            Item {
                id: icon_car
                height: parent.height
                width: parent.width * .8
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (leftScreen == null) {
                            U.showLeftScreen()
                            show_left_screen.start()
                        } else {
                            U.destroyLeftScreen()
                        }
                    }
                }

                Image {
                    width: menu_container.height / 1.95
                    fillMode: Image.PreserveAspectFit
                    source: "/assets/vectors/model3-icon.png"
                    anchors.centerIn: parent
                    mipmap: true
                }
            }


            /*  Item {
                id: icon_settings
                height: parent.height
                width: parent.width * .45

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (leftScreen == null) {
                            showLeftScreen()
                        } else {
                            destroyLeftScreen()
                        }
                    }
                }

                Image {
                    height: parent.height
                    fillMode: Image.PreserveAspectFit
                    source: "/assets/vectors/steering wheeltesla.png"
                    anchors.centerIn: parent
                    mipmap: true
                }
            }*/
        }
    }

    //*********************

    /*--------------Center ROWS------------*/
    Item {
        id: center_row
        height: parent.height
        width: parent.width * .75
        anchors {
            horizontalCenter: parent.horizontalCenter
        }
        /*--------------CENTER LEFT ROW-------------*/
        Row {

            id: center_left_row
            spacing: menu_container.width * .005
            height: parent.height
            width: parent.width * .95

            Rectangle {
                id: icon_leftSeat_up
                color: "#00000000"
                height: parent.height
                width: 50

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (leftScreen == null) {
                            showLeftScreen()
                        } else {
                            destroyLeftScreen()
                        }
                    }
                }
                Image {
                    width: menu_container.height / 1.95
                    fillMode: Image.PreserveAspectFit
                    source: "/assets/vectors/arrowUp.png"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                color: "#00000000"
                height: parent.height
                width: 50

                Text {
                    id: text_leftSeat
                    text: qsTr("77")
                    font.pointSize: 32
                    color: "#F1F1F1"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                id: icon_leftSeat_down
                color: "#00000000"
                height: parent.height
                width: 50

                Image {
                    width: menu_container.height / 1.95
                    fillMode: Image.PreserveAspectFit
                    source: "/assets/vectors/arrowDown.png"
                    anchors.centerIn: parent
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if (leftScreen == null) {
                                showLeftScreen()
                            } else {
                                destroyLeftScreen()
                            }
                        }
                    }
                }
            }
        }

        /*--------------CENTER CENTER ROW-------------*/
        Row {
            id: center_center_row
            spacing: menu_container.width * .04
            anchors {
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
                margins: 30
            }
            height: parent.height

            Rectangle {
                id: icon_left_seat
                color: "#00000000"
                height: parent.height
                width: 50

                Image {
                    width: parent.width
                    fillMode: Image.PreserveAspectFit
                    source: "/assets/vectors/seat.png"
                    anchors.centerIn: parent
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if (leftScreen == null) {
                                showLeftScreen()
                            } else {
                                destroyLeftScreen()
                            }
                        }
                    }
                }
            }

            Rectangle {
                id: icon_defraust
                color: "#00000000"
                height: parent.height
                width: 50

                Image {
                    width: parent.width
                    fillMode: Image.PreserveAspectFit
                    source: "/assets/vectors/defrost.png"
                    anchors.centerIn: parent
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if (leftScreen == null) {
                                showLeftScreen()
                            } else {
                                destroyLeftScreen()
                            }
                        }
                    }
                }
            }

            Rectangle {
                id: icon_spotify
                color: "#00000000"
                height: parent.height
                width: 50

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (musicBar == null) {
                            U.showMusicBar()
                            show_music_bar.start()
                        } else {
                            U.destroyMusicBar()
                        }
                    }
                }

                Image {
                    width: parent.width - 10
                    fillMode: Image.PreserveAspectFit
                    source: "/assets/vectors/spotify.png"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                id: icon_heater
                color: "#00000000"
                height: parent.height
                width: 50

                Image {
                    width: parent.width
                    fillMode: Image.PreserveAspectFit
                    source: "/assets/vectors/heatertesla.png"
                    anchors.centerIn: parent
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if (leftScreen == null) {
                                showLeftScreen()
                            } else {
                                destroyLeftScreen()
                            }
                        }
                    }
                }
            }

            Rectangle {
                id: icon_right_seat
                color: "#00000000"
                height: parent.height
                width: 50

                Image {
                    width: parent.width
                    fillMode: Image.PreserveAspectFit
                    source: "/assets/vectors/seatRight.png"
                    anchors.centerIn: parent
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if (leftScreen == null) {
                                showLeftScreen()
                            } else {
                                destroyLeftScreen()
                            }
                        }
                    }
                }
            }
        }

        /*--------------CENTER RIGHT ROW-------------*/
        Row {
            id: center_right_row
            spacing: menu_container.width * .005
            anchors {
                verticalCenter: parent.verticalCenter
                right: center_row.right
            }
            height: parent.height

            Rectangle {
                id: icon_rightSeat_up
                color: "#00000000"
                height: parent.height
                width: 50

                Image {
                    width: menu_container.height / 1.95
                    fillMode: Image.PreserveAspectFit
                    source: "/assets/vectors/arrowDown.png"
                    anchors.centerIn: parent
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if (leftScreen == null) {
                                showLeftScreen()
                            } else {
                                destroyLeftScreen()
                            }
                        }
                    }
                }
            }

            Rectangle {
                color: "#00000000"
                height: parent.height
                width: 50

                Text {
                    id: text_rightSeat
                    text: qsTr("60")
                    font.pointSize: 32
                    color: "#F1F1F1"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                id: icon_rightSeat_down
                color: "#00000000"
                height: parent.height
                width: 50

                Image {
                    width: menu_container.height / 1.95
                    fillMode: Image.PreserveAspectFit
                    source: "/assets/vectors/arrowUp.png"
                    anchors.centerIn: parent
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if (leftScreen == null) {
                                showLeftScreen()
                            } else {
                                destroyLeftScreen()
                            }
                        }
                    }
                }
            }
        }
    }

    //******************
    /*--------------Right ROW-------------*/
    Item {
        id: right_row
        height: parent.height
        anchors {
            right: parent.right
            left: center_row.right
        }

        Row {
            anchors.right: parent.right
            height: parent.height
            width: parent.width

            Item {
                id: icon_left_arrow_volume
                height: menu_container.height
                width: 50

                Image {
                    width: menu_container.height / 1.95
                    fillMode: Image.PreserveAspectFit
                    source: "/assets/vectors/minus.png"
                    anchors.centerIn: parent
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if (leftScreen == null) {
                                showLeftScreen()
                            } else {
                                destroyLeftScreen()
                            }
                        }
                    }
                }
            }

            Item {
                id: volume_text
                height: menu_container.height
                width: 50

                //            Text {
                //                id: volumeText
                //                text: qsTr("40")
                //                font.pointSize: 32
                //                color: "#F1F1F1"
                //                anchors.centerIn: parent
                //            }
                Image {
                    width: menu_container.height / 1.95
                    fillMode: Image.PreserveAspectFit
                    source: "/assets/vectors/volumetesla.png"
                    anchors.centerIn: parent
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if (leftScreen == null) {
                                showLeftScreen()
                            } else {
                                destroyLeftScreen()
                            }
                        }
                    }
                }
            }

            Item {
                id: icon_right_arrow_volume
                height: menu_container.height
                width: 50

                Image {
                    width: menu_container.height / 1.95
                    fillMode: Image.PreserveAspectFit
                    source: "/assets/vectors/plus.png"
                    anchors.centerIn: parent
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if (leftScreen == null) {
                                showLeftScreen()
                            } else {
                                destroyLeftScreen()
                            }
                        }
                    }
                }
            }
        }
    }
}
