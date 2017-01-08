import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Window 2.0
import QtQuick.Layouts 1.0
Item {
    id:readItem
    property bool visi: false

    Rectangle {
        visible: visi
        width:Screen.width
        height:Screen.height
        color:Material.color(Material.Blue)



        ScrollView{
            anchors.fill: parent

Column{
            Image {
x:backButton.width
                visible: true
                id: myphoto
                source: "qrc:/images/myimage.png"
                sourceSize.width:Screen.width/2
                sourceSize.height: Screen.height/3
            }


                width:parent.width

                Text {
                    text:"نویسنده : بهنام صباغی






با سلام
دوستان چند وقتی نتونستم چیزی منتشر کنم دستم بند بود  داشتم برنامه نویسی کار میکردم اخه سر اولین و اخرین عشق 3 چون با کتابساز ساخته بودم بازار اجازه ی انتشار نداد  حالا این داستان رو توی 10 فصل دارم منتشر میکنم که فعلا چهار فصلش کامل شده و مشغول فصل 5 هستم که اونم بزودی اماده میشه و منتشر میکنم  به امید خدا سعی دارم فصل های بعدی رو با حداکثر فاصله زمانی 1 ماه منتشر کنم امیدوارم خوشتون بیاد .
میتونید نظراتتون رو برام به ایدی تلگرامم بفرستید : @FONQRI
نکته ی اخر این که سعی میکنم همیشه نسخه ی دمو فقط یک فصل از نسخه ی اصلی عقب تر باشه این نسخه ی اصلیه که میتونید توش تمام فصل ها رو بدون محدودیت بخونید و به محض تکمیل شدن فصل جدید این نسخه از کتاب اپدیت میشه بازم ممنونم
موفق باشید

وب نما :behlimoo.blog.ir





"
                    id: preyText
                    width: Screen.width -30
                    horizontalAlignment: Text.AlignJustify
                    verticalAlignment: Text.AlignLeft
                    Layout.maximumWidth: scrollView1.width - 30
                    Layout.preferredWidth: scrollView1.width - 30
                    wrapMode: Text.WordWrap
                    font.pointSize: 15
                    clip: false
                    leftPadding: 15
                    topPadding: 50
                    textFormat: Text.PlainText
                }

            }

        }


        Button{
            id:backButton

            text:"بازگشت"
            onClicked:{
                visi = false
                mainMenuItem.visi = true

            }
        }
    }


}
