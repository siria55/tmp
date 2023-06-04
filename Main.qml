import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 1024
    height: 600
    visible: true
    
    StackView {
        id: stackview
        anchors.fill: parent
        initialItem: 'HomePage.qml'
    }
}