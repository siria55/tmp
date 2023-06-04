import QtQuick
import QtQuick.Layouts
import 'Components'

Rectangle {
    id: root
    Image {
        id: backgroundImage
        anchors.fill: parent
        height: parent.height
        width: parent.width
        source: 'Assets/background.jpg'
    }
    Title {
        id: topText
        width: root.width
        text: '健康数据管理中心'
    }


    GridLayout {
        anchors.top: topText.bottom
        anchors.horizontalCenter: topText.horizontalCenter
        anchors.topMargin: 50
        rows: 2
        columns: 2
        rowSpacing: 50
        columnSpacing: 100
        MyButton {
            text: '外部个体数据'
        }
        MyButton {
            text: '数据加密'
        }
        MyButton {
            text: '家居系统数据'
        }
        MyButton {
            text: '数据脱敏'
        }
    }

}
