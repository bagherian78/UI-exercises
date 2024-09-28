import QtQuick
import QtQuick.Controls 2.15

Item {
    id: windowBtn
    width: 30
    height: 30

    property alias imageUrl: image.source
    signal clicked
    signal enterHover
    signal exitHover

    Rectangle{
        height: parent.height
        width:  parent.width
        color: "transparent"


        IconImage{
            id: image
            anchors.fill: parent
            width: 30
            height:30
            source: ""
            color: "purple"
        }

        MouseArea{
            anchors.fill: parent
            onClicked: windowBtn.clicked()
            hoverEnabled:true
            onEntered: windowBtn.enterHover()
            onExited: windowBtn.exitHover()
        }
    }
}
