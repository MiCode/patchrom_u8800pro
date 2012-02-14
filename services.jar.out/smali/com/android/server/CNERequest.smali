.class Lcom/android/server/CNERequest;
.super Ljava/lang/Object;
.source "CNE.java"


# static fields
.field private static final DBG:Z = false

.field static final LOCAL_TAG:Ljava/lang/String; = "CNE_DEBUG"

.field static final LOG_TAG:Ljava/lang/String; = "CNE"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:I

.field private static sPool:Lcom/android/server/CNERequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mNext:Lcom/android/server/CNERequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I

.field mp:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    sput v1, Lcom/android/server/CNERequest;->sNextSerial:I

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/CNERequest;->sSerialMonitor:Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/CNERequest;->sPoolSync:Ljava/lang/Object;

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/CNERequest;->sPool:Lcom/android/server/CNERequest;

    .line 97
    sput v1, Lcom/android/server/CNERequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method static obtain(I)Lcom/android/server/CNERequest;
    .locals 4
    .parameter "request"

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, rr:Lcom/android/server/CNERequest;
    sget-object v1, Lcom/android/server/CNERequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    sget-object v2, Lcom/android/server/CNERequest;->sPool:Lcom/android/server/CNERequest;

    if-eqz v2, :cond_0

    .line 121
    sget-object v0, Lcom/android/server/CNERequest;->sPool:Lcom/android/server/CNERequest;

    .line 122
    iget-object v2, v0, Lcom/android/server/CNERequest;->mNext:Lcom/android/server/CNERequest;

    sput-object v2, Lcom/android/server/CNERequest;->sPool:Lcom/android/server/CNERequest;

    .line 123
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/CNERequest;->mNext:Lcom/android/server/CNERequest;

    .line 124
    sget v2, Lcom/android/server/CNERequest;->sPoolSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Lcom/android/server/CNERequest;->sPoolSize:I

    .line 126
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    if-nez v0, :cond_1

    .line 129
    new-instance v0, Lcom/android/server/CNERequest;

    .end local v0           #rr:Lcom/android/server/CNERequest;
    invoke-direct {v0}, Lcom/android/server/CNERequest;-><init>()V

    .line 132
    .restart local v0       #rr:Lcom/android/server/CNERequest;
    :cond_1
    sget-object v1, Lcom/android/server/CNERequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_1
    sget v2, Lcom/android/server/CNERequest;->sNextSerial:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/android/server/CNERequest;->sNextSerial:I

    iput v2, v0, Lcom/android/server/CNERequest;->mSerial:I

    .line 134
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    iput p0, v0, Lcom/android/server/CNERequest;->mRequest:I

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    .line 138
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    iget v2, v0, Lcom/android/server/CNERequest;->mSerial:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    return-object v0

    .line 126
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 134
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method static resetSerial()V
    .locals 2

    .prologue
    .line 163
    sget-object v0, Lcom/android/server/CNERequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/android/server/CNERequest;->sNextSerial:I

    .line 165
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method onError(I)V
    .locals 0
    .parameter "error"

    .prologue
    .line 187
    return-void
.end method

.method release()V
    .locals 3

    .prologue
    .line 149
    sget-object v0, Lcom/android/server/CNERequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    sget v1, Lcom/android/server/CNERequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 151
    sget-object v1, Lcom/android/server/CNERequest;->sPool:Lcom/android/server/CNERequest;

    iput-object v1, p0, Lcom/android/server/CNERequest;->mNext:Lcom/android/server/CNERequest;

    .line 152
    sput-object p0, Lcom/android/server/CNERequest;->sPool:Lcom/android/server/CNERequest;

    .line 153
    sget v1, Lcom/android/server/CNERequest;->sPoolSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/CNERequest;->sPoolSize:I

    .line 155
    :cond_0
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method serialString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 173
    .local v2, sb:Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/android/server/CNERequest;->mSerial:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, sn:Ljava/lang/String;
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, s:I
    :goto_0
    const/4 v4, 0x4

    sub-int/2addr v4, v1

    if-ge v0, v4, :cond_0

    .line 178
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
