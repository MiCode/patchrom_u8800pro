.class public final Lcom/android/internal/telephony/MccTable;
.super Ljava/lang/Object;
.source "MccTable.java"


# static fields
.field private static final COUNTRYCODE_LENGTH_MAX:I = 0x100

.field private static COUNTRY_CODES:[Ljava/lang/String; = null

.field private static IND_CODES:[I = null

.field private static final LANG_LENGTH_MAX:I = 0x80

.field private static LANG_STRINGS:[Ljava/lang/String; = null

.field private static final LENGTH_MIN:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "MccTable"

.field private static MCC_CODES:[S = null

.field private static final NAME_COUNTRY:Ljava/lang/String; = "COUNTRY_CODES"

.field private static final NAME_IND:Ljava/lang/String; = "IND_CODES"

.field private static final NAME_LANG:Ljava/lang/String; = "LANG_STRINGS"

.field private static final NAME_MCC:Ljava/lang/String; = "MCC_CODES"

.field private static final NAME_TZ:Ljava/lang/String; = "TZ_STRINGS"

.field private static final TZ_LENGTH_MAX:I = 0x20

.field private static TZ_STRINGS:[Ljava/lang/String;

.field private static mCustMccTableInitial:Z

.field private static mCustMccTableUsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 400
    sput-boolean v3, Lcom/android/internal/telephony/MccTable;->mCustMccTableInitial:Z

    .line 402
    sput-boolean v3, Lcom/android/internal/telephony/MccTable;->mCustMccTableUsed:Z

    .line 410
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "Africa/Johannesburg"

    aput-object v1, v0, v4

    const-string v1, "Asia/Shanghai"

    aput-object v1, v0, v5

    const-string v1, "Asia/Seoul"

    aput-object v1, v0, v6

    const-string v1, "Asia/Singapore"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Asia/Tokyo"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Australia/Sydney"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Europe/Amsterdam"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Europe/Berlin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Europe/Dublin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Europe/London"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Europe/Madrid"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Europe/Paris"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Europe/Prague"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Europe/Rome"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Europe/Vienna"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Europe/Warsaw"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Europe/Zurich"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Pacific/Auckland"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/MccTable;->TZ_STRINGS:[Ljava/lang/String;

    .line 436
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "cs"

    aput-object v1, v0, v4

    const-string v1, "de"

    aput-object v1, v0, v5

    const-string v1, "en"

    aput-object v1, v0, v6

    const-string v1, "es"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "it"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "zh"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/MccTable;->LANG_STRINGS:[Ljava/lang/String;

    .line 442
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gr"

    aput-object v1, v0, v3

    const-string v1, "nl"

    aput-object v1, v0, v4

    const-string v1, "be"

    aput-object v1, v0, v5

    const-string v1, "fr"

    aput-object v1, v0, v6

    const-string v1, "mc"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ad"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ba"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/MccTable;->COUNTRY_CODES:[Ljava/lang/String;

    .line 451
    const/16 v0, 0xea

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    .line 497
    const/16 v0, 0xea

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    return-void

    .line 451
    :array_0
    .array-data 0x2
        0xcat 0x0t
        0xcct 0x0t
        0xcet 0x0t
        0xd0t 0x0t
        0xd4t 0x0t
        0xd5t 0x0t
        0xd6t 0x0t
        0xd8t 0x0t
        0xdat 0x0t
        0xdbt 0x0t
        0xdct 0x0t
        0xdet 0x0t
        0xe1t 0x0t
        0xe2t 0x0t
        0xe4t 0x0t
        0xe6t 0x0t
        0xe7t 0x0t
        0xe8t 0x0t
        0xeat 0x0t
        0xebt 0x0t
        0xeet 0x0t
        0xf0t 0x0t
        0xf2t 0x0t
        0xf4t 0x0t
        0xf6t 0x0t
        0xf7t 0x0t
        0xf8t 0x0t
        0xfat 0x0t
        0xfft 0x0t
        0x1t 0x1t
        0x3t 0x1t
        0x4t 0x1t
        0x6t 0x1t
        0xat 0x1t
        0xct 0x1t
        0xet 0x1t
        0x10t 0x1t
        0x12t 0x1t
        0x14t 0x1t
        0x16t 0x1t
        0x18t 0x1t
        0x1at 0x1t
        0x1bt 0x1t
        0x1ct 0x1t
        0x1et 0x1t
        0x20t 0x1t
        0x21t 0x1t
        0x22t 0x1t
        0x24t 0x1t
        0x25t 0x1t
        0x26t 0x1t
        0x27t 0x1t
        0x29t 0x1t
        0x2et 0x1t
        0x34t 0x1t
        0x36t 0x1t
        0x37t 0x1t
        0x38t 0x1t
        0x39t 0x1t
        0x3at 0x1t
        0x3bt 0x1t
        0x3ct 0x1t
        0x4at 0x1t
        0x4ct 0x1t
        0x4et 0x1t
        0x52t 0x1t
        0x54t 0x1t
        0x56t 0x1t
        0x58t 0x1t
        0x5at 0x1t
        0x5ct 0x1t
        0x5et 0x1t
        0x60t 0x1t
        0x62t 0x1t
        0x64t 0x1t
        0x66t 0x1t
        0x68t 0x1t
        0x6at 0x1t
        0x6bt 0x1t
        0x6ct 0x1t
        0x6dt 0x1t
        0x6et 0x1t
        0x70t 0x1t
        0x72t 0x1t
        0x74t 0x1t
        0x76t 0x1t
        0x78t 0x1t
        0x90t 0x1t
        0x91t 0x1t
        0x92t 0x1t
        0x94t 0x1t
        0x95t 0x1t
        0x9at 0x1t
        0x9ct 0x1t
        0x9dt 0x1t
        0x9et 0x1t
        0x9ft 0x1t
        0xa0t 0x1t
        0xa1t 0x1t
        0xa2t 0x1t
        0xa3t 0x1t
        0xa4t 0x1t
        0xa5t 0x1t
        0xa6t 0x1t
        0xa7t 0x1t
        0xa8t 0x1t
        0xa9t 0x1t
        0xaat 0x1t
        0xabt 0x1t
        0xact 0x1t
        0xadt 0x1t
        0xaet 0x1t
        0xaft 0x1t
        0xb0t 0x1t
        0xb2t 0x1t
        0xb4t 0x1t
        0xb5t 0x1t
        0xb6t 0x1t
        0xb8t 0x1t
        0xb9t 0x1t
        0xc2t 0x1t
        0xc4t 0x1t
        0xc6t 0x1t
        0xc7t 0x1t
        0xc8t 0x1t
        0xc9t 0x1t
        0xcct 0x1t
        0xcdt 0x1t
        0xd2t 0x1t
        0xd3t 0x1t
        0xd6t 0x1t
        0xd8t 0x1t
        0xf6t 0x1t
        0xf9t 0x1t
        0xfet 0x1t
        0x2t 0x2t
        0x3t 0x2t
        0x8t 0x2t
        0xdt 0x2t
        0x10t 0x2t
        0x12t 0x2t
        0x16t 0x2t
        0x17t 0x2t
        0x18t 0x2t
        0x19t 0x2t
        0x1bt 0x2t
        0x1ct 0x2t
        0x1dt 0x2t
        0x1et 0x2t
        0x1ft 0x2t
        0x20t 0x2t
        0x21t 0x2t
        0x22t 0x2t
        0x23t 0x2t
        0x24t 0x2t
        0x25t 0x2t
        0x26t 0x2t
        0x27t 0x2t
        0x28t 0x2t
        0x5at 0x2t
        0x5bt 0x2t
        0x5ct 0x2t
        0x5dt 0x2t
        0x5et 0x2t
        0x5ft 0x2t
        0x60t 0x2t
        0x61t 0x2t
        0x62t 0x2t
        0x63t 0x2t
        0x64t 0x2t
        0x65t 0x2t
        0x66t 0x2t
        0x67t 0x2t
        0x68t 0x2t
        0x69t 0x2t
        0x6at 0x2t
        0x6bt 0x2t
        0x6ct 0x2t
        0x6dt 0x2t
        0x6et 0x2t
        0x6ft 0x2t
        0x70t 0x2t
        0x71t 0x2t
        0x72t 0x2t
        0x73t 0x2t
        0x74t 0x2t
        0x75t 0x2t
        0x76t 0x2t
        0x77t 0x2t
        0x78t 0x2t
        0x79t 0x2t
        0x7at 0x2t
        0x7bt 0x2t
        0x7ct 0x2t
        0x7dt 0x2t
        0x7et 0x2t
        0x7ft 0x2t
        0x80t 0x2t
        0x81t 0x2t
        0x82t 0x2t
        0x83t 0x2t
        0x85t 0x2t
        0x86t 0x2t
        0x87t 0x2t
        0x88t 0x2t
        0x89t 0x2t
        0x8at 0x2t
        0x8bt 0x2t
        0x8ct 0x2t
        0x8dt 0x2t
        0x8et 0x2t
        0x8ft 0x2t
        0x91t 0x2t
        0xbet 0x2t
        0xc0t 0x2t
        0xc2t 0x2t
        0xc4t 0x2t
        0xc6t 0x2t
        0xc8t 0x2t
        0xcat 0x2t
        0xcct 0x2t
        0xd2t 0x2t
        0xd4t 0x2t
        0xdat 0x2t
        0xdct 0x2t
        0xdet 0x2t
        0xe0t 0x2t
        0xe2t 0x2t
        0xe4t 0x2t
        0xe6t 0x2t
        0xe8t 0x2t
        0xeat 0x2t
        0xect 0x2t
        0xeet 0x2t
    .end array-data

    .line 497
    :array_1
    .array-data 0x4
        0x0t 0x4t 0x72t 0x67t
        0x79t 0x6ct 0x6ct 0x6et
        0x0t 0x4t 0x65t 0x62t
        0xc5t 0x4t 0x72t 0x66t
        0x0t 0x4t 0x63t 0x6dt
        0x0t 0x4t 0x64t 0x61t
        0xb4t 0x4t 0x73t 0x65t
        0x0t 0x4t 0x75t 0x68t
        0x0t 0x4t 0x61t 0x62t
        0x0t 0x4t 0x72t 0x68t
        0x0t 0x4t 0x73t 0x72t
        0xe6t 0x4t 0x74t 0x69t
        0xe6t 0x4t 0x61t 0x76t
        0x0t 0x4t 0x6ft 0x72t
        0x12t 0x5t 0x68t 0x63t
        0xd1t 0x6ct 0x7at 0x63t
        0x0t 0x4t 0x6bt 0x73t
        0xf2t 0x6ct 0x74t 0x61t
        0xa3t 0x6ct 0x62t 0x67t
        0xa3t 0x6ct 0x62t 0x67t
        0x0t 0x4t 0x6bt 0x64t
        0x0t 0x4t 0x65t 0x73t
        0x0t 0x4t 0x6ft 0x6et
        0x0t 0x4t 0x69t 0x66t
        0x0t 0x4t 0x74t 0x6ct
        0x0t 0x4t 0x76t 0x6ct
        0x0t 0x4t 0x65t 0x65t
        0x0t 0x4t 0x75t 0x72t
        0x0t 0x4t 0x61t 0x75t
        0x0t 0x4t 0x79t 0x62t
        0x0t 0x4t 0x64t 0x6dt
        0x0t 0x5t 0x6ct 0x70t
        0x82t 0x6ct 0x65t 0x64t
        0x0t 0x4t 0x69t 0x67t
        0x0t 0x4t 0x74t 0x70t
        0x0t 0x4t 0x75t 0x6ct
        0x93t 0x4t 0x65t 0x69t
        0x0t 0x4t 0x73t 0x69t
        0x0t 0x4t 0x6ct 0x61t
        0x0t 0x4t 0x74t 0x6dt
        0x0t 0x4t 0x79t 0x63t
        0x0t 0x4t 0x65t 0x67t
        0x0t 0x4t 0x6dt 0x61t
        0x0t 0x4t 0x67t 0x62t
        0x0t 0x4t 0x72t 0x74t
        0x0t 0x4t 0x6ft 0x66t
        0x0t 0x4t 0x65t 0x67t
        0x0t 0x4t 0x6ct 0x67t
        0x0t 0x4t 0x6dt 0x73t
        0x0t 0x4t 0x6ct 0x73t
        0x0t 0x4t 0x6bt 0x6dt
        0x0t 0x4t 0x69t 0x6ct
        0x0t 0x4t 0x65t 0x6dt
        0x0t 0x5et 0x61t 0x63t
        0x0t 0x4t 0x6dt 0x70t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x0t 0x4t 0x72t 0x70t
        0x0t 0x4t 0x69t 0x76t
        0x0t 0x6t 0x78t 0x6dt
        0x0t 0x6t 0x6dt 0x6at
        0x0t 0x4t 0x70t 0x67t
        0x0t 0x6t 0x62t 0x62t
        0x0t 0x6t 0x67t 0x61t
        0x0t 0x6t 0x79t 0x6bt
        0x0t 0x6t 0x67t 0x76t
        0x0t 0x4t 0x6dt 0x62t
        0x0t 0x4t 0x64t 0x67t
        0x0t 0x4t 0x73t 0x6dt
        0x0t 0x4t 0x6et 0x6bt
        0x0t 0x4t 0x63t 0x6ct
        0x0t 0x4t 0x63t 0x76t
        0x0t 0x4t 0x6ct 0x6et
        0x0t 0x4t 0x77t 0x61t
        0x0t 0x4t 0x73t 0x62t
        0x0t 0x6t 0x69t 0x61t
        0x0t 0x4t 0x6dt 0x64t
        0x0t 0x4t 0x75t 0x63t
        0x0t 0x4t 0x6ft 0x64t
        0x0t 0x4t 0x74t 0x68t
        0x0t 0x4t 0x74t 0x74t
        0x0t 0x4t 0x63t 0x74t
        0x0t 0x4t 0x7at 0x61t
        0x0t 0x4t 0x7at 0x6bt
        0x0t 0x4t 0x74t 0x62t
        0x0t 0x4t 0x6et 0x69t
        0x0t 0x4t 0x6et 0x69t
        0x0t 0x4t 0x6bt 0x70t
        0x0t 0x4t 0x66t 0x61t
        0x0t 0x4t 0x6bt 0x6ct
        0x0t 0x4t 0x6dt 0x6dt
        0x0t 0x4t 0x62t 0x6ct
        0x0t 0x4t 0x6ft 0x6at
        0x0t 0x4t 0x79t 0x73t
        0x0t 0x4t 0x71t 0x69t
        0x0t 0x4t 0x77t 0x6bt
        0x0t 0x4t 0x61t 0x73t
        0x0t 0x4t 0x65t 0x79t
        0x0t 0x4t 0x6dt 0x6ft
        0x0t 0x4t 0x73t 0x70t
        0x0t 0x4t 0x65t 0x61t
        0x0t 0x4t 0x6ct 0x69t
        0x0t 0x4t 0x68t 0x62t
        0x0t 0x4t 0x61t 0x71t
        0x0t 0x4t 0x6et 0x6dt
        0x0t 0x4t 0x70t 0x6et
        0x0t 0x4t 0x65t 0x61t
        0x0t 0x4t 0x65t 0x61t
        0x0t 0x4t 0x72t 0x69t
        0x0t 0x4t 0x7at 0x75t
        0x0t 0x4t 0x6at 0x74t
        0x0t 0x4t 0x67t 0x6bt
        0x0t 0x4t 0x6dt 0x74t
        0x57t 0x74t 0x70t 0x6at
        0x57t 0x74t 0x70t 0x6at
        0x38t 0x6ct 0x72t 0x6bt
        0x0t 0x4t 0x6et 0x76t
        0x0t 0x4t 0x6bt 0x68t
        0x0t 0x4t 0x6ft 0x6dt
        0x0t 0x4t 0x68t 0x6bt
        0x0t 0x4t 0x61t 0x6ct
        0x2at 0x6ct 0x6et 0x63t
        0x2at 0x6ct 0x6et 0x63t
        0x0t 0x4t 0x77t 0x74t
        0x0t 0x4t 0x70t 0x6bt
        0x0t 0x4t 0x64t 0x62t
        0x0t 0x4t 0x76t 0x6dt
        0x0t 0x4t 0x79t 0x6dt
        0x63t 0x5ct 0x75t 0x61t
        0x0t 0x4t 0x64t 0x69t
        0x0t 0x4t 0x6ct 0x74t
        0x0t 0x4t 0x68t 0x70t
        0x0t 0x4t 0x68t 0x74t
        0x43t 0x5ct 0x67t 0x73t
        0x0t 0x4t 0x6et 0x62t
        0x23t 0x5t 0x7at 0x6et
        0x0t 0x4t 0x70t 0x6dt
        0x0t 0x4t 0x75t 0x67t
        0x0t 0x4t 0x72t 0x6et
        0x0t 0x4t 0x67t 0x70t
        0x0t 0x4t 0x6ft 0x74t
        0x0t 0x4t 0x62t 0x73t
        0x0t 0x4t 0x75t 0x76t
        0x0t 0x4t 0x6at 0x66t
        0x0t 0x4t 0x66t 0x77t
        0x0t 0x4t 0x73t 0x61t
        0x0t 0x4t 0x69t 0x6bt
        0x0t 0x4t 0x63t 0x6et
        0x0t 0x4t 0x66t 0x70t
        0x0t 0x4t 0x6bt 0x63t
        0x0t 0x4t 0x73t 0x77t
        0x0t 0x4t 0x6dt 0x66t
        0x0t 0x4t 0x68t 0x6dt
        0x0t 0x4t 0x77t 0x70t
        0x0t 0x4t 0x67t 0x65t
        0x0t 0x4t 0x7at 0x64t
        0x0t 0x4t 0x61t 0x6dt
        0x0t 0x4t 0x6et 0x74t
        0x0t 0x4t 0x79t 0x6ct
        0x0t 0x4t 0x6dt 0x67t
        0x0t 0x4t 0x6et 0x73t
        0x0t 0x4t 0x72t 0x6dt
        0x0t 0x4t 0x6ct 0x6dt
        0x0t 0x4t 0x6et 0x67t
        0x0t 0x4t 0x69t 0x63t
        0x0t 0x4t 0x66t 0x62t
        0x0t 0x4t 0x65t 0x6et
        0x0t 0x4t 0x67t 0x74t
        0x0t 0x4t 0x6at 0x62t
        0x0t 0x4t 0x75t 0x6dt
        0x0t 0x4t 0x72t 0x6ct
        0x0t 0x4t 0x6ct 0x73t
        0x0t 0x4t 0x68t 0x67t
        0x0t 0x4t 0x67t 0x6et
        0x0t 0x4t 0x64t 0x74t
        0x0t 0x4t 0x66t 0x63t
        0x0t 0x4t 0x6dt 0x63t
        0x0t 0x4t 0x76t 0x63t
        0x0t 0x4t 0x74t 0x73t
        0x0t 0x4t 0x71t 0x67t
        0x0t 0x4t 0x61t 0x67t
        0x0t 0x4t 0x67t 0x63t
        0x0t 0x4t 0x67t 0x63t
        0x0t 0x4t 0x6ft 0x61t
        0x0t 0x4t 0x77t 0x67t
        0x0t 0x4t 0x63t 0x73t
        0x0t 0x4t 0x64t 0x73t
        0x0t 0x4t 0x77t 0x72t
        0x0t 0x4t 0x74t 0x65t
        0x0t 0x4t 0x6ft 0x73t
        0x0t 0x4t 0x6at 0x64t
        0x0t 0x4t 0x65t 0x6bt
        0x0t 0x4t 0x7at 0x74t
        0x0t 0x4t 0x67t 0x75t
        0x0t 0x4t 0x69t 0x62t
        0x0t 0x4t 0x7at 0x6dt
        0x0t 0x4t 0x6dt 0x7at
        0x0t 0x4t 0x67t 0x6dt
        0x0t 0x4t 0x65t 0x72t
        0x0t 0x4t 0x77t 0x7at
        0x0t 0x4t 0x61t 0x6et
        0x0t 0x4t 0x77t 0x6dt
        0x0t 0x4t 0x73t 0x6ct
        0x0t 0x4t 0x77t 0x62t
        0x0t 0x4t 0x7at 0x73t
        0x0t 0x4t 0x6dt 0x6bt
        0x13t 0x4t 0x61t 0x7at
        0x0t 0x4t 0x72t 0x65t
        0x0t 0x4t 0x7at 0x62t
        0x0t 0x4t 0x74t 0x67t
        0x0t 0x4t 0x76t 0x73t
        0x0t 0x6t 0x6et 0x68t
        0x0t 0x4t 0x69t 0x6et
        0x0t 0x4t 0x72t 0x63t
        0x0t 0x4t 0x61t 0x70t
        0x0t 0x4t 0x65t 0x70t
        0x0t 0x6t 0x72t 0x61t
        0x0t 0x4t 0x72t 0x62t
        0x0t 0x4t 0x6ct 0x63t
        0x0t 0x6t 0x6ft 0x63t
        0x0t 0x4t 0x65t 0x76t
        0x0t 0x4t 0x6ft 0x62t
        0x0t 0x4t 0x79t 0x67t
        0x0t 0x4t 0x63t 0x65t
        0x0t 0x4t 0x66t 0x67t
        0x0t 0x4t 0x79t 0x70t
        0x0t 0x4t 0x72t 0x73t
        0x0t 0x4t 0x79t 0x75t
        0x0t 0x4t 0x6bt 0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countryCodeForMcc(I)Ljava/lang/String;
    .locals 8
    .parameter "mcc"

    .prologue
    const/4 v7, 0x1

    .line 573
    sget-boolean v5, Lcom/android/internal/telephony/MccTable;->mCustMccTableInitial:Z

    if-nez v5, :cond_0

    .line 574
    invoke-static {}, Lcom/android/internal/telephony/MccTable;->loadCustMccTable()Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/MccTable;->mCustMccTableUsed:Z

    .line 577
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v6, p0

    invoke-static {v5, v6}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v3

    .line 578
    .local v3, index:I
    if-gez v3, :cond_1

    .line 579
    const-string v5, ""

    .line 592
    :goto_0
    return-object v5

    .line 582
    :cond_1
    sget-boolean v5, Lcom/android/internal/telephony/MccTable;->mCustMccTableUsed:Z

    if-ne v7, v5, :cond_2

    .line 583
    sget-object v5, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v2, v5, v3

    .line 585
    .local v2, indCode:I
    ushr-int/lit8 v5, v2, 0x10

    and-int/lit16 v1, v5, 0xff

    .line 586
    .local v1, countryInd:I
    sget-object v5, Lcom/android/internal/telephony/MccTable;->COUNTRY_CODES:[Ljava/lang/String;

    aget-object v0, v5, v1

    .local v0, countryCode:Ljava/lang/String;
    move-object v5, v0

    .line 587
    goto :goto_0

    .line 589
    .end local v0           #countryCode:Ljava/lang/String;
    .end local v1           #countryInd:I
    .end local v2           #indCode:I
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v2, v5, v3

    .line 591
    .restart local v2       #indCode:I
    const/4 v5, 0x2

    new-array v4, v5, [B

    const/4 v5, 0x0

    ushr-int/lit8 v6, v2, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    ushr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v7

    .line 592
    .local v4, iso:[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static defaultLanguageForMcc(I)Ljava/lang/String;
    .locals 7
    .parameter "mcc"

    .prologue
    const/4 v6, 0x0

    .line 603
    const/4 v3, 0x0

    .line 604
    .local v3, langInd:I
    sget-boolean v4, Lcom/android/internal/telephony/MccTable;->mCustMccTableInitial:Z

    if-nez v4, :cond_0

    .line 605
    invoke-static {}, Lcom/android/internal/telephony/MccTable;->loadCustMccTable()Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/MccTable;->mCustMccTableUsed:Z

    .line 608
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v5, p0

    invoke-static {v4, v5}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .line 609
    .local v1, index:I
    if-gez v1, :cond_1

    move-object v4, v6

    .line 627
    :goto_0
    return-object v4

    .line 612
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v4, v1

    .line 614
    .local v0, indCode:I
    const/4 v4, 0x1

    sget-boolean v5, Lcom/android/internal/telephony/MccTable;->mCustMccTableUsed:Z

    if-ne v4, v5, :cond_2

    .line 616
    ushr-int/lit8 v4, v0, 0x18

    and-int/lit16 v3, v4, 0xff

    .line 621
    :goto_1
    sget-object v4, Lcom/android/internal/telephony/MccTable;->LANG_STRINGS:[Ljava/lang/String;

    aget-object v2, v4, v3

    .line 623
    .local v2, lang:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v6

    .line 624
    goto :goto_0

    .line 618
    .end local v2           #lang:Ljava/lang/String;
    :cond_2
    and-int/lit8 v3, v0, 0xf

    goto :goto_1

    .restart local v2       #lang:Ljava/lang/String;
    :cond_3
    move-object v4, v2

    .line 627
    goto :goto_0
.end method

.method public static defaultTimeZoneForMcc(I)Ljava/lang/String;
    .locals 7
    .parameter "mcc"

    .prologue
    const/4 v6, 0x0

    .line 548
    sget-boolean v4, Lcom/android/internal/telephony/MccTable;->mCustMccTableInitial:Z

    if-nez v4, :cond_0

    .line 549
    invoke-static {}, Lcom/android/internal/telephony/MccTable;->loadCustMccTable()Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/MccTable;->mCustMccTableUsed:Z

    .line 552
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v5, p0

    invoke-static {v4, v5}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .line 553
    .local v1, index:I
    if-gez v1, :cond_1

    move-object v4, v6

    .line 564
    :goto_0
    return-object v4

    .line 556
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v4, v1

    .line 557
    .local v0, indCode:I
    ushr-int/lit8 v4, v0, 0x4

    and-int/lit8 v3, v4, 0x1f

    .line 558
    .local v3, tzInd:I
    sget-object v4, Lcom/android/internal/telephony/MccTable;->TZ_STRINGS:[Ljava/lang/String;

    aget-object v2, v4, v3

    .line 560
    .local v2, tz:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v6

    .line 561
    goto :goto_0

    :cond_2
    move-object v4, v2

    .line 564
    goto :goto_0
.end method

.method private static loadCustMccTable()Z
    .locals 16

    .prologue
    .line 820
    const/4 v2, 0x0

    .line 821
    .local v2, tzTempLength:I
    const/4 v6, 0x0

    .line 822
    .local v6, langTempLength:I
    const/4 v1, 0x0

    .line 823
    .local v1, countryTempLength:I
    const/4 v11, 0x0

    .line 824
    .local v11, mccTempLength:I
    const/4 v4, 0x0

    .line 825
    .local v4, indTempLength:I
    const/4 v13, 0x0

    .line 826
    .local v13, tzTemp:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 827
    .local v5, langTemp:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 828
    .local v0, countryTemp:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 829
    .local v10, mccTemp:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 831
    .local v3, indTemp:[Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/cust/"

    const-string/jumbo v9, "xml/mccTableParse.xml"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    .local v7, mccTableFileCust:Ljava/io/File;
    const/4 v8, 0x0

    .line 834
    .local v8, mccTableReader:Ljava/io/FileReader;
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/telephony/MccTable;->mCustMccTableInitial:Z

    .line 837
    :try_start_0
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    .end local v8           #mccTableReader:Ljava/io/FileReader;
    .local v9, mccTableReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 844
    .local v12, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v12, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 846
    const-string v7, "mccTableParse"

    .end local v7           #mccTableFileCust:Ljava/io/File;
    invoke-static {v12, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13

    move-object v7, v10

    .end local v10           #mccTemp:[Ljava/lang/String;
    .local v7, mccTemp:[Ljava/lang/String;
    move v8, v11

    .end local v11           #mccTempLength:I
    .local v8, mccTempLength:I
    move-object v10, v13

    .end local v13           #tzTemp:[Ljava/lang/String;
    .local v10, tzTemp:[Ljava/lang/String;
    move v11, v2

    .end local v2           #tzTempLength:I
    .local v11, tzTempLength:I
    move v2, v1

    .end local v1           #countryTempLength:I
    .local v2, countryTempLength:I
    move-object v1, v0

    .line 848
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 849
    const/4 v0, 0x0

    .line 851
    .local v0, StrValue:Ljava/lang/String;
    const-string/jumbo v13, "string"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 853
    const-string v13, "TZ_STRINGS"

    const/4 v14, 0x0

    invoke-interface {v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 855
    const/4 v0, 0x0

    const-string v13, "TZ_STRINGS"

    .end local v0           #StrValue:Ljava/lang/String;
    invoke-interface {v12, v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 856
    .restart local v0       #StrValue:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 857
    const-string v0, "MccTable"

    .end local v0           #StrValue:Ljava/lang/String;
    const-string v12, "TimeZone get from cust file is null"

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_16

    .line 858
    const/4 v0, 0x0

    .line 961
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .local v15, mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .line 989
    .end local v11           #tzTempLength:I
    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    :goto_0
    return v10

    .line 838
    .end local v9           #tzTemp:[Ljava/lang/String;
    .local v2, tzTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v7, mccTableFileCust:Ljava/io/File;
    .local v8, mccTableReader:Ljava/io/FileReader;
    .local v10, mccTemp:[Ljava/lang/String;
    .local v11, mccTempLength:I
    .restart local v13       #tzTemp:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 839
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v2, "MccTable"

    .end local v2           #e:Ljava/io/FileNotFoundException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "can not open"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .end local v7           #mccTableFileCust:Ljava/io/File;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v2, 0x0

    move-object v7, v10

    .end local v10           #mccTemp:[Ljava/lang/String;
    .local v7, mccTemp:[Ljava/lang/String;
    move-object v9, v13

    .end local v13           #tzTemp:[Ljava/lang/String;
    .restart local v9       #tzTemp:[Ljava/lang/String;
    move v10, v2

    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v8

    .end local v8           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    move v8, v11

    .end local v11           #mccTempLength:I
    .local v8, mccTempLength:I
    goto :goto_0

    .line 962
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .local v10, tzTemp:[Ljava/lang/String;
    .local v11, tzTempLength:I
    :catch_1
    move-exception v0

    .line 963
    .local v0, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e2:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto :goto_0

    .line 861
    .local v0, StrValue:Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .restart local v11       #tzTempLength:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :try_start_4
    const-string v13, ","

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 862
    if-nez v10, :cond_2

    .line 863
    const-string v0, "MccTable"

    .end local v0           #StrValue:Ljava/lang/String;
    const-string v12, "TimeZone array get from cust file is null"

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_16

    .line 864
    const/4 v0, 0x0

    .line 961
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .line 964
    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto :goto_0

    .line 962
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 963
    .local v0, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e2:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 866
    .local v0, StrValue:Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .restart local v11       #tzTempLength:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_6
    array-length v11, v10

    .line 867
    const/16 v13, 0x20

    if-gt v11, v13, :cond_3

    if-gtz v11, :cond_0

    .line 868
    :cond_3
    const-string v0, "MccTable"

    .end local v0           #StrValue:Ljava/lang/String;
    const-string v12, "number of TimeZone get from cust file is larger than the max value or less than zero"

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_17
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_16

    .line 869
    const/4 v0, 0x0

    .line 961
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .line 964
    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 962
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 963
    .local v0, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e2:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 871
    .local v0, StrValue:Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .restart local v11       #tzTempLength:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_8
    const-string v13, "LANG_STRINGS"

    const/4 v14, 0x0

    invoke-interface {v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 873
    const/4 v0, 0x0

    const-string v13, "LANG_STRINGS"

    .end local v0           #StrValue:Ljava/lang/String;
    invoke-interface {v12, v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 874
    .restart local v0       #StrValue:Ljava/lang/String;
    if-nez v0, :cond_5

    .line 875
    const-string v0, "MccTable"

    .end local v0           #StrValue:Ljava/lang/String;
    const-string v12, "LanguageCode get from cust file is null"

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_17
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_16

    .line 876
    const/4 v0, 0x0

    .line 961
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .line 964
    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 962
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 963
    .local v0, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e2:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 879
    .local v0, StrValue:Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .restart local v11       #tzTempLength:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_a
    const-string v13, ","

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 880
    if-nez v5, :cond_6

    .line 881
    const-string v0, "MccTable"

    .end local v0           #StrValue:Ljava/lang/String;
    const-string v12, "LanguageCode array get from cust file is null"

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_16

    .line 882
    const/4 v0, 0x0

    .line 961
    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .line 964
    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 962
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 963
    .local v0, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e2:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 884
    .local v0, StrValue:Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .restart local v11       #tzTempLength:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    :try_start_c
    array-length v6, v5

    .line 886
    const/16 v13, 0x80

    if-gt v6, v13, :cond_7

    if-gtz v6, :cond_0

    .line 887
    :cond_7
    const-string v0, "MccTable"

    .end local v0           #StrValue:Ljava/lang/String;
    const-string v12, "number of LanguageCode get from cust file is larger than the max value or less than zero"

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_17
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_16

    .line 888
    const/4 v0, 0x0

    .line 961
    :try_start_d
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .line 964
    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 962
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    :catch_6
    move-exception v0

    .line 963
    .local v0, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e2:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 890
    .local v0, StrValue:Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .restart local v11       #tzTempLength:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    :try_start_e
    const-string v13, "COUNTRY_CODES"

    const/4 v14, 0x0

    invoke-interface {v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 892
    const/4 v0, 0x0

    const-string v13, "COUNTRY_CODES"

    .end local v0           #StrValue:Ljava/lang/String;
    invoke-interface {v12, v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    .restart local v0       #StrValue:Ljava/lang/String;
    if-nez v0, :cond_9

    .line 894
    const-string v0, "MccTable"

    .end local v0           #StrValue:Ljava/lang/String;
    const-string v12, "CountryCode get from cust file is null"

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_17
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_16

    .line 895
    const/4 v0, 0x0

    .line 961
    :try_start_f
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .line 964
    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 962
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    :catch_7
    move-exception v0

    .line 963
    .local v0, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e2:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 898
    .local v0, StrValue:Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .restart local v11       #tzTempLength:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    :try_start_10
    const-string v13, ","

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 899
    if-nez v1, :cond_a

    .line 900
    const-string v0, "MccTable"

    .end local v0           #StrValue:Ljava/lang/String;
    const-string v12, "CountryCode array get from cust file is null"

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_16

    .line 901
    const/4 v0, 0x0

    .line 961
    :try_start_11
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .line 964
    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 962
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    :catch_8
    move-exception v0

    .line 963
    .local v0, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e2:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 903
    .local v0, StrValue:Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .restart local v11       #tzTempLength:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_a
    :try_start_12
    array-length v2, v1

    .line 904
    const/16 v13, 0x100

    if-gt v2, v13, :cond_b

    if-gtz v2, :cond_0

    .line 905
    :cond_b
    const-string v0, "MccTable"

    .end local v0           #StrValue:Ljava/lang/String;
    const-string v12, "number of CountryCode get from cust file is larger than the max value or less than zero"

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_16

    .line 906
    const/4 v0, 0x0

    .line 961
    :try_start_13
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .line 964
    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 962
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    :catch_9
    move-exception v0

    .line 963
    .local v0, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e2:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 909
    .local v0, StrValue:Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .restart local v11       #tzTempLength:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_c
    :try_start_14
    const-string/jumbo v13, "short"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 911
    const-string v13, "MCC_CODES"

    const/4 v14, 0x0

    invoke-interface {v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 912
    const/4 v0, 0x0

    const-string v13, "MCC_CODES"

    .end local v0           #StrValue:Ljava/lang/String;
    invoke-interface {v12, v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 913
    .restart local v0       #StrValue:Ljava/lang/String;
    if-nez v0, :cond_d

    .line 914
    const-string v0, "MccTable"

    .end local v0           #StrValue:Ljava/lang/String;
    const-string v12, "MCCCode get from cust file is null"

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_16

    .line 915
    const/4 v0, 0x0

    .line 961
    :try_start_15
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .line 964
    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 962
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    :catch_a
    move-exception v0

    .line 963
    .local v0, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e2:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 918
    .local v0, StrValue:Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .restart local v11       #tzTempLength:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_d
    :try_start_16
    const-string v13, ","

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 919
    if-nez v7, :cond_e

    .line 920
    const-string v0, "MccTable"

    .end local v0           #StrValue:Ljava/lang/String;
    const-string v12, "MCCCode array get from cust file is null"

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_17
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_16

    .line 921
    const/4 v0, 0x0

    .line 961
    :try_start_17
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .line 964
    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 962
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    :catch_b
    move-exception v0

    .line 963
    .local v0, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e2:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 923
    .local v0, StrValue:Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .restart local v11       #tzTempLength:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_e
    :try_start_18
    array-length v8, v7

    .line 924
    if-gtz v8, :cond_0

    .line 925
    const-string v0, "MccTable"

    .end local v0           #StrValue:Ljava/lang/String;
    const-string v12, "number of MCCCode get from cust file is  less than zero"

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_17
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_16

    .line 926
    const/4 v0, 0x0

    .line 961
    :try_start_19
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_c

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .line 964
    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 962
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    :catch_c
    move-exception v0

    .line 963
    .local v0, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e2:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 929
    .local v0, StrValue:Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .restart local v11       #tzTempLength:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_f
    :try_start_1a
    const-string v13, "integer"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 931
    const-string v13, "IND_CODES"

    const/4 v14, 0x0

    invoke-interface {v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 932
    const/4 v0, 0x0

    const-string v13, "IND_CODES"

    .end local v0           #StrValue:Ljava/lang/String;
    invoke-interface {v12, v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 933
    .restart local v0       #StrValue:Ljava/lang/String;
    if-nez v0, :cond_10

    .line 934
    const-string v0, "MccTable"

    .end local v0           #StrValue:Ljava/lang/String;
    const-string v12, "IndCode get from cust file is null"

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_17
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_16

    .line 935
    const/4 v0, 0x0

    .line 961
    :try_start_1b
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_d

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .line 964
    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 962
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    :catch_d
    move-exception v0

    .line 963
    .local v0, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e2:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 938
    .local v0, StrValue:Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .restart local v11       #tzTempLength:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_10
    :try_start_1c
    const-string v13, ","

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 939
    if-nez v3, :cond_11

    .line 940
    const-string v0, "MccTable"

    .end local v0           #StrValue:Ljava/lang/String;
    const-string v12, "IndCode array get from cust file is null"

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1c} :catch_17
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_16

    .line 941
    const/4 v0, 0x0

    .line 961
    :try_start_1d
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_e

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .line 964
    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 962
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    :catch_e
    move-exception v0

    .line 963
    .local v0, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e2:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 943
    .local v0, StrValue:Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .restart local v11       #tzTempLength:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_11
    :try_start_1e
    array-length v4, v3

    .line 944
    if-gtz v4, :cond_0

    .line 945
    const-string v0, "MccTable"

    .end local v0           #StrValue:Ljava/lang/String;
    const-string v12, "number of IndCode get from cust file is  less than zero"

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_1e} :catch_17
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_16

    .line 946
    const/4 v0, 0x0

    .line 961
    :try_start_1f
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_f

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .line 964
    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 962
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    :catch_f
    move-exception v0

    .line 963
    .local v0, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e2:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 961
    .local v0, StrValue:Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .restart local v11       #tzTempLength:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_12
    :try_start_20
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_10

    .line 967
    if-eqz v11, :cond_13

    if-eqz v6, :cond_13

    if-eqz v2, :cond_13

    if-eqz v8, :cond_13

    if-eqz v4, :cond_13

    if-eqz v10, :cond_13

    if-eqz v5, :cond_13

    if-eqz v1, :cond_13

    if-eqz v7, :cond_13

    if-eqz v3, :cond_13

    if-eq v8, v4, :cond_14

    .line 970
    :cond_13
    const-string v0, "MccTable"

    .end local v0           #StrValue:Ljava/lang/String;
    const-string/jumbo v11, "some other exception occured"

    .end local v11           #tzTempLength:I
    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const/4 v0, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 962
    .local v0, StrValue:Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .restart local v11       #tzTempLength:I
    :catch_10
    move-exception v0

    .line 963
    .local v0, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e2:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 953
    .end local v7           #mccTemp:[Ljava/lang/String;
    .end local v8           #mccTempLength:I
    .local v2, tzTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .local v10, mccTemp:[Ljava/lang/String;
    .local v11, mccTempLength:I
    .restart local v13       #tzTemp:[Ljava/lang/String;
    :catch_11
    move-exception v7

    move v8, v11

    .end local v11           #mccTempLength:I
    .restart local v8       #mccTempLength:I
    move v11, v2

    .end local v2           #tzTempLength:I
    .local v11, tzTempLength:I
    move-object v2, v7

    move-object v7, v10

    .end local v10           #mccTemp:[Ljava/lang/String;
    .restart local v7       #mccTemp:[Ljava/lang/String;
    move-object v10, v13

    .line 954
    .end local v13           #tzTemp:[Ljava/lang/String;
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    .local v10, tzTemp:[Ljava/lang/String;
    :goto_1
    :try_start_21
    const-string v12, "MccTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception in mcctable parser "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    .line 955
    const/4 v2, 0x0

    .line 961
    :try_start_22
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_12

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v2

    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .line 964
    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 962
    .end local v2           #indTemp:[Ljava/lang/String;
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    :catch_12
    move-exception v2

    .line 963
    .local v2, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #e2:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v2, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v2

    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 956
    .end local v7           #mccTemp:[Ljava/lang/String;
    .end local v8           #mccTempLength:I
    .local v2, tzTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .local v10, mccTemp:[Ljava/lang/String;
    .local v11, mccTempLength:I
    .restart local v13       #tzTemp:[Ljava/lang/String;
    :catch_13
    move-exception v7

    move v8, v11

    .end local v11           #mccTempLength:I
    .restart local v8       #mccTempLength:I
    move v11, v2

    .end local v2           #tzTempLength:I
    .local v11, tzTempLength:I
    move-object v2, v7

    move-object v7, v10

    .end local v10           #mccTemp:[Ljava/lang/String;
    .restart local v7       #mccTemp:[Ljava/lang/String;
    move-object v10, v13

    .line 957
    .end local v13           #tzTemp:[Ljava/lang/String;
    .local v2, e:Ljava/io/IOException;
    .local v10, tzTemp:[Ljava/lang/String;
    :goto_2
    :try_start_23
    const-string v12, "MccTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception in mcctable parser "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    .line 958
    const/4 v2, 0x0

    .line 961
    :try_start_24
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_14

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v2

    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .line 964
    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 962
    .end local v2           #indTemp:[Ljava/lang/String;
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    :catch_14
    move-exception v2

    .line 963
    .local v2, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    .end local v11           #tzTempLength:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #e2:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v2, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v2

    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 960
    .end local v7           #mccTemp:[Ljava/lang/String;
    .end local v8           #mccTempLength:I
    .local v2, tzTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .local v10, mccTemp:[Ljava/lang/String;
    .local v11, mccTempLength:I
    .restart local v13       #tzTemp:[Ljava/lang/String;
    :catchall_0
    move-exception v7

    move v8, v11

    .end local v11           #mccTempLength:I
    .restart local v8       #mccTempLength:I
    move-object v11, v7

    move-object v7, v10

    .end local v10           #mccTemp:[Ljava/lang/String;
    .restart local v7       #mccTemp:[Ljava/lang/String;
    move-object v10, v13

    .line 961
    .end local v13           #tzTemp:[Ljava/lang/String;
    .local v10, tzTemp:[Ljava/lang/String;
    :goto_3
    :try_start_25
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_15

    .line 964
    throw v11

    .line 962
    :catch_15
    move-exception v2

    .line 963
    .local v2, e2:Ljava/io/IOException;
    const-string v11, "MccTable"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in mcctable parser "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #e2:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v2, 0x0

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v2

    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 974
    .local v0, StrValue:Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .local v11, tzTempLength:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_14
    new-array v0, v11, [Ljava/lang/String;

    .end local v0           #StrValue:Ljava/lang/String;
    sput-object v0, Lcom/android/internal/telephony/MccTable;->TZ_STRINGS:[Ljava/lang/String;

    .line 975
    sput-object v10, Lcom/android/internal/telephony/MccTable;->TZ_STRINGS:[Ljava/lang/String;

    .line 976
    new-array v0, v6, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/MccTable;->LANG_STRINGS:[Ljava/lang/String;

    .line 977
    sput-object v5, Lcom/android/internal/telephony/MccTable;->LANG_STRINGS:[Ljava/lang/String;

    .line 978
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/MccTable;->COUNTRY_CODES:[Ljava/lang/String;

    .line 979
    sput-object v1, Lcom/android/internal/telephony/MccTable;->COUNTRY_CODES:[Ljava/lang/String;

    .line 980
    new-array v0, v8, [S

    sput-object v0, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    .line 981
    const/4 v0, 0x0

    .end local v11           #tzTempLength:I
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .local v0, i:I
    :goto_4
    if-ge v0, v8, :cond_15

    .line 982
    sget-object v11, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    aget-object v12, v7, v0

    invoke-static {v12}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v12

    aput-short v12, v11, v0

    .line 981
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 984
    :cond_15
    new-array v0, v4, [I

    .end local v0           #i:I
    sput-object v0, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    .line 985
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    if-ge v0, v4, :cond_16

    .line 986
    sget-object v11, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget-object v12, v3, v0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aput v12, v11, v0

    .line 985
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 988
    :cond_16
    const-string v0, "MccTable"

    .end local v0           #i:I
    const-string v11, "cust file is successfully load"

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const/4 v0, 0x1

    move-object v15, v9

    .end local v9           #mccTableReader:Ljava/io/FileReader;
    .restart local v15       #mccTableReader:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #tzTemp:[Ljava/lang/String;
    .local v9, tzTemp:[Ljava/lang/String;
    move v10, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .local v0, countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v3

    .end local v3           #indTemp:[Ljava/lang/String;
    .local v2, indTemp:[Ljava/lang/String;
    move v3, v4

    .end local v4           #indTempLength:I
    .local v3, indTempLength:I
    move-object v4, v5

    .end local v5           #langTemp:[Ljava/lang/String;
    .local v4, langTemp:[Ljava/lang/String;
    move v5, v6

    .end local v6           #langTempLength:I
    .local v5, langTempLength:I
    move-object v6, v15

    .end local v15           #mccTableReader:Ljava/io/FileReader;
    .local v6, mccTableReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 960
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .local v3, indTemp:[Ljava/lang/String;
    .local v4, indTempLength:I
    .local v5, langTemp:[Ljava/lang/String;
    .local v6, langTempLength:I
    .local v9, mccTableReader:Ljava/io/FileReader;
    .restart local v10       #tzTemp:[Ljava/lang/String;
    .restart local v11       #tzTempLength:I
    :catchall_1
    move-exception v0

    move-object v15, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .restart local v0       #countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move v2, v11

    .end local v11           #tzTempLength:I
    .local v2, tzTempLength:I
    move-object v11, v15

    goto :goto_3

    .end local v2           #tzTempLength:I
    .restart local v11       #tzTempLength:I
    :catchall_2
    move-exception v2

    move-object v15, v2

    move v2, v11

    .end local v11           #tzTempLength:I
    .restart local v2       #tzTempLength:I
    move-object v11, v15

    goto/16 :goto_3

    .line 956
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .local v2, countryTempLength:I
    .restart local v11       #tzTempLength:I
    :catch_16
    move-exception v0

    move-object v15, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .restart local v0       #countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v15

    goto/16 :goto_2

    .line 953
    .end local v0           #countryTemp:[Ljava/lang/String;
    .local v1, countryTemp:[Ljava/lang/String;
    .restart local v2       #countryTempLength:I
    :catch_17
    move-exception v0

    move-object v15, v0

    move-object v0, v1

    .end local v1           #countryTemp:[Ljava/lang/String;
    .restart local v0       #countryTemp:[Ljava/lang/String;
    move v1, v2

    .end local v2           #countryTempLength:I
    .local v1, countryTempLength:I
    move-object v2, v15

    goto/16 :goto_1
.end method

.method private static setLocaleFromMccIfNeeded(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "mcc"

    .prologue
    .line 790
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v1

    .line 791
    .local v1, language:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, country:Ljava/lang/String;
    const-string v2, "MccTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locale set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method public static setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "language"
    .parameter "country"

    .prologue
    const/4 v11, 0x5

    .line 721
    const-string v8, "persist.sys.language"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 722
    .local v6, l:Ljava/lang/String;
    const-string v8, "persist.sys.country"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 724
    .local v3, c:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 728
    if-nez p2, :cond_2

    .line 729
    const-string p2, ""

    .line 731
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 733
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 736
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v7

    .line 737
    .local v7, locales:[Ljava/lang/String;
    array-length v0, v7

    .line 738
    .local v0, N:I
    const/4 v2, 0x0

    .line 739
    .local v2, bestMatch:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v0, :cond_5

    .line 741
    aget-object v8, v7, v5

    if-eqz v8, :cond_7

    aget-object v8, v7, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v11, :cond_7

    aget-object v8, v7, v5

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 743
    aget-object v8, v7, v5

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 744
    aget-object v2, v7, v5

    .line 751
    :cond_5
    if-eqz v2, :cond_0

    .line 752
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 753
    .local v1, am:Landroid/app/IActivityManager;
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 754
    .local v4, config:Landroid/content/res/Configuration;
    new-instance v8, Ljava/util/Locale;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x5

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 756
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 757
    invoke-interface {v1, v4}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 759
    .end local v0           #N:I
    .end local v1           #am:Landroid/app/IActivityManager;
    .end local v2           #bestMatch:Ljava/lang/String;
    .end local v4           #config:Landroid/content/res/Configuration;
    .end local v5           #i:I
    .end local v7           #locales:[Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 746
    .restart local v0       #N:I
    .restart local v2       #bestMatch:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v7       #locales:[Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_7

    .line 747
    aget-object v2, v7, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private static setTimezoneFromMccIfNeeded(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "mcc"

    .prologue
    .line 771
    const-string v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 772
    .local v1, timezone:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 773
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 774
    .local v2, zoneId:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 776
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 778
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 779
    const-string v3, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timezone set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v2           #zoneId:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static setWifiChannelsFromMcc(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "mcc"

    .prologue
    .line 804
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->wifiChannelsForMcc(I)I

    move-result v1

    .line 805
    .local v1, wifiChannels:I
    if-eqz v1, :cond_0

    .line 806
    const-string v2, "MccTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI_NUM_ALLOWED_CHANNELS set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 809
    .local v0, wM:Landroid/net/wifi/WifiManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setNumAllowedChannels(IZ)Z

    .line 811
    .end local v0           #wM:Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method public static smallestDigitsMccForMnc(I)I
    .locals 5
    .parameter "mcc"

    .prologue
    .line 636
    sget-boolean v3, Lcom/android/internal/telephony/MccTable;->mCustMccTableInitial:Z

    if-nez v3, :cond_0

    .line 637
    invoke-static {}, Lcom/android/internal/telephony/MccTable;->loadCustMccTable()Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/telephony/MccTable;->mCustMccTableUsed:Z

    .line 640
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v4, p0

    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .line 641
    .local v1, index:I
    if-gez v1, :cond_1

    .line 642
    const/4 v3, 0x2

    .line 646
    :goto_0
    return v3

    .line 644
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v3, v1

    .line 645
    .local v0, indCode:I
    ushr-int/lit8 v3, v0, 0x9

    and-int/lit8 v2, v3, 0x3

    .local v2, smDig:I
    move v3, v2

    .line 646
    goto :goto_0
.end method

.method public static updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "mccmnc"

    .prologue
    const-string v6, "MccTable"

    .line 676
    sget-boolean v4, Lcom/android/internal/telephony/MccTable;->mCustMccTableInitial:Z

    if-nez v4, :cond_0

    .line 677
    invoke-static {}, Lcom/android/internal/telephony/MccTable;->loadCustMccTable()Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/telephony/MccTable;->mCustMccTableUsed:Z

    .line 680
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 684
    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 685
    .local v2, mcc:I
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 691
    .local v3, mnc:I
    const-string v4, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMccMncConfiguration: mcc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    if-eqz v2, :cond_1

    .line 694
    invoke-static {p0, v2}, Lcom/android/internal/telephony/MccTable;->setTimezoneFromMccIfNeeded(Landroid/content/Context;I)V

    .line 695
    invoke-static {p0, v2}, Lcom/android/internal/telephony/MccTable;->setLocaleFromMccIfNeeded(Landroid/content/Context;I)V

    .line 696
    invoke-static {p0, v2}, Lcom/android/internal/telephony/MccTable;->setWifiChannelsFromMcc(Landroid/content/Context;I)V

    .line 699
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 700
    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v2, :cond_2

    .line 701
    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    .line 703
    :cond_2
    if-eqz v3, :cond_3

    .line 704
    iput v3, v0, Landroid/content/res/Configuration;->mnc:I

    .line 706
    :cond_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 711
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    :cond_4
    :goto_0
    return-void

    .line 686
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 687
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "MccTable"

    const-string v4, "Error parsing IMSI"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 707
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #mcc:I
    .restart local v3       #mnc:I
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 708
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MccTable"

    const-string v4, "Can\'t update configuration"

    invoke-static {v6, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wifiChannelsForMcc(I)I
    .locals 5
    .parameter "mcc"

    .prologue
    .line 655
    sget-boolean v3, Lcom/android/internal/telephony/MccTable;->mCustMccTableInitial:Z

    if-nez v3, :cond_0

    .line 656
    invoke-static {}, Lcom/android/internal/telephony/MccTable;->loadCustMccTable()Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/telephony/MccTable;->mCustMccTableUsed:Z

    .line 659
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v4, p0

    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .line 660
    .local v1, index:I
    if-gez v1, :cond_1

    .line 661
    const/4 v3, 0x0

    .line 665
    :goto_0
    return v3

    .line 663
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v3, v1

    .line 664
    .local v0, indCode:I
    ushr-int/lit8 v3, v0, 0xb

    and-int/lit8 v2, v3, 0xf

    .local v2, wifi:I
    move v3, v2

    .line 665
    goto :goto_0
.end method
