import QtQuick 2.7
import QtQuick.Controls 1.0
import QtQuick.Controls 2.0
import QtQuick.Window 2.0
import QtQuick.Controls.Material 2.0



Item {
    property bool visi: true
    function  enabledconread(){
        if(runfirst)
        {
            if( lastposition === 0 && lastseason === 1)
            {
                return false
            }
            return true
        }
        else
        {


            if( readpage.position === 0 && readpage.seasonindex === 1)
            {
                return false
            }
            return true
        }
    }


    Rectangle {
        id:mainmenuRect
        //        width:Screen.width < Screen.height ? Screen.width:480
        //        height: Screen.width <Screen.height ? Screen.height : 853
        width: Screen.width
        height: Screen.height
        color:Material.color(Material.Blue)
        visible: visi


        Column{
            height: (Screen.height/11)*6
            spacing: Screen.height/11
            anchors.horizontalCenter: mainmenuRect.horizontalCenter
            topPadding:(mainmenuRect.height/11)*1.5

            Button{
                id:continuButton
                text:"ادامه خواندن"
                enabled: enabledconread()

                width:(mainmenuRect.width/5)*3
                height:mainmenuRect.height/11
                onClicked: {
                    readpage.visi = true

                    if(runfirst)
                    {
                        if(lastseason === 1)
                        {
                            readpage.storypart =readpage.storypart  != season1?season1:readpage.storypart
                            readpage.seasonindex=lastseason
                        }
                        if(lastseason === 2)
                        {
                            readpage.storypart =readpage.storypart  !=  season2? season2:readpage.storypart
                            readpage.seasonindex=lastseason


                        }
                        if(lastseason === 3)
                        {
                            readpage.storypart =readpage.storypart  !=  season3? season3:readpage.storypart
                            readpage.seasonindex=lastseason


                        }
                        if(lastseason ===4)
                        {
                            readpage.storypart =readpage.storypart  !=  season4? season4:readpage.storypart
                            readpage.seasonindex=lastseason


                        }
                        runfirst=false
                    }

                    readpage.visi = true
                    readpage.menucome = true
                    mainMenuItem.visi= false
                }

            }
            Button{

                id:selectStoryButton
                text:"انتخاب فصل"
                width:(mainmenuRect.width/5)*3
                height:mainmenuRect.height/11

                onClicked: {
                    seasonPage.visi =true
                    mainMenuItem.visi=false
                    readpage.menucome = false

                }
            }
            Button{
                id:settingButton
                text:"تنظیمات"
                width:(mainmenuRect.width/5)*3
                height:mainmenuRect.height/11
                onClicked:{
                    console.log(lastposition)
                    console.log(lastseason)
                    console.log( enabledconread())

                }
                ToolTip.timeout: 5000
                ToolTip.visible: pressed
                ToolTip.text:seasonPage.tolltiptext

            }
            Button{
                id:aboutUsButton
                text:"درباره من "
                width:(mainmenuRect.width/5)*3
                height:mainmenuRect.height/11
                onClicked:{
                    aboutpage.visi=true

                }
            }
            Button{
                id:exitButton
                text:"خروج"
                width:(mainmenuRect.width/5)*3
                height:mainmenuRect.height/11
                onClicked: Qt.quit()
            }
        }
    }

}

//******* this code is testing shadow for rectangle like material start *******

//        Label{
//            id:label1
//            visible: true
//            x:150
//            y:150
//            text:"ooooooooooooooollllllllllllllaaaaaaaaaaaaaalllllllllllaaaaaaaaaaaa"
//            color:Material.color(Material.Red)
//            width:Screen.width - 300
//            height:Screen.height - 300
//            Material.theme: Material.Light
//            Material.primary: Material.LightBlue
//            Material.accent: Material.LightBlue
//            Material.background: Material.LightBlue
//            Material.foreground: Material.LightBlue
//            background: Rectangle{
//                color:Material.color(Material.Red)

//            }

//        }
//        DropShadow {
//            id: label1shadow
//            source: label1
//            anchors.fill: source
//            width: source.width
//            height: source.height
//            cached: true
//            radius: 10.0
//            samples: 30
//            color: "#80000000"
//            smooth: true
//        }
//******* this code is testing shadow for rectangle like material end*******




