import QtQuick

Item {
    id: buttonId
    width: btnCont.width
    height: btnCont.height
    // to set name externally
    property alias btnText: textOId.text
    // set signal
    signal btnClick

    Rectangle{
        id: btnCont
        width: textOId.implicitWidth + 20
        height: textOId.implicitHeight + 20
        color: "red"
        border{
            color: "black"
            width: 3
        }
        Text {
            id: textOId
            anchors.centerIn: parent
            text: qsTr("text")
        }
        MouseArea{
            anchors.fill: parent
            onClicked:{
                // emit signal
                buttonId.btnClick()
            }
        }
    }
}
