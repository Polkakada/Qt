import QtQuick 2.0

Text {
    id: switcher
    font.pixelSize: 16
    color: "black"

    signal clicked()

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: {
            switcher.clicked()
        }
    }
}
