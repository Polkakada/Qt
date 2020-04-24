import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.1
import AuthManager 1.0

Item {
    id: singInView
    anchors.fill: parent

    AuthManager{
        id:authManagerSignIn
        onAuthenticateRequestCompleted: {
            if (error==""){
                loginResult.setText("Sing in success")
                registerResult.setInformativeText("")
                console.log(token)
            }
            else{
                loginResult.setText("Sing in unsuccess")
                loginResult.setInformativeText(error)
            }
            loginResult.open()
        }
        onLoginProcessingChanged: {
            console.log(isLoginProcessing);
        }
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
        echoMode: TextInput.Password
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
            authManagerSignIn.authenticate(loginSingIn.text,passwordSingIn.text)
        }
    }

    BusyIndicator {
        id: loadingIndicator1
        anchors.top: singInBut.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        running: authManagerSignIn.isLoginProcessing
    }

    MessageDialog {
        id:loginResult
        title: "Sing in"
        onAccepted:
            close()
    }
}
