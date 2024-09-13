import QtQuick

Item {
    id: bannerContainer
    width:rectBanId.width
    height:rectBanId.height
    property alias bannerText: bannerTextId.text
    property alias bannerWidth: rectBanId.width
    property alias bannerHeight: rectBanId.height
    property alias bannerColor: rectBanId.color

    signal bannerClick

    Rectangle{
        id: rectBanId
        width: 0
        height: 0
        color: "#000000"
        Text {
            id: bannerTextId
            text: qsTr("Test1")
            anchors.bottom: parent.bottom
            bottomPadding: 10
            leftPadding: 5
            font.bold: true

        }
        Rectangle{
            x: bannerTextId.x + 5
            y: bannerTextId.y + bannerTextId.contentHeight
            width: bannerTextId.width
            height: 3
            color: "#FFFFFF"
        }

        MouseArea{
            anchors.fill: parent
            onClicked:{
                bannerContainer.bannerClick()
            }
        }
    }
}
