.class Landroid/webkit/SubResourcesHistory;
.super Ljava/lang/Object;
.source "SubResourcesHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/SubResourcesHistory$1;,
        Landroid/webkit/SubResourcesHistory$UrlHistoryComparator;,
        Landroid/webkit/SubResourcesHistory$PeriodicWriter;
    }
.end annotation


# static fields
.field private static final MAIN_RESOURCES_MAX:I = 0x12c

#the value of this static final field might be set in the static constructor
.field private static final PERIODIC_INTERVAL:I = 0x0

.field private static final URLHISTORIES_TO_REMOVE:I = 0x1e

.field private static mDatabase:Landroid/webkit/WebViewDatabase;

.field private static mReferenceCount:I

.field public static final mSubResourcesHistoryLock:Ljava/lang/Object;

.field private static sSubResourcesHistory:Landroid/webkit/SubResourcesHistory;


# instance fields
.field private mHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/webkit/UrlHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDbUpdateNeeded:Z

.field private mPeriodicWriter:Landroid/webkit/SubResourcesHistory$PeriodicWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/SubResourcesHistory;->mSubResourcesHistoryLock:Ljava/lang/Object;

    .line 68
    const-string v0, "http.periodic_writer.interval"

    const v1, 0x927c0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/webkit/SubResourcesHistory;->PERIODIC_INTERVAL:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    sput v3, Landroid/webkit/SubResourcesHistory;->mReferenceCount:I

    .line 87
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    sput-object v0, Landroid/webkit/SubResourcesHistory;->mDatabase:Landroid/webkit/WebViewDatabase;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x12d

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    .line 89
    iput-boolean v3, p0, Landroid/webkit/SubResourcesHistory;->mIsDbUpdateNeeded:Z

    .line 91
    new-instance v0, Landroid/webkit/SubResourcesHistory$PeriodicWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/SubResourcesHistory$PeriodicWriter;-><init>(Landroid/webkit/SubResourcesHistory;Landroid/webkit/SubResourcesHistory$1;)V

    iput-object v0, p0, Landroid/webkit/SubResourcesHistory;->mPeriodicWriter:Landroid/webkit/SubResourcesHistory$PeriodicWriter;

    .line 92
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mPeriodicWriter:Landroid/webkit/SubResourcesHistory$PeriodicWriter;

    invoke-virtual {v0}, Landroid/webkit/SubResourcesHistory$PeriodicWriter;->start()V

    .line 93
    return-void
.end method

.method static synthetic access$102(Landroid/webkit/SubResourcesHistory;Landroid/webkit/SubResourcesHistory$PeriodicWriter;)Landroid/webkit/SubResourcesHistory$PeriodicWriter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Landroid/webkit/SubResourcesHistory;->mPeriodicWriter:Landroid/webkit/SubResourcesHistory$PeriodicWriter;

    return-object p1
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 48
    sget v0, Landroid/webkit/SubResourcesHistory;->PERIODIC_INTERVAL:I

    return v0
.end method

.method static synthetic access$300()Landroid/webkit/SubResourcesHistory;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/webkit/SubResourcesHistory;->sSubResourcesHistory:Landroid/webkit/SubResourcesHistory;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 48
    sget v0, Landroid/webkit/SubResourcesHistory;->mReferenceCount:I

    return v0
.end method

