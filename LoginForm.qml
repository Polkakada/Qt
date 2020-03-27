import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.12

Item {
    id: singInView
    anchors.fill: parent
    visible: true

    TextField {
        id:loginSingIn
        width: 250
        font.pixelSize: 16
        placeholderText: "tyt login..."
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: titleSingIn.bottom
    }

    TextField {
        id:passwordSingIn
        width: 250
        font.pixelSize: 16
        placeholderText: "tyt paroli..."
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 10
        anchors.top: loginSingIn.bottom
        echoMode: "Password"
    }

    Text {
        id: titleSingIn
        color: "black"
        text: "SING IN"
        font.pixelSize: 30
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        font.styleName: "xz"
    }

    Button {
        id: singInBut
        text: "Sign in"
        width: 100
        height: 40
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: passwordSingIn.bottom
        anchors.topMargin: 10
        enabled: loginSingIn.length > 5 && passwordSingIn.length > 5
        onClicked: {
            loadingIndicator1.running = true
        }
    }

    BusyIndicator {
        id: loadingIndicator1
        anchors.top: singInBut.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        running: false
    }
}
