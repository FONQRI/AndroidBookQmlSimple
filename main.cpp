
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QSettings>
#include <QQuickStyle>
#include <QFontDatabase>
#include <QSql>
#include <QSqlQuery>
#include <QFile>
#include <QDir>
#include <QStandardPaths>
#include <QDebug>
#include <QSqlError>

#include "connection.h"
#include "databaseupdate.h"

int main(int argc, char *argv[])
{
    int lastposition,lastseason;
    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QQuickStyle::setStyle("Material");

    engine.load(QUrl("qrc:/main.qml"));
    engine.addImportPath("/Material");
    //************database
    createConnection();
    databaseUpdate updatedata;
    auto root_context = engine.rootContext();
    root_context->setContextProperty("updatedata_qml",&updatedata);

    //*******************

    //**********************************************sendPOsitions************
    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName("bookdatabase.sqlite");
    if (!db.open("FONQRI","hhf8f**&87y8dhc8&Y*h87yhc8H*&GCDsYG")) {
        qDebug()<<"Cannot open databaseUnable to establish a database connection.\n";
    }

    QSqlQuery query;
    query.exec("select * from position");
    query.first();
    if(!query.isValid())
    {
        query.exec("insert into position values(1 , 0)");
        query.exec("select * from position");
        query.first();

    }
    lastseason = query.value(0).toInt();
    lastposition = query.value(1).toInt();
    root_context->setContextProperty("lastseason",lastseason);
    root_context->setContextProperty("lastposition",lastposition);

    db.close();
    //********************

    //****************************
    QFile *file1=new QFile(":/txt/firstPart.txt");
    if(!file1->open(QIODevice::ReadOnly)) {
        qDebug()<<file1->errorString();
    }

    QTextStream *in1=new QTextStream(file1);


    QString text1 = in1->readAll();
    root_context->setContextProperty("txtSeason1",text1);


    file1->close();
    delete file1;
    delete in1;

    //*******************************

    //****************************
    QFile *file2=new QFile(":/txt/secondPart.txt");
    if(!file2->open(QIODevice::ReadOnly)) {
        qDebug()<<file2->errorString();
    }

    QTextStream *in2=new QTextStream(file2);


    QString text2 = in2->readAll();
    root_context->setContextProperty("txtSeason2",text2);


    file2->close();
    delete file2;
    delete in2;


    //*******************************
    //****************************
    QFile *file3=new QFile(":/txt/3part.txt");
    if(!file3->open(QIODevice::ReadOnly)) {
        qDebug()<<file3->errorString();
    }

    QTextStream *in3=new QTextStream(file3);


    QString text3 = in3->readAll();
    root_context->setContextProperty("txtSeason3",text3);


    file3->close();
    delete file3;
    delete in3;


    //*******************************
    //****************************
    QFile *file4=new QFile(":/txt/4part.txt");
    if(!file4->open(QIODevice::ReadOnly)) {
        qDebug()<<file4->errorString();
    }

    QTextStream *in4=new QTextStream(file4);


    QString text4 = in4->readAll();
    root_context->setContextProperty("txtSeason4",text4);


    file4->close();
    delete file4;
    delete in4;


    //*******************************

    return app.exec();
}