.method static synthetic access$500(Landroid/webkit/SubResourcesHistory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/webkit/SubResourcesHistory;->mIsDbUpdateNeeded:Z

    return v0
.end method

.method static synthetic access$600()Landroid/webkit/WebViewDatabase;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/webkit/SubResourcesHistory;->mDatabase:Landroid/webkit/WebViewDatabase;

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkit/SubResourcesHistory;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/webkit/SubResourcesHistory;->setIsDbUpdateNeeded(Z)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/webkit/SubResourcesHistory;
    .locals 3
    .parameter "context"

    .prologue
    .line 76
    const-class v0, Landroid/webkit/SubResourcesHistory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/SubResourcesHistory;->sSubResourcesHistory:Landroid/webkit/SubResourcesHistory;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Landroid/webkit/SubResourcesHistory;

    invoke-direct {v1, p0}, Landroid/webkit/SubResourcesHistory;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/webkit/SubResourcesHistory;->sSubResourcesHistory:Landroid/webkit/SubResourcesHistory;

    .line 78
    sget-object v1, Landroid/webkit/SubResourcesHistory;->mDatabase:Landroid/webkit/WebViewDatabase;

    sget-object v2, Landroid/webkit/SubResourcesHistory;->sSubResourcesHistory:Landroid/webkit/SubResourcesHistory;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewDatabase;->getSubhostsData(Landroid/webkit/SubResourcesHistory;)V

    .line 80
    :cond_0
    sget v1, Landroid/webkit/SubResourcesHistory;->mReferenceCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/SubResourcesHistory;->mReferenceCount:I

    .line 81
    sget-object v1, Landroid/webkit/SubResourcesHistory;->sSubResourcesHistory:Landroid/webkit/SubResourcesHistory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private incrementMainUrlUseCount(Ljava/lang/String;)V
    .locals 1
    .parameter "mainHost"

    .prologue
    .line 223
    if-nez p1, :cond_1

    .line 231
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 227
    .restart local p0
    :cond_1
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/UrlHistory;

    invoke-virtual {p0}, Landroid/webkit/UrlHistory;->incrementUseCount()V

    goto :goto_0
.end method

.method private removeLowWeightMainUrls()V
    .locals 5

    .prologue
    .line 274
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 275
    .local v1, urlHistories:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/UrlHistory;>;"
    new-instance v2, Landroid/webkit/SubResourcesHistory$UrlHistoryComparator;

    invoke-direct {v2, p0}, Landroid/webkit/SubResourcesHistory$UrlHistoryComparator;-><init>(Landroid/webkit/SubResourcesHistory;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, removedHistories:I
    sget-object v3, Landroid/webkit/SubResourcesHistory;->mSubResourcesHistoryLock:Ljava/lang/Object;

    monitor-enter v3

    .line 280
    :goto_0
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    .line 281
    add-int/lit8 v0, v0, 0x1

    .line 282
    :try_start_0
    iget-object v4, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/UrlHistory;

    invoke-virtual {v2}, Landroid/webkit/UrlHistory;->getMainHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    return-void
.end method

.method private declared-synchronized setIsDbUpdateNeeded(Z)V
    .locals 1
    .parameter "updateNeeded"

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/SubResourcesHistory;->mIsDbUpdateNeeded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addSubHost(Ljava/lang/String;Landroid/webkit/Subhost;)V
    .locals 3
    .parameter "mainHost"
    .parameter "subHost"

    .prologue
    .line 134
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    sget-object v2, Landroid/webkit/SubResourcesHistory;->mSubResourcesHistoryLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    :try_start_2
    iget-object v1, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/UrlHistory;

    invoke-virtual {v1, p2}, Landroid/webkit/UrlHistory;->addSubhost(Landroid/webkit/Subhost;)V

    .line 144
    monitor-exit v2

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 149
    :cond_2
    :try_start_4
    new-instance v0, Landroid/webkit/UrlHistory;

    invoke-direct {v0, p1}, Landroid/webkit/UrlHistory;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, newHistory:Landroid/webkit/UrlHistory;
    invoke-virtual {v0, p2}, Landroid/webkit/UrlHistory;->addSubhost(Landroid/webkit/Subhost;)V

    .line 151
    sget-object v1, Landroid/webkit/SubResourcesHistory;->mSubResourcesHistoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 152
    :try_start_5
    iget-object v2, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public declared-synchronized addSubHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "mainHost"
    .parameter "subHost"

    .prologue
    const-string v1, ""

    .line 97
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 106
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Landroid/webkit/SubResourcesHistory;->mIsDbUpdateNeeded:Z

    if-nez v1, :cond_2

    .line 107
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/webkit/SubResourcesHistory;->setIsDbUpdateNeeded(Z)V

    .line 110
    :cond_2
    iget-object v1, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    sget-object v2, Landroid/webkit/SubResourcesHistory;->mSubResourcesHistoryLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    :try_start_2
    iget-object v1, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/UrlHistory;

    invoke-virtual {v1, p2}, Landroid/webkit/UrlHistory;->addSubhost(Ljava/lang/String;)V

    .line 113
    monitor-exit v2

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 117
    :cond_3
    const/16 v1, 0x12c

    :try_start_4
    iget-object v2, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 118
    invoke-direct {p0}, Landroid/webkit/SubResourcesHistory;->removeLowWeightMainUrls()V

    .line 122
    :cond_4
    new-instance v0, Landroid/webkit/UrlHistory;

    invoke-direct {v0, p1}, Landroid/webkit/UrlHistory;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, newHistory:Landroid/webkit/UrlHistory;
    invoke-virtual {v0, p2}, Landroid/webkit/UrlHistory;->addSubhost(Ljava/lang/String;)V

    .line 124
    sget-object v1, Landroid/webkit/SubResourcesHistory;->mSubResourcesHistoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    :try_start_5
    iget-object v2, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public declared-synchronized decrementReferenceCount()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 249
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/webkit/SubResourcesHistory;->mReferenceCount:I

    if-ne v2, v0, :cond_0

    .line 250
    sget-object v0, Landroid/webkit/SubResourcesHistory;->mDatabase:Landroid/webkit/WebViewDatabase;

    sget-object v1, Landroid/webkit/SubResourcesHistory;->sSubResourcesHistory:Landroid/webkit/SubResourcesHistory;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewDatabase;->setSubhostsData(Landroid/webkit/SubResourcesHistory;)V

    .line 251
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/SubResourcesHistory;->sSubResourcesHistory:Landroid/webkit/SubResourcesHistory;

    .line 252
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mPeriodicWriter:Landroid/webkit/SubResourcesHistory$PeriodicWriter;

    invoke-virtual {v0}, Landroid/webkit/SubResourcesHistory$PeriodicWriter;->stopRequest()V

    .line 255
    :cond_0
    sget v0, Landroid/webkit/SubResourcesHistory;->mReferenceCount:I

    sub-int/2addr v0, v2

    sput v0, Landroid/webkit/SubResourcesHistory;->mReferenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMainUrls()Ljava/util/Set;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSubHosts(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 2
    .parameter "mainHost"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/Subhost;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 160
    if-nez p1, :cond_0

    move-object v0, v1

    .line 168
    .end local p0
    :goto_0
    return-object v0

    .line 164
    .restart local p0
    :cond_0
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/UrlHistory;

    invoke-virtual {p0}, Landroid/webkit/UrlHistory;->getSubhosts()Ljava/util/LinkedList;

    move-result-object v0

    goto :goto_0

    .restart local p0
    :cond_1
    move-object v0, v1

    .line 168
    goto :goto_0
.end method

.method public getSubhostsToConnect(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 2
    .parameter "mainHost"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/Subhost;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 173
    if-nez p1, :cond_0

    move-object v0, v1

    .line 181
    .end local p0
    :goto_0
    return-object v0

    .line 177
    .restart local p0
    :cond_0
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/UrlHistory;

    invoke-virtual {p0}, Landroid/webkit/UrlHistory;->getSubhostsToConnect()Ljava/util/LinkedList;

    move-result-object v0

    goto :goto_0

    .restart local p0
    :cond_1
    move-object v0, v1

    .line 181
    goto :goto_0
.end method

.method public getUseCount(Ljava/lang/String;)I
    .locals 2
    .parameter "mainHost"

    .prologue
    const/4 v1, 0x0

    .line 191
    if-nez p1, :cond_0

    move v0, v1

    .line 199
    .end local p0
    :goto_0
    return v0

    .line 195
    .restart local p0
    :cond_0
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/UrlHistory;

    invoke-virtual {p0}, Landroid/webkit/UrlHistory;->getUseCount()I

    move-result v0

    goto :goto_0

    .restart local p0
    :cond_1
    move v0, v1

    .line 199
    goto :goto_0
.end method

.method public declared-synchronized onLoadFinished(Ljava/lang/String;)V
    .locals 1
    .parameter "mainHost"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/SubResourcesHistory;->incrementMainUrlUseCount(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/UrlHistory;

    invoke-virtual {v0}, Landroid/webkit/UrlHistory;->updateSubhostsReferences()V

    .line 216
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/UrlHistory;

    invoke-virtual {v0}, Landroid/webkit/UrlHistory;->updateSubhostsToConnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_0
    monitor-exit p0

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseCount(Ljava/lang/String;I)V
    .locals 1
    .parameter "mainHost"
    .parameter "useCount"

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/UrlHistory;

    invoke-virtual {v0, p2}, Landroid/webkit/UrlHistory;->setUseCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_0
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateSubhostsToConnect()V
    .locals 6

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    sget-object v5, Landroid/webkit/SubResourcesHistory;->mSubResourcesHistoryLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 261
    :try_start_1
    iget-object v4, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 262
    .local v2, keys:Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 263
    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 265
    .local v3, url:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/UrlHistory;

    invoke-virtual {v4}, Landroid/webkit/UrlHistory;->updateSubhostsToConnect()V

    goto :goto_0

    .line 267
    .end local v1           #iter:Ljava/util/Iterator;
    .end local v2           #keys:Ljava/util/Set;
    .end local v3           #url:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 260
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 267
    .restart local v1       #iter:Ljava/util/Iterator;
    .restart local v2       #keys:Ljava/util/Set;
    :cond_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized updateUrlHistory(Ljava/lang/String;)V
    .locals 1
    .parameter "mainHost"

    .prologue
    .line 236
    monitor-enter p0

    if-nez p1, :cond_1

    .line 244
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 240
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/UrlHistory;

    invoke-virtual {v0}, Landroid/webkit/UrlHistory;->resetSubhostsWeight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
