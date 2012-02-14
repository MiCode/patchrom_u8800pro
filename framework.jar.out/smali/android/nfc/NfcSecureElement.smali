.class public final Landroid/nfc/NfcSecureElement;
.super Ljava/lang/Object;
.source "NfcSecureElement.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcSecureElement"


# instance fields
.field private mService:Landroid/nfc/INfcSecureElement;


# direct methods
.method public constructor <init>(Landroid/nfc/INfcSecureElement;)V
    .locals 0
    .parameter "mSecureElementService"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    .line 45
    return-void
.end method


# virtual methods
.method public closeSecureElementConnection(I)V
    .locals 4
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    invoke-interface {v2, p1}, Landroid/nfc/INfcSecureElement;->closeSecureElementConnection(I)I

    move-result v1

    .line 92
    .local v1, status:I
    invoke-static {v1}, Landroid/nfc/ErrorCodes;->isError(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error during the conection close"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1           #status:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 96
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NfcSecureElement"

    const-string v3, "RemoteException in closeSecureElement(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public exchangeAPDU(I[B)[B
    .locals 4
    .parameter "handle"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    invoke-interface {v2, p1, p2}, Landroid/nfc/INfcSecureElement;->exchangeAPDU(I[B)[B

    move-result-object v1

    .line 77
    .local v1, response:[B
    if-nez v1, :cond_0

    .line 78
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Exchange APDU failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1           #response:[B
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 82
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NfcSecureElement"

    const-string v3, "RemoteException in exchangeAPDU(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    const/4 v2, 0x0

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_0
    return-object v2

    .restart local v1       #response:[B
    :cond_0
    move-object v2, v1

    .line 80
    goto :goto_0
.end method

.method public getSecureElementTechList(I)[I
    .locals 3
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    invoke-interface {v1, p1}, Landroid/nfc/INfcSecureElement;->getSecureElementTechList(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    .line 111
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 112
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NfcSecureElement"

    const-string v2, "RemoteException in getType(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSecureElementUid(I)[B
    .locals 4
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 126
    .local v1, uid:[B
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    invoke-interface {v2, p1}, Landroid/nfc/INfcSecureElement;->getSecureElementUid(I)[B

    move-result-object v1

    .line 128
    if-nez v1, :cond_0

    .line 129
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Get Secure Element UID failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 133
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NfcSecureElement"

    const-string v3, "RemoteException in getType(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    const/4 v2, 0x0

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v1

    .line 131
    goto :goto_0
.end method

.method public openSecureElementConnection(Ljava/lang/String;)I
    .locals 5
    .parameter "seType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 48
    const-string v2, "SmartMX"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    invoke-interface {v2}, Landroid/nfc/INfcSecureElement;->openSecureElementConnection()I

    move-result v1

    .line 52
    .local v1, handle:I
    if-eqz v1, :cond_0

    move v2, v1

    .line 63
    .end local v1           #handle:I
    :goto_0
    return v2

    .line 55
    .restart local v1       #handle:I
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "SmartMX connection not allowed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1           #handle:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 58
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NfcSecureElement"

    const-string v3, "RemoteException in openSecureElementConnection(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v4

    .line 59
    goto :goto_0

    .line 62
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "UICC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Wrong Secure Element type"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
