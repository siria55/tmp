import QtQuick 2.5
import 'Components'
Rectangle {
    id: root
    color: 'gray'

    Title {
        text: '健康数据管理中心'
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
                text: '外部个体数据'
            }
            MouseArea {
                anchors.fill: parent
            }
        }

        Rectangle {
            id: btn2
            width: 150
            x: 100 + btn1.width
            Text {
                text: '数据加密'
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
                text: '家居系统数据'
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
                text: '数据脱敏'
            }
        }
    }

}
