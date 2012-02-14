.class public Landroid/webkit/WebViewDatabase;
.super Ljava/lang/Object;
.source "WebViewDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewDatabase$CacheAccessStat;
    }
.end annotation


# static fields
.field private static final CACHE_ACCESSCOUNTER_COL:Ljava/lang/String; = "accesscounter"

.field private static CACHE_ADVANCE_STEP_PRIO:J = 0x0L

.field private static CACHE_ADVANCE_STEP_WEIGHT:J = 0x0L

.field private static final CACHE_CONTENTDISPOSITION_COL:Ljava/lang/String; = "contentdisposition"

.field private static final CACHE_CONTENTLENGTH_COL:Ljava/lang/String; = "contentlength"

.field private static final CACHE_CROSSDOMAIN_COL:Ljava/lang/String; = "crossdomain"

.field private static final CACHE_DATABASE_FILE:Ljava/lang/String; = "webviewCache.db"

.field private static final CACHE_DATABASE_VERSION:I = 0x5

.field private static final CACHE_ENCODING_COL:Ljava/lang/String; = "encoding"

.field private static final CACHE_ETAG_COL:Ljava/lang/String; = "etag"

.field private static CACHE_EVICT_EXPIRED:I = 0x0

.field private static final CACHE_EVICT_EXPIRED_DEF:I = 0x0

.field private static final CACHE_EXPIRES_COL:Ljava/lang/String; = "expires"

.field private static final CACHE_EXPIRES_STRING_COL:Ljava/lang/String; = "expiresstring"

.field private static final CACHE_FILE_PATH_COL:Ljava/lang/String; = "filepath"

.field private static final CACHE_HTTP_STATUS_COL:Ljava/lang/String; = "httpstatus"

.field private static final CACHE_LASTACCESSTIME_COL:Ljava/lang/String; = "lastaccesstime"

.field private static final CACHE_LAST_MODIFY_COL:Ljava/lang/String; = "lastmodify"

.field private static final CACHE_LOCATION_COL:Ljava/lang/String; = "location"

.field private static final CACHE_MIMETYPE_COL:Ljava/lang/String; = "mimetype"

.field private static CACHE_ORDER_BY:Ljava/lang/String; = null

.field private static final CACHE_ORDER_BY_DEF:Ljava/lang/String; = "expires"

.field private static final CACHE_PRIO_ADVANCE_STEP_DEF:J = 0x0L

.field private static final CACHE_STAT_ID_CSS:I = 0x2

.field private static final CACHE_STAT_ID_HTML:I = 0x1

.field private static final CACHE_STAT_ID_IMAGE:I = 0x4

.field private static final CACHE_STAT_ID_JS:I = 0x3

.field private static final CACHE_STAT_ID_OTHER:I = 0x0

.field private static final CACHE_URL_COL:Ljava/lang/String; = "url"

.field private static final CACHE_WEIGHT_ADVANCE_STEP_DEF:J = 0x0L

.field private static final CACHE_WEIGHT_COL:Ljava/lang/String; = "weight"

.field private static final COOKIES_DOMAIN_COL:Ljava/lang/String; = "domain"

.field private static final COOKIES_EXPIRES_COL:Ljava/lang/String; = "expires"

.field private static final COOKIES_NAME_COL:Ljava/lang/String; = "name"

.field private static final COOKIES_PATH_COL:Ljava/lang/String; = "path"

.field private static final COOKIES_SECURE_COL:Ljava/lang/String; = "secure"

.field private static final COOKIES_VALUE_COL:Ljava/lang/String; = "value"

.field private static final DATABASE_FILE:Ljava/lang/String; = "webview.db"

.field private static final DATABASE_VERSION:I = 0xb

.field private static final FORMDATA_NAME_COL:Ljava/lang/String; = "name"

.field private static final FORMDATA_URLID_COL:Ljava/lang/String; = "urlid"

.field private static final FORMDATA_VALUE_COL:Ljava/lang/String; = "value"

.field private static final FORMURL_URL_COL:Ljava/lang/String; = "url"

.field private static final HTTPAUTH_HOST_COL:Ljava/lang/String; = "host"

.field private static final HTTPAUTH_PASSWORD_COL:Ljava/lang/String; = "password"

.field private static final HTTPAUTH_REALM_COL:Ljava/lang/String; = "realm"

.field private static final HTTPAUTH_USERNAME_COL:Ljava/lang/String; = "username"

.field private static final ID_COL:Ljava/lang/String; = "_id"

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field protected static final LOGTAG:Ljava/lang/String; = "webviewdatabase"

.field private static final PASSWORD_HOST_COL:Ljava/lang/String; = "host"

.field private static final PASSWORD_PASSWORD_COL:Ljava/lang/String; = "password"

.field private static final PASSWORD_USERNAME_COL:Ljava/lang/String; = "username"

.field private static final TABLE_COOKIES_ID:I = 0x0

.field private static final TABLE_FORMDATA_ID:I = 0x3

.field private static final TABLE_FORMURL_ID:I = 0x2

.field private static final TABLE_HTTPAUTH_ID:I = 0x4

.field private static final TABLE_PASSWORD_ID:I = 0x1

.field private static final TABLE_TCPPRECONNECTION_ID:I = 0x5

.field private static final TCPPRECONNECTION_MAIN_URL_COL:Ljava/lang/String; = "mainurl"

.field private static final TCPPRECONNECTION_MAIN_URL_USECOUNT_COL:Ljava/lang/String; = "mainurlusecount"

.field private static final TCPPRECONNECTION_SUBHOST_COL:Ljava/lang/String; = "subhost"

.field private static final TCPPRECONNECTION_SUBHOST_USECOUNT_COL:Ljava/lang/String; = "subhostusecount"

.field private static final TCPPRECONNECTION_SUBHOST_WEIGHT_COL:Ljava/lang/String; = "subhostweight"

.field private static mCacheAccessCounterIndex:I

.field private static mCacheContentDispositionColIndex:I

.field private static mCacheContentLengthColIndex:I

.field private static mCacheCrossDomainColIndex:I

.field private static mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static mCacheETagColIndex:I

.field private static mCacheEncodingColIndex:I

.field private static mCacheExpiresColIndex:I

.field private static mCacheExpiresStringColIndex:I

.field private static mCacheFilePathColIndex:I

.field private static mCacheHttpStatusColIndex:I

.field private static mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private static mCacheLastAccessTimeIndex:I

.field private static mCacheLastModifyColIndex:I

.field private static mCacheLocationColIndex:I

.field private static mCacheMimeTypeColIndex:I

.field private static mCacheStat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/webkit/WebViewDatabase$CacheAccessStat;",
            ">;"
        }
    .end annotation
.end field

.field private static mCacheTransactionRefcount:I

.field private static mCacheUrlColIndex:I

.field private static mCacheWeightIndex:I

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static mInstance:Landroid/webkit/WebViewDatabase;

