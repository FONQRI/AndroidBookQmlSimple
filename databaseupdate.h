#ifndef DATABASEUPDATE_H
#define DATABASEUPDATE_H
#include <QSql>
#include <QSqlQuery>
#include <QFile>
#include <QDir>
#include <QStandardPaths>
#include <QDebug>
#include <QSqlError>
#include <QObject>

class databaseUpdate: public QObject
{
    Q_OBJECT

public:
    databaseUpdate();
public slots:
    void updatePosition(int season, int position);
private:
};

#endif // DATABASEUPDATE_H
