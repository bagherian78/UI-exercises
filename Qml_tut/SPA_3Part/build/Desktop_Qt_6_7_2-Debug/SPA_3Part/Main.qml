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
                BannerItem{
                    bannerWidth: (firstRowID.width*1/4.1)
                    bannerHeight: firstRowID.height
                    bannerColor: firstColor
                    bannerText: "Home"
                    onBannerClick:{
                        console.log("1");
                    }
                }

                BannerItem{
                    bannerWidth: (firstRowID.width*3/4.1)
                    bannerHeight: firstRowID.height
                    bannerColor: secondColor
                    bannerText: "Controller"
                    onBannerClick:{
                        console.log("2");
                    }
                }

            }

            Row{
                id: secondRowID
                width: containerID.width
                height: (containerID.height/3.2)
                spacing: 10
                BannerItem{
                    bannerWidth: (firstRowID.width*3/4.1)
                    bannerHeight: firstRowID.height
                    bannerColor: secondColor
                    bannerText: "Gallery"
                    onBannerClick:{
                        console.log("3");
                    }
                }

                BannerItem{
                    bannerWidth: (firstRowID.width*1/4.1)
                    bannerHeight: firstRowID.height
                    bannerColor: firstColor
                    bannerText: "Stream"
                    onBannerClick:{
                        console.log("4");
                    }
                }
            }

            Row{
                id: thirdRowID
                width: containerID.width
                height: (containerID.height/3.2)
                spacing: 10
                BannerItem{
                    bannerWidth: (firstRowID.width*1/4.1)
                    bannerHeight: firstRowID.height
                    bannerColor: firstColor
                    bannerText: "About us"
                    onBannerClick:{
                        console.log("5");
                    }
                }

                BannerItem{
                    bannerWidth: (firstRowID.width*3/4.1)
                    bannerHeight: firstRowID.height
                    bannerColor: secondColor
                    bannerText: "contact us"
                    onBannerClick:{
                        console.log("6");
                    }
                }
            }
        }
    }
}
