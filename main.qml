import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Window 2.0

ApplicationWindow {

    visible: true
    x: Screen.width > Screen.height ? 1200 : 0
    width: Screen.width > Screen.height ? 2 * (720) / 3 : Screen.width
    height: Screen.width > Screen.height ? 2 * (1280) / 3 : Screen.height
    //    width: Screen.width
    //    height: Screen.height
    font.family: 'IRANSansWeb(FaNum)'

    MainMenu {
        id: mainMenuItem
    }

    ReadPage {
        id: readpage
    }

    SeasonPage {
        id: seasonPage
    }

    AboutPage {
        id: aboutpage
    }
    property bool runfirst: true
    property string season1: txtSeason1
    property string season2: txtSeason2
    property string season3: txtSeason3
    property string season4: txtSeason4
}
