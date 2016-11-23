import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.0
import QtQuick.Window 2.2
import "qrc:/"

ApplicationWindow {
    id: root
    visible: true
    //property real dp: (Screen.pixelDensity * 25.6 / 160) < 1 ? 1 : (Screen.pixelDensity * 25.6 / 160)
    //width: height * 9 / 16
    //height:  Screen.desktopAvailableHeight * 0.7
    width: 296
    height: 400
    title: qsTr("BlinkVPN")
    font.family: robotoFont.name
    background: Rectangle {
        color: "#3a435c"
    }
    Image {
        anchors.centerIn: parent
        source: "qrc:/Assets/Logo.png"
    }
    ConnectButton {
        id: button
        y: root.height * 11.18 / 14.11
        anchors.horizontalCenter: root.contentItem.horizontalCenter
        clip: true
        Image {
            id: flag
            z: -1
            source: "qrc:/Assets/SWE_flag.png"
            anchors.verticalCenter: button.verticalCenter
            x: button.x * 0.08
        }
        Text {
            id: buttonText
            anchors.right: button.right
            anchors.rightMargin: button.width * 0.16
            anchors.verticalCenter: button.verticalCenter
            text: qsTr("QUICK CONNECT")
            color: "white"
            font.pointSize: button.height * 0.125 < 1 ? 1 : button.height * 0.125
            font.bold: true
        }
    }
    LoginIndicator {
        id: loginIndicator
        anchors.top: root.contentItem.top
        anchors.right: root.contentItem.right
        anchors.rightMargin: root.contentItem.width * 0.05
        width: root.contentItem.width * 0.3
        height: root.contentItem.height * 0.1
    }
    FontLoader {
        id: robotoFont
        source: "qrc:/Fonts/Roboto_regular.ttf"
    }
}
