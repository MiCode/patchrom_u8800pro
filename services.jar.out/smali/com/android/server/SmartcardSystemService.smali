.class public Lcom/android/server/SmartcardSystemService;
.super Landroid/smartcard/ISmartcardSystemService$Stub;
.source "SmartcardSystemService.java"


# static fields
.field public static final SMARTCARD_SERVICE_TAG:Ljava/lang/String; = "SmartcardSystemService"


# instance fields
.field private final callback:Landroid/smartcard/ISmartcardServiceCallback;

.field public volatile lastException:Ljava/lang/Exception;

.field private volatile smartcardService:Landroid/smartcard/ISmartcardService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/smartcard/ISmartcardSystemService$Stub;-><init>()V

    .line 46
    new-instance v1, Lcom/android/server/SmartcardSystemService$1;

    invoke-direct {v1, p0}, Lcom/android/server/SmartcardSystemService$1;-><init>(Lcom/android/server/SmartcardSystemService;)V

    iput-object v1, p0, Lcom/android/server/SmartcardSystemService;->callback:Landroid/smartcard/ISmartcardServiceCallback;

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "context must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    new-instance v0, Lcom/android/server/SmartcardSystemService$2;

    invoke-direct {v0, p0}, Lcom/android/server/SmartcardSystemService$2;-><init>(Lcom/android/server/SmartcardSystemService;)V

    .line 95
    .local v0, connection:Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/smartcard/ISmartcardService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 96
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/SmartcardSystemService;Landroid/smartcard/ISmartcardService;)Landroid/smartcard/ISmartcardService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/server/SmartcardSystemService;->smartcardService:Landroid/smartcard/ISmartcardService;

    return-object p1
.end method

