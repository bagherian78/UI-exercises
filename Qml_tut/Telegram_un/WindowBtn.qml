import QtQuick
import QtQuick.Controls 2.15

Item {
    property alias imageUrl: image.source
    property color hoverColor: "yellow"
    property alias btnWidth: windowBtn.width
    property alias btnHeight: windowBtn.height
    property string lableName: ""
    property color lableColor: "White"
    property color iconColor: "purple"

    id: windowBtn
    width: 30
    height: 30


    signal clicked
    signal enterHover
    signal exitHover

    Rectangle{
        id: rootRect
        height: parent.height
        width:  parent.width
        color: "transparent"


        IconImage{
            id: image
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: (winlabel.text === "") ? parent.verticalCenter : undefined
            width: rootRect.width*0.55
            height:rootRect.height*0.55
            source: ""
            color: iconColor
        }

        Text {
            id: winlabel
            text: lableName
            color: lableColor
            visible: labelName != ""
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: image.bottom
        }

        MouseArea{
            id: mouseAreaCont
            anchors.fill: parent
            onClicked: windowBtn.clicked()
            hoverEnabled:true
            onEntered: {
                rootRect.color = hoverColor
                windowBtn.enterHover()
            }
            onExited: {
                rootRect.color = "transparent"
                windowBtn.exitHover()
            }
        }
    }
}
