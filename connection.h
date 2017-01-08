#ifndef CONNECTION_H
#define CONNECTION_H

#include <QString>
#include "connection.h"
#include <QSqlDatabase>
#include <QSqlError>
#include <QSqlQuery>
#include <QDebug>




static bool  createConnection()
{
    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName("bookdatabase.sqlite");
    db.setUserName("FONQRI");
    db.setPassword("hhf8f**&87y8dhc8&Y*h87yhc8H*&GCDsYG");
    if (!db.open("FONQRI","hhf8f**&87y8dhc8&Y*h87yhc8H*&GCDsYG")) {
        qDebug()<<"Cannot open databaseUnable to establish a database connection.\n";
        return false;
    }

    QSqlQuery query;
    query.exec("create table position (lastseason int,lastposition int ) ");
    db.close();

    return true;
}




#endif // CONNECTION_H
