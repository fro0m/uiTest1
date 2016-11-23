import QtQuick 2.0

Item {
    id: componentRoot
    implicitHeight: 80
    implicitWidth: 100
    Text {
        id: loginText
        anchors.verticalCenter: componentRoot.verticalCenter
        anchors.right: loginImg.left
        anchors.rightMargin: loginImg.width * 0.8
        text: qsTr("Login")
        color: "#667391"
        font.pointSize: componentRoot.height * 0.12 < 1 ?
                            1 : componentRoot.height * 0.12
    }
    Image {
        id: loginImg
        anchors.right: componentRoot.right
        anchors.verticalCenter: loginText.verticalCenter
        source: "qrc:/Assets/Login_normal.png"
    }
}
