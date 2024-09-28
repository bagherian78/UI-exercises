import QtQuick
import QtQuick.Layouts
import QtQuick.Controls 2.15


Item {
    id: messageEditor

    property alias itemWidth: messageEditor.width
    property alias itemHeight: messageEditor.height

    Rectangle{
        id: itemBorder
        color: "black"
        Layout.alignment: Qt.AlignTop
        height: 1
        width: parent.width
    }

    RowLayout {
        id: rowLayout
        width: messageEditor.width
        height: messageEditor.height
        Layout.alignment: Qt.AlignVCenter


        // Attach Button (e.g., for attaching files)
        WindowBtn{
            id: attachBtn
            // anchors.fill: parent
            imageUrl: "qrc:/images/attach-svgrepo-com.svg";
        }


        TextArea {
            id: textEditor
            Layout.fillWidth: true
            placeholderText: qsTr("Write a message...")
            wrapMode: TextArea.Wrap
        }



        // Emoji Button (e.g., for emoji picker)
        WindowBtn{
            id:emojuBtn
            // anchors.fill: parent
            imageUrl: "qrc:/images/emoji-funny-circle-svgrepo-com.svg";
        }

        WindowBtn{
            id:recordOrSend
            // anchors.fill: parent
            imageUrl: "qrc:/images/voice-fill-svgrepo-com.svg";
        }

    }
}
