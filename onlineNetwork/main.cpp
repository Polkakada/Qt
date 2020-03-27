#include <QCoreApplication>
#include "AuthManager.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    AuthManager auth;

    auth.registerer("my_login", "my_password");

    auth.authentificate("my_login", "my_password");

    return a.exec();
}
