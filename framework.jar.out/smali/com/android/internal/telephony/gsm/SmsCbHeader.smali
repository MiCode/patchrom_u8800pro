.class public Lcom/android/internal/telephony/gsm/SmsCbHeader;
.super Ljava/lang/Object;
.source "SmsCbHeader.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/telephony/SmsCbConstants;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/SmsCbHeader;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_ETWS_PRIMARY:I = 0x3

.field public static final FORMAT_GSM:I = 0x1

.field public static final FORMAT_UMTS:I = 0x2

.field private static final MESSAGE_TYPE_CBS_MESSAGE:I = 0x1

.field public static final PDU_HEADER_LENGTH:I = 0x6

.field public static final PDU_LENGTH_ETWS:I = 0x38

.field public static final PDU_LENGTH_GSM:I = 0x58


# instance fields
.field public final dataCodingScheme:I

.field public final etwsEmergencyUserAlert:Z

.field public final etwsPopup:Z

.field public final etwsWarningType:I

.field public final format:I

.field public final geographicalScope:I

.field public final messageCode:I

.field public final messageIdentifier:I

.field public final nrOfPages:I

.field public final pageIndex:I

.field public final updateNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsCbHeader$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsEmergencyUserAlert:Z

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsPopup:Z

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsWarningType:I

    .line 222
    return-void

    :cond_0
    move v0, v2

    .line 219
    goto :goto_0

    :cond_1
    move v0, v2

    .line 220
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/gsm/SmsCbHeader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iget v0, p1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    .line 170
    iget v0, p1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    .line 171
    iget v0, p1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    .line 172
    iget v0, p1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    .line 173
    iget v0, p1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    .line 174
    iget v0, p1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    .line 175
    iget v0, p1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    .line 176
    iget v0, p1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    .line 177
    iget-boolean v0, p1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsEmergencyUserAlert:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsEmergencyUserAlert:Z

    .line 178
    iget-boolean v0, p1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsPopup:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsPopup:Z

    .line 179
    iget v0, p1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsWarningType:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsWarningType:I

    .line 180
    return-void
.end method

.method public constructor <init>([B)V
    .locals 10
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-eqz p1, :cond_0

    array-length v3, p1

    const/4 v4, 0x6

    if-ge v3, v4, :cond_1

    .line 84
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal PDU"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_1
    array-length v3, p1

    const/16 v4, 0x58

    if-gt v3, v4, :cond_7

    .line 91
    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v4, p1, v9

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    .line 92
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    .line 95
    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    .line 96
    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    .line 97
    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    .line 102
    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    .line 103
    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    .line 104
    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    .line 105
    aget-byte v3, p1, v8

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    move v3, v6

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsEmergencyUserAlert:Z

    .line 106
    const/4 v3, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    move v3, v6

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsPopup:Z

    .line 107
    aget-byte v3, p1, v8

    and-int/lit16 v3, v3, 0xfe

    shr-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsWarningType:I

    .line 165
    :goto_2
    return-void

    :cond_2
    move v3, v5

    .line 105
    goto :goto_0

    :cond_3
    move v3, v5

    .line 106
    goto :goto_1

    .line 112
    :cond_4
    iput v6, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    .line 113
    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xc0

    shr-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    .line 114
    aget-byte v3, p1, v5

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x4

    aget-byte v4, p1, v6

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    .line 115
    aget-byte v3, p1, v6

    and-int/lit8 v3, v3, 0xf

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    .line 120
    aget-byte v3, p1, v8

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    .line 123
    const/4 v3, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v2, v3, 0x4

    .line 124
    .local v2, pageIndex:I
    const/4 v3, 0x5

    aget-byte v3, p1, v3

    and-int/lit8 v1, v3, 0xf

    .line 126
    .local v1, nrOfPages:I
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    if-le v2, v1, :cond_6

    .line 127
    :cond_5
    const/4 v2, 0x1

    .line 128
    const/4 v1, 0x1

    .line 131
    :cond_6
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    .line 132
    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    .line 133
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsEmergencyUserAlert:Z

    .line 134
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsPopup:Z

    .line 135
    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsWarningType:I

    goto :goto_2

    .line 142
    .end local v1           #nrOfPages:I
    .end local v2           #pageIndex:I
    :cond_7
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    .line 144
    aget-byte v0, p1, v5

    .line 146
    .local v0, messageType:I
    if-eq v0, v6, :cond_8

    .line 147
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported message type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 150
    :cond_8
    aget-byte v3, p1, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    .line 151
    aget-byte v3, p1, v9

    and-int/lit16 v3, v3, 0xc0

    shr-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    .line 152
    aget-byte v3, p1, v9

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x4

    aget-byte v4, p1, v8

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    .line 153
    aget-byte v3, p1, v8

    and-int/lit8 v3, v3, 0xf

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    .line 154
    const/4 v3, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    .line 159
    iput v6, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    .line 160
    iput v6, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    .line 161
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsEmergencyUserAlert:Z

    .line 162
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsPopup:Z

    .line 163
    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsWarningType:I

    goto/16 :goto_2
.end method

.method public static isCmasMessage(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 254
    const/16 v0, 0x1112

    if-lt p0, v0, :cond_0

    const/16 v0, 0x112f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmergencyMessage(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 232
    const/16 v0, 0x1100

    if-lt p0, v0, :cond_0

    const/16 v0, 0x18ff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEtwsEmergencyUserAlert(I)Z
    .locals 1
    .parameter "messageCode"

    .prologue
    .line 280
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEtwsMessage(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 243
    const v0, 0xfff8

    and-int/2addr v0, p0

    const/16 v1, 0x1100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEtwsPopupAlert(I)Z
    .locals 1
    .parameter "messageCode"

    .prologue
    .line 267
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbHeader{GS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageCode=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageIdentifier=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DCS=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 187
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsEmergencyUserAlert:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsPopup:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsWarningType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    return-void

    :cond_0
    move v0, v1

    .line 195
    goto :goto_0

    :cond_1
    move v0, v1

    .line 196
    goto :goto_1
.end method
