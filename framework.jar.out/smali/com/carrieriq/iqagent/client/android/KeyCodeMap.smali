.class public Lcom/carrieriq/iqagent/client/android/KeyCodeMap;
.super Ljava/lang/Object;
.source "KeyCodeMap.java"


# static fields
.field public static final androidToIQKeyCode:[S

.field public static final iqToAndroidKeyCode:[S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 8
    const/16 v1, 0x5c

    new-array v1, v1, [S

    fill-array-data v1, :array_0

    sput-object v1, Lcom/carrieriq/iqagent/client/android/KeyCodeMap;->androidToIQKeyCode:[S

    .line 103
    const/16 v1, 0xff

    new-array v1, v1, [S

    sput-object v1, Lcom/carrieriq/iqagent/client/android/KeyCodeMap;->iqToAndroidKeyCode:[S

    .line 106
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/carrieriq/iqagent/client/android/KeyCodeMap;->androidToIQKeyCode:[S

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 107
    sget-object v1, Lcom/carrieriq/iqagent/client/android/KeyCodeMap;->iqToAndroidKeyCode:[S

    sget-object v2, Lcom/carrieriq/iqagent/client/android/KeyCodeMap;->androidToIQKeyCode:[S

    aget-short v2, v2, v0

    int-to-short v3, v0

    aput-short v3, v1, v2

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    sget-object v1, Lcom/carrieriq/iqagent/client/android/KeyCodeMap;->iqToAndroidKeyCode:[S

    const/16 v2, 0x8a

    sget-object v3, Lcom/carrieriq/iqagent/client/android/KeyCodeMap;->iqToAndroidKeyCode:[S

    const/16 v4, 0x89

    aget-short v3, v3, v4

    aput-short v3, v1, v2

    .line 113
    return-void

    .line 8
    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x8bt 0x0t
        0x8ct 0x0t
        0x0t 0x0t
        0x83t 0x0t
        0x82t 0x0t
        0x81t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2at 0x0t
        0x23t 0x0t
        0x84t 0x0t
        0x85t 0x0t
        0x86t 0x0t
        0x87t 0x0t
        0x89t 0x0t
        0x9ct 0x0t
        0x9dt 0x0t
        0x80t 0x0t
        0xact 0x0t
        0x8t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x3bt 0x0t
        0x2et 0x0t
        0xbet 0x0t
        0xbet 0x0t
        0xbdt 0x0t
        0xbdt 0x0t
        0x9t 0x0t
        0x20t 0x0t
        0xc1t 0x0t
        0xabt 0x0t
        0xadt 0x0t
        0xdt 0x0t
        0x10t 0x0t
        0x60t 0x0t
        0x2dt 0x0t
        0x3dt 0x0t
        0x5bt 0x0t
        0x5dt 0x0t
        0x5ct 0x0t
        0x3bt 0x0t
        0x27t 0x0t
        0x2ft 0x0t
        0x40t 0x0t
        0x0t 0x0t
        0xa1t 0x0t
        0x0t 0x0t
        0x2bt 0x0t
        0x88t 0x0t
        0xaet 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x9et 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIQKeyCodeForAndroidKeyCode(I)S
    .locals 1
    .parameter "androidKeycode"

    .prologue
    .line 116
    if-ltz p0, :cond_0

    sget-object v0, Lcom/carrieriq/iqagent/client/android/KeyCodeMap;->androidToIQKeyCode:[S

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/carrieriq/iqagent/client/android/KeyCodeMap;->androidToIQKeyCode:[S

    aget-short v0, v0, p0

    goto :goto_0
.end method
