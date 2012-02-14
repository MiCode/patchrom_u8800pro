.class public final enum Lcom/android/internal/telephony/DataConnectionFailCause;
.super Ljava/lang/Enum;
.source "DataConnectionFailCause.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionFailCause$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataConnectionFailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum IP_VERSION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum MISSING_UNKOWN_APN:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum NONE:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field private static final PDP_FAIL_ACTIVATION_REJECT_GGSN:I = 0x1e

.field private static final PDP_FAIL_ACTIVATION_REJECT_UNSPECIFIED:I = 0x1f

.field private static final PDP_FAIL_ERROR_UNSPECIFIED:I = 0xffff

.field private static final PDP_FAIL_GPRS_REGISTRATION_FAIL:I = -0x2

.field private static final PDP_FAIL_INSUFFICIENT_RESOURCES:I = 0x1a

.field private static final PDP_FAIL_MISSING_UNKOWN_APN:I = 0x1b

.field private static final PDP_FAIL_NETWORK_FAILURE:I = 0x26

.field private static final PDP_FAIL_NSAPI_IN_USE:I = 0x23

.field private static final PDP_FAIL_ONLY_IPV4_ALLOWED:I = 0x32

.field private static final PDP_FAIL_ONLY_IPV6_ALLOWED:I = 0x33

.field private static final PDP_FAIL_ONLY_SINGLE_BEARER_ALLOWED:I = 0x34

.field private static final PDP_FAIL_OPERATOR_BARRED:I = 0x8

.field private static final PDP_FAIL_PREF_RADIO_TECH_CHANGED:I = -0x4

.field private static final PDP_FAIL_PROTOCOL_ERRORS:I = 0x6f

.field private static final PDP_FAIL_RADIO_POWER_OFF:I = -0x5

.field private static final PDP_FAIL_REGISTRATION_FAIL:I = -0x1

.field private static final PDP_FAIL_SERVICE_OPTION_NOT_SUBSCRIBED:I = 0x21

.field private static final PDP_FAIL_SERVICE_OPTION_NOT_SUPPORTED:I = 0x20

.field private static final PDP_FAIL_SERVICE_OPTION_OUT_OF_ORDER:I = 0x22

.field private static final PDP_FAIL_SIGNAL_LOST:I = -0x3

.field private static final PDP_FAIL_TETHERED_CALL_ON:I = -0x6

.field private static final PDP_FAIL_UNKNOWN_PDP_ADDRESS_TYPE:I = 0x1c

.field private static final PDP_FAIL_USER_AUTHENTICATION:I = 0x1d

