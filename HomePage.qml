import QtQuick
import QtQuick.Layouts
import 'Components'

Rectangle {
    id: root

    Title {
        id: topText
        width: root.width
        text: '智能居家健康管理系统'
    }

    GridLayout {
        anchors.centerIn: parent
        height: parent.height - topText.height
        rows: 2
        columns: 2
        rowSpacing: 30
        columnSpacing: 30
        MyButton {

            text: '日程'
        }
        MyButton {

            text: '日程'
        }
        MyButton {

            text: '日程'
        }
        MyButton {

            text: '日程'
        }
    }

//    Rectangle {
//        id: buttonArea
//        width: parent.width
//        height: parent.height - topText.height
//        y: topText.height

//        Rectangle {
//            id: btn1
//            width: 150
//            height: 20
//            x: 100
//            Text {
//                text: '个人健康'
//            }
//            MouseArea {
//                anchors.fill: parent
//                onClicked: {
//                    stackView.push('AIAssistant.qml')
//                }
//            }
//        }
//        MyButton {
//            text: '个人健康'
//            clicked: {
//                stackView.push('AIAssistant.qml')
//            }
//        }

//        Rectangle {
//            id: btn2
//            width: 150
//            x: 100 + btn1.width
//            Text {
//                text: '日程'
//            }
//        }
//        MyButton {

//            text: '日程'
//        }

//        Rectangle {
//            id: btn3

//            width: 150
//            height: 20
//            x: 100
//            y: btn1.height

//            anchors {
//                top: btn1.botton
//            }
//            Text {
//                text: '家人健康'
//            }
//        }

//        Rectangle {
//            id: btn4

//            width: 150
//            height: 20
//            x: 100 + btn3.width
//            y: btn1.height

//            anchors {
//                top: btn1.botton
//            }
//            Text {
//                text: '健康小贴士'
//            }
//        }
//    }

}
