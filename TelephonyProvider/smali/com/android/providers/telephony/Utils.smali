.class public Lcom/android/providers/telephony/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "uri"
    .parameter "selection"

    .prologue
    const-string v4, "true"

    const-string v3, " OR "

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "type=0 OR type=1"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, filter:Ljava/lang/StringBuilder;
    const-string v2, "cbs"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, hasOther:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const-string v2, " OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v2, "type=2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_0
    const-string v2, "cmas"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_1

    const-string v2, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    const-string v2, " OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v2, "type=3"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_1
    const-string v2, "etws"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_2

    const-string v2, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    const-string v2, " OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "type=4"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isOther(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 11
    .parameter "db"
    .parameter "thread_id"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 27
    const-string v1, "cbs_messages"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "channel_id"

    aput-object v0, v2, v9

    const-string v3, "channel_id=?"

    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 32
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    move v0, v10

    .line 34
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return v0

    :cond_0
    move v0, v9

    .line 32
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isOther(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 2
    .parameter "db"
    .parameter "thread_id"

    .prologue
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/android/providers/telephony/Utils;->isOther(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v0

    return v0
.end method