.field public static final enum PDP_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum PREF_RADIO_TECHNOLOGY_CHANGED:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum RADIO_ERROR_RETRY:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum RADIO_POWER_OFF:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum SIGNAL_LOST:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum TETHERED_CALL_ON:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum TETHERED_MODE_CALL_ON:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnectionFailCause;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->NONE:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 28
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "OPERATOR_BARRED"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 29
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "INSUFFICIENT_RESOURCES"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 30
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "MISSING_UNKOWN_APN"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->MISSING_UNKOWN_APN:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 31
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "UNKNOWN_PDP_ADDRESS"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 32
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "USER_AUTHENTICATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 33
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "ACTIVATION_REJECT_GGSN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "ACTIVATION_REJECT_UNSPECIFIED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "SERVICE_OPTION_NOT_SUPPORTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "SERVICE_OPTION_NOT_SUBSCRIBED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "SERVICE_OPTION_OUT_OF_ORDER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "NSAPI_IN_USE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "PROTOCOL_ERRORS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "REGISTRATION_FAIL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "GPRS_REGISTRATION_FAIL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "RADIO_NOT_AVAILABLE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "RADIO_ERROR_RETRY"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->RADIO_ERROR_RETRY:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "PREF_RADIO_TECHNOLOGY_CHANGED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PREF_RADIO_TECHNOLOGY_CHANGED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "TETHERED_MODE_CALL_ON"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->TETHERED_MODE_CALL_ON:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "IP_VERSION_NOT_SUPPORTED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->IP_VERSION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "PDP_NOT_AVAILABLE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PDP_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "SIGNAL_LOST"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "PREF_RADIO_TECH_CHANGED"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 53
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "RADIO_POWER_OFF"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "TETHERED_CALL_ON"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->TETHERED_CALL_ON:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 24
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/android/internal/telephony/DataConnectionFailCause;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionFailCause;->NONE:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataConnectionFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataConnectionFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataConnectionFailCause;->MISSING_UNKOWN_APN:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->RADIO_ERROR_RETRY:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->PREF_RADIO_TECHNOLOGY_CHANGED:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->TETHERED_MODE_CALL_ON:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->IP_VERSION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->PDP_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->TETHERED_CALL_ON:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->$VALUES:[Lcom/android/internal/telephony/DataConnectionFailCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    return-void
.end method

.method public static getDataCallSetupFailCause(I)Lcom/android/internal/telephony/DataConnectionFailCause;
    .locals 1
    .parameter "rilCause"

    .prologue
    .line 107
    sparse-switch p0, :sswitch_data_0

    .line 170
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 172
    .local v0, cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :goto_0
    return-object v0

    .line 109
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 110
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 112
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 113
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 115
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->MISSING_UNKOWN_APN:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 116
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 118
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_3
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 119
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 121
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_4
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 122
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 124
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_5
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 125
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 127
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_6
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 128
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 130
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_7
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 131
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 133
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_8
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 134
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 136
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_9
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 137
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 139
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_a
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 140
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 142
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_b
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 143
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 145
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_c
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 146
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 148
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_d
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 149
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 151
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_e
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 152
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 155
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_f
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->IP_VERSION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 156
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 158
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_10
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 159
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 161
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_11
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 162
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 164
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_12
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 165
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 167
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :sswitch_13
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->TETHERED_CALL_ON:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 168
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    goto :goto_0

    .line 107
    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_13
        -0x5 -> :sswitch_12
        -0x4 -> :sswitch_11
        -0x3 -> :sswitch_10
        -0x2 -> :sswitch_e
        -0x1 -> :sswitch_d
        0x8 -> :sswitch_0
        0x1a -> :sswitch_1
        0x1b -> :sswitch_2
        0x1c -> :sswitch_3
        0x1d -> :sswitch_4
        0x1e -> :sswitch_5
        0x1f -> :sswitch_6
        0x20 -> :sswitch_8
        0x21 -> :sswitch_9
        0x22 -> :sswitch_7
        0x23 -> :sswitch_a
        0x32 -> :sswitch_f
        0x33 -> :sswitch_f
        0x6f -> :sswitch_b
        0xffff -> :sswitch_c
    .end sparse-switch
.end method

.method public static getDataConnectionDisconnectCause(I)Lcom/android/internal/telephony/DataConnectionFailCause;
    .locals 1
    .parameter "rilCause"

    .prologue
    .line 176
    invoke-static {p0}, Lcom/android/internal/telephony/DataConnectionFailCause;->getDataCallSetupFailCause(I)Lcom/android/internal/telephony/DataConnectionFailCause;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionFailCause;
    .locals 1
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataConnectionFailCause;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/DataConnectionFailCause;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->$VALUES:[Lcom/android/internal/telephony/DataConnectionFailCause;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataConnectionFailCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataConnectionFailCause;

    return-object v0
.end method


# virtual methods
.method public canRetryAfterDcDisconnect()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionFailCause;->isPermanentFail()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 100
    :goto_0
    return v0

    .line 96
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause$1;->$SwitchMap$com$android$internal$telephony$DataConnectionFailCause:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionFailCause;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 100
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 98
    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isDataProfileFailure()Z
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->MISSING_UNKOWN_APN:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEventLoggable()Z
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPdpAvailabilityFailure()Z
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PDP_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermanentFail()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 73
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->MISSING_UNKOWN_APN:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-ne p0, v0, :cond_0

    const-string v0, "ro.config.protocol_errors"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-ne p0, v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