.field private static final mTableNames:[Ljava/lang/String;


# instance fields
.field private final mCacheStatLock:Ljava/lang/Object;

.field private final mCookieLock:Ljava/lang/Object;

.field private final mFormLock:Ljava/lang/Object;

.field private final mHttpAuthLock:Ljava/lang/Object;

.field private final mPasswordLock:Ljava/lang/Object;

.field private final mTcpPreConnectionLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 68
    sput-object v0, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;

    .line 70
    sput-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 71
    sput-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 80
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cookies"

    aput-object v1, v0, v3

    const-string v1, "password"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "formurl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "formdata"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "httpauth"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "tcppreconnection"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    .line 100
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 215
    const-string v0, "expires"

    sput-object v0, Landroid/webkit/WebViewDatabase;->CACHE_ORDER_BY:Ljava/lang/String;

    .line 221
    sput v3, Landroid/webkit/WebViewDatabase;->CACHE_EVICT_EXPIRED:I

    .line 222
    sput-wide v5, Landroid/webkit/WebViewDatabase;->CACHE_ADVANCE_STEP_PRIO:J

    .line 223
    sput-wide v5, Landroid/webkit/WebViewDatabase;->CACHE_ADVANCE_STEP_WEIGHT:J

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/webkit/WebViewDatabase;->mCacheStat:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mTcpPreConnectionLock:Ljava/lang/Object;

    .line 297
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mCacheStatLock:Ljava/lang/Object;

    .line 302
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 44
    sget-wide v0, Landroid/webkit/WebViewDatabase;->CACHE_ADVANCE_STEP_PRIO:J

    return-wide v0
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 44
    sget-wide v0, Landroid/webkit/WebViewDatabase;->CACHE_ADVANCE_STEP_WEIGHT:J

    return-wide v0
.end method

.method private static bootstrapCacheDatabase()V
    .locals 2

    .prologue
    .line 542
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 543
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE cache (_id INTEGER PRIMARY KEY, url TEXT, filepath TEXT, lastmodify TEXT, etag TEXT, expires INTEGER, expiresstring TEXT, mimetype TEXT, encoding TEXT,httpstatus INTEGER, location TEXT, contentlength INTEGER, contentdisposition TEXT, crossdomain TEXT,lastaccesstime INTEGER,accesscounter INTEGER,weight INTEGER, UNIQUE (url) ON CONFLICT REPLACE);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 558
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX cacheUrlIndex ON cache (url)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 561
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
    .locals 5
    .parameter "context"

    .prologue
    const-string/jumbo v1, "webviewCache.db"

    const-string/jumbo v1, "webview.db"

    .line 305
    const-class v1, Landroid/webkit/WebViewDatabase;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;

    if-nez v2, :cond_5

    .line 306
    new-instance v2, Landroid/webkit/WebViewDatabase;

    invoke-direct {v2}, Landroid/webkit/WebViewDatabase;-><init>()V

    sput-object v2, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;

    .line 308
    const-string v2, "net.nw.cache.evictexpired"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->CACHE_EVICT_EXPIRED:I

    .line 310
    const-string v2, "net.nw.cache.prioadvstep"

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/webkit/WebViewDatabase;->CACHE_ADVANCE_STEP_PRIO:J

    .line 312
    const-string v2, "net.nw.cache.weightadvstep"

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/webkit/WebViewDatabase;->CACHE_ADVANCE_STEP_WEIGHT:J

    .line 314
    const-string v2, "net.nw.cache.orderby"

    const-string v3, "expires"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->CACHE_ORDER_BY:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :try_start_1
    const-string/jumbo v2, "webview.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 330
    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    .line 331
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    :try_start_3
    invoke-static {}, Landroid/webkit/WebViewDatabase;->upgradeDatabase()V

    .line 334
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 336
    :try_start_4
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 340
    :cond_1
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_2

    .line 343
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 347
    :cond_2
    :try_start_5
    const-string/jumbo v2, "webviewCache.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 359
    :cond_3
    :goto_1
    :try_start_6
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_4

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    .line 361
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 363
    :try_start_7
    invoke-static {}, Landroid/webkit/WebViewDatabase;->upgradeCacheDatabase()V

    .line 364
    invoke-static {}, Landroid/webkit/WebViewDatabase;->bootstrapCacheDatabase()V

    .line 365
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 367
    :try_start_8
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 372
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    .line 375
    :cond_4
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_5

    .line 377
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "PRAGMA read_uncommitted = true;"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 381
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 384
    new-instance v2, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cache"

    invoke-direct {v2, v3, v4}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    sput-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 386
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheUrlColIndex:I

    .line 388
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "filepath"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheFilePathColIndex:I

    .line 390
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "lastmodify"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheLastModifyColIndex:I

    .line 392
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "etag"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheETagColIndex:I

    .line 394
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "expires"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheExpiresColIndex:I

    .line 396
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "expiresstring"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheExpiresStringColIndex:I

    .line 398
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheMimeTypeColIndex:I

    .line 400
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "encoding"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheEncodingColIndex:I

    .line 402
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "httpstatus"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheHttpStatusColIndex:I

    .line 404
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheLocationColIndex:I

    .line 406
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "contentlength"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheContentLengthColIndex:I

    .line 408
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "contentdisposition"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheContentDispositionColIndex:I

    .line 410
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "crossdomain"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheCrossDomainColIndex:I

    .line 412
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "lastaccesstime"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheLastAccessTimeIndex:I

    .line 414
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "accesscounter"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheAccessCounterIndex:I

    .line 416
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string/jumbo v3, "weight"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheWeightIndex:I

    .line 421
    :cond_5
    sget-object v2, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v1

    return-object v2

    .line 320
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 322
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    :try_start_9
    const-string/jumbo v2, "webview.db"

    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    const-string/jumbo v2, "webview.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 305
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 336
    :catchall_1
    move-exception v2

    :try_start_a
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 349
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 351
    .restart local v0       #e:Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v2, "webviewCache.db"

    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 352
    const-string/jumbo v2, "webviewCache.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto/16 :goto_1

    .line 367
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_2
    move-exception v2

    sget-object v3, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method private hasEntries(I)Z
    .locals 13
    .parameter "tableId"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 564
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    move v0, v11

    .line 579
    :goto_0
    return v0

    .line 568
    :cond_0
    const/4 v8, 0x0

    .line 569
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 571
    .local v10, ret:Z
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    sget-object v2, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 573
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v12, :cond_2

    move v10, v12

    .line 577
    :goto_1
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    move v0, v10

    .line 579
    goto :goto_0

    :cond_2
    move v10, v11

    .line 573
    goto :goto_1

    .line 574
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 575
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string/jumbo v0, "webviewdatabase"

    const-string v1, "hasEntries"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static upgradeCacheDatabase()V
    .locals 4

    .prologue
    .line 531
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 532
    .local v0, oldVersion:I
    if-eqz v0, :cond_0

    .line 533
    const-string/jumbo v1, "webviewdatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading cache database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which will destroy all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 538
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 539
    return-void
.end method

.method private static upgradeDatabase()V
    .locals 13

    .prologue
    const-string v12, "DROP TABLE IF EXISTS "

    const-string v11, "CREATE TABLE "

    const-string v10, " INTEGER PRIMARY KEY, "

    const-string v9, " ("

    const-string v8, " TEXT, "

    .line 425
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 426
    .local v3, oldVersion:I
    if-eqz v3, :cond_0

    .line 427
    const-string/jumbo v4, "webviewdatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrading database from version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", which will destroy old data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    const/16 v4, 0x8

    if-ne v4, v3, :cond_1

    :cond_1
    const/4 v1, 0x0

    .line 432
    .local v1, justPasswords:Z
    const/16 v4, 0x9

    if-ne v4, v3, :cond_2

    :cond_2
    const/4 v0, 0x0

    .line 433
    .local v0, justAuth:Z
    const/16 v4, 0xa

    if-ne v4, v3, :cond_3

    const/4 v4, 0x1

    move v2, v4

    .line 434
    .local v2, justTcpPreConn:Z
    :goto_0
    if-eqz v2, :cond_4

    .line 435
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP TABLE IF EXISTS "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 437
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE TABLE "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " INTEGER PRIMARY KEY, "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mainurl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mainurlusecount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " INTEGER, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "subhost"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "subhostusecount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " INTEGER, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "subhostweight"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " REAL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 528
    :goto_1
    return-void

    .line 433
    .end local v2           #justTcpPreConn:Z
    :cond_3
    const/4 v4, 0x0

    move v2, v4

    goto/16 :goto_0

    .line 447
    .restart local v2       #justTcpPreConn:Z
    :cond_4
    if-eqz v0, :cond_5

    .line 448
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP TABLE IF EXISTS "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 450
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE TABLE "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " INTEGER PRIMARY KEY, "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "host"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "realm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "username"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "password"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " UNIQUE ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "host"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "realm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ON CONFLICT REPLACE);"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 460
    :cond_5
    if-nez v1, :cond_6

    .line 461
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP TABLE IF EXISTS "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 463
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 464
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP TABLE IF EXISTS "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 466
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP TABLE IF EXISTS "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 468
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP TABLE IF EXISTS "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 470
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP TABLE IF EXISTS "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 473
    :cond_6
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP TABLE IF EXISTS "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 476
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 478
    if-nez v1, :cond_7

    .line 480
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE TABLE "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " INTEGER PRIMARY KEY, "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "domain"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "path"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "expires"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " INTEGER, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "secure"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " INTEGER"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 486
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE INDEX cookiesIndex ON "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (path)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 490
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE TABLE "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " INTEGER PRIMARY KEY, "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "url"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 495
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE TABLE "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " INTEGER PRIMARY KEY, "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "urlid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " INTEGER, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " UNIQUE ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "urlid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ON CONFLICT IGNORE);"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 503
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE TABLE "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " INTEGER PRIMARY KEY, "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "host"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "realm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "username"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "password"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " UNIQUE ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "host"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "realm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ON CONFLICT REPLACE);"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 512
    const-string/jumbo v4, "webviewdatabase"

    const-string v5, "TCP pre connection: creating table in database"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE TABLE "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " INTEGER PRIMARY KEY, "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mainurl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mainurlusecount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " INTEGER, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "subhost"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "subhostusecount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " INTEGER, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "subhostweight"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " REAL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 522
    :cond_7
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE TABLE "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " INTEGER PRIMARY KEY, "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "host"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "username"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "password"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TEXT,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " UNIQUE ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "host"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "username"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ON CONFLICT REPLACE);"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method addCache(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .locals 5
    .parameter "url"
    .parameter "c"

    .prologue
    .line 893
    if-eqz p1, :cond_0

    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v1}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 898
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheUrlColIndex:I

    invoke-virtual {v1, v2, p1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 899
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheFilePathColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 900
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheLastModifyColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 901
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheETagColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 902
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheExpiresColIndex:I

    iget-wide v3, p2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 903
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheExpiresStringColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 904
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheMimeTypeColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 905
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheEncodingColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 906
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheHttpStatusColIndex:I

    iget v3, p2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 907
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheLocationColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 908
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheContentLengthColIndex:I

    iget-wide v3, p2, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 909
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheContentDispositionColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 911
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheCrossDomainColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 913
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewDatabase;->updateCacheStat(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)Landroid/webkit/WebViewDatabase$CacheAccessStat;

    move-result-object v0

    .line 914
    .local v0, cacheStat:Landroid/webkit/WebViewDatabase$CacheAccessStat;
    if-nez v0, :cond_2

    .line 915
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheLastAccessTimeIndex:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 916
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheAccessCounterIndex:I

    iget v3, p2, Landroid/webkit/CacheManager$CacheResult;->accessCounter:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 917
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheWeightIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 924
    :goto_1
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v1}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    goto/16 :goto_0

    .line 920
    :cond_2
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheLastAccessTimeIndex:I

    iget-wide v3, v0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mLastAccessTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 921
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheAccessCounterIndex:I

    iget v3, v0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheAccessCounter:I

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 922
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheWeightIndex:I

    iget-wide v3, v0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mWeight:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    goto :goto_1
