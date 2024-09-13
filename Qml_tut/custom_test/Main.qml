import QtQuick

Window {
    id: windowContainer
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row{
        spacing: 5

        AdvancedBtn{
            id: btn1Id
        }

        AdvancedBtn{
            id: btn2Id
            btnText: "hello Btn 1"
            onBtnClick: {
                console.log("hhhi")
            }
        }
    }
}
