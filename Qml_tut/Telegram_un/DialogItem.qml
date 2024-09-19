import QtQuick
import QtQuick.Controls
Item {
    id: root

    property alias itemwidth: root.width
    property alias itemHeight: root.height
    property string lastMessageType
    property string avator

    property string displayName
    property string lastMesageDateTime
    property string lastMsgText


    anchors.fill: parent
    anchors.leftMargin: 5

    Rectangle{
        property bool imageLoad
        id: avator
        radius: 1000
        width: 50
        height: 50
        color: "purple"


        Image {
            id: avatorImage
            source: ""
            onStatusChanged: if (image.status === Image.Ready) imageLoad=True
        }
        Text {
            id: avatorName
            text: displayName? displayName[0] : ""
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            color: "white"
            font {
                capitalization:Font.AllUppercase
                bold: true

            }
        }
    }

    Column{
        anchors{
            top: root.top
            bottom: root.bottom
            left: avator.right
            right: root.right
            leftMargin: 8
            topMargin: 5
            rightMargin: 10
        }
        spacing: 10
        Row{
            id: rowContainer
            spacing: 2
            IconImage{
                id: chatTypeIcon
                height: userName.implicitHeight
                width: height
                source: "qrc:/images/folders_unread@3x.png"
            }

            Text {
                id: userName
                text: displayName? displayName : ""
            }
        }




        Label {
            id: lastMsgTextid
            color: "gray"


            font.pixelSize: 14
            text: {
                if(lastMessageType==='Photo'){
                     "photo"
                 }else if(lastMessageType==='text'){
                    lastMsgText
                 }else{
                     " e"
                 }
            }
        }
    }

    Label {
        id: lastMessageTime
        color: "gray"
        font.pixelSize: 14
        text: lastMesageDateTime
        anchors{
            top: parent.top
            topMargin: 5
            bottom: parent.bottom
            right: root.right
            rightMargin: 15
        }
    }





    }
