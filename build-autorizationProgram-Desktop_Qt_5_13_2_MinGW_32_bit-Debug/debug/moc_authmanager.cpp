/****************************************************************************
** Meta object code from reading C++ file 'authmanager.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.13.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../widgetView/authmanager.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'authmanager.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.13.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_AuthManager_t {
    QByteArrayData data[14];
    char stringdata0[209];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_AuthManager_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_AuthManager_t qt_meta_stringdata_AuthManager = {
    {
QT_MOC_LITERAL(0, 0, 11), // "AuthManager"
QT_MOC_LITERAL(1, 12, 26), // "registererRequestCompleted"
QT_MOC_LITERAL(2, 39, 0), // ""
QT_MOC_LITERAL(3, 40, 5), // "error"
QT_MOC_LITERAL(4, 46, 28), // "authenticateRequestCompleted"
QT_MOC_LITERAL(5, 75, 5), // "token"
QT_MOC_LITERAL(6, 81, 25), // "registerProcessingChanged"
QT_MOC_LITERAL(7, 107, 22), // "loginProcessingChanged"
QT_MOC_LITERAL(8, 130, 12), // "authenticate"
QT_MOC_LITERAL(9, 143, 5), // "login"
QT_MOC_LITERAL(10, 149, 8), // "password"
QT_MOC_LITERAL(11, 158, 11), // "registering"
QT_MOC_LITERAL(12, 170, 20), // "isRegisterProcessing"
QT_MOC_LITERAL(13, 191, 17) // "isLoginProcessing"

    },
    "AuthManager\0registererRequestCompleted\0"
    "\0error\0authenticateRequestCompleted\0"
    "token\0registerProcessingChanged\0"
    "loginProcessingChanged\0authenticate\0"
    "login\0password\0registering\0"
    "isRegisterProcessing\0isLoginProcessing"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_AuthManager[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       2,   68, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   44,    2, 0x06 /* Public */,
       4,    2,   47,    2, 0x06 /* Public */,
       6,    1,   52,    2, 0x06 /* Public */,
       7,    1,   55,    2, 0x06 /* Public */,

 // methods: name, argc, parameters, tag, flags
       8,    2,   58,    2, 0x02 /* Public */,
      11,    2,   63,    2, 0x02 /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::QString, QMetaType::QString,    3,    5,
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void, QMetaType::Bool,    2,

 // methods: parameters
    QMetaType::Void, QMetaType::QString, QMetaType::QString,    9,   10,
    QMetaType::Void, QMetaType::QString, QMetaType::QString,    9,   10,

 // properties: name, type, flags
      12, QMetaType::Bool, 0x00495003,
      13, QMetaType::Bool, 0x00495003,

 // properties: notify_signal_id
       2,
       3,

       0        // eod
};

void AuthManager::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<AuthManager *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->registererRequestCompleted((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: _t->authenticateRequestCompleted((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 2: _t->registerProcessingChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 3: _t->loginProcessingChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->authenticate((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 5: _t->registering((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (AuthManager::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AuthManager::registererRequestCompleted)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (AuthManager::*)(QString , QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AuthManager::authenticateRequestCompleted)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (AuthManager::*)(bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AuthManager::registerProcessingChanged)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (AuthManager::*)(bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&AuthManager::loginProcessingChanged)) {
                *result = 3;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<AuthManager *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< bool*>(_v) = _t->isRegisterProcessing(); break;
        case 1: *reinterpret_cast< bool*>(_v) = _t->isLoginProcessing(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<AuthManager *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setRegisterProcessing(*reinterpret_cast< bool*>(_v)); break;
        case 1: _t->setLoginProcessing(*reinterpret_cast< bool*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

QT_INIT_METAOBJECT const QMetaObject AuthManager::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_AuthManager.data,
    qt_meta_data_AuthManager,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *AuthManager::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *AuthManager::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_AuthManager.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int AuthManager::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 6;
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 2;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void AuthManager::registererRequestCompleted(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void AuthManager::authenticateRequestCompleted(QString _t1, QString _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))), const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t2))) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void AuthManager::registerProcessingChanged(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void AuthManager::loginProcessingChanged(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
