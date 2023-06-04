import QtQuick

Rectangle {
    id: root
    color: 'gray'

    // Rectangle {
    //     id: topTextArea
    //     height: 60
    //     width: root.width
    //     anchors.topMargin: 15
    //     Text {
    //         id: topText
    //         width: parent.width

    //         anchors {
    //             fill: parent
    //         }

    //         horizontalAlignment : Text.AlignHCenter
    //         font.pixelSize: 60
    //         text: '智能居家健康管理系统'
    //     }
    // }
    Title {
        text: '智能居家健康管理系统'
    }

    Rectangle {
        id: buttonArea
        width: parent.width
        height: parent.height - topText.height
        y: topText.height

        Rectangle {
            id: btn1
            width: 150
            height: 20
            x: 100
            Text {
                text: '个人健康'
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    stackview.push('AIAssistant.qml')
                }
            }
        }

        Rectangle {
            id: btn2
            width: 150
            x: 100 + btn1.width
            Text {
                text: '日程'
            }
        }

        Rectangle {
            id: btn3

            width: 150
            height: 20
            x: 100
            y: btn1.height

            anchors {
                top: btn1.botton
            }
            Text {
                text: '家人健康'
            }
        }

        Rectangle {
            id: btn4

            width: 150
            height: 20
            x: 100 + btn3.width
            y: btn1.height

            anchors {
                top: btn1.botton
            }
            Text {
                text: '健康小贴士'
            }
        }
    }

}