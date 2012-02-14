.class public Landroid/telephony/CdmaEmergencyMessage;
.super Ljava/lang/Object;
.source "CdmaEmergencyMessage.java"

# interfaces
.implements Landroid/telephony/EmergencyMessage;


# static fields
.field public static final CMAS_AMBER:I = 0x1003

.field public static final CMAS_EXTREME:I = 0x1001

.field public static final CMAS_PRESIDENTIAL:I = 0x1000

.field public static final CMAS_SEVERE:I = 0x1002

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CdmaEmergencyMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_IDS:[[I


# instance fields
.field private mBody:Ljava/lang/String;

.field private mCertainty:Landroid/telephony/EmergencyMessage$Certainty;

.field private mLanguageCode:I

.field private mServiceCategory:I

.field private mSeverity:Landroid/telephony/EmergencyMessage$Severity;

.field private mUrgency:Landroid/telephony/EmergencyMessage$Urgency;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [[I

    new-array v1, v5, [I

    const/16 v2, 0x1000

    aput v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [I

    const/16 v2, 0x1001

    aput v2, v1, v4

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-array v2, v5, [I

    const/16 v3, 0x1002

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v5, [I

    const/16 v3, 0x1003

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/CdmaEmergencyMessage;->MESSAGE_IDS:[[I

    .line 131
    new-instance v0, Landroid/telephony/CdmaEmergencyMessage$1;

    invoke-direct {v0}, Landroid/telephony/CdmaEmergencyMessage$1;-><init>()V

    sput-object v0, Landroid/telephony/CdmaEmergencyMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "CdmaEmergencyMessage Uninitialized"

    iput-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mBody:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "CdmaEmergencyMessage Uninitialized"

    iput-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mBody:Ljava/lang/String;

    .line 96
    invoke-direct {p0, p1}, Landroid/telephony/CdmaEmergencyMessage;->readFromParcel(Landroid/os/Parcel;)V

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CdmaEmergencyMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/telephony/CdmaEmergencyMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createFromSmsMessage(Landroid/telephony/SmsMessage;)Landroid/telephony/CdmaEmergencyMessage;
    .locals 2
    .parameter "src"

    .prologue
    .line 80
    new-instance v0, Landroid/telephony/CdmaEmergencyMessage;

    invoke-direct {v0}, Landroid/telephony/CdmaEmergencyMessage;-><init>()V

    .line 81
    .local v0, message:Landroid/telephony/CdmaEmergencyMessage;
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/CdmaEmergencyMessage;->mBody:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v1

    iput v1, v0, Landroid/telephony/CdmaEmergencyMessage;->mServiceCategory:I

    .line 84
    iget-object v1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSeverity()Landroid/telephony/EmergencyMessage$Severity;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/CdmaEmergencyMessage;->mSeverity:Landroid/telephony/EmergencyMessage$Severity;

    .line 85
    iget-object v1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUrgency()Landroid/telephony/EmergencyMessage$Urgency;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/CdmaEmergencyMessage;->mUrgency:Landroid/telephony/EmergencyMessage$Urgency;

    .line 86
    iget-object v1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCertainty()Landroid/telephony/EmergencyMessage$Certainty;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/CdmaEmergencyMessage;->mCertainty:Landroid/telephony/EmergencyMessage$Certainty;

    .line 87
    iget-object p0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getLanguage()I

    move-result v1

    iput v1, v0, Landroid/telephony/CdmaEmergencyMessage;->mLanguageCode:I

    .line 92
    :cond_0
    return-object v0
.end method

.method public static getMessageIds(Landroid/telephony/EmergencyMessage$Alerts;)[I
    .locals 2
    .parameter "alertType"

    .prologue
    .line 100
    sget-object v0, Landroid/telephony/CdmaEmergencyMessage;->MESSAGE_IDS:[[I

    invoke-virtual {p0}, Landroid/telephony/EmergencyMessage$Alerts;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mBody:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mServiceCategory:I

    .line 120
    invoke-static {}, Landroid/telephony/EmergencyMessage$Severity;->values()[Landroid/telephony/EmergencyMessage$Severity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mSeverity:Landroid/telephony/EmergencyMessage$Severity;

    .line 121
    invoke-static {}, Landroid/telephony/EmergencyMessage$Urgency;->values()[Landroid/telephony/EmergencyMessage$Urgency;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mUrgency:Landroid/telephony/EmergencyMessage$Urgency;

    .line 122
    invoke-static {}, Landroid/telephony/EmergencyMessage$Certainty;->values()[Landroid/telephony/EmergencyMessage$Certainty;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mCertainty:Landroid/telephony/EmergencyMessage$Certainty;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mLanguageCode:I

    .line 124
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public getCertainty()Landroid/telephony/EmergencyMessage$Certainty;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mCertainty:Landroid/telephony/EmergencyMessage$Certainty;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mLanguageCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "en"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageIdentifier()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mServiceCategory:I

    return v0
.end method

.method public getSeverity()Landroid/telephony/EmergencyMessage$Severity;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mSeverity:Landroid/telephony/EmergencyMessage$Severity;

    return-object v0
.end method

.method public getUrgency()Landroid/telephony/EmergencyMessage$Urgency;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mUrgency:Landroid/telephony/EmergencyMessage$Urgency;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaEmergencyMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mServiceCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mSeverity:Landroid/telephony/EmergencyMessage$Severity;

    invoke-virtual {v0}, Landroid/telephony/EmergencyMessage$Severity;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mUrgency:Landroid/telephony/EmergencyMessage$Urgency;

    invoke-virtual {v0}, Landroid/telephony/EmergencyMessage$Urgency;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mCertainty:Landroid/telephony/EmergencyMessage$Certainty;

    invoke-virtual {v0}, Landroid/telephony/EmergencyMessage$Certainty;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mLanguageCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return-void
.end method
