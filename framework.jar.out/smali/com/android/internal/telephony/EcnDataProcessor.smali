.class public Lcom/android/internal/telephony/EcnDataProcessor;
.super Ljava/lang/Object;
.source "EcnDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/EcnDataProcessor$Ecn;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ECNDATA"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/EcnDataProcessor;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method public getECNData(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "dataType"

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/EcnDataProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/EcnDataProcessor$Ecn;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 78
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v6, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 91
    .local v7, data:Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 93
    :goto_1
    return-object v7

    .line 84
    .end local v7           #data:Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    .restart local v7       #data:Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v7           #data:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 89
    .local v8, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 91
    .restart local v7       #data:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7           #data:Ljava/lang/String;
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public setECNData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "dataType"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 59
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v2, "_id = ?"

    .line 62
    .local v2, where:Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 63
    .local v3, whereArgs:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/EcnDataProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/EcnDataProcessor$Ecn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, count:I
    return v0
.end method
