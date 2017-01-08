#include "databaseupdate.h"


databaseUpdate::databaseUpdate()
{

}

void databaseUpdate::updatePosition(int season,int position)
{
    QSqlDatabase db;
    db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName("bookdatabase.sqlite");

    if (!db.open("FONQRI","hhf8f**&87y8dhc8&Y*h87yhc8H*&GCDsYG")) {
        qDebug()<<"Cannot open databaseUnable to establish a database connection.\n";
    }else
    {


        QSqlQuery query;
        query.prepare("UPDATE position SET lastposition = ?  ;");
        query.addBindValue(position);
        query.exec();
        query.prepare("UPDATE position SET lastseason = ?  ;");
        query.addBindValue(season);
        query.exec();

        db.close();
    }
}
