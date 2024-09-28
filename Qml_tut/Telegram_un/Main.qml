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
    //flags: Qt.FramelessWindowHint

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
            imageUrl: "qrc:/images/close-svgrepo-com.svg";
            onClicked: Qt.quit()
        }

        WindowBtn{
            id:maximizeBtn
            anchors{
                top: parent.top
                right: closeBtn.right
                rightMargin: 30
            }
            imageUrl: "qrc:/images/minimize-svgrepo-com.svg";
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
            imageUrl: "qrc:/images/minus-svgrepo-com.svg";
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
                WindowBtn {
                    id: menu_unread
                    width: 40
                    height: 40
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    imageUrl: "qrc:/images/hamburger-menu-svgrepo-com.svg"
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
                    source: "qrc:/images/folder-svgrepo-com.svg"
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
                    source: "qrc:/images/message-square-list-svgrepo-com.svg"
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
                    source: "qrc:/images/message-square-list-svgrepo-com.svg"
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
                    source: "qrc:/images/edit-svgrepo-com.svg"
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

        handle: Rectangle {
            id: handleDelegate
            implicitWidth: 2
            implicitHeight: 4
            color: SplitHandle.pressed ? "#888"
                : (SplitHandle.hovered ? Qt.lighter("#888", 1.2) : "black")

            containmentMask: Item {
                x: (handleDelegate.width - width) / 2
                width: 30
                height: splitView.height
            }
        }


        Row{
            SplitView.preferredWidth: Math.floor(appWindow.width/3)
            SplitView.fillHeight: true
            visible: ~compactMode

            Rectangle{

                id: topMenuS
                width: parent.width
                height:(parent.height/15)
                color: "transparent"

                Rectangle {
                    id: rectangle
                    width: parent.width - 15
                    height: parent.height - 10
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    //Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
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
                        source: "qrc:/images/search-alt-2-svgrepo-com.svg"
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
                            displayName: "Farhad"
                            lastMesageDateTime: "15:48"
                            lastMessageType:"text"
                            lastMsgText: "Hey u, what's up"
                        }
                    }
                }
            }
        }

        ColumnLayout{
            id:messageDialog
            SplitView.preferredWidth: Math.floor(2*appWindow.width/3)
            SplitView.fillWidth: true
            SplitView.fillHeight: true
            visible: compactMode
            z: 1

            MessageBar{
                id: msgBar
                itemHeight: 68
                itemWidth: parent.width
                isCompactMode: true
                Layout.fillWidth: true
                displayName: "Mohammad Ali"
            }

            Rectangle{
                width: parent.width
                color: "#c2ce8b"
                Layout.fillHeight: true
                Layout.fillWidth: true
                //height: element.implicitHeight
                ListModel {
                    id: chatModel
                    ListElement { mtext: "Hey"; user: "A" }
                    ListElement { mtext: "have you heard about nanotechnology?"; user: "A" }
                    ListElement { mtext: "Yeah, it's amazing how small-scale tech can make such a big impact!"; user: "B" }
                    ListElement { mtext: "Exactly! It's all about manipulating matter at the atomic or molecular level."; user: "A" }
                    ListElement { mtext: "Right, and it has applications in medicine, electronics, and even energy."; user: "B" }
                    ListElement { mtext: "I read they're using nanoparticles for targeted drug delivery."; user: "A" }
                    ListElement { mtext: "That’s huge for treating diseases more effectively, like cancer."; user: "B" }
                    ListElement { mtext: "Imagine minimizing side effects by delivering drugs precisely where they’re needed."; user: "A" }
                    ListElement { mtext: "Yeah, and it's not just medicine, nanotech could revolutionize solar panels too!"; user: "B" }
                    ListElement { mtext: "Right! More efficient energy capture and storage at a nano-scale. It's the future."; user: "A" }
                    ListElement { mtext: "Definitely! We’re just scratching the surface of its potential."; user: "B" }
                }
                Component {
                    id: fruitDelegate
                    RowLayout {
                        width: parent.width

                        Rectangle {
                            width: 0.7 * parent.width
                            implicitHeight: msgHolder.height + 20
                            radius: 5
                            color: user == "A" ? "#FFF" : "#effdde"
                            Layout.alignment: user == "A" ? Qt.AlignLeft : Qt.AlignRight  // Align left for "A", right for others

                            Text {
                                id: msgHolder
                                text: mtext
                                width: parent.width
                                wrapMode:Text.WrapAnywhere
                            }
                        }
                    }
                }

                ListView {
                    anchors.fill: parent
                    model: chatModel
                    delegate: fruitDelegate
                    spacing: 10
                }

            }

            MessageEditor{
                id: msgEditor
                itemHeight: 60
                itemWidth: parent.width
                Layout.fillWidth: true
                Layout.fillHeight: false
                Layout.alignment: Qt.AlignBottom
            }



        }

    }

}



