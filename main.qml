import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.12
import AuthManager 1.0

Window {
    id:window
    visible: true
    width: 280
    height: 500
    title: qsTr("Autorization example")
    property int status: 0

    Loader{
        id:mainView
        anchors.fill: parent
        source: (window.status == 0) ? "LoginForm.qml" : "RegistrationForm.qml"
    }

    Row {
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.margins: 10

        Switcher {
            id: singIn
            text: "Sing in"
            font.underline: (status == 0) ? true : false
            onClicked: status = 0
        }

        Text {
            id: slash
            text: qsTr(" / ")
            font.pixelSize: 20

        }

        Switcher {
            id: singUp
            text: "Sing up"
            font.underline: (status == 0) ? false : true
            onClicked: status = 1
        }
    }
}



