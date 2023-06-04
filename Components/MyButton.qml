import QtQuick
import QtQuick.Controls

Button  {
    id: root
    property color backgroundDefaultColor: "#4E5BF2"
    property color backgroundPressedColor: Qt.darker(backgroundDefaultColor, 1.2)
    property color contentItemTextColor: "white"

//    property alias width: bg.implicitWidth
//    property alias height: bg.implicitHeight

    text: "Button"
    flat: true
    contentItem: Text {
        text: root.text
        color: root.contentItemTextColor
        font.pixelSize: 40
        font.family: "Arial"
        font.weight: Font.Bold
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        id: bg
        implicitWidth: 360
        implicitHeight: 120
        radius: 10
        border.color: root.backgroundPressedColor
        border.width: 3
        color: root.down ? root.backgroundPressedColor : root.backgroundDefaultColor
//
//        layer.enabled: true
//        layer.effect: DropShadow {
//            transparentBorder: true
//            color: root.down ? root.backgroundPressedColor : root.backgroundDefaultColor
//            samples: 20
//        }
//        Image {
//            width: parent.width
//            height: parent.height
//            fillMode: Image.PreserveAspectCrop
//            source: '../Assets/btnBg.jpg'
//        }
    }
}
