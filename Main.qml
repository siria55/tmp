import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 1024
    height: 600
    visible: true
    flags: Qt.FramelessWindowHint    //无边框
//    visibility:"Maximized"          //最大化
    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: 'HomePage.qml'
    }
}
