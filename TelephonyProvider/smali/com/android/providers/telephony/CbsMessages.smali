.class public Lcom/android/providers/telephony/CbsMessages;
.super Ljava/lang/Object;
.source "CbsMessages.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 53
    const-string v0, "CREATE TABLE IF NOT EXISTS cbs_messages (_id INTEGER PRIMARY KEY,type INTEGER,priority INTEGER,date INTEGER,read INTEGER,channel_id INTEGER,serial_num INTEGER,locked INTEGER,expire_time INTEGER,language INTEGER,categroy INTEGER,response_type INTEGER,severity INTEGER,urgency INTEGER,certainty INTEGER,body TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method static onDrop(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 57
    const-string v0, "DROP TABLE IF EXISTS cbs_messages"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 61
    invoke-static {p0}, Lcom/android/providers/telephony/CbsMessages;->onDrop(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 62
    invoke-static {p0}, Lcom/android/providers/telephony/CbsMessages;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 63
    return-void
.end method
