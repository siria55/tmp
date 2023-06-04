import QtQuick

Rectangle {
    id: root
    height: 100
    property alias text: topText.text
//    color: 'gray'
    color: "transparent"

    Text {
        id: topText

        anchors.centerIn: parent

        font.pixelSize: 60
        color: 'white'
        text: '默认 Title'
    }

    Rectangle {
        width: 100
        height: 50
        color: 'transparent'
        Text {
            id: backText
            text: '<- back'
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 20
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                stackView.pop()
            }
        }
    }
    Rectangle {
        width: 100
        height: 50
        color: 'transparent'
        anchors.right: parent.right

        Text {
            id: closeText
            text: 'close'
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 20
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                Qt.quit()
            }
        }
    }
}