.end method

.method addCookie(Landroid/webkit/CookieManager$Cookie;)V
    .locals 7
    .parameter "cookie"

    .prologue
    .line 672
    iget-object v2, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v2

    .line 678
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 679
    .local v0, cookieVal:Landroid/content/ContentValues;
    const-string v3, "domain"

    iget-object v4, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v3, "path"

    iget-object v4, p1, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v3, "name"

    iget-object v4, p1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string/jumbo v3, "value"

    iget-object v4, p1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-wide v3, p1, Landroid/webkit/CookieManager$Cookie;->expires:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 684
    const-string v3, "expires"

    iget-wide v4, p1, Landroid/webkit/CookieManager$Cookie;->expires:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 686
    :cond_2
    const-string v3, "secure"

    iget-boolean v4, p1, Landroid/webkit/CookieManager$Cookie;->secure:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    :try_start_1
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 692
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .end local v0           #cookieVal:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 689
    .restart local v0       #cookieVal:Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 690
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "webviewdatabase"

    const-string v4, "addCookie"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method clearCache()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 931
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 943
    :goto_0
    return-void

    .line 935
    :cond_0
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 936
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mCacheStatLock:Ljava/lang/Object;

    monitor-enter v0

    .line 937
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheStat:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 938
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 940
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mTcpPreConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_1
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 942
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 938
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method clearCookies()V
    .locals 5

    .prologue
    .line 710
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 717
    :goto_0
    return-void

    .line 714
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v0

    .line 715
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 716
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearExpiredCookies(J)V
    .locals 8
    .parameter "now"

    .prologue
    .line 740
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 749
    :goto_0
    return-void

    .line 744
    :cond_0
    const-string v0, "expires <= ?"

    .line 745
    .local v0, expires:Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v1

    .line 746
    :try_start_0
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "expires <= ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 748
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public clearFormData()V
    .locals 5

    .prologue
    .line 1386
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 1394
    :goto_0
    return-void

    .line 1390
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1391
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1392
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1393
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearHttpAuthUsernamePassword()V
    .locals 5

    .prologue
    .line 1251
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 1258
    :goto_0
    return-void

    .line 1255
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1256
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1257
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearSessionCookies()V
    .locals 6

    .prologue
    .line 723
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 732
    :goto_0
    return-void

    .line 727
    :cond_0
    const-string v0, "expires ISNULL"

    .line 728
    .local v0, sessionExpired:Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v1

    .line 729
    :try_start_0
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "expires ISNULL"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 731
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public clearUsernamePassword()V
    .locals 5

    .prologue
    .line 1150
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 1157
    :goto_0
    return-void

    .line 1154
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1155
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1156
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method deleteCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "domain"
    .parameter "path"
    .parameter "name"

    .prologue
    .line 653
    if-eqz p1, :cond_0

    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v1

    .line 658
    :try_start_0
    const-string v0, "(domain == ?) AND (path == ?) AND (name == ?)"

    .line 661
    .local v0, where:Ljava/lang/String;
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "(domain == ?) AND (path == ?) AND (name == ?)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 663
    monitor-exit v1

    goto :goto_0

    .end local v0           #where:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method endCacheTransaction()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 772
    sget v0, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    sub-int/2addr v0, v3

    sput v0, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    if-nez v0, :cond_1

    .line 773
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    const-string/jumbo v0, "webviewdatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endCacheTransaction should be called from WebViewWorkerThread instead of from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_0
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v3

    .line 786
    :goto_0
    return v0

    .line 782
    :catchall_0
    move-exception v0

    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 786
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method flushCacheStat()V
    .locals 9

    .prologue
    const-string v4, "="

    const-string v4, ","

    .line 813
    iget-object v4, p0, Landroid/webkit/WebViewDatabase;->mCacheStatLock:Ljava/lang/Object;

    monitor-enter v4

    .line 814
    :try_start_0
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheStat:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 815
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 816
    .local v2, start:J
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheStat:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 817
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/webkit/WebViewDatabase$CacheAccessStat;>;"
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE cache SET lastaccesstime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;

    iget-wide v7, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mLastAccessTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "accesscounter"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;

    iget v7, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheAccessCounter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "weight"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;

    iget-wide v7, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mWeight:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE url = ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 825
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/webkit/WebViewDatabase$CacheAccessStat;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #start:J
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 823
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #start:J
    :cond_0
    :try_start_1
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheStat:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 825
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #start:J
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 826
    return-void
