import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Window 2.0
import QtQuick.Layouts 1.0
Item {
    id:readItem
    anchors.fill:parent


    property bool visi: false
    property bool menucome
    property string  storypart
    property int  seasonindex
    property int position: lastposition
    property string colorback: "#ffcc80"
    function positioning(){
      scrollView1.flickableItem.contentY = 0

    }
    Rectangle {
        visible: visi
        width:parent.width
        height:parent.height
        color:colorback



        ScrollView{
            id: scrollView1
            anchors.fill: parent


            flickableItem.contentY : menucome ?position:0


            ColumnLayout{
                width:parent.width
                Text {
                    text:storypart

                    id: preyText
                    width: scrollView1.width
                    horizontalAlignment: Text.AlignJustify
                    Layout.maximumWidth: scrollView1.width - 30
                    Layout.preferredWidth: scrollView1.width - 30
                    wrapMode: Text.WordWrap
                    font.pointSize: 15
                    clip: false

                    leftPadding:15
                    topPadding: 50
                    textFormat: Text.PlainText
                }
            }
        }


        Button{
            id:backButton
            text:"بازگشت"
            onClicked:{
                updatedata_qml.updatePosition(seasonindex,scrollView1.flickableItem.contentY)
                position=scrollView1.flickableItem.contentY
                visi = false
                if(menucome)
                    mainMenuItem.visi = true
                else
                    seasonPage.visi = true
            }
        }
    }


}
