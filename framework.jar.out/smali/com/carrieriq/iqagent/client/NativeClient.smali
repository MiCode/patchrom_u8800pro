.class Lcom/carrieriq/iqagent/client/NativeClient;
.super Ljava/lang/Object;
.source "NativeClient.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IQClient"

.field private static instance:Lcom/carrieriq/iqagent/client/NativeClient;

.field private static syncObj:Ljava/lang/Object;


# instance fields
.field private clientRefCount:I

.field private nativeObject:I

.field private serviceBinder:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/carrieriq/iqagent/client/NativeClient;->syncObj:Ljava/lang/Object;

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/carrieriq/iqagent/client/NativeClient;->instance:Lcom/carrieriq/iqagent/client/NativeClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/NativeClient;->serviceBinder:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/carrieriq/iqagent/client/NativeClient;->clientRefCount:I

    .line 89
    return-void
.end method

.method static acquire(Ljava/lang/Object;)Lcom/carrieriq/iqagent/client/NativeClient;
    .locals 5
    .parameter "serviceBinder"

    .prologue
    const/4 v4, 0x0

    .line 35
    sget-object v2, Lcom/carrieriq/iqagent/client/NativeClient;->syncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 36
    :try_start_0
    sget-object v3, Lcom/carrieriq/iqagent/client/NativeClient;->instance:Lcom/carrieriq/iqagent/client/NativeClient;

    if-eqz v3, :cond_0

    .line 42
    sget-object v3, Lcom/carrieriq/iqagent/client/NativeClient;->instance:Lcom/carrieriq/iqagent/client/NativeClient;

    iget-object v3, v3, Lcom/carrieriq/iqagent/client/NativeClient;->serviceBinder:Ljava/lang/Object;

    invoke-static {v3, p0}, Lcom/carrieriq/iqagent/client/NativeClient;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 44
    sget-object v3, Lcom/carrieriq/iqagent/client/NativeClient;->instance:Lcom/carrieriq/iqagent/client/NativeClient;

    invoke-direct {v3}, Lcom/carrieriq/iqagent/client/NativeClient;->clientShutdown()I

    .line 45
    const/4 v3, 0x0

    sput-object v3, Lcom/carrieriq/iqagent/client/NativeClient;->instance:Lcom/carrieriq/iqagent/client/NativeClient;

    .line 49
    :cond_0
    sget-object v3, Lcom/carrieriq/iqagent/client/NativeClient;->instance:Lcom/carrieriq/iqagent/client/NativeClient;

    if-nez v3, :cond_1

    .line 50
    new-instance v3, Lcom/carrieriq/iqagent/client/NativeClient;

    invoke-direct {v3}, Lcom/carrieriq/iqagent/client/NativeClient;-><init>()V

    sput-object v3, Lcom/carrieriq/iqagent/client/NativeClient;->instance:Lcom/carrieriq/iqagent/client/NativeClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    sget-object v3, Lcom/carrieriq/iqagent/client/NativeClient;->instance:Lcom/carrieriq/iqagent/client/NativeClient;

    iput-object p0, v3, Lcom/carrieriq/iqagent/client/NativeClient;->serviceBinder:Ljava/lang/Object;

    .line 53
    sget-object v3, Lcom/carrieriq/iqagent/client/NativeClient;->instance:Lcom/carrieriq/iqagent/client/NativeClient;

    invoke-direct {v3, p0}, Lcom/carrieriq/iqagent/client/NativeClient;->clientInit(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    :cond_1
    :goto_0
    :try_start_2
    sget-object v3, Lcom/carrieriq/iqagent/client/NativeClient;->instance:Lcom/carrieriq/iqagent/client/NativeClient;

    iget v4, v3, Lcom/carrieriq/iqagent/client/NativeClient;->clientRefCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/carrieriq/iqagent/client/NativeClient;->clientRefCount:I

    .line 70
    sget-object v3, Lcom/carrieriq/iqagent/client/NativeClient;->instance:Lcom/carrieriq/iqagent/client/NativeClient;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v3

    :goto_1
    return-object v2

    .line 55
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 58
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v3, "iq_client"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 59
    sget-object v3, Lcom/carrieriq/iqagent/client/NativeClient;->instance:Lcom/carrieriq/iqagent/client/NativeClient;

    invoke-direct {v3, p0}, Lcom/carrieriq/iqagent/client/NativeClient;->clientInit(Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 61
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 63
    .local v1, ule:Ljava/lang/UnsatisfiedLinkError;
    const/4 v3, 0x0

    :try_start_4
    sput-object v3, Lcom/carrieriq/iqagent/client/NativeClient;->instance:Lcom/carrieriq/iqagent/client/NativeClient;

    .line 64
    monitor-exit v2

    move-object v2, v4

    goto :goto_1

    .line 71
    .end local v0           #t:Ljava/lang/Throwable;
    .end local v1           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method private native clientInit(Ljava/lang/Object;)I
.end method

.method private native clientShutdown()I
.end method

.method public static getTimezoneDSTOn()Z
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public static getTimezoneOffset()I
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method static objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 29
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 31
    :goto_0
    return v0

    .line 30
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method native checkSMS([B)Z
.end method

.method native checkWAPPush([B)Z
.end method

.method native getAgentVersion()Ljava/lang/String;
.end method

.method native getTimestamp()J
.end method

.method native registerForEvent(IILcom/carrieriq/iqagent/client/IEventCallback;)I
.end method

.method release()V
    .locals 3

    .prologue
    .line 75
    sget-object v0, Lcom/carrieriq/iqagent/client/NativeClient;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    iget v1, p0, Lcom/carrieriq/iqagent/client/NativeClient;->clientRefCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/carrieriq/iqagent/client/NativeClient;->clientRefCount:I

    .line 77
    iget v1, p0, Lcom/carrieriq/iqagent/client/NativeClient;->clientRefCount:I

    if-gtz v1, :cond_0

    .line 78
    const/4 v1, 0x0

    iput v1, p0, Lcom/carrieriq/iqagent/client/NativeClient;->clientRefCount:I

    .line 79
    sget-object v1, Lcom/carrieriq/iqagent/client/NativeClient;->instance:Lcom/carrieriq/iqagent/client/NativeClient;

    if-ne p0, v1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/carrieriq/iqagent/client/NativeClient;->clientShutdown()I

    .line 82
    const/4 v1, 0x0

    sput-object v1, Lcom/carrieriq/iqagent/client/NativeClient;->instance:Lcom/carrieriq/iqagent/client/NativeClient;

    .line 85
    :cond_0
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method native shouldSubmitMetric(I)Z
.end method

.method native submitMetric(IJLcom/carrieriq/iqagent/client/Metric;Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation
.end method

.method native submitMetric(IJ[BII)I
.end method

.method native unregisterForAllEvents(Lcom/carrieriq/iqagent/client/IEventCallback;)I
.end method

.method native unregisterForEvent(IILcom/carrieriq/iqagent/client/IEventCallback;)I
.end method
