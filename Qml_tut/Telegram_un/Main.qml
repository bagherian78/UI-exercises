import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts

Window {
    id: appWindow
    width: 640
    height: 480
    visible: true
    property alias listView: listView
    title: qsTr("Telegram")
    flags: Qt.FramelessWindowHint

    property bool compactMode: appWindow.width > 500


    Rectangle{
        id:actionbar
        width: parent.width
        height: parent.height <= 640? 0.06 * parent.height: 0.03 * parent.height
        color: "#d1ddff"

        anchors{
            top: parent.top
            left: parent.left
            right: parent.right
        }

        WindowBtn{
            id:closeBtn
            anchors{
                top: parent.top
                right: parent.right
            }
            imageUrl: "qrc:/images/cross_white.png";
            onClicked: Qt.quit()
        }

        WindowBtn{
            id:maximizeBtn
            anchors{
                top: parent.top
                right: closeBtn.right
                rightMargin: 30
            }
            imageUrl: "qrc:/images/mimimize_white.png";
            onClicked:{

                if (appWindow.visibility === Window.Maximized) {
                    appWindow.visibility = Window.Windowed;
                } else {
                    appWindow.visibility = Window.Maximized;
                }
            }
        }

        WindowBtn{
            id:hideBtn
            anchors{
                top: parent.top
                right: maximizeBtn.right
                rightMargin: 30
            }
            imageUrl: "qrc:/images/minimize-screen.svg";
            onClicked: {appWindow.visibility = Window.Minimized;}
        }
    }

    Rectangle{
        id: sideBar
        color: "#1f2940"
        width: appWindow.width <= 800 ? (appWindow.width / 10) :(appWindow.width / 20)
        anchors{
            top: actionbar.bottom
            left: parent.left
            bottom: parent.bottom
        }

        Column{
            topPadding: 15
            width: parent.width
            height: parent.height
            spacing: 25
            Rectangle{
                id:menuItemF
                color:"transparent"
                width: parent.width
                height: menu_unread.height
                IconImage {
                    id: menu_unread
                    width: 40
                    height: 40
                    color: "white"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    source: "qrc:/images/Hamburger_icon.png"
                }

            }

            Rectangle{
                id:menuItemS
                color:"transparent"
                width: parent.width
                height: menu_unread.height
                IconImage {
                    id: menu_unread_S
                    width: 40
                    height: 40
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    source: "qrc:/images/folders_all@3x.png"
                }
                Text {
                    id: menuItemS1
                    text: qsTr("All chats")
                    color: "white"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: menu_unread_S.bottom
                }
            }

            Rectangle{
                id:menuItem3
                color:"transparent"
                width: parent.width
                height: menu_unread_3.height
                IconImage {
                    id: menu_unread_3
                    width: 40
                    height: 40
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    source: "qrc:/images/folders@3x.png"
                }
                Text {
                    id: menuItemS3
                    text: qsTr("Private")
                    color: "white"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: menu_unread_3.bottom
                }
            }

            Rectangle{
                id:menuItem4
                color:"transparent"
                width: parent.width
                height: menu_unread_4.height
                IconImage {
                    id: menu_unread_4
                    width: 40
                    height: 40
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    source: "qrc:/images/folders_unread@3x.png"
                }
                Text {
                    id: menuItemS4
                    text: qsTr("Unread")
                    color: "white"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: menu_unread_4.bottom
                }
            }

            Rectangle{
                id:menuItem5
                color:"transparent"
                width: parent.width
                height: menu_unread_5.height
                IconImage {
                    id: menu_unread_5
                    width: 40
                    height: 40
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    source: "qrc:/images/folders_edit@3x.png"
                }
                Text {
                    id: menuItemS5
                    text: qsTr("Edit")
                    color: "white"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: menu_unread_5.bottom
                }
            }


        }
    }


    SplitView{
        id: splitView
        opacity: 1
        antialiasing: true
        focus: true
        anchors{
            top: actionbar.bottom
            left: sideBar.right
            right: parent.right
            bottom: parent.bottom
        }

        Row{
            SplitView.preferredWidth: (appWindow.width<=640)? 300:450
            SplitView.fillHeight: true
            visible: ~compactMode

            Rectangle{

                id: topMenuS
                width: parent.width
                height:(parent.height/15)
                color: "transparent"

                Rectangle {
                    id: rectangle
                    x: 0
                    y: 0
                    width: parent.width - 15
                    height: parent.height - 10
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    color: "transparent"
                    radius: Math.min(width, height)*10
                    border.width: 1

                    TextEdit{
                        id: searchBox
                        anchors{
                            leftMargin: (Math.min(appWindow.width, appWindow.height) < 640)?10:20
                            left: parent.left
                            right: parent.right
                        }

                        property string placeholderText: "Search"
                        anchors.verticalCenter: parent.verticalCenter
                        wrapMode: TextEdit.Wrap
                        font{
                            pixelSize: (Math.min(appWindow.width, appWindow.height) > 640)?25:14
                        }

                        Text {
                            text: searchBox.placeholderText
                            color: "#aaa"
                            visible: !searchBox.text
                            font{
                                pixelSize: (Math.min(appWindow.width, appWindow.height) > 640)?25:14
                            }
                        }
                    }

                    IconImage{
                        width:rectangle.height
                        height:rectangle.height
                        anchors{
                            right: parent.right
                            top: parent.top
                            bottom: parent.bottom
                            rightMargin: 10
                        }
                        source: "qrc:/images/info_search@3x.png"
                    }
                }
            }

            Rectangle{
                anchors{
                    top: topMenuS.bottom
                    bottom: parent.bottom
                    right: parent.right
                    left: parent.left
                }
                Column{
                    id: listView
                    height: parent.height
                    width: parent.width
                    anchors.fill: parent

                    Rectangle{
                        width: parent.width
                        height: fChat.itemHeight

                        DialogItem{
                            id: fChat
                            itemHeight: 80
                            itemwidth: parent.width
                            displayName: "ali"
                            lastMesageDateTime: "15:18"
                            lastMessageType:"text"
                            lastMsgText: "Hey there! what's up?"
                        }
                    }

                    Rectangle{
                        height: fChat.itemHeight
                        width: parent.width

                        DialogItem{
                            id: sChat
                            itemHeight: 80
                            itemwidth: parent.width
                            displayName: "Mitra"
                            lastMesageDateTime: "15:22"
                            lastMessageType:"text"
                            lastMsgText: "Hello"
                        }
                    }
                    Rectangle{
                        height: fChat.itemHeight
                        width: parent.width

                        DialogItem{
                            id: thChat
                            itemHeight: 80
                            itemwidth: parent.width
                            displayName: "akbar"
                            lastMesageDateTime: "15:48"
                            lastMessageType:"text"
                            lastMsgText: "Hello"
                        }
                    }
                }
            }
        }

        Rectangle{
            color: "blue"
            SplitView.fillWidth: true
            SplitView.fillHeight: true
            visible: compactMode

        }
    }

}



