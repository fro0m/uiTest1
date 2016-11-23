import QtQuick 2.0

Image {
    id: componentRoot
    //source: connected"qrc:/Assets/Disconnect_btn.png"
    MouseArea {
        id: mouseArea
        property bool _connected: true
        anchors.fill: parent
        hoverEnabled: true
        onClicked: _connected = !_connected
    }
    states: [
        State {
            name: "connectedAndHovered"
            when: mouseArea._connected && mouseArea.containsMouse
            PropertyChanges { target: componentRoot; source: "qrc:/Assets/Quickconnect_btn_hover.png"}
        },
        State {
            name: "NotconnectedAndHovered"
            when: !mouseArea._connected && mouseArea.containsMouse
            PropertyChanges { target: componentRoot; source: "qrc:/Assets/Disconnect_btn_hover.png"}
        },
        State {
            name: "connectedAndNotHovered"
            when: mouseArea._connected && !mouseArea.containsMouse
            PropertyChanges { target: componentRoot; source: "qrc:/Assets/Quickconnect_btn.png"}
        },
        State {
            name: "NotconnectedAndNotHovered"
            when: !mouseArea._connected && !mouseArea.containsMouse
            PropertyChanges { target: componentRoot; source: "qrc:/Assets/Disconnect_btn.png"}
        }
    ]
}
