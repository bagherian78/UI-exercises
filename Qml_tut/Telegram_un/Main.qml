import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts

Window {
    id: appWindow
    width: 640
    height: 480
    visible: true
    //property alias listView: listView
    title: qsTr("Telegram")
    //flags: Qt.FramelessWindowHint

    property bool compactMode: appWindow.width > 500
    property color hoverColor1: "lightblue"
    property color lableColor1: "lightblue"

    Rectangle{
        id:actionbar
        width: parent.width
        height: actionBarRow.height
        color: "#d1ddff"

        Row{
            id: actionBarRow
            layoutDirection: Qt.RightToLeft
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            spacing: 10

            WindowBtn{
                id:closeBtn
                imageUrl: "qrc:/images/close-svgrepo-com.svg";
                btnWidth: 40
                btnHeight: 40
                hoverColor: hoverColor1
                onClicked: Qt.quit()

            }

            WindowBtn{
                id:maximizeBtn
                imageUrl: "qrc:/images/minimize-svgrepo-com.svg";
                btnWidth: 40
                btnHeight: 40
                hoverColor: hoverColor1
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
                imageUrl: "qrc:/images/minus-svgrepo-com.svg";
                btnWidth: 40
                btnHeight: 40
                hoverColor: hoverColor1
                onClicked: {appWindow.visibility = Window.Minimized;}
            }
        }
    }

    Rectangle{
        id: sideBar
        width: appWindow.width <= 800 ? (appWindow.width / 10) :(appWindow.width / 20)
        anchors{
            top: actionbar.bottom
            left: parent.left
            bottom: parent.bottom
        }
        color: "#1f2940"
        ListModel {
            id: menuList
            ListElement { mlableName: ""; mimageUrl: "qrc:/images/hamburger-menu-svgrepo-com.svg" }
            ListElement { mlableName: "All chats"; mimageUrl: "qrc:/images/folder-svgrepo-com.svg" }
            ListElement { mlableName: "Private"; mimageUrl: "qrc:/images/message-square-list-svgrepo-com.svg" }
            ListElement { mlableName: "Unread"; mimageUrl: "qrc:/images/message-square-list-svgrepo-com.svg" }
            ListElement { mlableName: "Edit"; mimageUrl: "qrc:/images/edit-svgrepo-com.svg" }
        }

        ListView {
            model: menuList
            width:parent.width
            height: parent.width
            anchors.fill: parent
            delegate: WindowBtn {
                id: editBtn
                anchors.horizontalCenter: parent.horizontalCenter
                btnWidth: sideBar.width
                btnHeight: sideBar.width
                imageUrl: mimageUrl
                lableName: mlableName  // Corrected from lableName to labelName
                hoverColor: hoverColor1
                lableColor: lableColor1
            }
            spacing: 10
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



