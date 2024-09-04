import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("SPA")

    property string backgroundColor: "#E9EFEC"
    property string firstColor: "#C4DAD2"
    property string secondColor: "#6c9c95"
    Rectangle{
        height: parent.height
        width: parent.width
        color: backgroundColor
        Column {
            id: containerID
            anchors.centerIn: parent
            width: (parent.width*0.65)
            height: (parent.height*0.7)
            spacing: 5

            Row{
                id: firstRowID
                width: containerID.width
                height: (containerID.height/3.2)
                spacing: 10
                Rectangle{
                    width: (firstRowID.width*1/4.1)
                    height: firstRowID.height
                    color: firstColor
                    Text {
                        text: qsTr("Test1")
                        anchors.bottom: parent.bottom
                        bottomPadding: 5
                        leftPadding: 5
                        font.bold: true
                    }
                }
                Rectangle{
                    width: (firstRowID.width*3/4.1)
                    height: firstRowID.height
                    color: secondColor
                    Text {
                        text: qsTr("Test1")
                        anchors.bottom: parent.bottom
                        bottomPadding: 5
                        leftPadding: 5
                        font.bold: true
                    }
                }
            }

            Row{
                id: secondRowID
                width: containerID.width
                height: (containerID.height/3.2)
                spacing: 10
                Rectangle{
                    width: (firstRowID.width*3/4.1)
                    height: firstRowID.height
                    color: secondColor
                    Text {
                        text: qsTr("Test1")
                        anchors.bottom: parent.bottom
                        bottomPadding: 5
                        leftPadding: 5
                        font.bold: true
                    }
                }
                Rectangle{
                    width: (firstRowID.width*1/4.1)
                    height: firstRowID.height
                    color: firstColor
                    Text {
                        text: qsTr("Test1")
                        anchors.bottom: parent.bottom
                        bottomPadding: 5
                        leftPadding: 5
                        font.bold: true
                    }
                }
            }

            Row{
                id: thirdRowID
                width: containerID.width
                height: (containerID.height/3.2)
                spacing: 10
                Rectangle{
                    width: (firstRowID.width*1/4.1)
                    height: firstRowID.height
                    color: firstColor
                    Text {
                        text: qsTr("Test1")
                        anchors.bottom: parent.bottom
                        bottomPadding: 5
                        leftPadding: 5
                        font.bold: true
                    }
                }
                Rectangle{
                    width: (firstRowID.width*3/4.1)
                    height: firstRowID.height
                    color: secondColor
                    Text {
                        text: qsTr("Test1")
                        anchors.bottom: parent.bottom
                        bottomPadding: 5
                        leftPadding: 5
                        font.bold: true
                    }
                }
            }
        }
    }
}
