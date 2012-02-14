.class Lcom/android/server/HeadsetObserver;
.super Landroid/os/UEventObserver;
.source "HeadsetObserver.java"


# static fields
.field private static final ANCHEADSETS_WITH_MIC_AND_SPEAKER:I = 0x8

.field private static final ANCHEADSETS_WITH_MIC_ONLY:I = 0x20

.field private static final ANCHEADSETS_WITH_SPEAKER_ONLY:I = 0x10

.field private static final BIT_ANCHEADSET:I = 0x8

.field private static final BIT_ANCHEADSET_MIC_ONLY:I = 0x20

.field private static final BIT_ANCHEADSET_SPEAKER_ONLY:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_MIC_ONLY:I = 0x4

.field private static final BIT_HEADSET_SPEAKER_ONLY:I = 0x2

.field private static final HEADSETS_WITH_MIC_AND_SPEAKER:I = 0x1

.field private static final HEADSETS_WITH_MIC_ONLY:I = 0x4

.field private static final HEADSETS_WITH_SPEAKER_ONLY:I = 0x2

.field private static final HEADSET_NAME_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/name"

.field private static final HEADSET_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/state"

.field private static final HEADSET_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/h2w"

.field private static final LOG:Z = true

.field private static final SUPPORTED_HEADSETS:I = 0x3f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetName:Ljava/lang/String;

.field private mHeadsetState:I

