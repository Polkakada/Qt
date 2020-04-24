import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.1
import AuthManager 1.0

Item {
    id: singUpView
    anchors.fill: parent

    AuthManager{
        id:authManagerSignUp
        onRegistererRequestCompleted: {
            if (error==""){
                registerResult.setText("Registering success")
                registerResult.setInformativeText("")
            }
            else{
                registerResult.setText("Registering unsuccess")
                registerResult.setInformativeText(error)
            }
            registerResult.open()
        }
        onRegisterProcessingChanged: {
            console.log(isRegisterProcessing);
        }
    }


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
         echoMode: TextInput.Password
    }

    TextField {
        id: signUpPasswordRepeat
        width: 250
        font.pixelSize: 16
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: signUpPassword.bottom
        anchors.topMargin: 10
        placeholderText: "Repeat password"
        echoMode: TextInput.Password
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
            }
            else {
                passwordWarning.visible = false
                authManagerSignUp.registering(signUpLogin.text,signUpPassword.text)
            }
        }
    }

    Text {
        id: passwordWarning
        text: "Password values aren't same!"
        font.pixelSize: 16
        visible: false
        anchors.top: signUpBut.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        color: "red"
    }

    BusyIndicator {
        id: loadingIndicator2
        anchors.top: signUpBut.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        running: authManagerSignUp.isRegisterProcessing
    }

    MessageDialog {
        id:registerResult
        title: "Registering"
        onAccepted:
            close()
    }
}
