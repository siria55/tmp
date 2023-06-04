import QtQuick

Rectangle {
    id: root
    height: 100
    property alias text: topText.text
    color: 'gray'

    Text {
        id: topText

        anchors.centerIn: parent

        font.pixelSize: 60
        text: '默认 Title'
    }

    Rectangle {
        width: 100
        height: 50
        color: 'red'
        Text {
            id: backText
            text: '<- back'
            font.pixelSize: 20
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log(12321)
                stackView.pop()
            }
        }
    }
}
