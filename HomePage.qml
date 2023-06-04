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
        text: '智能居家健康管理系统'
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
            text: '个人健康'
            onClicked: {
                stackView.push('AIAssistant.qml')
            }
        }
        MyButton {
            text: '日程'
        }
        MyButton {
            text: '家人健康'
        }
        MyButton {
            text: '健康小贴士'
        }
    }
}
