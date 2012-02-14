.class Lcom/android/providers/telephony/EcnProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EcnProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/EcnProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 57
    const-string v0, "ecn.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 59
    return-void
.end method

.method private initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    .line 79
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v2, map:Landroid/content/ContentValues;
    const-string v3, "T-Mobile"

    .line 82
    .local v3, operator:Ljava/lang/String;
    const-string v4, "ON"

    .line 83
    .local v4, status:Ljava/lang/String;
    const-string v5, "#119#"

    .line 84
    .local v5, ussdcode:Ljava/lang/String;
    const-string v1, "030708090B0C0E0F24405B5C5D5E5F601C1D1E1F1012131415161718191A"

    .line 85
    .local v1, hexcode:Ljava/lang/String;
    const-string v0, "897023415618307564290729486153"

    .line 89
    .local v0, digits:Ljava/lang/String;
    const-string v6, "operator"

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v6, "status"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v6, "ussdcode"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v6, "hexcode"

    invoke-virtual {v2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v6, "digits"

    invoke-virtual {v2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v6, "ecn"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 95
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 65
    const-string v0, "CREATE TABLE ecn(_id INTEGER PRIMARY KEY,operator TEXT,status TEXT,ussdcode TEXT,hexcode TEXT,digits TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/EcnProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 100
    const-string v0, "DROP TABLE IF EXISTS ecn"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/EcnProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 102
    return-void
.end method
