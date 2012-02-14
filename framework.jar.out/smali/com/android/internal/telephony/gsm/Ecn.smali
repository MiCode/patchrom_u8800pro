.class public final Lcom/android/internal/telephony/gsm/Ecn;
.super Landroid/os/Handler;
.source "Ecn.java"

# interfaces
.implements Lcom/android/internal/telephony/gsm/GSMPhone$Ecninterface;


# static fields
.field private static final DBG:Z = false

.field private static final ECN_Personalization:[Ljava/lang/String; = null

.field private static LENGTH_OF_DTT_DIGITS:I = 0x0

.field private static LENGTH_OF_DTT_HEX:I = 0x0

.field private static LENGTH_OF_UNR:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "Ecn"

.field private static final MSG_ID_TIMEOUT:I = 0x2

.field private static final PHONE_STATE_CHANGED:I = 0x1

.field static final WAITING_TIME:I = 0x3a98


# instance fields
.field private DTT_Digits:Ljava/lang/String;

.field private DTT_Digitsarr:[Ljava/lang/String;

.field private DTT_Hex:Ljava/lang/String;

.field private DTT_Hexarr:[Ljava/lang/String;

.field EcnDataProc:Lcom/android/internal/telephony/EcnDataProcessor;

.field private IsActive:Ljava/lang/String;

.field private UNRarr:[Ljava/lang/String;

.field private Ussdcode:Ljava/lang/String;

.field private bEcnFlag:Z

.field mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mccmncCodes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/16 v0, 0x3c

    sput v0, Lcom/android/internal/telephony/gsm/Ecn;->LENGTH_OF_DTT_HEX:I

    .line 63
    const/16 v0, 0x1e

    sput v0, Lcom/android/internal/telephony/gsm/Ecn;->LENGTH_OF_DTT_DIGITS:I

    .line 64
    const/16 v0, 0x1a

    sput v0, Lcom/android/internal/telephony/gsm/Ecn;->LENGTH_OF_UNR:I

    .line 70
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "00101"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "310160"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "310200"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "310210"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "310220"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "310230"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "310240"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "310250"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "310260"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "310270"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "310300"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "310310"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "310490"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "310530"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "310580"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "310590"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "310640"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "310660"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "310800"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/Ecn;->ECN_Personalization:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Ecn;->DTT_Hexarr:[Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Ecn;->DTT_Digitsarr:[Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Ecn;->UNRarr:[Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Ecn;->DTT_Hex:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Ecn;->DTT_Digits:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Ecn;->EcnDataProc:Lcom/android/internal/telephony/EcnDataProcessor;

    .line 67
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Ecn;->mccmncCodes:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Ecn;->IsActive:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Ecn;->Ussdcode:Ljava/lang/String;

    return-void
.end method

.method private cancelTimeOut()V
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/Ecn;->removeMessages(I)V

    .line 310
    return-void
.end method

.method private get_USSD_Character(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "Digit"

    .prologue
    .line 204
    if-nez p1, :cond_0

    .line 205
    const/4 v1, 0x0

    .line 210
    .local v1, USSD_Character:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 207
    .end local v1           #USSD_Character:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 208
    .local v0, Digit_index:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/Ecn;->UNRarr:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v1, v2, v3

    .restart local v1       #USSD_Character:Ljava/lang/String;
    goto :goto_0
.end method

.method private isECNOperators()Z
    .locals 6

    .prologue
    .line 102
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/Ecn;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 104
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/Ecn;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/Ecn;->mccmncCodes:Ljava/lang/String;

    .line 105
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/Ecn;->mccmncCodes:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, compResult:Z
    sget-object v0, Lcom/android/internal/telephony/gsm/Ecn;->ECN_Personalization:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 114
    .local v4, mccmnc:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/Ecn;->mccmncCodes:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    const/4 v1, 0x1

    .end local v4           #mccmnc:Ljava/lang/String;
    :cond_0
    move v5, v1

    .line 119
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #compResult:Z
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return v5

    .line 110
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 113
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #compResult:Z
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #mccmnc:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Ecn;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 220
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Ecn;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Ecn;->EcnDataProc:Lcom/android/internal/telephony/EcnDataProcessor;

    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/EcnDataProcessor;->getECNData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/Ecn;->IsActive:Ljava/lang/String;

    .line 232
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Ecn;->EcnDataProc:Lcom/android/internal/telephony/EcnDataProcessor;

    const-string/jumbo v2, "ussdcode"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/EcnDataProcessor;->getECNData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/Ecn;->Ussdcode:Ljava/lang/String;

    .line 234
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Ecn;->isECNOperators()Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Ecn;->IsActive:Ljava/lang/String;

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/Ecn;->bEcnFlag:Z

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Ecn;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/Ecn;->Ussdcode:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    .line 246
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Ecn;->startTimeOut()V

    .line 247
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/Ecn;->bEcnFlag:Z

    goto :goto_0
.end method

.method private query_DTT(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "aUNRarr"

    .prologue
    .line 192
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget v2, Lcom/android/internal/telephony/gsm/Ecn;->LENGTH_OF_DTT_DIGITS:I

    if-ge v1, v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/Ecn;->DTT_Hexarr:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/Ecn;->DTT_Digitsarr:[Ljava/lang/String;

    aget-object v0, v2, v1

    .local v0, atemp:Ljava/lang/String;
    move-object v2, v0

    .line 198
    .end local v0           #atemp:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 192
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private startTimeOut()V
    .locals 3

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Ecn;->cancelTimeOut()V

    .line 315
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/Ecn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3a98

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/Ecn;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 316
    return-void
.end method


# virtual methods
.method public convertToArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter "str"

    .prologue
    .line 164
    const/16 v7, 0x1e

    new-array v0, v7, [Ljava/lang/String;

    .line 165
    .local v0, arr:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 168
    .local v5, n:I
    sget v7, Lcom/android/internal/telephony/gsm/Ecn;->LENGTH_OF_UNR:I

    if-eq v5, v7, :cond_0

    sget v7, Lcom/android/internal/telephony/gsm/Ecn;->LENGTH_OF_DTT_HEX:I

    if-ne v5, v7, :cond_1

    .line 169
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_3

    .line 170
    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, atemp:Ljava/lang/String;
    div-int/lit8 v3, v2, 0x2

    .line 172
    .local v3, j:I
    aput-object v1, v0, v3

    .line 169
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 178
    .end local v1           #atemp:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_1
    sget v7, Lcom/android/internal/telephony/gsm/Ecn;->LENGTH_OF_DTT_DIGITS:I

    if-ne v5, v7, :cond_2

    .line 179
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    if-ge v4, v5, :cond_3

    .line 180
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, temp:Ljava/lang/String;
    aput-object v6, v0, v4

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 185
    .end local v4           #k:I
    .end local v6           #temp:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 187
    :cond_3
    return-object v0
.end method

.method public ecnUssdResponse(ILjava/lang/String;)Z
    .locals 2
    .parameter "ussdMode"
    .parameter "ussdMessage"

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, EcnResponseComplete:Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/Ecn;->bEcnFlag:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 331
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gsm/Ecn;->onProcessECNResponse(ILjava/lang/String;)Z

    move-result v0

    .line 337
    :cond_0
    return v0
.end method

.method public getEcnFlag()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/Ecn;->bEcnFlag:Z

    return v0
.end method

.method public get_UVR(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "UNRstring"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    .line 129
    const/4 v5, 0x0

    .line 130
    .local v5, aUVR:Ljava/lang/String;
    const-string v4, "#"

    .line 133
    .local v4, UssdSymbol:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/Ecn;->EcnDataProc:Lcom/android/internal/telephony/EcnDataProcessor;

    const-string v9, "hexcode"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/EcnDataProcessor;->getECNData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/Ecn;->DTT_Hex:Ljava/lang/String;

    .line 134
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/Ecn;->EcnDataProc:Lcom/android/internal/telephony/EcnDataProcessor;

    const-string v9, "digits"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/EcnDataProcessor;->getECNData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/Ecn;->DTT_Digits:Ljava/lang/String;

    .line 135
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/Ecn;->DTT_Hex:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/Ecn;->convertToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/Ecn;->DTT_Hexarr:[Ljava/lang/String;

    .line 136
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/Ecn;->DTT_Digits:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/Ecn;->convertToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/Ecn;->DTT_Digitsarr:[Ljava/lang/String;

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/Ecn;->convertToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/Ecn;->UNRarr:[Ljava/lang/String;

    .line 142
    const/4 v8, 0x3

    new-array v3, v8, [Ljava/lang/String;

    .line 143
    .local v3, USSD_Digit:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v11, :cond_0

    .line 144
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/Ecn;->UNRarr:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/Ecn;->query_DTT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, Digit:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/Ecn;->get_USSD_Character(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, USSD_Character:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/Ecn;->query_DTT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    .line 143
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 148
    .end local v1           #Digit:Ljava/lang/String;
    .end local v2           #USSD_Character:Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v10, :cond_1

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x4

    if-gt v8, v9, :cond_1

    .line 149
    const/4 v8, 0x0

    aget-object v8, v3, v8

    const/4 v9, 0x1

    aget-object v9, v3, v9

    const/4 v10, 0x2

    aget-object v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, CaculateResult:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 160
    .end local v0           #CaculateResult:Ljava/lang/String;
    .end local v3           #USSD_Digit:[Ljava/lang/String;
    .end local v7           #i:I
    :cond_1
    :goto_1
    return-object v5

    .line 153
    :catch_0
    move-exception v8

    move-object v6, v8

    .line 155
    .local v6, e:Ljava/lang/NullPointerException;
    const/4 v5, 0x0

    .line 159
    goto :goto_1

    .line 156
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v8

    move-object v6, v8

    .line 158
    .local v6, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/Ecn;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 85
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Ecn;->cancelTimeOut()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/Ecn;->bEcnFlag:Z

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onProcessECNResponse(ILjava/lang/String;)Z
    .locals 4
    .parameter "ussdMode"
    .parameter "ussdMessage"

    .prologue
    .line 276
    if-nez p2, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Ecn;->cancelTimeOut()V

    .line 279
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/Ecn;->bEcnFlag:Z

    .line 280
    const/4 v1, 0x1

    .line 302
    .local v1, result:Z
    :goto_0
    return v1

    .line 283
    .end local v1           #result:Z
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/Ecn;->get_UVR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, UVR:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 292
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_0

    .line 294
    .end local v1           #result:Z
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/Ecn;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    .line 296
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Ecn;->startTimeOut()V

    .line 297
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/Ecn;->bEcnFlag:Z

    .line 299
    const/4 v1, 0x1

    .restart local v1       #result:Z
    goto :goto_0
.end method

.method public setParameter(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 2
    .parameter "Phone"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/Ecn;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 350
    new-instance v0, Lcom/android/internal/telephony/EcnDataProcessor;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Ecn;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/EcnDataProcessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Ecn;->EcnDataProc:Lcom/android/internal/telephony/EcnDataProcessor;

    .line 352
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/Ecn;->bEcnFlag:Z

    .line 355
    return-void
.end method
