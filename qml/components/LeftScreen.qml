import QtQuick 2.15
import QtGraphicalEffects 1.1
import QtQuick.Layouts 1.15

//container
Item {
    signal closeScreen
    id: left_screen
    height: parent.height * .9
    width: parent.width * .35
    z: 2
    x: -5
    opacity: .5

    Rectangle {
        id: left_screen_container
        anchors.fill: parent
        color: "#F1F1F1"
        radius: 8
        z: 1
        MouseArea {
            anchors.fill: parent
        }
        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 0
            spacing: 0
            Item {
                id: first_row
                Layout.preferredHeight: parent.height * .05
                Layout.preferredWidth: parent.width

                RowLayout {
                    anchors.fill: parent
                    anchors.margins: 2
                    spacing: 0
                    Item {

                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width * .05
                        Text {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.right: parent.right
                            id: time_left
                            font.pointSize: 14
                            font.bold: true
                            text: qsTr("3")
                        }
                    }
                    Item {
                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width * .26
                        Text {
                            id: time_left_text
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            font.pointSize: 14
                            font.bold: true
                            text: qsTr("hours remaining")
                        }
                    }
                    Item {
                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width * .4
                    }

                    Item {
                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width * .06
                        Text {
                            anchors.centerIn: parent
                            id: percentage
                            font.pointSize: 14
                            text: qsTr("35%")
                        }
                    }
                    Item {
                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width * .09
                        Image {
                            id: battery_icon
                            anchors.fill: parent
                            fillMode: Image.PreserveAspectFit
                            source: "/assets/vectors/battery.png"
                        }
                    }
                }
            }
            Item {
                id: second_row
                Layout.preferredHeight: parent.height * .05
                Layout.preferredWidth: parent.width
                RowLayout {
                    anchors.fill: parent
                    anchors.leftMargin: 5
                    anchors.centerIn: parent
                    spacing: -1
                    Item {
                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width * .12
                        Layout.alignment: Qt.AlignRight

                        Text {
                            anchors.centerIn: parent
                            font.pointSize: 12
                            text: qsTr("7 kW")
                        }
                    }
                    Item {
                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width * .15
                        Layout.alignment: Qt.AlignRight

                        Text {
                            anchors.centerIn: parent
                            font.pointSize: 12
                            text: qsTr("+6 kWh")
                        }
                    }
                    Item {
                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width * .19
                        Layout.alignment: Qt.AlignRight

                        Text {
                            anchors.centerIn: parent
                            font.pointSize: 12
                            text: qsTr("30/30 A")
                        }
                    }
                    Item {
                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width * .19
                        Layout.alignment: Qt.AlignRight

                        Text {
                            anchors.centerIn: parent
                            font.pointSize: 12
                            text: qsTr("234 V")
                        }
                    }
                    Item {
                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width * .22

                        Text {
                            anchors.centerIn: parent
                            font.pointSize: 12
                            text: qsTr("Charge limit: 88%")
                        }
                    }
                }
            }
            Item {
                id: third_row
                Layout.preferredHeight: parent.height * .07
                Layout.preferredWidth: parent.width
                RowLayout {
                    anchors.fill: parent
                    anchors.leftMargin: 20
                    anchors.centerIn: parent
                    spacing: 1
                    Item {
                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width * .2

                        Image {
                            id: icon
                            source: "/assets/vectors/headlightstesla.png"
                        }
                    }
                }
            }
            Item {
                id: fourth_row

                Layout.preferredHeight: parent.height * .6
                Layout.preferredWidth: parent.width

                RowLayout {
                    anchors.fill: parent
                    anchors.leftMargin: 5
                    anchors.centerIn: parent
                    spacing: -1
                    Item {
                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width / 3

                        Text {
                            anchors.centerIn: parent
                            font.pointSize: 14
                            text: qsTr("7 kW")
                        }
                    }
                    Item {
                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width / 3
                        ColumnLayout {
                            anchors.fill: parent
                            spacing: 10
                            Item {
                                Layout.preferredHeight: parent.height * .2
                                Layout.preferredWidth: parent.width
                                Layout.alignment: Qt.AlignCenter
                                Rectangle {
                                    height: parent.height * .5
                                    width: parent.width * .6
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    anchors.bottom: parent.bottom
                                    color: "#C4C4C4"
                                    radius: parent.height * .6
                                    Text {
                                        id: open_front
                                        text: qsTr("Open")
                                        anchors.centerIn: parent
                                        font.pointSize: 16
                                    }
                                }
                            }
                            Item {
                                Layout.preferredHeight: parent.height * .6
                                Layout.preferredWidth: parent.width
                                Image {
                                    id: tesla_car
                                    anchors.fill: parent
                                    source: "/assets/vectors/model 3.png"
                                    fillMode: Image.PreserveAspectFit
                                }
                            }
                            Item {
                                Layout.preferredHeight: parent.height * .2
                                Layout.preferredWidth: parent.width
                                Layout.alignment: Qt.AlignCenter
                                Rectangle {
                                    height: parent.height * .5
                                    width: parent.width * .6
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    anchors.top: parent.top
                                    color: "#C4C4C4"
                                    radius: parent.height * .6
                                    Text {
                                        id: open_back
                                        text: qsTr("Open")
                                        font.pointSize: 16
                                        anchors.centerIn: parent
                                    }
                                }
                            }
                        }
                    }
                    Item {
                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width / 3

                        Text {
                            anchors.centerIn: parent
                            font.pointSize: 14
                            text: qsTr("30/30 A")
                        }
                    }
                }
            }
            Rectangle {
                id: fifth_row
                color: "white"
                Layout.preferredHeight: parent.height * .18
                Layout.preferredWidth: parent.width
                Layout.alignment: Qt.AlignBottom
                radius: 8
                RowLayout {
                    anchors.fill: parent
                    anchors.leftMargin: 5
                    anchors.centerIn: parent
                    spacing: -1
                    Item {
                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width / 3

                        Text {
                            anchors.centerIn: parent
                            font.pointSize: 14
                            text: qsTr("7 kW")
                        }
                    }
                    Item {
                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width / 3

                        Text {
                            anchors.centerIn: parent
                            font.pointSize: 14
                            text: qsTr("+6 kWh")
                        }
                    }
                    Item {
                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width / 3

                        Text {
                            anchors.centerIn: parent
                            font.pointSize: 14
                            text: qsTr("30/30 A")
                        }
                    }
                }
            }
        }
    }

    //shadow
    Rectangle {
        id: shadow
        anchors.fill: parent
        color: "#30000000"
        radius: 8
    }
    FastBlur {
        transparentBorder: true
        source: shadow
        anchors.fill: left_screen_container
        visible: true
        radius: 30
    }
}
