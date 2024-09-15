import QtQuick
import QtQuick.Controls 2.15

Window {
    id: appWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Telegram")
    flags: Qt.FramelessWindowHint

    Rectangle {
            width: 200
            height: 200
            anchors.centerIn: parent
            color: "#3498db" // Set your desired background color
            radius: 20 // This defines the roundness of the corners

            // Optional: Adding a border to see the shape better
            border.color: "#2980b9"
            border.width: 2
        }
    /*
    Rectangle{
        id:actionbar
        width: parent.width
        height: parent.height < 640? 0.05 * parent.height: 0.03 * parent.height
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
            imageUrl: "qrc:/images/cross_white.png";
            onClicked: Qt.quit()
        }

        WindowBtn{
            id:maximizeBtn
            anchors{
                top: parent.top
                right: closeBtn.right
                rightMargin: 30
            }
            imageUrl: "qrc:/images/mimimize_white.png";
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
            imageUrl: "qrc:/images/minimize-screen.svg";
            onClicked: {appWindow.visibility = Window.Minimized;}
        }
    }

    SplitView{
        id: splitView
        opacity: 1
        antialiasing: true
        focus: true
        anchors{
            top: actionbar.bottom
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        Rectangle{
            color: "#1f2940"
            SplitView.minimumWidth: 75
            SplitView.preferredWidth: 75
        }

        Rectangle{
            color: "red"
            SplitView.preferredWidth: (splitView.width)/4
            SplitView.minimumWidth: 100
            SplitView.maximumWidth: (splitView.width)/2
        }

        Rectangle{
            color: "blue"
            SplitView.preferredWidth: (splitView.width)/4

        }
    }*/

}



