import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.12


Window {
    visible: true
    width: 280
    height: 500
    title: qsTr("Autorization example")

    Loader{
        id:mainView
        anchors.fill: parent
        source: "LoginForm.qml"
    }

    Row {
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.margins: 10

        Switcher {
            id: singIn
            text: "Sing in"
            font.underline: !singUp.font.underline
            anchors.bottom: parent.bottom
            anchors.right: slash.left
            onClicked: {
                mainView.source="LoginForm.qml"
                singUp.font.underline=false
            }
        }

        Text {
            id: slash
            text: qsTr(" / ")
            color: "black"
            font.pixelSize: 20
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Switcher {
            id: singUp
            text: "Sing up"
            font.underline: singUpView.visible
            anchors.bottom: parent.bottom
            anchors.left: slash.right
            onClicked: {
                mainView.source="RegistrationForm.qml"
                singUp.font.underline=true
            }
        }
    }
}



