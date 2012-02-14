.class final enum Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
.super Ljava/lang/Enum;
.source "DataProfileOmh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataProfileOmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DataProfileTypeModem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

.field public static final enum PROFILE_TYPE_LBS:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

.field public static final enum PROFILE_TYPE_MMS:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

.field public static final enum PROFILE_TYPE_TETHERED:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

.field public static final enum PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;


# instance fields
.field id:I

.field serviceType:Lcom/android/internal/telephony/DataServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 55
    new-instance v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    const-string v1, "PROFILE_TYPE_UNSPECIFIED"

    sget-object v2, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    invoke-direct {v0, v1, v6, v4, v2}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;-><init>(Ljava/lang/String;IILcom/android/internal/telephony/DataServiceType;)V

    sput-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    const-string v1, "PROFILE_TYPE_MMS"

    sget-object v2, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MMS:Lcom/android/internal/telephony/DataServiceType;

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;-><init>(Ljava/lang/String;IILcom/android/internal/telephony/DataServiceType;)V

    sput-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_MMS:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    const-string v1, "PROFILE_TYPE_LBS"

    const/16 v2, 0x20

    sget-object v3, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_SUPL:Lcom/android/internal/telephony/DataServiceType;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;-><init>(Ljava/lang/String;IILcom/android/internal/telephony/DataServiceType;)V

    sput-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_LBS:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    const-string v1, "PROFILE_TYPE_TETHERED"

    const/16 v2, 0x40

    sget-object v3, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DUN:Lcom/android/internal/telephony/DataServiceType;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;-><init>(Ljava/lang/String;IILcom/android/internal/telephony/DataServiceType;)V

    sput-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_TETHERED:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    sget-object v1, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_MMS:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_LBS:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_TETHERED:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->$VALUES:[Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/internal/telephony/DataServiceType;)V
    .locals 0
    .parameter
    .parameter
    .parameter "i"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/DataServiceType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->id:I

    .line 65
    iput-object p4, p0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->serviceType:Lcom/android/internal/telephony/DataServiceType;

    .line 66
    return-void
.end method

.method public static getDataProfileTypeModem(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    .locals 3
    .parameter "dst"

    .prologue
    .line 77
    sget-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 78
    .local v0, dptModem:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    sget-object v1, Lcom/android/internal/telephony/DataProfileOmh$1;->$SwitchMap$com$android$internal$telephony$DataServiceType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 95
    sget-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 98
    :goto_0
    return-object v0

    .line 80
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 81
    goto :goto_0

    .line 83
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_MMS:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 84
    goto :goto_0

    .line 86
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_LBS:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 87
    goto :goto_0

    .line 89
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_TETHERED:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 90
    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    .locals 1
    .parameter "name"

    .prologue
    .line 53
    const-class v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->$VALUES:[Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    return-object v0
.end method


# virtual methods
.method public getDataServiceType()Lcom/android/internal/telephony/DataServiceType;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->serviceType:Lcom/android/internal/telephony/DataServiceType;

    return-object v0
.end method

.method public getid()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->id:I

    return v0
.end method
