.class public Lcom/carrieriq/iqagent/client/metrics/mg/SMSTPDUDecoder;
.super Ljava/lang/Object;
.source "SMSTPDUDecoder.java"


# instance fields
.field public address:Ljava/lang/String;

.field public dataLen:S

.field public messageRef:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .parameter "data"

    .prologue
    const/4 v11, 0x6

    const/4 v9, 0x4

    const/16 v10, 0x10

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v8, 0x2

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 18
    .local v5, smsSubmitCode:I
    const/4 v7, 0x0

    .line 22
    .local v7, timevalidoffset:I
    and-int/lit8 v8, v5, 0xc

    sparse-switch v8, :sswitch_data_0

    .line 28
    :goto_0
    invoke-virtual {p1, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/carrieriq/iqagent/client/metrics/mg/SMSTPDUDecoder;->messageRef:I

    .line 31
    const/16 v8, 0x8

    invoke-virtual {p1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 32
    .local v1, addressLen:I
    move v2, v1

    .line 33
    .local v2, addressSpace:I
    rem-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_0

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 36
    :cond_0
    const/16 v8, 0xa

    add-int/lit8 v9, v2, 0xb

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/carrieriq/iqagent/client/metrics/mg/SMSTPDUDecoder;->address:Ljava/lang/String;

    .line 38
    iget-object v8, p0, Lcom/carrieriq/iqagent/client/metrics/mg/SMSTPDUDecoder;->address:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 39
    .local v0, addressData:[B
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 40
    aget-byte v6, v0, v4

    .line 41
    .local v6, temp:B
    add-int/lit8 v8, v4, 0x1

    aget-byte v8, v0, v8

    aput-byte v8, v0, v4

    .line 42
    add-int/lit8 v8, v4, 0x1

    aput-byte v6, v0, v8

    .line 39
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 23
    .end local v0           #addressData:[B
    .end local v1           #addressLen:I
    .end local v2           #addressSpace:I
    .end local v4           #k:I
    .end local v6           #temp:B
    :sswitch_0
    const/4 v7, 0x0

    goto :goto_0

    .line 24
    :sswitch_1
    const/4 v7, 0x2

    goto :goto_0

    .line 25
    :sswitch_2
    const/16 v7, 0xe

    goto :goto_0

    .line 26
    :sswitch_3
    const/16 v7, 0xe

    goto :goto_0

    .line 44
    .restart local v0       #addressData:[B
    .restart local v1       #addressLen:I
    .restart local v2       #addressSpace:I
    .restart local v4       #k:I
    :cond_1
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v1}, Ljava/lang/String;-><init>([BII)V

    iput-object v8, p0, Lcom/carrieriq/iqagent/client/metrics/mg/SMSTPDUDecoder;->address:Ljava/lang/String;

    .line 45
    add-int v8, v7, v2

    add-int/lit8 v3, v8, 0xe

    .line 46
    .local v3, dataLenStart:I
    add-int/lit8 v8, v3, 0x2

    invoke-virtual {p1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v8

    iput-short v8, p0, Lcom/carrieriq/iqagent/client/metrics/mg/SMSTPDUDecoder;->dataLen:S

    .line 48
    return-void

    .line 22
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0xc -> :sswitch_3
    .end sparse-switch
.end method
