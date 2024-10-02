import QtQuick
import QtQuick.Layouts
import QtQuick.Controls 2.15

Item {
    id: messageBar

    property alias itemWidth: messageBar.width
    property alias itemHeight: messageBar.implicitHeight
    property alias isCompactMode: compactMode.visible
    property string displayName: ""


    width: 300
    //height: 120


    Rectangle{
        id: itemBorder
        color: "black"
        anchors.top: rowLayout.bottom
        height: 1
        width: parent.width
    }
    RowLayout {
        id: rowLayout
        width: messageBar.width
        height: messageBar.height

        // Compact Mode Section
        Row {
            id: compactMode
            visible: isCompactMode
            width: (backBtn.width+avatar.width)
            Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft

            WindowBtn{
                id:backBtn
                btnWidth: (rowLayout.height*0.7)
                btnHeight: btnWidth
                hoverColor: "yellow"
                imageUrl: "qrc:/images/back-svgrepo-com.svg";
            }


            // Avatar Section
            Rectangle {
                id: avatar
                property bool imageLoad
                radius: 1000
                width: 50
                height: 50
                color: "purple"

                Image {
                    id: avatarImage
                    source: ""
                    onStatusChanged: if (image.status === Image.Ready) imageLoad = true
                }

                Text {
                    id: avatarName
                    text: displayName ? displayName[0] : ""
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                    color: "white"
                    font {
                        capitalization: Font.AllUppercase
                        bold: true
                    }
                }
            }
        }

        // User Info Section
        Column {
            id: userInfoSection
            Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
            Layout.fillWidth: true

            Text {
               id: userFullName
               text: displayName ? displayName : ""
            }

            Text {
               id: userStatus
               text: "Connecting..."
            }
        }


        // Icon Section
        Row {
            id: iconSection
            Layout.alignment: Qt.AlignRight
            spacing: 8

            WindowBtn{
                id:searchBtn
                btnWidth: (rowLayout.height*0.7)
                btnHeight: btnWidth
                hoverColor: "yellow"
                imageUrl: "qrc:/images/search-alt-2-svgrepo-com.svg";
            }

            WindowBtn{
                id:callBtn
                btnWidth: (rowLayout.height*0.7)
                btnHeight: btnWidth
                hoverColor: "yellow"
                imageUrl: "qrc:/images/call-192-svgrepo-com.svg";
            }

            WindowBtn{
                id:userInfo
                btnWidth: (rowLayout.height*0.7)
                btnHeight: btnWidth
                hoverColor: "yellow"
                imageUrl: "qrc:/images/panel-right-svgrepo-com.svg";
            }

            WindowBtn{
                id:moreItem
                btnWidth: (rowLayout.height*0.7)
                btnHeight: btnWidth
                hoverColor: "yellow"
                imageUrl: "qrc:/images/dots-vertical-svgrepo-com.svg";
            }
        }
    }
}