.field private mPrevHeadsetState:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/server/HeadsetObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 229
    new-instance v1, Lcom/android/server/HeadsetObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/HeadsetObserver$1;-><init>(Lcom/android/server/HeadsetObserver;)V

    iput-object v1, p0, Lcom/android/server/HeadsetObserver;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    .line 71
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 72
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "HeadsetObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HeadsetObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 73
    iget-object v1, p0, Lcom/android/server/HeadsetObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 75
    const-string v1, "DEVPATH=/devices/virtual/switch/h2w"

    invoke-virtual {p0, v1}, Lcom/android/server/HeadsetObserver;->startObserving(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/android/server/HeadsetObserver;->init()V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HeadsetObserver;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/HeadsetObserver;->sendIntents(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/HeadsetObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/HeadsetObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private final declared-synchronized init()V
    .locals 8

    .prologue
    .line 92
    monitor-enter p0

    const/16 v6, 0x400

    :try_start_0
    new-array v0, v6, [C

    .line 94
    .local v0, buffer:[C
    iget-object v4, p0, Lcom/android/server/HeadsetObserver;->mHeadsetName:Ljava/lang/String;

    .line 95
    .local v4, newName:Ljava/lang/String;
    iget v5, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    .line 96
    .local v5, newState:I
    iget v6, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    iput v6, p0, Lcom/android/server/HeadsetObserver;->mPrevHeadsetState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    const-string v6, "/sys/class/switch/h2w/state"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, file:Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 100
    .local v3, len:I
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 102
    new-instance v2, Ljava/io/FileReader;

    .end local v2           #file:Ljava/io/FileReader;
    const-string v6, "/sys/class/switch/h2w/name"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 103
    .restart local v2       #file:Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 104
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 112
    .end local v2           #file:Ljava/io/FileReader;
    .end local v3           #len:I
    :goto_0
    :try_start_2
    invoke-direct {p0, v4, v5}, Lcom/android/server/HeadsetObserver;->update(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 106
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 107
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_3
    sget-object v6, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    const-string v7, "This kernel does not have wired headset support"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 92
    .end local v0           #buffer:[C
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v4           #newName:Ljava/lang/String;
    .end local v5           #newState:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 108
    .restart local v0       #buffer:[C
    .restart local v4       #newName:Ljava/lang/String;
    .restart local v5       #newState:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 109
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v6, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private final sendIntent(IIILjava/lang/String;)V
    .locals 8
    .parameter "headset"
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    .line 176
    and-int v5, p2, p1

    and-int v6, p3, p1

    if-eq v5, v6, :cond_7

    .line 178
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, intent:Landroid/content/Intent;
    const/high16 v5, 0x4000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    const/4 v4, 0x0

    .line 181
    .local v4, state:I
    const/4 v2, 0x0

    .line 182
    .local v2, microphone:I
    const/4 v3, 0x0

    .line 183
    .local v3, speaker:I
    const/4 v0, 0x0

    .line 185
    .local v0, anc:I
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_0

    .line 186
    const/4 v3, 0x1

    .line 189
    :cond_0
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_1

    .line 190
    const/4 v2, 0x1

    .line 191
    const/4 v3, 0x1

    .line 194
    :cond_1
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_2

    .line 195
    const/4 v2, 0x1

    .line 198
    :cond_2
    and-int/lit8 v5, p1, 0x10

    if-eqz v5, :cond_3

    .line 199
    const/4 v3, 0x1

    .line 200
    const/4 v0, 0x1

    .line 203
    :cond_3
    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_4

    .line 204
    const/4 v2, 0x1

    .line 205
    const/4 v3, 0x1

    .line 206
    const/4 v0, 0x1

    .line 209
    :cond_4
    and-int/lit8 v5, p1, 0x20

    if-eqz v5, :cond_5

    .line 210
    const/4 v2, 0x1

    .line 211
    const/4 v0, 0x1

    .line 214
    :cond_5
    and-int v5, p2, p1

    if-eqz v5, :cond_6

    .line 215
    const/4 v4, 0x1

    .line 217
    :cond_6
    const-string v5, "state"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const-string v5, "name"

    invoke-virtual {v1, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v5, "microphone"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    const-string v5, "speaker"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    const-string v5, "anc"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    sget-object v5, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent.ACTION_HEADSET_PLUG: state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mic: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " speaker: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "anc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v5, 0x0

    invoke-static {v1, v5}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 227
    .end local v0           #anc:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #microphone:I
    .end local v3           #speaker:I
    .end local v4           #state:I
    :cond_7
    return-void
.end method

.method private final declared-synchronized sendIntents(IILjava/lang/String;)V
    .locals 4
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    const/16 v3, 0x3f

    .line 155
    monitor-enter p0

    const/16 v0, 0x3f

    .line 157
    .local v0, allHeadsets:I
    const/4 v1, 0x1

    .local v1, curHeadset:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 158
    and-int v2, p1, v1

    if-nez v2, :cond_0

    and-int v2, p2, v1

    if-ne v2, v1, :cond_0

    .line 159
    and-int v2, v1, v0

    if-eqz v2, :cond_0

    .line 160
    :try_start_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/HeadsetObserver;->sendIntent(IIILjava/lang/String;)V

    .line 161
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    .line 157
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-ge v1, v3, :cond_3

    .line 166
    and-int v2, p1, v1

    if-ne v2, v1, :cond_2

    and-int v2, p2, v1

    if-nez v2, :cond_2

    .line 167
    and-int v2, v1, v0

    if-eqz v2, :cond_2

    .line 168
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/HeadsetObserver;->sendIntent(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    .line 165
    :cond_2
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    :cond_3
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private final declared-synchronized update(Ljava/lang/String;I)V
    .locals 9
    .parameter "newName"
    .parameter "newState"

    .prologue
    .line 117
    monitor-enter p0

    and-int/lit8 v1, p2, 0x3f

    .line 118
    .local v1, headsetState:I
    const/4 v0, 0x0

    .line 122
    .local v0, delay:I
    :try_start_0
    iget v3, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v1, :cond_0

    .line 152
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/server/HeadsetObserver;->mHeadsetName:Ljava/lang/String;

    .line 127
    iget v3, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    iput v3, p0, Lcom/android/server/HeadsetObserver;->mPrevHeadsetState:I

    .line 128
    iput v1, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    .line 130
    if-nez v1, :cond_2

    .line 131
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    const/16 v0, 0x3e8

    .line 146
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/HeadsetObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 147
    iget-object v3, p0, Lcom/android/server/HeadsetObserver;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/HeadsetObserver;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    iget v7, p0, Lcom/android/server/HeadsetObserver;->mPrevHeadsetState:I

    iget-object v8, p0, Lcom/android/server/HeadsetObserver;->mHeadsetName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    int-to-long v5, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 142
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/HeadsetObserver;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    const/16 v0, 0x3e8

    goto :goto_1
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 82
    sget-object v1, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Headset UEVENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_0
    const-string v1, "SWITCH_NAME"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/HeadsetObserver;->update(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 87
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse switch state from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
