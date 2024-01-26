import QtQuick 2.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

//container
Item {
    signal closeScreen
    id: music_bar
    height: parent.height * .9
    width: parent.width * .65
    anchors {
        right: parent.right
    }
    z: 3
    y: 5
    opacity: 0

    Rectangle {
        id: music_bar_container
        height: parent.height * .15
        width: parent.width * .98
        color: "#F0F0F0"
        radius: 8
        z: 1
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: parent.height * .01
        }

        MouseArea {
            anchors.fill: parent
        }
        //Image
        Rectangle {
            id: album_bg
            color: "transparent"
            height: parent.height
            width: parent.height
            radius: parent.radius

            Image {
                id: album_cover
                anchors.fill: parent
                fillMode: Image.PreserveAspectCrop
                source: "/assets/images/album.jpeg"
                anchors.centerIn: parent
                mipmap: true
                layer.enabled: true
                layer.effect: OpacityMask {
                    maskSource: Rectangle {
                        height: album_bg.height
                        width: album_bg.width
                        radius: album_bg.radius
                    }
                }
            }
        }
        //Description
        Rectangle {
            color: "transparent"
            id: album_info_bg
            height: parent.height
            width: parent.width - parent.height
            anchors.right: parent.right

            RowLayout {
                spacing: 0
                height: parent.height
                width: parent.width
                Rectangle {
                    color: "#00000000"
                    height: parent.height
                    Layout.preferredWidth: parent.width * .35
                    Layout.fillHeight: true
                    ColumnLayout {
                        spacing: 0
                        height: parent.height * .8
                        width: parent.width * .85
                        anchors.centerIn: parent

                        Item {
                            Layout.preferredHeight: childrenRect.height * .7
                            Layout.fillWidth: true
                            Text {
                                id: title

                                font {
                                    pointSize: 20
                                    bold: true
                                }
                                text: qsTr("No Role Modelz")
                            }
                        }
                        Item {
                            Layout.preferredHeight: childrenRect.height
                            Layout.fillWidth: true
                            Text {
                                id: artist_name
                                Layout.preferredHeight: parent.height * .20
                                Layout.fillWidth: true
                                color: "#151515"
                                font.pointSize: 16
                                wrapMode: Text.WordWrap
                                text: qsTr("J.Cole - Forest Hills Drive")
                            }
                        }
                        Item {
                            Layout.preferredHeight: childrenRect.height
                            Layout.fillWidth: true

                            Text {
                                id: album_name
                                Layout.preferredHeight: parent.height * .25
                                Layout.fillWidth: true
                                color: "#888585"
                                font.pointSize: 14
                                wrapMode: Text.WordWrap
                                text: qsTr("Forest Hills Drive")
                            }
                        }

                        Item {
                            id: play_bar
                            Layout.preferredHeight: childrenRect.height * 2
                            Layout.fillWidth: true

                            ProgressBar {
                                id: control
                                value: .4

                                background: Rectangle {
                                    implicitWidth: play_bar.width
                                    implicitHeight: 7
                                    color: "#e6e6e6"
                                    radius: 3
                                }

                                contentItem: Item {
                                    implicitWidth: 200
                                    implicitHeight: 4

                                    Rectangle {
                                        width: control.visualPosition * parent.width
                                        height: parent.height
                                        color: "#17a81a"
                                        radius: 6
                                    }
                                }
                            }
                        }
                    }
                }
                Rectangle {
                    id: icons_ontainer
                    color: "#00000000"
                    Layout.preferredWidth: parent.width * .6
                    Layout.fillHeight: true
                    RowLayout {
                        spacing: 6
                        height: parent.height * .8
                        width: children.width
                        anchors.centerIn: parent
                        Item {

                            Layout.preferredWidth: icons_ontainer.width * .18
                            Layout.preferredHeight: parent.height * .4
                            Image {
                                id: previous_icon
                                anchors.fill: parent
                                fillMode: Image.PreserveAspectFit
                                source: "/assets/vectors/tracktesla.png"
                                anchors.centerIn: parent
                                //                                mipmap: true
                                antialiasing: false
                                mirror: true
                            }
                            Colorize {
                                anchors.fill: previous_icon
                                source: previous_icon
                                hue: 0.0
                                lightness: -8
                            }
                        }
                        Item {

                            Layout.preferredWidth: icons_ontainer.width * .18
                            Layout.preferredHeight: parent.height * .4
                            Image {
                                id: pause_icon
                                anchors.fill: parent
                                fillMode: Image.PreserveAspectFit
                                source: "/assets/vectors/play pausetesla.png"
                                anchors.centerIn: parent
                                //                                mipmap: true
                                antialiasing: false
                                mirror: false
                            }
                            Colorize {
                                anchors.fill: pause_icon
                                source: pause_icon
                                hue: 0.0
                                lightness: -8
                            }
                        }
                        Item {

                            Layout.preferredWidth: icons_ontainer.width * .18
                            Layout.preferredHeight: parent.height * .4
                            Image {
                                id: next_icon
                                anchors.fill: parent
                                fillMode: Image.PreserveAspectFit
                                source: "/assets/vectors/tracktesla.png"
                                anchors.centerIn: parent
                                antialiasing: false
                                //                                mipmap: true
                                mirror: false
                            }
                            Colorize {
                                anchors.fill: next_icon
                                source: next_icon
                                hue: 0.0
                                lightness: -8
                            }
                        }
                        Item {
                            Layout.preferredWidth: icons_ontainer.width * .18
                            Layout.preferredHeight: parent.height * .4
                            Image {
                                id: search_icon
                                anchors.fill: parent
                                fillMode: Image.PreserveAspectFit
                                source: "/assets/vectors/searchtesla.png"
                                anchors.centerIn: parent
                                antialiasing: false
                                //                                mipmap: true
                                mirror: false
                            }
                            Colorize {
                                anchors.fill: search_icon
                                source: search_icon
                                hue: 0.0
                                lightness: -8
                            }
                        }
                        Item {
                            Layout.preferredWidth: icons_ontainer.width * .18
                            Layout.preferredHeight: parent.height * .4
                            Image {
                                id: playlist_icon
                                anchors.fill: parent
                                fillMode: Image.PreserveAspectFit
                                source: "/assets/vectors/expand musictesla.png"
                                anchors.centerIn: parent
                                antialiasing: false
                                //                                mipmap: true
                                mirror: false
                            }
                            Colorize {
                                anchors.fill: playlist_icon
                                source: playlist_icon
                                hue: 0.0
                                lightness: -8
                            }
                        }
                    }
                }
            }
        }
    }
    Rectangle {
        id: shadow_rect
        height: parent.height * .15
        width: parent.width * .98
        color: "#20000000"
        radius: 8
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: parent.height * .01
        }
    }
    FastBlur {
        transparentBorder: true
        source: shadow_rect
        anchors.fill: music_bar_container
        visible: true
        radius: 30
    }
}
