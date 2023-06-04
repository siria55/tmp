import QtQuick

Rectangle {
    id: root
    color: 'gray'

    Rectangle {
        id: topTextArea
        height: 60
        width: root.width
        anchors.topMargin: 15
        Text {
            id: topText
            width: parent.width

            anchors {
                fill: parent
            }

            horizontalAlignment : Text.AlignHCenter
            font.pixelSize: 60
            text: '数据详情'
        }
    }
}