.method private static bytesToString([B)Ljava/lang/String;
    .locals 9
    .parameter "bytes"

    .prologue
    .line 49
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v4, sb:Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 51
    .local v1, b:B
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    and-int/lit16 v8, v1, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v1           #b:B
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x10

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 66
    .local v2, len:I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 67
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 68
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 67
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 71
    :cond_0
    return-object v0
.end method

.method private stringToByteArray(Ljava/lang/String;)[B
    .locals 4
    .parameter "s"

    .prologue
    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 58
    .local v0, b:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 59
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-object v0
.end method


# virtual methods
.method public closeChannel(J)V
    .locals 4
    .parameter "hChannel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    const-string v1, "SmartcardSystemService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called: closeChannel("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Landroid/smartcard/SmartcardError;

    invoke-direct {v0}, Landroid/smartcard/SmartcardError;-><init>()V

    .line 101
    .local v0, error:Landroid/smartcard/SmartcardError;
    iget-object v1, p0, Lcom/android/server/SmartcardSystemService;->smartcardService:Landroid/smartcard/ISmartcardService;

    invoke-interface {v1, p1, p2, v0}, Landroid/smartcard/ISmartcardService;->closeChannel(JLandroid/smartcard/SmartcardError;)V

    .line 102
    invoke-virtual {v0}, Landroid/smartcard/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SmartcardSystemService;->lastException:Ljava/lang/Exception;

    .line 104
    return-void
.end method

.method public getLastError()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "SmartcardSystemService"

    .line 172
    const-string v1, "SmartcardSystemService"

    const-string v1, "called: getLastError"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, strErrorMessage:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/SmartcardSystemService;->lastException:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/server/SmartcardSystemService;->lastException:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v1, "SmartcardSystemService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastError - message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    return-object v0
.end method

.method public getReaders()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v6, "SmartcardSystemService"

    .line 107
    const-string v4, "SmartcardSystemService"

    const-string v4, "called: getReaders()"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Landroid/smartcard/SmartcardError;

    invoke-direct {v0}, Landroid/smartcard/SmartcardError;-><init>()V

    .line 109
    .local v0, error:Landroid/smartcard/SmartcardError;
    iget-object v4, p0, Lcom/android/server/SmartcardSystemService;->smartcardService:Landroid/smartcard/ISmartcardService;

    invoke-interface {v4, v0}, Landroid/smartcard/ISmartcardService;->getReaders(Landroid/smartcard/SmartcardError;)[Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, result:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 111
    const-string v4, "SmartcardSystemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getReaders("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v0}, Landroid/smartcard/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SmartcardSystemService;->lastException:Ljava/lang/Exception;

    .line 116
    const-string v2, ""

    .line 117
    .local v2, readerlist:Ljava/lang/String;
    const/4 v1, 0x0

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    :cond_1
    return-object v2
.end method

.method public isCardPresent(Ljava/lang/String;)Z
    .locals 5
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v4, "SmartcardSystemService"

    .line 126
    const-string v2, "SmartcardSystemService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called: isCardPresent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Landroid/smartcard/SmartcardError;

    invoke-direct {v0}, Landroid/smartcard/SmartcardError;-><init>()V

    .line 128
    .local v0, error:Landroid/smartcard/SmartcardError;
    iget-object v2, p0, Lcom/android/server/SmartcardSystemService;->smartcardService:Landroid/smartcard/ISmartcardService;

    invoke-interface {v2, p1, v0}, Landroid/smartcard/ISmartcardService;->isCardPresent(Ljava/lang/String;Landroid/smartcard/SmartcardError;)Z

    move-result v1

    .line 129
    .local v1, result:Z
    const-string v2, "SmartcardSystemService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCardPresent returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v0}, Landroid/smartcard/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SmartcardSystemService;->lastException:Ljava/lang/Exception;

    .line 131
    return v1
.end method

.method public openBasicChannel(Ljava/lang/String;)J
    .locals 6
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    const-string v3, "SmartcardSystemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "called: openBasicChannel("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v2, Landroid/smartcard/SmartcardError;

    invoke-direct {v2}, Landroid/smartcard/SmartcardError;-><init>()V

    .line 137
    .local v2, error:Landroid/smartcard/SmartcardError;
    iget-object v3, p0, Lcom/android/server/SmartcardSystemService;->smartcardService:Landroid/smartcard/ISmartcardService;

    iget-object v4, p0, Lcom/android/server/SmartcardSystemService;->callback:Landroid/smartcard/ISmartcardServiceCallback;

    invoke-interface {v3, p1, v4, v2}, Landroid/smartcard/ISmartcardService;->openBasicChannel(Ljava/lang/String;Landroid/smartcard/ISmartcardServiceCallback;Landroid/smartcard/SmartcardError;)J

    move-result-wide v0

    .line 138
    .local v0, channelValue:J
    invoke-virtual {v2}, Landroid/smartcard/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SmartcardSystemService;->lastException:Ljava/lang/Exception;

    .line 139
    return-wide v0
.end method

.method public openLogicalChannel(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .parameter "reader"
    .parameter "aid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    const-string v3, "SmartcardSystemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "called: openLogicalChannel("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v2, Landroid/smartcard/SmartcardError;

    invoke-direct {v2}, Landroid/smartcard/SmartcardError;-><init>()V

    .line 145
    .local v2, error:Landroid/smartcard/SmartcardError;
    iget-object v3, p0, Lcom/android/server/SmartcardSystemService;->smartcardService:Landroid/smartcard/ISmartcardService;

    invoke-direct {p0, p2}, Lcom/android/server/SmartcardSystemService;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/SmartcardSystemService;->callback:Landroid/smartcard/ISmartcardServiceCallback;

    invoke-interface {v3, p1, v4, v5, v2}, Landroid/smartcard/ISmartcardService;->openLogicalChannel(Ljava/lang/String;[BLandroid/smartcard/ISmartcardServiceCallback;Landroid/smartcard/SmartcardError;)J

    move-result-wide v0

    .line 146
    .local v0, channelValue:J
    invoke-virtual {v2}, Landroid/smartcard/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SmartcardSystemService;->lastException:Ljava/lang/Exception;

    .line 147
    return-wide v0
.end method

.method public transmit(JLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "hChannel"
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v7, "transmitting: "

    const-string v9, "transmit returned: "

    const-string v8, "SmartcardSystemService"

    .line 151
    const-string v5, "SmartcardSystemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "called: transmit("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v2, Landroid/smartcard/SmartcardError;

    invoke-direct {v2}, Landroid/smartcard/SmartcardError;-><init>()V

    .line 153
    .local v2, error:Landroid/smartcard/SmartcardError;
    const-string v5, "SmartcardSystemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "transmitting: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {p3}, Lcom/android/server/SmartcardSystemService;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 155
    .local v0, cmd:[B
    const-string v5, "SmartcardSystemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "transmitting: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/android/server/SmartcardSystemService;->bytesToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v4, ""

    .line 158
    .local v4, strResponse:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/SmartcardSystemService;->smartcardService:Landroid/smartcard/ISmartcardService;

    invoke-interface {v5, p1, p2, v0, v2}, Landroid/smartcard/ISmartcardService;->transmit(J[BLandroid/smartcard/SmartcardError;)[B

    move-result-object v3

    .line 159
    .local v3, rsp:[B
    const-string v5, "SmartcardSystemService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transmit returned: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/server/SmartcardSystemService;->bytesToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {v3}, Lcom/android/server/SmartcardSystemService;->bytesToString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 166
    .end local v3           #rsp:[B
    :goto_0
    const-string v5, "SmartcardSystemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "transmit returned: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v2}, Landroid/smartcard/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SmartcardSystemService;->lastException:Ljava/lang/Exception;

    .line 168
    return-object v4

    .line 161
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 162
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "SmartcardSystemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "transmit exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
