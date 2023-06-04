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
        text: '个人健康 AI 助理/中枢'
    }

    Rectangle {
        id: avatarArea

        x: 100
        y: topText.height + 50

        width: 300
        height: 300
        radius: 150
        border.color: Qt.darker('#4E5BF2', 1.2)
        border.width: 3

//        color: 'red'
        Image {
            width: 300
            height: 300
//            radius: 150
            source: 'Assets/1.png'
            fillMode: Image.PreserveAspectCrop
        }
    }

    Rectangle {
        id: btnDID
        width: 150
        height: 20
        anchors {
            top: avatarArea.bottom
            left: avatarArea.left
        }
        Text {
            text: '数据导出'
        }
        MouseArea {
            anchors.fill: parent
        }
    }

    GridLayout {
        anchors.top: topText.bottom
        anchors.left: avatarArea.right
        anchors.topMargin: 5
        anchors.leftMargin: 100

//        anchors.centerIn: parent
        height: parent.height - topText.height
        rows: 3
        columns: 1
        rowSpacing: 0
        columnSpacing: 30
        MyButton {
            text: '数字孪体'
            onClicked: {
                stackView.push('DataDetail.qml')
            }
        }
        MyButton {
            text: '健康监测'
            onClicked: {
                stackView.push('DataManage.qml')
            }
        }
        MyButton {
            text: '健康助手'
        }
    }
}
