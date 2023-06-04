import QtQuick

Rectangle {
    id: root
    color: 'gray'

    Rectangle {
        id: topTextArea
        width: root.width
        height: 60

        anchors.topMargin: 15
        Text {
            id: topText
            width: parent.width

            anchors {
                fill: parent
            }

            horizontalAlignment : Text.AlignHCenter
            font.pixelSize: 60
            text: '个人健康 AI 助理/中枢'
        }
    }

    Rectangle {
        id: avatarArea

        x: 100
        y: topTextArea.height

        width: 300
        height: 300

        Image {
            anchors.fill: parent
            source: 'assets/avatar.png'
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

    Rectangle {
        anchors.top: topTextArea.bottom
        anchors.left: avatarArea.right

        Rectangle {
            id: btn1
            width: 150
            height: 20
            Text {
                text: '数字孪体'
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    stackview.push('Data.qml')
                }

            }
        }
        Rectangle {
            id: btn2
            width: 150
            height: 20
            y: btn1.height
            Text {
                text: '健康监测'
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    stackview.push('DataManageCenter.qml')
                }
            }
        }
        Rectangle {
            id: btn3
            width: 150
            height: 20
            y: btn1.height * 2
            Text {
                text: '健康助手'
            }
            MouseArea {
                anchors.fill: parent
            }
        }
    }
}