.end method

.method getAllCacheFileNames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1045
    const/4 v2, 0x0

    .line 1046
    .local v2, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1048
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT filepath FROM cache"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1050
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1051
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    .end local v2           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_0

    move-object v2, v3

    .line 1059
    .end local v3           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1061
    :cond_2
    :goto_0
    return-object v2

    .line 1056
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1057
    .local v1, e:Ljava/lang/IllegalStateException;
    :goto_1
    :try_start_2
    const-string/jumbo v4, "webviewdatabase"

    const-string v5, "getAllCacheFileNames"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1059
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4

    .end local v2           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    .line 1056
    .end local v2           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method getCache(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
    .locals 9
    .parameter "url"

    .prologue
    const/4 v8, 0x0

    .line 835
    if-eqz p1, :cond_0

    sget-object v4, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v8

    .line 868
    :goto_0
    return-object v4

    .line 839
    :cond_1
    const/4 v0, 0x0

    .line 840
    .local v0, cursor:Landroid/database/Cursor;
    const-string v2, "SELECT filepath, lastmodify, etag, expires, expiresstring, mimetype, encoding, httpstatus, location, contentlength, contentdisposition, crossdomain, accesscounter FROM cache WHERE url = ?"

    .line 844
    .local v2, query:Ljava/lang/String;
    :try_start_0
    sget-object v4, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT filepath, lastmodify, etag, expires, expiresstring, mimetype, encoding, httpstatus, location, contentlength, contentdisposition, crossdomain, accesscounter FROM cache WHERE url = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 845
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 846
    new-instance v3, Landroid/webkit/CacheManager$CacheResult;

    invoke-direct {v3}, Landroid/webkit/CacheManager$CacheResult;-><init>()V

    .line 847
    .local v3, ret:Landroid/webkit/CacheManager$CacheResult;
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 848
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    .line 849
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    .line 850
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 851
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    .line 852
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    .line 853
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    .line 854
    const/4 v4, 0x7

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    .line 855
    const/16 v4, 0x8

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    .line 856
    const/16 v4, 0x9

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    .line 857
    const/16 v4, 0xa

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    .line 858
    const/16 v4, 0xb

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    .line 859
    const/16 v4, 0xc

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Landroid/webkit/CacheManager$CacheResult;->accessCounter:I

    .line 860
    invoke-virtual {p0, p1, v3}, Landroid/webkit/WebViewDatabase;->updateCacheStat(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)Landroid/webkit/WebViewDatabase$CacheAccessStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v4, v3

    goto/16 :goto_0

    .end local v3           #ret:Landroid/webkit/CacheManager$CacheResult;
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v4, v8

    .line 868
    goto/16 :goto_0

    .line 863
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 864
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string/jumbo v4, "webviewdatabase"

    const-string v5, "getCache"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 866
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
.end method

.method getCacheTotalSize()J
    .locals 8

    .prologue
    .line 965
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    .line 966
    const-wide/16 v5, 0x0

    .line 981
    :goto_0
    return-wide v5

    .line 968
    :cond_0
    const-wide/16 v3, 0x0

    .line 969
    .local v3, size:J
    const/4 v0, 0x0

    .line 970
    .local v0, cursor:Landroid/database/Cursor;
    const-string v2, "SELECT SUM(contentlength) as sum FROM cache"

    .line 972
    .local v2, query:Ljava/lang/String;
    :try_start_0
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT SUM(contentlength) as sum FROM cache"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 973
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 974
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 979
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-wide v5, v3

    .line 981
    goto :goto_0

    .line 976
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 977
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string/jumbo v5, "webviewdatabase"

    const-string v6, "getCacheTotalSize"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 979
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method

.method getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 22
    .parameter "domain"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v15, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-eqz p1, :cond_0

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-object v15

    .line 598
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 599
    const/4 v2, 0x7

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "domain"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "path"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "name"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "value"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "expires"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "secure"

    aput-object v3, v4, v2

    .line 604
    .local v4, columns:[Ljava/lang/String;
    const-string v19, "(domain GLOB \'*\' || ?)"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    .local v19, selection:Ljava/lang/String;
    const/4 v11, 0x0

    .line 608
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const-string v5, "(domain GLOB \'*\' || ?)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 611
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 612
    const-string v2, "domain"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 613
    .local v12, domainCol:I
    const-string v2, "path"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 614
    .local v17, pathCol:I
    const-string v2, "name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 615
    .local v16, nameCol:I
    const-string/jumbo v2, "value"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 616
    .local v20, valueCol:I
    const-string v2, "expires"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 617
    .local v14, expiresCol:I
    const-string v2, "secure"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 619
    .local v18, secureCol:I
    :cond_2
    new-instance v10, Landroid/webkit/CookieManager$Cookie;

    invoke-direct {v10}, Landroid/webkit/CookieManager$Cookie;-><init>()V

    .line 620
    .local v10, cookie:Landroid/webkit/CookieManager$Cookie;
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    .line 621
    move-object v0, v11

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    .line 622
    move-object v0, v11

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    .line 623
    move-object v0, v11

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    .line 624
    invoke-interface {v11, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 625
    const-wide/16 v2, -0x1

    iput-wide v2, v10, Landroid/webkit/CookieManager$Cookie;->expires:J

    .line 629
    :goto_1
    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, v10, Landroid/webkit/CookieManager$Cookie;->secure:Z

    .line 630
    const/4 v2, 0x1

    iput-byte v2, v10, Landroid/webkit/CookieManager$Cookie;->mode:B

    .line 631
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 637
    .end local v10           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v12           #domainCol:I
    .end local v14           #expiresCol:I
    .end local v16           #nameCol:I
    .end local v17           #pathCol:I
    .end local v18           #secureCol:I
    .end local v20           #valueCol:I
    :cond_3
    if-eqz v11, :cond_4

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 639
    :cond_4
    :goto_3
    monitor-exit v21

    goto/16 :goto_0

    .line 640
    .end local v4           #columns:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v19           #selection:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 627
    .restart local v4       #columns:[Ljava/lang/String;
    .restart local v10       #cookie:Landroid/webkit/CookieManager$Cookie;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #domainCol:I
    .restart local v14       #expiresCol:I
    .restart local v16       #nameCol:I
    .restart local v17       #pathCol:I
    .restart local v18       #secureCol:I
    .restart local v19       #selection:Ljava/lang/String;
    .restart local v20       #valueCol:I
    :cond_5
    :try_start_3
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Landroid/webkit/CookieManager$Cookie;->expires:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 634
    .end local v10           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v12           #domainCol:I
    .end local v14           #expiresCol:I
    .end local v16           #nameCol:I
    .end local v17           #pathCol:I
    .end local v18           #secureCol:I
    .end local v20           #valueCol:I
    :catch_0
    move-exception v2

    move-object v13, v2

    .line 635
    .local v13, e:Ljava/lang/IllegalStateException;
    :try_start_4
    const-string/jumbo v2, "webviewdatabase"

    const-string v3, "getCookiesForDomain"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 637
    if-eqz v11, :cond_4

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 629
    .end local v13           #e:Ljava/lang/IllegalStateException;
    .restart local v10       #cookie:Landroid/webkit/CookieManager$Cookie;
    .restart local v12       #domainCol:I
    .restart local v14       #expiresCol:I
    .restart local v16       #nameCol:I
    .restart local v17       #pathCol:I
    .restart local v18       #secureCol:I
    .restart local v20       #valueCol:I
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 637
    .end local v10           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v12           #domainCol:I
    .end local v14           #expiresCol:I
    .end local v16           #nameCol:I
    .end local v17           #pathCol:I
    .end local v18           #secureCol:I
    .end local v20           #valueCol:I
    :catchall_1
    move-exception v2

    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method getFormData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 19
    .parameter "url"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1325
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1326
    .local v18, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return-object v18

    .line 1330
    :cond_1
    const-string v14, "(url == ?)"

    .line 1331
    .local v14, urlSelection:Ljava/lang/String;
    const-string v12, "(urlid == ?) AND (name == ?)"

    .line 1333
    .local v12, dataSelection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    move-object v12, v0

    .end local v12           #dataSelection:Ljava/lang/String;
    monitor-enter v12

    .line 1334
    const/4 v10, 0x0

    .line 1336
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    sget-object v4, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "(url == ?)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1339
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1340
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v15

    .line 1341
    .local v15, urlid:J
    const/4 v11, 0x0

    .line 1343
    .local v11, dataCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "value"

    aput-object v6, v4, v5

    const-string v5, "(urlid == ?) AND (name == ?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1349
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1350
    const-string/jumbo v2, "value"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1353
    .local v17, valueCol:I
    :cond_2
    move-object v0, v11

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 1359
    .end local v17           #valueCol:I
    :cond_3
    if-eqz v11, :cond_4

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1365
    .end local v11           #dataCursor:Landroid/database/Cursor;
    .end local v15           #urlid:J
    :cond_4
    :goto_1
    if-eqz v10, :cond_5

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1367
    :cond_5
    :goto_2
    monitor-exit v12

    goto/16 :goto_0

    .line 1368
    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 1356
    .restart local v11       #dataCursor:Landroid/database/Cursor;
    .restart local v15       #urlid:J
    :catch_0
    move-exception v2

    move-object v13, v2

    .line 1357
    .local v13, e:Ljava/lang/IllegalStateException;
    :try_start_4
    const-string/jumbo v2, "webviewdatabase"

    const-string v3, "getFormData dataCursor"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1359
    if-eqz v11, :cond_4

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1362
    .end local v11           #dataCursor:Landroid/database/Cursor;
    .end local v13           #e:Ljava/lang/IllegalStateException;
    .end local v15           #urlid:J
    :catch_1
    move-exception v2

    move-object v13, v2

    .line 1363
    .restart local v13       #e:Ljava/lang/IllegalStateException;
    :try_start_6
    const-string/jumbo v2, "webviewdatabase"

    const-string v3, "getFormData cursor"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1365
    if-eqz v10, :cond_5

    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 1359
    .end local v13           #e:Ljava/lang/IllegalStateException;
    .restart local v11       #dataCursor:Landroid/database/Cursor;
    .restart local v15       #urlid:J
    :catchall_1
    move-exception v2

    if-eqz v11, :cond_6

    :try_start_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1

    .line 1365
    .end local v11           #dataCursor:Landroid/database/Cursor;
    .end local v15           #urlid:J
    :catchall_2
    move-exception v2

    if-eqz v10, :cond_7

    :try_start_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "host"
    .parameter "realm"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v6, "password"

    .line 1204
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1232
    :goto_0
    return-object v0

    .line 1208
    :cond_1
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v0, "username"

    aput-object v0, v2, v3

    const-string v0, "password"

    aput-object v6, v2, v4

    .line 1211
    .local v2, columns:[Ljava/lang/String;
    const-string v11, "(host == ?) AND (realm == ?)"

    .line 1213
    .local v11, selection:Ljava/lang/String;
    iget-object v12, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1214
    const/4 v10, 0x0

    .line 1215
    .local v10, ret:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1217
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    const-string v3, "(host == ?) AND (realm == ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1220
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1221
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    .line 1222
    const/4 v0, 0x0

    const-string/jumbo v1, "username"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 1224
    const/4 v0, 0x1

    const-string v1, "password"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    :cond_2
    if-eqz v8, :cond_3

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1232
    :cond_3
    :goto_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v10

    goto :goto_0

    .line 1227
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 1228
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string/jumbo v0, "webviewdatabase"

    const-string v1, "getHttpAuthUsernamePassword"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1230
    if-eqz v8, :cond_3

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1233
    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1230
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_4

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getSubhostsData(Landroid/webkit/SubResourcesHistory;)V
    .locals 28
    .parameter "subResourcesHistory"

    .prologue
    .line 1470
    if-eqz p1, :cond_0

    sget-object v5, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_1

    .line 1515
    :cond_0
    :goto_0
    return-void

    .line 1474
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabase;->mTcpPreConnectionLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1475
    const/4 v5, 0x5

    :try_start_0
    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "mainurl"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "mainurlusecount"

    aput-object v6, v7, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "subhost"

    aput-object v6, v7, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "subhostusecount"

    aput-object v6, v7, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "subhostweight"

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1483
    .local v7, columns:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 1486
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v5, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v6, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v6, v6, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1488
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1489
    const-string v5, "mainurl"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1490
    .local v16, mainUrlCol:I
    const-string v5, "mainurlusecount"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1491
    .local v18, mainUrlUseCountCol:I
    const-string/jumbo v5, "subhost"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1492
    .local v20, subhostCol:I
    const-string/jumbo v5, "subhostusecount"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 1493
    .local v23, subhostUseCountCol:I
    const-string/jumbo v5, "subhostweight"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 1496
    .local v26, subhostWeightCol:I
    :cond_2
    move-object v0, v13

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1497
    .local v21, subhostUrl:Ljava/lang/String;
    move-object v0, v13

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1498
    .local v22, subhostUseCount:I
    move-object v0, v13

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v24

    .line 1499
    .local v24, subhostWeight:D
    move-object v0, v13

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1500
    .local v15, mainUrl:Ljava/lang/String;
    move-object v0, v13

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1502
    .local v17, mainUrlUseCount:I
    new-instance v19, Landroid/webkit/Subhost;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/Subhost;-><init>(Ljava/lang/String;ID)V

    .line 1503
    .local v19, subhost:Landroid/webkit/Subhost;
    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkit/SubResourcesHistory;->addSubHost(Ljava/lang/String;Landroid/webkit/Subhost;)V

    .line 1504
    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/webkit/SubResourcesHistory;->setUseCount(Ljava/lang/String;I)V

    .line 1505
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1507
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/SubResourcesHistory;->updateSubhostsToConnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1512
    .end local v15           #mainUrl:Ljava/lang/String;
    .end local v16           #mainUrlCol:I
    .end local v17           #mainUrlUseCount:I
    .end local v18           #mainUrlUseCountCol:I
    .end local v19           #subhost:Landroid/webkit/Subhost;
    .end local v20           #subhostCol:I
    .end local v21           #subhostUrl:Ljava/lang/String;
    .end local v22           #subhostUseCount:I
    .end local v23           #subhostUseCountCol:I
    .end local v24           #subhostWeight:D
    .end local v26           #subhostWeightCol:I
    :cond_3
    if-eqz v13, :cond_4

    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1515
    :cond_4
    :goto_1
    monitor-exit v27

    goto/16 :goto_0

    .line 1516
    .end local v7           #columns:[Ljava/lang/String;
    .end local v13           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1509
    .restart local v7       #columns:[Ljava/lang/String;
    .restart local v13       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v5

    move-object v14, v5

    .line 1510
    .local v14, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string/jumbo v5, "webviewdatabase"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1512
    if-eqz v13, :cond_4

    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v14           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v5

    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "schemePlusHost"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const-string v6, "password"

    .line 1104
    if-eqz p1, :cond_0

    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 1131
    :goto_0
    return-object v0

    .line 1108
    :cond_1
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v0, "username"

    aput-object v0, v2, v4

    const-string v0, "password"

    aput-object v6, v2, v1

    .line 1111
    .local v2, columns:[Ljava/lang/String;
    const-string v11, "(host == ?)"

    .line 1112
    .local v11, selection:Ljava/lang/String;
    iget-object v12, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1113
    const/4 v10, 0x0

    .line 1114
    .local v10, ret:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1116
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    const-string v3, "(host == ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1119
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1120
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    .line 1121
    const/4 v0, 0x0

    const-string/jumbo v1, "username"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 1123
    const/4 v0, 0x1

    const-string v1, "password"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    :cond_2
    if-eqz v8, :cond_3

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1131
    :cond_3
    :goto_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v10

    goto :goto_0

    .line 1126
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 1127
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string/jumbo v0, "webviewdatabase"

    const-string v1, "getUsernamePassword"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1129
    if-eqz v8, :cond_3

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1132
    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1129
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_4

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method hasCache()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 946
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    move v0, v11

    .line 961
    :goto_0
    return v0

    .line 950
    :cond_0
    const/4 v8, 0x0

    .line 951
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 953
    .local v10, ret:Z
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache"

    sget-object v2, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 955
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v12, :cond_2

    move v10, v12

    .line 959
    :goto_1
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    move v0, v10

    .line 961
    goto :goto_0

    :cond_2
    move v10, v11

    .line 955
    goto :goto_1

    .line 956
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 957
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string/jumbo v0, "webviewdatabase"

    const-string v1, "hasCache"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 959
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method hasCookies()Z
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 703
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasFormData()Z
    .locals 2

    .prologue
    .line 1377
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1378
    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, v1}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1379
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasHttpAuthUsernamePassword()Z
    .locals 2

    .prologue
    .line 1242
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1243
    const/4 v1, 0x4

    :try_start_0
    invoke-direct {p0, v1}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1244
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasUsernamePassword()Z
    .locals 2

    .prologue
    .line 1141
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1142
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1143
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeCache(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 877
    if-eqz p1, :cond_0

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM cache WHERE url = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 881
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mCacheStatLock:Ljava/lang/Object;

    monitor-enter v0

    .line 882
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheStat:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setFormData(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 22
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1272
    .local p2, formdata:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    .line 1315
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 1276
    .restart local p0
    :cond_1
    const-string v18, "(url == ?)"

    .line 1277
    .local v18, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18           #selection:Ljava/lang/String;
    monitor-enter v18

    .line 1278
    const-wide/16 v20, -0x1

    .line 1279
    .local v20, urlid:J
    const/4 v13, 0x0

    .line 1281
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    sget-object v6, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v7, "(url == ?)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1284
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1285
    const-string v4, "_id"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v20

    .line 1295
    :goto_1
    if-eqz v13, :cond_2

    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1297
    :cond_2
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-ltz v4, :cond_5

    .line 1298
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    .line 1299
    .local v19, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 1300
    .local v16, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1301
    .local v17, map:Landroid/content/ContentValues;
    const-string/jumbo v4, "urlid"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1302
    .end local p0
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1303
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1304
    .local v15, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "name"

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    const-string/jumbo v4, "value"

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1307
    :try_start_2
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 1309
    :catch_0
    move-exception v4

    move-object v14, v4

    .line 1310
    .local v14, e:Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v4, "webviewdatabase"

    const-string/jumbo v5, "setFormData"

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1314
    .end local v14           #e:Ljava/lang/Exception;
    .end local v15           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v17           #map:Landroid/content/ContentValues;
    .end local v19           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1287
    .restart local p0
    :cond_3
    :try_start_4
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1288
    .local v12, c:Landroid/content/ContentValues;
    const-string/jumbo v4, "url"

    move-object v0, v12

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v20

    goto/16 :goto_1

    .line 1292
    .end local v12           #c:Landroid/content/ContentValues;
    :catch_1
    move-exception v4

    move-object v14, v4

    .line 1293
    .local v14, e:Ljava/lang/IllegalStateException;
    :try_start_5
    const-string/jumbo v4, "webviewdatabase"

    const-string/jumbo v5, "setFormData"

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1295
    if-eqz v13, :cond_2

    :try_start_6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .end local v14           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v4

    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4

    .line 1314
    .end local p0
    :cond_5
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    const-string v2, "host"

    .line 1175
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1179
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1180
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1181
    .local v0, c:Landroid/content/ContentValues;
    const-string v3, "host"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    const-string v3, "realm"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const-string/jumbo v3, "username"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    const-string v3, "password"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    :try_start_1
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const-string v5, "host"

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1191
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .end local v0           #c:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1188
    .restart local v0       #c:Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1189
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "webviewdatabase"

    const-string/jumbo v4, "setHttpAuthUsernamePassword"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setSubhostsData(Landroid/webkit/SubResourcesHistory;)V
    .locals 21
    .parameter "subResourcesHistory"

    .prologue
    .line 1405
    if-eqz p1, :cond_0

    sget-object v17, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v17, :cond_1

    .line 1462
    :cond_0
    return-void

    .line 1411
    :cond_1
    sget-object v17, Landroid/webkit/SubResourcesHistory;->mSubResourcesHistoryLock:Ljava/lang/Object;

    monitor-enter v17

    .line 1412
    :try_start_0
    new-instance v8, Ljava/util/HashSet;

    invoke-virtual/range {p1 .. p1}, Landroid/webkit/SubResourcesHistory;->getMainUrls()Ljava/util/Set;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1413
    .local v8, mainUrls:Ljava/util/Set;
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1415
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1419
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1421
    .local v9, mainUrlsIterator:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1423
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 1424
    .local v6, mainUrl:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/webkit/SubResourcesHistory;->getUseCount(Ljava/lang/String;)I

    move-result v7

    .line 1427
    .local v7, mainUrlUseCount:I
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/webkit/SubResourcesHistory;->getSubHosts(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v14

    .line 1428
    .local v14, subHosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    if-eqz v14, :cond_2

    .line 1431
    sget-object v17, Landroid/webkit/SubResourcesHistory;->mSubResourcesHistoryLock:Ljava/lang/Object;

    monitor-enter v17

    .line 1432
    :try_start_1
    invoke-virtual {v14}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v15

    .line 1433
    .local v15, subHostsIterator:Ljava/util/ListIterator;
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1435
    :goto_0
    invoke-interface {v15}, Ljava/util/ListIterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1436
    invoke-interface {v15}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/webkit/Subhost;

    .line 1437
    .local v16, subhost:Landroid/webkit/Subhost;
    invoke-virtual/range {v16 .. v16}, Landroid/webkit/Subhost;->getHost()Ljava/lang/String;

    move-result-object v10

    .line 1438
    .local v10, subHostUrl:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/webkit/Subhost;->getNumberOfReferences()I

    move-result v11

    .line 1439
    .local v11, subHostUseCount:I
    invoke-virtual/range {v16 .. v16}, Landroid/webkit/Subhost;->getWeight()D

    move-result-wide v12

    .line 1441
    .local v12, subHostWeight:D
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabase;->mTcpPreConnectionLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 1443
    :try_start_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1444
    .local v4, conValues:Landroid/content/ContentValues;
    const-string v18, "mainurl"

    move-object v0, v4

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    const-string v18, "mainurlusecount"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object v0, v4

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1446
    const-string/jumbo v18, "subhost"

    move-object v0, v4

    move-object/from16 v1, v18

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    const-string/jumbo v18, "subhostusecount"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object v0, v4

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1448
    const-string/jumbo v18, "subhostweight"

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object v0, v4

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1451
    :try_start_3
    sget-object v18, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v19, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/16 v20, 0x5

    aget-object v19, v19, v20

    const-string/jumbo v20, "subhostusecount"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1456
    :goto_1
    :try_start_4
    monitor-exit v17

    goto :goto_0

    .end local v4           #conValues:Landroid/content/ContentValues;
    :catchall_0
    move-exception v18

    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v18

    .line 1413
    .end local v6           #mainUrl:Ljava/lang/String;
    .end local v7           #mainUrlUseCount:I
    .end local v8           #mainUrls:Ljava/util/Set;
    .end local v9           #mainUrlsIterator:Ljava/util/Iterator;
    .end local v10           #subHostUrl:Ljava/lang/String;
    .end local v11           #subHostUseCount:I
    .end local v12           #subHostWeight:D
    .end local v14           #subHosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    .end local v15           #subHostsIterator:Ljava/util/ListIterator;
    .end local v16           #subhost:Landroid/webkit/Subhost;
    :catchall_1
    move-exception v18

    :try_start_5
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v18

    .line 1433
    .restart local v6       #mainUrl:Ljava/lang/String;
    .restart local v7       #mainUrlUseCount:I
    .restart local v8       #mainUrls:Ljava/util/Set;
    .restart local v9       #mainUrlsIterator:Ljava/util/Iterator;
    .restart local v14       #subHosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    :catchall_2
    move-exception v18

    :try_start_6
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v18

    .line 1453
    .restart local v4       #conValues:Landroid/content/ContentValues;
    .restart local v10       #subHostUrl:Ljava/lang/String;
    .restart local v11       #subHostUseCount:I
    .restart local v12       #subHostWeight:D
    .restart local v15       #subHostsIterator:Ljava/util/ListIterator;
    .restart local v16       #subhost:Landroid/webkit/Subhost;
    :catch_0
    move-exception v18

    move-object/from16 v5, v18

    .line 1454
    .local v5, e:Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v18, "webviewdatabase"

    const-string/jumbo v19, "setTcpPreConnection"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"

    .prologue
    const-string v2, "host"

    .line 1078
    if-eqz p1, :cond_0

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1082
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1083
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1084
    .local v0, c:Landroid/content/ContentValues;
    const-string v3, "host"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string/jumbo v3, "username"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const-string v3, "password"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    :try_start_1
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string v5, "host"

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1093
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .end local v0           #c:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1090
    .restart local v0       #c:Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1091
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "webviewdatabase"

    const-string/jumbo v4, "setUsernamePassword"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method startCacheTransaction()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 757
    sget v0, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    if-ne v0, v3, :cond_1

    .line 758
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    const-string/jumbo v0, "webviewdatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCacheTransaction should be called from WebViewWorkerThread instead of from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v0, v3

    .line 767
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method trimCache(J)Ljava/util/List;
    .locals 17
    .parameter "amount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 985
    new-instance v9, Ljava/util/ArrayList;

    const/16 v13, 0x64

    invoke-direct {v9, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 986
    .local v9, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 987
    .local v1, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewDatabase;->flushCacheStat()V

    .line 988
    sget v13, Landroid/webkit/WebViewDatabase;->CACHE_EVICT_EXPIRED:I

    if-eqz v13, :cond_0

    .line 989
    sget-object v13, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UPDATE cache SET weight=lastaccesstime WHERE expires<="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "expires"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "!=0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 993
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SELECT contentlength, filepath FROM cache ORDER BY "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/webkit/WebViewDatabase;->CACHE_ORDER_BY:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ASC"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 995
    .local v11, query:Ljava/lang/String;
    :try_start_0
    sget-object v13, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v14, 0x0

    invoke-virtual {v13, v11, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 996
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 997
    const/16 v0, 0x64

    .line 998
    .local v0, batchSize:I
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v13, 0x14

    mul-int/lit8 v14, v0, 0x10

    add-int/lit16 v13, v13, 0x640

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 999
    .local v10, pathStr:Ljava/lang/StringBuilder;
    const-string v13, "DELETE FROM cache WHERE filepath IN (?"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 1001
    const-string v13, ", ?"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1003
    :cond_1
    const-string v13, ")"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1004
    const/4 v12, 0x0

    .line 1006
    .local v12, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    sget-object v13, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 1009
    const/4 v5, 0x1

    .local v5, index:I
    move v6, v5

    .line 1011
    .end local v5           #index:I
    .local v6, index:I
    :goto_1
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1012
    .local v7, length:J
    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-nez v13, :cond_7

    move v5, v6

    .line 1024
    .end local v6           #index:I
    .restart local v5       #index:I
    :cond_2
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_3

    const-wide/16 v13, 0x0

    cmp-long v13, p1, v13

    if-gtz v13, :cond_a

    .line 1025
    :cond_3
    const/4 v13, 0x1

    if-le v5, v13, :cond_4

    .line 1028
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1033
    :cond_4
    if-eqz v12, :cond_5

    :try_start_2
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1039
    .end local v0           #batchSize:I
    .end local v4           #i:I
    .end local v5           #index:I
    .end local v7           #length:J
    .end local v10           #pathStr:Ljava/lang/StringBuilder;
    .end local v12           #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1041
    :cond_6
    :goto_4
    return-object v9

    .line 1015
    .restart local v0       #batchSize:I
    .restart local v4       #i:I
    .restart local v6       #index:I
    .restart local v7       #length:J
    .restart local v10       #pathStr:Ljava/lang/StringBuilder;
    .restart local v12       #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_7
    sub-long p1, p1, v7

    .line 1016
    const/4 v13, 0x1

    :try_start_3
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1017
    .local v3, filePath:Ljava/lang/String;
    invoke-virtual {v12, v6, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1018
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    if-ne v6, v0, :cond_2

    .line 1020
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1021
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1022
    const/4 v5, 0x1

    goto :goto_2

    .line 1030
    .end local v3           #filePath:Ljava/lang/String;
    .end local v5           #index:I
    .end local v7           #length:J
    :catch_0
    move-exception v13

    move-object v2, v13

    .line 1031
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_4
    const-string/jumbo v13, "webviewdatabase"

    const-string/jumbo v14, "trimCache SQLiteStatement"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1033
    if-eqz v12, :cond_5

    :try_start_5
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 1036
    .end local v0           #batchSize:I
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .end local v4           #i:I
    .end local v10           #pathStr:Ljava/lang/StringBuilder;
    .end local v12           #statement:Landroid/database/sqlite/SQLiteStatement;
    :catch_1
    move-exception v13

    move-object v2, v13

    .line 1037
    .restart local v2       #e:Ljava/lang/IllegalStateException;
    :try_start_6
    const-string/jumbo v13, "webviewdatabase"

    const-string/jumbo v14, "trimCache Cursor"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1039
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 1033
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .restart local v0       #batchSize:I
    .restart local v4       #i:I
    .restart local v10       #pathStr:Ljava/lang/StringBuilder;
    .restart local v12       #statement:Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v13

    if-eqz v12, :cond_8

    :try_start_7
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_8
    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1039
    .end local v0           #batchSize:I
    .end local v4           #i:I
    .end local v10           #pathStr:Ljava/lang/StringBuilder;
    .end local v12           #statement:Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v13

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v13

    .restart local v0       #batchSize:I
    .restart local v4       #i:I
    .restart local v5       #index:I
    .restart local v7       #length:J
    .restart local v10       #pathStr:Ljava/lang/StringBuilder;
    .restart local v12       #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_a
    move v6, v5

    .end local v5           #index:I
    .restart local v6       #index:I
    goto :goto_1
.end method

.method updateCacheStat(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)Landroid/webkit/WebViewDatabase$CacheAccessStat;
    .locals 5
    .parameter "url"
    .parameter "c"

    .prologue
    .line 793
    iget-wide v1, p2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 795
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCacheStatLock:Ljava/lang/Object;

    monitor-enter v1

    .line 796
    :try_start_0
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheStat:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewDatabase$CacheAccessStat;

    .line 797
    .local v0, cacheStat:Landroid/webkit/WebViewDatabase$CacheAccessStat;
    if-nez v0, :cond_0

    .line 798
    new-instance v0, Landroid/webkit/WebViewDatabase$CacheAccessStat;

    .end local v0           #cacheStat:Landroid/webkit/WebViewDatabase$CacheAccessStat;
    invoke-direct {v0, p2}, Landroid/webkit/WebViewDatabase$CacheAccessStat;-><init>(Landroid/webkit/CacheManager$CacheResult;)V

    .line 799
    .restart local v0       #cacheStat:Landroid/webkit/WebViewDatabase$CacheAccessStat;
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheStat:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    :goto_0
    monitor-exit v1

    move-object v1, v0

    .line 806
    .end local v0           #cacheStat:Landroid/webkit/WebViewDatabase$CacheAccessStat;
    :goto_1
    return-object v1

    .line 801
    .restart local v0       #cacheStat:Landroid/webkit/WebViewDatabase$CacheAccessStat;
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase$CacheAccessStat;->hit()V

    goto :goto_0

    .line 803
    .end local v0           #cacheStat:Landroid/webkit/WebViewDatabase$CacheAccessStat;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 806
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
