import QtQuick
import QtCharts
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
        text: '数字孪体'
    }

//    Rectangle {
//        id: bar
//        ChartView {
//            title: "Bar series"
//            anchors.fill: parent
//            legend.alignment: Qt.AlignBottom
//            antialiasing: true

//            BarSeries {
//                id: mySeries
//                axisX: BarCategoryAxis { categories: ["2007", "2008", "2009", "2010", "2011", "2012" ] }
//                BarSet { label: "Bob"; values: [2, 2, 3, 4, 5, 6] }
//                BarSet { label: "Susan"; values: [5, 1, 2, 4, 1, 7] }
//                BarSet { label: "James"; values: [3, 5, 8, 13, 5, 8] }
//            }
//        }
//    }
}
