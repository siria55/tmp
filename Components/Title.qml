import QtQuick

Rectangle {
    id: topTextArea
    height: 60
    // width: root.width
    anchors.topMargin: 15

    property alias text: title.text

    Text {
        id: title
        width: parent.width

        anchors {
            fill: parent
        }

        horizontalAlignment : Text.AlignHCenter
        font.pixelSize: 60
        text: '默认标题'
    }
}