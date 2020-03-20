import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 280
    height: 500
    title: qsTr("Autorization example")

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

    Item {
        id: singUpView
        anchors.fill: parent
        visible: !singInView.visible

        Text {
            id: titleSingUp
            color: "black"
            text: "SING UP"
            font.pixelSize: 30
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            font.styleName: "xz"
        }

        TextField {
            id: signUpLogin
            width: 250
            font.pixelSize: 16
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: titleSingUp.bottom
            anchors.topMargin: 10
            placeholderText: "Login"
        }

        TextField {
             id: signUpPassword
             width: 250
             font.pixelSize: 16
             anchors.horizontalCenter: parent.horizontalCenter
             anchors.top: signUpLogin.bottom
             anchors.topMargin: 10
             placeholderText: "Password"
             echoMode: "Password"
        }

        TextField {
            id: signUpPasswordRepeat
            width: 250
            font.pixelSize: 16
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: signUpPassword.bottom
            anchors.topMargin: 10
            placeholderText: "Repeat password"
            echoMode: "Password"
        }

        TextField {
            id: signUpNickname
            width: 250
            font.pixelSize: 16
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: signUpPasswordRepeat.bottom
            anchors.topMargin: 10
            placeholderText: "Nickname"
        }

        Button {
            id: signUpBut
            width: 100
            height: 40
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: signUpNickname.bottom
            anchors.topMargin: 10
            text: "Sign up"
            enabled: signUpLogin.length > 5 && signUpNickname.length > 5
                     && signUpPassword.length > 5
            onClicked: {
                console.log("signUpBottom is pressed")
                if (signUpPassword.text != signUpPasswordRepeat.text){
                    passwordWarning.visible = true
                    loadingIndicator.running = false
                }
                else {
                    passwordWarning.visible = false
                    loadingIndicator.running = true
                }
            }
        }

        Text {
            id: passwordWarning
            text: "Password values aren't same!"
            font.pixelSize: 16
            visible: false
            anchors.top: signUpButton.bottom
            anchors.topMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            color: "red"
        }

        BusyIndicator {
            id: loadingIndicator2
            anchors.top: signUpButton.bottom
            anchors.topMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            running: false
        }
    }

    Row {
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.margins: 10

        Text {
            id: singIn
            text: qsTr("Sing in")
            color: "black"
            width: 60
            height: 30
            font.pixelSize: 20
            font.underline: singInView.visible
            anchors.bottom: parent.bottom
            anchors.right: slash.left

            MouseArea {
                id: clickSingIn
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    if (!singInView.visible){
                        singInView.visible = true
                        singUpView.focus = false
                        signUpLogin.clear()
                        signUpPassword.focus = false
                        signUpPassword.clear()
                        signUpPasswordRepeat.focus = false
                        signUpPasswordRepeat.clear()
                        signUpNickname.focus = false
                        signUpNickname.clear()
                        passwordWarning.visible = false
                        loadingIndicator2.running = false
                    }
                }
            }
        }

        Text {
            id: slash
            text: qsTr(" / ")
            color: "black"
            width: 20
            height: 30
            font.pixelSize: 20
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: singUp
            text: qsTr("Sing up")
            color: "black"
            width: 50
            height: 30
            font.pixelSize: 20
            font.underline: singUpView.visible
            anchors.bottom: parent.bottom
            anchors.left: slash.right
            MouseArea {
                id: clickSingUp
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    if (singInView.visible){
                        singInView.visible = false
                        loginSingIn.focus = false
                        loginSingIn.clear()
                        passwordSingIn.focus = false
                        passwordSingIn.clear()
                        loadingIndicator1.running = false
                    }
                }
            }
        }
    }
}


