.class public Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
.super Landroid/os/Handler;
.source "CdmaSubscriptionSourceManager.java"


# static fields
.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x1

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_SOURCE:I = 0x2

.field private static final EVENT_RADIO_ON:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static mCdmaSSMInstances:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/internal/telephony/CommandsInterface;",
            "Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mCM:Lcom/android/internal/telephony/CommandsInterface;

.field protected mCdmaSubscriptionSource:I

.field protected mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

.field protected mContext:Landroid/content/Context;

.field mRef:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSSMInstances:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "context"
    .parameter "ci"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "CDMA"

    .line 75
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 65
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mRef:I

    .line 72
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:I

    .line 76
    if-nez p1, :cond_0

    .line 77
    const-string v0, "CDMA"

    const-string v0, "Context shouldn\'t be null"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    if-nez p2, :cond_1

    .line 83
    const-string v0, "CDMA"

    const-string v0, "CommandsInterface shouldn\'t be null"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_1
    return-void

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mContext:Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefaultCdmaSubscriptionSource()I

    goto :goto_0

    .line 85
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private getDefaultCdmaSubscriptionSource()I
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "subscription_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:I

    .line 186
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:I

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Registrant;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    .locals 5
    .parameter "context"
    .parameter "ci"
    .parameter "registrant"

    .prologue
    .line 103
    const-class v3, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    monitor-enter v3

    const/4 v1, 0x0

    .line 106
    .local v1, mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSSMInstances:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 107
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSSMInstances:Ljava/util/Hashtable;

    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    invoke-virtual {v2, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSSMInstances:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-object v1, v0

    .line 112
    if-eqz p2, :cond_1

    .line 113
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, p2}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 118
    :cond_1
    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mRef:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mRef:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit v3

    return-object v1

    .line 103
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleCdmaSubscriptionSource(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    const-string v4, "CDMA"

    .line 196
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 199
    .local v0, newSubscriptionSource:I
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:I

    if-eq v0, v1, :cond_0

    .line 200
    const-string v1, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscription Source Changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:I

    .line 205
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 216
    .end local v0           #newSubscriptionSource:I
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const-string v1, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get CDMA Subscription Source, Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispose(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 130
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mRef:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mRef:I

    .line 131
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mRef:I

    if-gtz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaSubscriptionSourceChanged(Landroid/os/Handler;)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 134
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSSMInstances:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_1
    return-void
.end method

.method public getCdmaSubscriptionSource()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v2, "CDMA"

    .line 145
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 163
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 165
    :goto_0
    return-void

    .line 147
    :pswitch_0
    const-string v1, "CDMA"

    const-string v1, "EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 149
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->handleCdmaSubscriptionSource(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 153
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    const-string v1, "CDMA"

    const-string v1, "EVENT_GET_CDMA_SUBSCRIPTION_SOURCE"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 155
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->handleCdmaSubscriptionSource(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 159
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSubscriptionSource(Landroid/os/Message;)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
