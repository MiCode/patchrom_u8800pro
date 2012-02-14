.class public Lcom/android/providers/telephony/CbsProvider;
.super Landroid/content/ContentProvider;
.source "CbsProvider.java"


# static fields
.field public static final ALL_LIST_URI:Landroid/net/Uri;

.field public static final CBS_LIST_URI:Landroid/net/Uri;

.field public static final CMAS_LIST_URI:Landroid/net/Uri;

.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final ETWS_LIST_URI:Landroid/net/Uri;

.field private static final MATCHER:Landroid/content/UriMatcher;

.field public static final UNREAD_URI:Landroid/net/Uri;


# instance fields
.field private mHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-string v7, "unread"

    const-string v6, "etws"

    const-string v5, "cmas"

    const-string v4, "all"

    const-string v3, "com.android.huawei.cbs"

    .line 34
    const-string v0, "content://com.android.huawei.cbs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/CbsProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 36
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/CbsProvider;->MATCHER:Landroid/content/UriMatcher;

    .line 39
    sget-object v0, Lcom/android/providers/telephony/CbsProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.huawei.cbs"

    const-string v1, "cbsChannel/#"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    sget-object v0, Lcom/android/providers/telephony/CbsProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.huawei.cbs"

    const-string v1, "cmas"

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v5, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    sget-object v0, Lcom/android/providers/telephony/CbsProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.huawei.cbs"

    const-string v1, "etws"

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v6, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lcom/android/providers/telephony/CbsProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.huawei.cbs"

    const-string v1, "unread"

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v7, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    sget-object v0, Lcom/android/providers/telephony/CbsProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.huawei.cbs"

    const-string v1, "all"

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v4, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    sget-object v0, Lcom/android/providers/telephony/CbsProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "all"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/CbsProvider;->ALL_LIST_URI:Landroid/net/Uri;

    .line 48
    sget-object v0, Lcom/android/providers/telephony/CbsProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "cbsChannel"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/CbsProvider;->CBS_LIST_URI:Landroid/net/Uri;

    .line 50
    sget-object v0, Lcom/android/providers/telephony/CbsProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "cmas"

    invoke-static {v0, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/CbsProvider;->CMAS_LIST_URI:Landroid/net/Uri;

    .line 52
    sget-object v0, Lcom/android/providers/telephony/CbsProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "etws"

    invoke-static {v0, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/CbsProvider;->ETWS_LIST_URI:Landroid/net/Uri;

    .line 54
    sget-object v0, Lcom/android/providers/telephony/CbsProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "unread"

    invoke-static {v0, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/CbsProvider;->UNREAD_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^.*\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\b.*$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getChannelId(Landroid/database/sqlite/SQLiteDatabase;II)J
    .locals 19
    .parameter "db"
    .parameter "type"
    .parameter "channel"

    .prologue
    .line 389
    packed-switch p2, :pswitch_data_0

    .line 400
    const/4 v14, -0x1

    .line 403
    .local v14, channelType:I
    :goto_0
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    .local v17, sType:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 406
    .local v16, sChannel:Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, p2

    move v1, v4

    if-ne v0, v1, :cond_0

    const/16 v4, 0x1000

    move/from16 v0, p3

    move v1, v4

    if-eq v0, v1, :cond_2

    .line 407
    :cond_0
    const-string v5, "threads"

    const/4 v6, 0x0

    const-string v7, "type = ? AND recipient_ids = ?"

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v17, v8, v4

    const/4 v4, 0x1

    aput-object v16, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 412
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 413
    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .line 418
    .local v12, channelId:J
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    move-wide v4, v12

    .line 427
    .end local v12           #channelId:J
    .end local v15           #cursor:Landroid/database/Cursor;
    :goto_1
    return-wide v4

    .line 391
    .end local v14           #channelType:I
    .end local v16           #sChannel:Ljava/lang/String;
    .end local v17           #sType:Ljava/lang/String;
    :pswitch_0
    const/4 v14, 0x2

    .line 392
    .restart local v14       #channelType:I
    goto :goto_0

    .line 394
    .end local v14           #channelType:I
    :pswitch_1
    const/4 v14, 0x3

    .line 395
    .restart local v14       #channelType:I
    goto :goto_0

    .line 397
    .end local v14           #channelType:I
    :pswitch_2
    const/4 v14, 0x4

    .line 398
    .restart local v14       #channelType:I
    goto :goto_0

    .line 418
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v16       #sChannel:Ljava/lang/String;
    .restart local v17       #sType:Ljava/lang/String;
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 422
    .end local v15           #cursor:Landroid/database/Cursor;
    :cond_2
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 423
    .local v18, tempValues:Landroid/content/ContentValues;
    const-string v4, "type"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v4, "recipient_ids"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v4, "date"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 426
    const-string v4, "message_count"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    const-string v4, "threads"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    goto :goto_1

    .line 418
    .end local v18           #tempValues:Landroid/content/ContentValues;
    .restart local v15       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v4

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getChannelId(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 11
    .parameter "db"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "_id"

    const-string v3, "channel_id"

    .line 87
    if-eqz p2, :cond_1

    .line 88
    const-string v0, "_id"

    invoke-static {p2, v1}, Lcom/android/providers/telephony/CbsProvider;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    const-string v0, "_id"

    invoke-static {v1, p2, p3}, Lcom/android/providers/telephony/CbsProvider;->getKeyValueFromString(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, id:Ljava/lang/String;
    const-string v1, "cbs_messages"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "channel_id"

    aput-object v3, v2, v6

    const-string v3, "_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v10, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 96
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 100
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 111
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #id:Ljava/lang/String;
    :goto_0
    return-wide v0

    .line 100
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #id:Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 109
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #id:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 100
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #id:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 102
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #id:Ljava/lang/String;
    :cond_2
    const-string v0, "channel_id"

    invoke-static {p2, v3}, Lcom/android/providers/telephony/CbsProvider;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    const-string v0, "channel_id"

    invoke-static {v3, p2, p3}, Lcom/android/providers/telephony/CbsProvider;->getKeyValueFromString(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 105
    .restart local v10       #id:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 110
    .end local v10           #id:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 111
    .local v9, e:Ljava/lang/Exception;
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static getKeyValueFromString(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 67
    const-string v1, "(.*)(\\b@OLD_CHAR@)(\\s*)(=)(\\s*)(\\d*\\b|\\?)(.*)"

    const-string v2, "@OLD_CHAR@"

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$2$4$6"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, target:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const/4 v1, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^\\?]*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    aget-object v1, p2, v1

    .line 74
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateChannels(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 20
    .parameter "db"
    .parameter "channelId"

    .prologue
    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/CbsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 328
    .local v18, resolver:Landroid/content/ContentResolver;
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    .line 329
    .local v16, id:Ljava/lang/String;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 334
    .local v19, tempValue:Landroid/content/ContentValues;
    const-string v6, "cbs_messages"

    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "body"

    aput-object v8, v7, v5

    const/4 v5, 0x1

    const-string v8, "MAX(date)"

    aput-object v8, v7, v5

    const/4 v5, 0x2

    const-string v8, "COUNT(_id)"

    aput-object v8, v7, v5

    const/4 v5, 0x3

    const-string v8, "expire_time"

    aput-object v8, v7, v5

    const-string v8, "channel_id = ?"

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v16, v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 340
    .local v15, cursor:Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 341
    const/4 v5, 0x2

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 342
    .local v13, count:J
    const-string v5, "snippet"

    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v5, "date"

    const/4 v6, 0x1

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 344
    const-string v5, "message_count"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 345
    const-string v5, "has_attachment"

    const/4 v6, 0x3

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 349
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 352
    const-wide/16 v5, 0x0

    cmp-long v5, v13, v5

    if-lez v5, :cond_4

    .line 356
    const-string v6, "cbs_messages"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "COUNT(_id)"

    aput-object v8, v7, v5

    const-string v8, "channel_id = ? AND read = ?"

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v16, v9, v5

    const/4 v5, 0x1

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 361
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 362
    const-string v5, "read"

    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 364
    :cond_0
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 368
    const-string v5, "threads"

    const-string v6, "_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v19

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    move/from16 v17, v5

    .line 378
    .local v17, notify:Z
    :goto_1
    if-eqz v17, :cond_1

    .line 379
    sget-object v5, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 382
    :cond_1
    return-void

    .line 347
    .end local v13           #count:J
    .end local v17           #notify:Z
    :cond_2
    const-wide/16 v13, 0x0

    .restart local v13       #count:J
    goto :goto_0

    .line 368
    :cond_3
    const/4 v5, 0x0

    move/from16 v17, v5

    goto :goto_1

    .line 374
    :cond_4
    const-string v5, "threads"

    const-string v6, "_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_5

    const/4 v5, 0x1

    move/from16 v17, v5

    .restart local v17       #notify:Z
    :goto_2
    goto :goto_1

    .end local v17           #notify:Z
    :cond_5
    const/4 v5, 0x0

    move/from16 v17, v5

    goto :goto_2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v8, 0x0

    .line 205
    iget-object v7, p0, Lcom/android/providers/telephony/CbsProvider;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 206
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/android/providers/telephony/CbsProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 208
    .local v5, resolver:Landroid/content/ContentResolver;
    sget-object v7, Lcom/android/providers/telephony/CbsProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 210
    .local v2, code:I
    packed-switch v2, :pswitch_data_0

    .line 227
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string v8, "CBS/CMAS/ETWS Provider does not support this operation."

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 212
    :pswitch_0
    const-string v6, "cbs_messages"

    .line 213
    .local v6, table:Ljava/lang/String;
    const-string v7, "type = 0"

    invoke-static {p2, v7}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 230
    :goto_0
    invoke-static {v4, p1, p2, p3}, Lcom/android/providers/telephony/CbsProvider;->getChannelId(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 231
    .local v0, channelId:J
    invoke-virtual {v4, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 232
    .local v3, count:I
    if-lez v3, :cond_0

    .line 233
    invoke-direct {p0, v4, v0, v1}, Lcom/android/providers/telephony/CbsProvider;->updateChannels(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 234
    sget-object v7, Lcom/android/providers/telephony/CbsProvider;->UNREAD_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 235
    invoke-virtual {v5, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 237
    :cond_0
    return v3

    .line 217
    .end local v0           #channelId:J
    .end local v3           #count:I
    .end local v6           #table:Ljava/lang/String;
    :pswitch_1
    const-string v6, "cbs_messages"

    .line 218
    .restart local v6       #table:Ljava/lang/String;
    const-string v7, "type = 1"

    invoke-static {p2, v7}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 220
    goto :goto_0

    .line 222
    .end local v6           #table:Ljava/lang/String;
    :pswitch_2
    const-string v6, "cbs_messages"

    .line 223
    .restart local v6       #table:Ljava/lang/String;
    const-string v7, "type = 2"

    invoke-static {p2, v7}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 225
    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, type:Ljava/lang/String;
    sget-object v1, Lcom/android/providers/telephony/CbsProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 140
    :goto_0
    return-object v0

    .line 126
    :pswitch_0
    const-string v0, "cbsChannel"

    .line 127
    goto :goto_0

    .line 129
    :pswitch_1
    const-string v0, "cmas"

    .line 130
    goto :goto_0

    .line 132
    :pswitch_2
    const-string v0, "etws"

    .line 133
    goto :goto_0

    .line 135
    :pswitch_3
    const-string v0, "unread"

    .line 136
    goto :goto_0

    .line 138
    :pswitch_4
    const-string v0, "all"

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 144
    iget-object v11, p0, Lcom/android/providers/telephony/CbsProvider;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 145
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/android/providers/telephony/CbsProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 148
    .local v8, resolver:Landroid/content/ContentResolver;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 149
    .local v10, tempValues:Landroid/content/ContentValues;
    sget-object v11, Lcom/android/providers/telephony/CbsProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v11, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 151
    .local v3, code:I
    const/4 v0, 0x0

    .line 152
    .local v0, channel:I
    const-wide/16 v1, 0x0

    .line 154
    .local v1, channelId:J
    packed-switch v3, :pswitch_data_0

    .line 186
    new-instance v11, Ljava/lang/UnsupportedOperationException;

    const-string v12, "CBS/CMAS/ETWS Provider does not support this operation."

    invoke-direct {v11, v12}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 156
    :pswitch_0
    const-string v9, "cbs_messages"

    .line 157
    .local v9, table:Ljava/lang/String;
    const-string v7, "type"

    .line 158
    .local v7, nullColumnHack:Ljava/lang/String;
    const-string v11, "recipient_ids"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    const/4 v11, 0x0

    invoke-direct {p0, v4, v11, v0}, Lcom/android/providers/telephony/CbsProvider;->getChannelId(Landroid/database/sqlite/SQLiteDatabase;II)J

    move-result-wide v1

    .line 160
    const-string v11, "_id"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 161
    const-string v11, "recipient_ids"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 162
    const-string v11, "type"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string v11, "channel_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    :goto_0
    invoke-virtual {v4, v9, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 191
    .local v5, id:J
    const-wide/16 v11, 0x0

    cmp-long v11, v5, v11

    if-ltz v11, :cond_0

    .line 192
    const-string v11, "channel_id"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-direct {p0, v4, v11, v12}, Lcom/android/providers/telephony/CbsProvider;->updateChannels(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 193
    sget-object v11, Lcom/android/providers/telephony/CbsProvider;->UNREAD_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 194
    if-nez v3, :cond_1

    .line 195
    sget-object v11, Lcom/android/providers/telephony/CbsProvider;->CBS_LIST_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 201
    :cond_0
    :goto_1
    invoke-static {p1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    return-object v11

    .line 166
    .end local v5           #id:J
    .end local v7           #nullColumnHack:Ljava/lang/String;
    .end local v9           #table:Ljava/lang/String;
    :pswitch_1
    const-string v9, "cbs_messages"

    .line 167
    .restart local v9       #table:Ljava/lang/String;
    const-string v7, "type"

    .line 168
    .restart local v7       #nullColumnHack:Ljava/lang/String;
    const-string v11, "recipient_ids"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 169
    const/4 v11, 0x1

    invoke-direct {p0, v4, v11, v0}, Lcom/android/providers/telephony/CbsProvider;->getChannelId(Landroid/database/sqlite/SQLiteDatabase;II)J

    move-result-wide v1

    .line 170
    const-string v11, "_id"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 171
    const-string v11, "recipient_ids"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 172
    const-string v11, "type"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v11, "channel_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 176
    .end local v7           #nullColumnHack:Ljava/lang/String;
    .end local v9           #table:Ljava/lang/String;
    :pswitch_2
    const-string v9, "cbs_messages"

    .line 177
    .restart local v9       #table:Ljava/lang/String;
    const-string v7, "type"

    .line 178
    .restart local v7       #nullColumnHack:Ljava/lang/String;
    const-string v11, "recipient_ids"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 179
    const/4 v11, 0x2

    invoke-direct {p0, v4, v11, v0}, Lcom/android/providers/telephony/CbsProvider;->getChannelId(Landroid/database/sqlite/SQLiteDatabase;II)J

    move-result-wide v1

    .line 180
    const-string v11, "_id"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 181
    const-string v11, "type"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    const-string v11, "channel_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    const-string v11, "recipient_ids"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    .restart local v5       #id:J
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v8, p1, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/providers/telephony/CbsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/CbsProvider;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 283
    iget-object v2, p0, Lcom/android/providers/telephony/CbsProvider;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 285
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/android/providers/telephony/CbsProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 311
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "CBS/CMAS/ETWS Provider does not support this operation."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :pswitch_0
    const-string v1, "cbs_messages"

    .line 288
    .local v1, table:Ljava/lang/String;
    const-string v2, "type = 0"

    invoke-static {p3, v2}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 315
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 317
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/android/providers/telephony/CbsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 320
    :cond_0
    return-object v8

    .line 292
    .end local v1           #table:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :pswitch_1
    const-string v1, "cbs_messages"

    .line 293
    .restart local v1       #table:Ljava/lang/String;
    const-string v2, "type = 1"

    invoke-static {p3, v2}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 295
    goto :goto_0

    .line 297
    .end local v1           #table:Ljava/lang/String;
    :pswitch_2
    const-string v1, "cbs_messages"

    .line 298
    .restart local v1       #table:Ljava/lang/String;
    const-string v2, "type = 2"

    invoke-static {p3, v2}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 300
    goto :goto_0

    .line 302
    .end local v1           #table:Ljava/lang/String;
    :pswitch_3
    const-string v1, "cbs_messages"

    .line 303
    .restart local v1       #table:Ljava/lang/String;
    const-string p3, "read = ?"

    .line 304
    const/4 v2, 0x1

    new-array p4, v2, [Ljava/lang/String;

    .end local p4
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v3

    .line 306
    .restart local p4
    goto :goto_0

    .line 308
    .end local v1           #table:Ljava/lang/String;
    :pswitch_4
    const-string v1, "cbs_messages"

    .line 309
    .restart local v1       #table:Ljava/lang/String;
    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v8, 0x0

    .line 242
    iget-object v6, p0, Lcom/android/providers/telephony/CbsProvider;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 243
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/android/providers/telephony/CbsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 245
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 246
    .local v5, tempValues:Landroid/content/ContentValues;
    sget-object v6, Lcom/android/providers/telephony/CbsProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 248
    .local v0, code:I
    const-string v6, "_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 249
    const-string v6, "channel_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 250
    packed-switch v0, :pswitch_data_0

    .line 267
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "CBS/CMAS/ETWS Provider does not support this operation."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 252
    :pswitch_0
    const-string v4, "cbs_messages"

    .line 253
    .local v4, table:Ljava/lang/String;
    const-string v6, "type = 0"

    invoke-static {p3, v6}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 271
    :goto_0
    invoke-virtual {v2, v4, v5, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 273
    .local v1, count:I
    if-lez v1, :cond_0

    .line 274
    invoke-static {v2, p1, p3, p4}, Lcom/android/providers/telephony/CbsProvider;->getChannelId(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/telephony/CbsProvider;->updateChannels(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 275
    sget-object v6, Lcom/android/providers/telephony/CbsProvider;->UNREAD_URI:Landroid/net/Uri;

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 276
    invoke-virtual {v3, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 278
    :cond_0
    return v1

    .line 257
    .end local v1           #count:I
    .end local v4           #table:Ljava/lang/String;
    :pswitch_1
    const-string v4, "cbs_messages"

    .line 258
    .restart local v4       #table:Ljava/lang/String;
    const-string v6, "type = 1"

    invoke-static {p3, v6}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 260
    goto :goto_0

    .line 262
    .end local v4           #table:Ljava/lang/String;
    :pswitch_2
    const-string v4, "cbs_messages"

    .line 263
    .restart local v4       #table:Ljava/lang/String;
    const-string v6, "type = 2"

    invoke-static {p3, v6}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 265
    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
