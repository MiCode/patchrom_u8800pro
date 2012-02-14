.class Landroid/database/sqlite/SQLiteCompiledSql;
.super Ljava/lang/Object;
.source "SQLiteCompiledSql.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteCompiledSql"

.field private static isBidiEnabled:Z


# instance fields
.field mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mInUse:Z

.field private mSqlStmt:Ljava/lang/String;

.field private mStackTrace:Ljava/lang/Throwable;

.field nHandle:I

.field nStatement:I


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .parameter "db"
    .parameter "sql"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nHandle:I

    .line 48
    iput v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    .line 51
    iput-object v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    .line 55
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z

    .line 61
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 65
    iput-object p2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    .line 67
    iget v0, p1, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    iput v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nHandle:I

    .line 69
    invoke-static {v1}, Landroid/os/SystemProperties;->getCitArabicFlag(Z)Z

    move-result v0

    sput-boolean v0, Landroid/database/sqlite/SQLiteCompiledSql;->isBidiEnabled:Z

    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/database/sqlite/SQLiteCompiledSql;->compile(Ljava/lang/String;Z)V

    .line 72
    return-void
.end method

.method private compile(Ljava/lang/String;Z)V
    .locals 5
    .parameter "sql"
    .parameter "forceCompilation"

    .prologue
    .line 88
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_0
    if-eqz p2, :cond_4

    .line 94
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 97
    :try_start_0
    sget-boolean v2, Landroid/database/sqlite/SQLiteCompiledSql;->isBidiEnabled:Z

    if-eqz v2, :cond_3

    .line 98
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 100
    .local v0, ch:C
    const/16 v2, 0x660

    if-lt v0, v2, :cond_2

    const/16 v2, 0x669

    if-gt v0, v2, :cond_2

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x630

    sub-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 98
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_2
    const/16 v2, 0x6f0

    if-lt v0, v2, :cond_1

    const/16 v2, 0x6f9

    if-gt v0, v2, :cond_1

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6c0

    sub-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 110
    .end local v0           #ch:C
    .end local v1           #i:I
    :cond_3
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteCompiledSql;->native_compile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 115
    :cond_4
    return-void

    .line 112
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v2
.end method

.method private final native native_compile(Ljava/lang/String;)V
.end method

.method private final native native_finalize()V
.end method


# virtual methods
.method declared-synchronized acquire()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 138
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 146
    :goto_0
    monitor-exit p0

    return v0

    .line 142
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z

    .line 143
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz v0, :cond_1

    .line 144
    const-string v0, "SQLiteCompiledSql"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquired DbObj (id#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from DB cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move v0, v3

    .line 146
    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v4, 0x64

    .line 162
    :try_start_0
    iget v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 177
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 179
    :goto_0
    return-void

    .line 164
    :cond_0
    :try_start_1
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz v1, :cond_1

    .line 165
    const-string v1, "SQLiteCompiledSql"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** warning ** Finalized DbObj (id#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->vmSqliteObjectLeaksEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 169
    .local v0, len:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing statement in a finalizer. Please ensure that you explicitly call close() on your cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    const/4 v3, 0x0

    if-le v0, v4, :cond_3

    :goto_1
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Landroid/os/StrictMode;->onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .end local v0           #len:I
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    .restart local v0       #len:I
    :cond_3
    move v4, v0

    .line 169
    goto :goto_1

    .line 177
    .end local v0           #len:I
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method declared-synchronized release()V
    .locals 3

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "SQLiteCompiledSql"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Released DbObj (id#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") back to DB cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method releaseSqlStatement()V
    .locals 3

    .prologue
    .line 120
    iget v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    if-eqz v0, :cond_1

    .line 121
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "SQLiteCompiledSql"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closed and deallocated DbObj (id#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 126
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCompiledSql;->native_finalize()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 132
    :cond_1
    return-void

    .line 129
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method
