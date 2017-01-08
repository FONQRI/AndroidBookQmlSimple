import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Window 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Material 2.0

Item {
    property bool visi: false
    property string tolltiptext: "   بزودی..."
    id:seasomPageItem



    Rectangle {
        width: Screen.width
        height: Screen.height
        visible: visi
        color:Material.color(Material.Blue)
        ScrollView{
            id: scrollView1
            anchors.fill: parent

            Column{
                id: column
                width: Screen.width
                height: (Screen.height/11)*20

                spacing: Screen.height/11
                anchors.horizontalCenter: parent.horizontalCenter

                Button{
                    id:season1Button
                    anchors.horizontalCenter: parent.horizontalCenter
                    text:"فصل 1"
                    width:(Screen.width/5)*3
                    height:Screen.height/11
                    Material.background:"#76ff03"
                    onClicked: {
                        runfirst = false
                        readpage.storypart =readpage.storypart  != season1?season1:readpage.storypart
                        readpage.seasonindex = 1
                        readpage.visi =true
                        readpage.positioning()
                        seasomPageItem.visi=false
                    }
                }
                Button{
                    anchors.horizontalCenter: parent.horizontalCenter
                    text:"فصل 2"
                    width:(Screen.width/5)*3
                    height:Screen.height/11
                    Material.background:"#76ff03"

                    onClicked: {
                        runfirst = false
                        readpage.storypart =readpage.storypart  !=  season2? season2:readpage.storypart
                        readpage.seasonindex = 2
                        readpage.visi =true
                        readpage.positioning()
                        seasomPageItem.visi=false
                    }

                }Button{
                    anchors.horizontalCenter: parent.horizontalCenter
                    text:"فصل 3"
                    width:(Screen.width/5)*3
                    height:Screen.height/11
                    Material.background:"#76ff03"
                    onClicked:{
                        runfirst = false
                        readpage.storypart =readpage.storypart  !=  season3? season3:readpage.storypart
                        readpage.seasonindex = 3
                        readpage.visi =true
                        readpage.positioning()
                        seasomPageItem.visi=false
                    }

                }Button{
                    anchors.horizontalCenter: parent.horizontalCenter
                    text:"فصل 4"
                    width:(Screen.width/5)*3
                    height:Screen.height/11
                    Material.background:"#76ff03"
                    onClicked: {
                        runfirst = false
                        readpage.storypart =readpage.storypart  !=  season4? season4:readpage.storypart
                        readpage.seasonindex = 4
                        readpage.visi =true
                        readpage.positioning()


                        seasomPageItem.visi=false
                    }


                }Button{
                    anchors.horizontalCenter: parent.horizontalCenter
                    text:"فصل 5"
                    width:(Screen.width/5)*3
                    height:Screen.height/11
                    Material.background:"#ffff00"
                    //onClicked: console.log("فصل 1")
                    ToolTip.timeout: 5000
                    ToolTip.visible: pressed
                    ToolTip.text:seasomPageItem.tolltiptext

                }Button{
                    anchors.horizontalCenter: parent.horizontalCenter
                    text:"فصل 6"
                    width:(Screen.width/5)*3
                    height:Screen.height/11
                    Material.background:"#ff3d00"
                    //onClicked: console.log("فصل 1")
                    ToolTip.timeout: 5000
                    ToolTip.visible: pressed
                    ToolTip.text:seasomPageItem.tolltiptext

                }Button{
                    anchors.horizontalCenter: parent.horizontalCenter
                    text:"فصل 7"
                    width:(Screen.width/5)*3
                    height:Screen.height/11
                    Material.background:"#ff3d00"
                    //onClicked: console.log("فصل 1")
                    ToolTip.timeout: 5000
                    ToolTip.visible: pressed
                    ToolTip.text:seasomPageItem.tolltiptext

                }Button{
                    anchors.horizontalCenter: parent.horizontalCenter
                    text:"فصل 8"
                    width:(Screen.width/5)*3
                    height:Screen.height/11
                    Material.background:"#ff3d00"
                    //onClicked: console.log("فصل 1")
                    ToolTip.timeout: 5000
                    ToolTip.visible: pressed
                    ToolTip.text:seasomPageItem.tolltiptext

                }Button{
                    anchors.horizontalCenter: parent.horizontalCenter
                    text:"فصل 9"
                    width:(Screen.width/5)*3
                    height:Screen.height/11
                    Material.background:"#ff3d00"
                    //onClicked: console.log("فصل 1")
                    ToolTip.timeout: 5000
                    ToolTip.visible: pressed
                    ToolTip.text:seasomPageItem.tolltiptext

                }Button{
                    anchors.horizontalCenter: parent.horizontalCenter
                    text:"فصل 10"
                    width:(Screen.width/5)*3
                    height:Screen.height/11
                    Material.background:"#ff3d00"
                    //onClicked: console.log("فصل 1")
                    ToolTip.timeout: 5000
                    ToolTip.visible: pressed
                    ToolTip.text:seasomPageItem.tolltiptext

                }

            }

        }

        Button{
            id:backButton
            text:"بازگشت"
            onClicked:{ visi = false

                mainMenuItem.visi = true

            }

        }
    }
}
