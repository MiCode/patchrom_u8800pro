.class public final Lcom/android/internal/telephony/gsm/SIMRecords;
.super Lcom/android/internal/telephony/UiccApplicationRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SIMRecords$1;,
        Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;
    }
.end annotation


# static fields
.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field private static final DBG:Z = true

.field private static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_OPL_RECORDS_DONE:I = 0x22

.field private static final EVENT_GET_ALL_PNN_RECORDS_DONE:I = 0x23

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x21

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field private static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN:I = 0x24

.field private static final EVENT_GET_SPN_CPHS_DONE:I = 0x25

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_SPN_SHORT_CPHS_DONE:I = 0x26

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_CPHS_MWIS_DONE:I = 0x28

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SET_MWIS_DONE:I = 0x27

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final MCCMNC_CODES_HAVING_2DIGITS_MNC:[Ljava/lang/String; = null

.field private static final MCCMNC_CODES_HAVING_2DIGITS_MNC_ZERO_PREFIX_RELIANCE:[Ljava/lang/String; = null

.field private static final NAME_INDEX:I = 0x1

.field private static final NUMERIC_INDEX:I = 0x2

.field private static final NUM_MATCH_INDEX:I = 0x3

.field private static final NUM_MATCH_SHORT_INDEX:I = 0x4

.field private static final SMS_7BIT_ENABLED_INDEX:I = 0x5

.field private static final SMS_CODING_NATIONAL_INDEX:I = 0x6

.field static final SPN_RULE_SHOW_PLMN:I = 0x2

.field static final SPN_RULE_SHOW_SPN:I = 0x1

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI_PLMN_LIST:I = 0x80


# instance fields
.field private FDNVALUE:Ljava/lang/String;

.field allPnnDataLongName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field allPnnDataShortName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field callForwardingEnabled:Z

.field efCPHS_MWI:[B

.field efMWIS:[B

.field private mCphsInfo:[B

.field mCspPlmnEnabled:Z

.field mEfCff:[B

.field mEfCfis:[B

.field mEons:Lcom/android/internal/telephony/gsm/Eons;

.field private mPlmn:[I

.field mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

.field mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

.field oplPlmnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field oplPnnNumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pnnHomeName:Ljava/lang/String;

.field spdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spnDisplayCondition:I

.field private spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

.field sstFdnValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "40503"

    aput-object v1, v0, v2

    const-string v1, "40504"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_2DIGITS_MNC_ZERO_PREFIX_RELIANCE:[Ljava/lang/String;

    .line 204
    const/16 v0, 0x76

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "40400"

    aput-object v1, v0, v2

    const-string v1, "40401"

    aput-object v1, v0, v3

    const-string v1, "40402"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "40403"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "40404"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "40405"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "40407"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "40409"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "40410"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "40411"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "40412"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "40413"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "40414"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "40415"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "40416"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "40417"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "40418"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "40419"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "40420"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "40421"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "40422"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "40424"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "40425"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "40427"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "40428"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "40429"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "40430"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "40431"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "40433"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "40434"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "40435"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "40436"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "40437"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "40438"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "40440"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "40441"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "40442"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "40443"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "40444"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "40445"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "40446"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "40449"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "40450"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "40451"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "40452"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "40453"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "40454"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "40455"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "40456"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "40457"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "40458"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "40459"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "40460"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "40462"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "40464"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "40466"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "40467"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "40468"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "40469"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "40470"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "40471"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "40472"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "40473"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "40474"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "40475"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "40476"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "40477"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "40478"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "40479"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "40480"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "40481"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "40482"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "40483"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "40484"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "40485"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "40486"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "40487"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "40488"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "40489"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "40490"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "40491"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "40492"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "40493"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "40494"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "40495"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "40496"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "40497"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "40498"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "40501"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "40505"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "40506"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "40507"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "40508"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "40509"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "40510"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "40511"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "40512"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "40513"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "40514"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "40515"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "40517"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "40518"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "40519"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "40520"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "40521"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "40522"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "40523"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "40524"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "40548"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "40551"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "40552"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "40553"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "40554"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "40555"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "40556"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "40566"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "40567"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "40570"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_2DIGITS_MNC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "parent"
    .parameter "ur"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 227
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/android/internal/telephony/UiccApplicationRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/UiccRecords;)V

    .line 95
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPlmn:[I

    .line 96
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->allPnnDataLongName:Ljava/util/ArrayList;

    .line 97
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->allPnnDataShortName:Ljava/util/ArrayList;

    .line 98
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplPlmnList:Ljava/util/ArrayList;

    .line 99
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplPnnNumList:Ljava/util/ArrayList;

    .line 104
    const-string/jumbo v0, "true"

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->FDNVALUE:Ljava/lang/String;

    .line 118
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 121
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 122
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 123
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 124
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 129
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 131
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 229
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 231
    new-instance v0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    .line 232
    new-instance v0, Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SpnOverride;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 234
    new-instance v0, Lcom/android/internal/telephony/gsm/Eons;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/Eons;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    .line 236
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 239
    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->resetRecords()V

    .line 246
    return-void

    .line 95
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private checkGlobalAutoMatchParam()V
    .locals 15

    .prologue
    .line 1497
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 1500
    .local v6, currentImsi:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1503
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$NumMatchs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "numeric"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "num_match"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "num_match_short"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "sms_7bit_enabled"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "sms_coding_national"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1507
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1508
    const-string v0, "GSM"

    const-string v1, "SIMRecords:checkGlobalAutoMatchParam: No matched auto match params in db."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    .end local v3           #where:Ljava/lang/String;
    :goto_0
    return-void

    .line 1514
    .restart local v3       #where:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1515
    .end local v3           #where:Ljava/lang/String;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1516
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1517
    .local v9, name:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1518
    .local v12, numeric:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1519
    .local v10, numMatch:I
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1520
    .local v11, numMatchShort:I
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1521
    .local v13, sms7BitEnabled:I
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1522
    .local v14, smsCodingNational:I
    if-nez v11, :cond_1

    .line 1523
    move v11, v10

    .line 1526
    :cond_1
    const-string v0, "gsm.hw.matchnum"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    const-string v0, "gsm.hw.matchnum.short"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    const-string v0, "gsm.sms.7bit.enabled"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    const-string v0, "gsm.sms.coding.national"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIMRecords:checkGlobalAutoMatchParam: after setprop numMatch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.hw.matchnum"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", numMatchShort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.hw.matchnum.short"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sms7BitEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->isSms7BitEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", smsCodingNational = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.sms.coding.national"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1536
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #numMatch:I
    .end local v11           #numMatchShort:I
    .end local v12           #numeric:Ljava/lang/String;
    .end local v13           #sms7BitEnabled:I
    .end local v14           #smsCodingNational:I
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 1537
    .local v8, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIMRecords:checkGlobalAutoMatchParam: global version cause exception!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1539
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private fetchSimRecords()V
    .locals 8

    .prologue
    const/16 v5, 0x6fc5

    const/4 v4, 0x1

    const-string v7, "SIMRecords:fetchSimRecords "

    const-string v6, "GSM"

    .line 1571
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 1574
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIMRecords:fetchSimRecords "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Ljava/lang/String;Landroid/os/Message;)V

    .line 1577
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1579
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1580
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1584
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v1, 0x6f40

    const/16 v2, 0x6f4a

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1586
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1589
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1590
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1592
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1593
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1596
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1597
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1604
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f11

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1607
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1611
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 1613
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1614
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1616
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v5, v4, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1617
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1619
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fc6

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1620
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1622
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1623
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1625
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f14

    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1626
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1628
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f18

    const/16 v2, 0x26

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1629
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1631
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1632
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1634
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1635
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1637
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1638
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1658
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIMRecords:fetchSimRecords "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    return-void
.end method

.method private fillOPLArrayList(Ljava/util/ArrayList;)V
    .locals 12
    .parameter "cacheList"

    .prologue
    const-string v11, "GSM"

    .line 2087
    if-nez p1, :cond_1

    .line 2126
    :cond_0
    :goto_0
    return-void

    .line 2091
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2092
    .local v1, count:I
    const/4 v4, 0x0

    .line 2093
    .local v4, ind:I
    const/4 v5, 0x0

    .line 2094
    .local v5, oplDataPnnNum:I
    const/4 v8, 0x6

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    .line 2096
    .local v6, simPlmn:[I
    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number of OPL records = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplPlmnList:Ljava/util/ArrayList;

    .line 2100
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplPnnNumList:Ljava/util/ArrayList;

    .line 2102
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_0

    .line 2103
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v2, v0

    .line 2107
    .local v2, data:[B
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getPlmn([B)[I

    move-result-object v6

    .line 2110
    const/4 v8, 0x7

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    int-to-short v5, v8

    .line 2112
    const/4 v8, 0x6

    new-array v7, v8, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, v6, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget v9, v6, v9

    aput v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x2

    aget v9, v6, v9

    aput v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    aget v9, v6, v9

    aput v9, v7, v8

    const/4 v8, 0x4

    const/4 v9, 0x4

    aget v9, v6, v9

    aput v9, v7, v8

    const/4 v8, 0x5

    const/4 v9, 0x5

    aget v9, v6, v9

    aput v9, v7, v8

    .line 2114
    .local v7, simPlmnClone:[I
    if-lez v5, :cond_2

    const/16 v8, 0xff

    if-ge v5, v8, :cond_2

    .line 2116
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplPlmnList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2117
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplPnnNumList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2119
    const-string v9, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TMO pnn] oplDataPnnNum:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplPnnNumList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2102
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2122
    .end local v2           #data:[B
    .end local v7           #simPlmnClone:[I
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 2124
    .local v3, exc:Ljava/lang/RuntimeException;
    const-string v8, "GSM"

    const-string v8, "Exception parsing opl"

    invoke-static {v11, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2094
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private fillPNNArrayList(Ljava/util/ArrayList;)V
    .locals 12
    .parameter "cacheList"

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v9, -0x1

    const-string v10, "GSM"

    .line 2044
    if-nez p1, :cond_1

    .line 2083
    :cond_0
    return-void

    .line 2048
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2049
    .local v1, count:I
    const/4 v4, 0x0

    .line 2051
    .local v4, length:I
    new-instance v5, Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->allPnnDataLongName:Ljava/util/ArrayList;

    .line 2052
    new-instance v5, Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->allPnnDataShortName:Ljava/util/ArrayList;

    .line 2055
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->allPnnDataLongName:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2056
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->allPnnDataShortName:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2058
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 2059
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 2061
    .local v2, data:[B
    const/4 v5, 0x0

    aget-byte v5, v2, v5

    if-eq v5, v9, :cond_3

    aget-byte v5, v2, v11

    if-eq v5, v9, :cond_3

    .line 2063
    aget-byte v4, v2, v11

    .line 2065
    const-string v5, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PNN longname length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->allPnnDataLongName:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x2

    invoke-static {v2, v7, v4}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2069
    add-int/lit8 v5, v4, 0x2

    aget-byte v5, v2, v5

    if-eq v5, v9, :cond_2

    add-int/lit8 v5, v4, 0x3

    aget-byte v5, v2, v5

    if-eq v5, v9, :cond_2

    .line 2071
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->allPnnDataShortName:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v4, 0x4

    add-int/lit8 v8, v4, 0x3

    aget-byte v8, v2, v8

    invoke-static {v2, v7, v8}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2058
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2075
    :cond_2
    const-string v5, "GSM"

    const-string v5, "EF_PNN: No short Name"

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2080
    :cond_3
    const-string v5, "GSM"

    const-string v5, "EF_PNN: Invalid EF_PNN Data"

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getPlmn([B)[I
    .locals 7
    .parameter "record"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2129
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPlmn:[I

    aget-byte v1, p1, v3

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v3

    .line 2130
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPlmn:[I

    aget-byte v1, p1, v3

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v4

    .line 2131
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPlmn:[I

    aget-byte v1, p1, v4

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v5

    .line 2133
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPlmn:[I

    const/4 v1, 0x3

    aget-byte v2, p1, v5

    and-int/lit8 v2, v2, 0xf

    aput v2, v0, v1

    .line 2134
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPlmn:[I

    const/4 v1, 0x4

    aget-byte v2, p1, v5

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    aput v2, v0, v1

    .line 2135
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPlmn:[I

    aget-byte v1, p1, v4

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v6

    .line 2142
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPlmn:[I

    aget v0, v0, v6

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPlmn:[I

    aput v3, v0, v6

    .line 2143
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPlmn:[I

    return-object v0
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 8
    .parameter "start"
    .parameter "ar"

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, "gsm.sim.operator.alpha"

    .line 1738
    if-eqz p1, :cond_0

    .line 1739
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 1742
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$1;->$SwitchMap$com$android$internal$telephony$gsm$SIMRecords$Get_Spn_Fsm_State:[I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1808
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 1810
    :goto_0
    return-void

    .line 1744
    :pswitch_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 1746
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v3, 0x6f46

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1748
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1750
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 1753
    :pswitch_1
    if-eqz p2, :cond_1

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1754
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .line 1755
    .local v1, data:[B
    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 1756
    array-length v2, v1

    sub-int/2addr v2, v4

    invoke-static {v1, v4, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 1758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spnDisplayCondition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1760
    const-string v2, "gsm.sim.operator.alpha"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-static {v7, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 1764
    .end local v1           #data:[B
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v3, 0x6f14

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1766
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1768
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 1772
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto :goto_0

    .line 1776
    :pswitch_2
    if-eqz p2, :cond_2

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1777
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .line 1778
    .restart local v1       #data:[B
    array-length v2, v1

    sub-int/2addr v2, v4

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 1781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN_CPHS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1782
    const-string v2, "gsm.sim.operator.alpha"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-static {v7, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 1786
    .end local v1           #data:[B
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v3, 0x6f18

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1788
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1790
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 1794
    :pswitch_3
    if-eqz p2, :cond_3

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 1795
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .line 1796
    .restart local v1       #data:[B
    array-length v2, v1

    sub-int/2addr v2, v4

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 1799
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1800
    const-string v2, "gsm.sim.operator.alpha"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-static {v7, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    .end local v1           #data:[B
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 1802
    :cond_3
    const-string v2, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1742
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleEfCspData([B)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    const-string v5, "GSM"

    .line 1930
    array-length v3, p1

    div-int/lit8 v1, v3, 0x2

    .line 1932
    .local v1, usedCspGroups:I
    const/16 v2, -0x40

    .line 1934
    .local v2, valueAddedServicesGroup:B
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 1935
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1936
    mul-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    if-ne v3, v2, :cond_1

    .line 1937
    const-string v3, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CSP] found ValueAddedServicesGroup, value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    .line 1943
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 1955
    :goto_1
    return-void

    .line 1945
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 1948
    const-string v3, "GSM"

    const-string v3, "[CSP] Set Automatic Network Selection"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1935
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1954
    :cond_2
    const-string v3, "GSM"

    const-string v3, "[CSP] Value Added Service Group (0xC0), not found!"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleFileUpdate(I)V
    .locals 5
    .parameter "efid"

    .prologue
    .line 1271
    sparse-switch p1, :sswitch_data_0

    .line 1322
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1323
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 1326
    :goto_0
    return-void

    .line 1273
    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1274
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v1, 0x6fc7

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1278
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1279
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v1, 0x6f17

    const/16 v2, 0x6f4a

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1283
    :sswitch_2
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1284
    const-string v0, "GSM"

    const-string v1, "CSP: SIM Refresh called for EF_CSP_CPHS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 1289
    :sswitch_3
    const-string v0, "[EONS] SIM Refresh for EF_OPL"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1290
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1291
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fc6

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_0

    .line 1295
    :sswitch_4
    const-string v0, "[EONS] SIM Refresh for EF_PNN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1296
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1297
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fc5

    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1301
    :sswitch_5
    const-string v0, "[EONS] SIM Refresh for EF_SPN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1302
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1303
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f46

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1307
    :sswitch_6
    const-string v0, "[EONS] SIM Refresh for EF_SPN_CPHS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1308
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1309
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f14

    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1313
    :sswitch_7
    const-string v0, "[EONS] SIM Refresh for EF_SPN_SHORT_CPHS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1314
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1315
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f18

    const/16 v2, 0x26

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1271
    :sswitch_data_0
    .sparse-switch
        0x6f14 -> :sswitch_6
        0x6f15 -> :sswitch_2
        0x6f17 -> :sswitch_1
        0x6f18 -> :sswitch_7
        0x6f46 -> :sswitch_5
        0x6fc5 -> :sswitch_4
        0x6fc6 -> :sswitch_3
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSimRefresh(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const/4 v4, 0x1

    const-string/jumbo v7, "true"

    const-string v6, "ro.config.hwft_simrefresh"

    const-string v5, "false"

    .line 1329
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/IccRefreshResponse;

    .line 1330
    .local v0, state:Lcom/android/internal/telephony/IccRefreshResponse;
    if-nez v0, :cond_1

    .line 1331
    const-string v1, "handleSimRefresh received without input"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1335
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$1;->$SwitchMap$com$android$internal$telephony$IccRefreshResponse$Result:[I

    iget-object v2, v0, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:Lcom/android/internal/telephony/IccRefreshResponse$Result;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRefreshResponse$Result;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1372
    const-string v1, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1337
    :pswitch_0
    const-string v1, "handleSimRefresh with SIM_FILE_UPDATED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1338
    iget v1, v0, Lcom/android/internal/telephony/IccRefreshResponse;->efId:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleFileUpdate(I)V

    .line 1340
    const-string v1, "notify mIccRefreshRegistrants"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1341
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 1345
    :pswitch_1
    const-string v1, "handleSimRefresh with SIM_INIT, Delay SIM IO until SIM_READY"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1347
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1349
    const-string v1, "ro.config.hwft_simrefresh"

    const-string v1, "false"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1350
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->bNeedSendRefreshBC:Z

    goto :goto_0

    .line 1355
    :pswitch_2
    const-string v1, "handleSimRefresh with SIM_RESET"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1356
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1365
    const-string v1, "ro.config.hwft_simrefresh"

    const-string v1, "false"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1366
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->bNeedSendRefreshBC:Z

    goto :goto_0

    .line 1335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleSms([B)V
    .locals 8
    .parameter "ba"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1378
    aget-byte v3, p1, v6

    if-eqz v3, :cond_0

    .line 1379
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_0
    aget-byte v3, p1, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1384
    array-length v1, p1

    .line 1388
    .local v1, n:I
    sub-int v3, v1, v7

    new-array v2, v3, [B

    .line 1389
    .local v2, pdu:[B
    sub-int v3, v1, v7

    invoke-static {p1, v7, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1390
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 1392
    .local v0, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3, v0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1394
    .end local v0           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v1           #n:I
    .end local v2           #pdu:[B
    :cond_1
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 12
    .parameter "messages"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1398
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1400
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1401
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v1, v0

    .line 1403
    .local v1, ba:[B
    aget-byte v7, v1, v10

    if-eqz v7, :cond_0

    .line 1404
    const-string v7, "ENF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v1, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_0
    aget-byte v7, v1, v10

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 1410
    array-length v5, v1

    .line 1414
    .local v5, n:I
    sub-int v7, v5, v11

    new-array v6, v7, [B

    .line 1415
    .local v6, pdu:[B
    sub-int v7, v5, v11

    invoke-static {v1, v11, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1416
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v4

    .line 1418
    .local v4, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1423
    aput-byte v11, v1, v10

    .line 1400
    .end local v4           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v5           #n:I
    .end local v6           #pdu:[B
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1431
    .end local v1           #ba:[B
    :cond_2
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1868
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    if-nez v0, :cond_0

    move v0, v2

    .line 1869
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 5
    .parameter "plmn"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1696
    if-nez p1, :cond_0

    move v2, v3

    .line 1709
    :goto_0
    return v2

    .line 1698
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 1699
    goto :goto_0

    .line 1702
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 1703
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1704
    .local v1, spdiNet:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 1705
    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #spdiNet:Ljava/lang/String;
    :cond_3
    move v2, v3

    .line 1709
    goto :goto_0
.end method

.method private onSimReady()V
    .locals 2

    .prologue
    .line 1561
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 1563
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->bNeedSendRefreshBC:Z

    if-eqz v0, :cond_0

    const-string v0, "ro.config.hwft_simrefresh"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1568
    :cond_0
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 7
    .parameter "data"

    .prologue
    .line 1819
    new-instance v4, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v5, 0x0

    array-length v6, p1

    invoke-direct {v4, p1, v5, v6}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1821
    .local v4, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v2, 0x0

    .line 1824
    .local v2, plmnEntries:[B
    const/4 v3, 0x2

    .line 1832
    .local v3, tagSpdiPlmnListOffset:B
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/SimTlv;->incrementCurOffset(B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1833
    const-string v5, "GSM"

    const-string v6, "SPDI: invalid call to incrementCurOffset."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_0
    return-void

    .line 1839
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1840
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_1

    .line 1841
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    .line 1846
    :cond_3
    if-eqz v2, :cond_0

    .line 1850
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    div-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 1852
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v5, v0, 0x2

    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 1854
    const/4 v5, 0x3

    invoke-static {v2, v0, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 1857
    .local v1, plmnCode:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_4

    .line 1858
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_SPDI network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1859
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1852
    :cond_4
    add-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 1
    .parameter "carrier"

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 1549
    :cond_0
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 1
    .parameter "spn"

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    .line 1555
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1556
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1558
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 249
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disposing SIMRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->resetRecords()V

    .line 253
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 256
    const-string v0, "GSM"

    const-string v1, "SIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method public getAllPnnLongName()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->allPnnDataLongName:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getDisplayRule(Ljava/lang/String;)I
    .locals 3
    .parameter "plmn"

    .prologue
    .line 1672
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1675
    :cond_0
    const/4 v0, 0x2

    .line 1689
    .local v0, rule:I
    :cond_1
    :goto_0
    return v0

    .line 1676
    .end local v0           #rule:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1677
    const/4 v0, 0x1

    .line 1678
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1680
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1683
    .end local v0           #rule:I
    :cond_3
    const/4 v0, 0x2

    .line 1684
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 1686
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getEons()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons;->getEons()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEonsForAvailableNetworks(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1901
    .local p1, avlNetworks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/Eons;->getEonsForAvailableNetworks(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getOplPlmnlist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplPlmnList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOplPnnNumList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplPnnNumList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSIMOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-nez v0, :cond_1

    .line 543
    :cond_0
    const/4 v0, 0x0

    .line 548
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "GSM"

    .line 1958
    const/4 v2, 0x0

    .line 1959
    .local v2, voiceMailWaiting:Z
    const/4 v0, 0x0

    .line 1961
    .local v0, countVoiceMessages:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v3, :cond_3

    .line 1965
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    move v2, v5

    .line 1966
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    aget-byte v3, v3, v5

    and-int/lit16 v0, v3, 0xff

    .line 1968
    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 1970
    const/4 v0, -0x1

    .line 1972
    :cond_0
    const-string v3, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " VoiceMessageCount from SIM MWIS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v4

    .line 1965
    goto :goto_0

    .line 1973
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    if-eqz v3, :cond_1

    .line 1975
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    aget-byte v3, v3, v4

    and-int/lit8 v1, v3, 0xf

    .line 1978
    .local v1, indicator:I
    const/16 v3, 0xa

    if-ne v1, v3, :cond_5

    .line 1980
    const/4 v0, -0x1

    .line 1984
    :cond_4
    :goto_2
    const-string v3, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " VoiceMessageCount from SIM CPHS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1981
    :cond_5
    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    .line 1982
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .parameter "msg"

    .prologue
    .line 558
    const/16 v18, 0x0

    .line 560
    .local v18, isRecordLoadResponse:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mDestroyed:Z

    move v4, v0

    if-eqz v4, :cond_1

    .line 561
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] while being destroyed. Ignoring."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 566
    .restart local p1
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v4, :pswitch_data_0

    .line 1264
    .end local p1
    :cond_2
    :goto_1
    :pswitch_0
    if-eqz v18, :cond_0

    .line 1265
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    goto :goto_0

    .line 568
    .restart local p1
    :pswitch_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onSimReady()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1259
    .end local p1
    :catch_0
    move-exception v4

    move-object v15, v4

    .line 1261
    .local v15, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v4, "GSM"

    const-string v5, "Exception parsing SIM record"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1264
    if-eqz v18, :cond_0

    goto :goto_2

    .line 573
    .end local v15           #exc:Ljava/lang/RuntimeException;
    .restart local p1
    :pswitch_2
    const/16 v18, 0x1

    .line 578
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v4, v0

    const/16 v5, 0x6fcb

    const/4 v6, 0x1

    const/16 v7, 0x20

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 579
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v4, v0

    const/16 v5, 0x6f13

    const/16 v6, 0x18

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 581
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 584
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 586
    .local v11, ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    .line 587
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception querying IMSI, Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1264
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local p1
    :catchall_0
    move-exception v4

    if-eqz v18, :cond_3

    .line 1265
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    .line 1264
    :cond_3
    throw v4

    .line 591
    .restart local v11       #ar:Landroid/os/AsyncResult;
    .restart local p1
    :cond_4
    :try_start_4
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-le v4, v5, :cond_6

    .line 596
    :cond_5
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid IMSI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    .line 601
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_7

    .line 602
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "xxxxxxx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_a

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 607
    .local v21, mcc:Ljava/lang/String;
    const-string v4, "404"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "405"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 608
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 609
    .local v24, mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_2DIGITS_MNC:[Ljava/lang/String;

    .local v12, arr$:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    aget-object v23, v12, v16

    .line 610
    .local v23, mccmnc:Ljava/lang/String;
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 611
    const/4 v4, 0x2

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 618
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v20           #len$:I
    .end local v21           #mcc:Ljava/lang/String;
    .end local v23           #mccmnc:Ljava/lang/String;
    .end local v24           #mccmncCode:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-nez v4, :cond_c

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v4, :cond_c

    .line 623
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 624
    .local v22, mccStr:Ljava/lang/String;
    const-string v4, "404"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "405"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 625
    :cond_b
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 637
    .end local v22           #mccStr:Ljava/lang/String;
    :cond_c
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_d

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v7, v0

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 641
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 609
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v16       #i$:I
    .restart local v20       #len$:I
    .restart local v21       #mcc:Ljava/lang/String;
    .restart local v23       #mccmnc:Ljava/lang/String;
    .restart local v24       #mccmncCode:Ljava/lang/String;
    :cond_e
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 627
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v20           #len$:I
    .end local v21           #mcc:Ljava/lang/String;
    .end local v23           #mccmnc:Ljava/lang/String;
    .end local v24           #mccmncCode:Ljava/lang/String;
    .restart local v22       #mccStr:Ljava/lang/String;
    :cond_f
    :try_start_7
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 628
    .local v21, mcc:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    .line 630
    .end local v21           #mcc:I
    .end local v22           #mccStr:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v14, v4

    .line 631
    .local v14, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    :try_start_8
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 632
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 646
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local p1
    :pswitch_3
    const/16 v18, 0x1

    .line 648
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 649
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 651
    .local v13, data:[B
    const/16 v19, 0x0

    .line 652
    .local v19, isValidMbdn:Z
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_10

    .line 654
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MBI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v4, 0x0

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xff

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    .line 661
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    move v4, v0

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    move v4, v0

    const/16 v5, 0xff

    if-eq v4, v5, :cond_10

    .line 662
    const-string v4, "GSM"

    const-string v5, "Got valid mailbox number for MBDN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/16 v19, 0x1

    .line 668
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 670
    if-eqz v19, :cond_11

    .line 672
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6fc7

    const/16 v6, 0x6fc8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    move v7, v0

    const/4 v8, 0x6

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 677
    :cond_11
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 685
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v19           #isValidMbdn:Z
    .restart local p1
    :pswitch_4
    const/16 v18, 0x1

    .line 687
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 689
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_13

    .line 691
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or missing EF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    const/16 v7, 0xb

    if-ne v6, v7, :cond_12

    const-string v6, "[MAILBOX]"

    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 701
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 702
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 691
    :cond_12
    const-string v6, "[MBDN]"

    goto :goto_5

    .line 709
    :cond_13
    iget-object v5, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    .line 711
    .local v5, adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v4, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    const/16 v8, 0xb

    if-ne v7, v8, :cond_14

    const-string v7, " EF[MAILBOX]"

    :goto_6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    const/4 v6, 0x6

    if-ne v4, v6, :cond_15

    .line 718
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 719
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v5, v0

    .end local v5           #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 711
    .restart local v5       #adn:Lcom/android/internal/telephony/AdnRecord;
    :cond_14
    const-string v7, " EF[MBDN]"

    goto :goto_6

    .line 726
    :cond_15
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 727
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 731
    .end local v5           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const/16 v18, 0x1

    .line 733
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 735
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_16

    .line 736
    const-string v4, "GSM"

    const-string v5, "Invalid or missing EF[MSISDN]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 740
    :cond_16
    iget-object v5, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    .line 742
    .restart local v5       #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 743
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 745
    const-string v4, "GSM"

    const-string v5, "MSISDN: xxxxxxx"

    .end local v5           #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 749
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    const/16 v18, 0x0

    .line 750
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 752
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 753
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 755
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 760
    .end local v11           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_7
    const/16 v18, 0x1

    .line 762
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 763
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 765
    .restart local v13       #data:[B
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MWIS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_17

    .line 768
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_MWIS_DONE exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 773
    :cond_17
    const/4 v4, 0x0

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xff

    if-ne v4, v5, :cond_18

    .line 774
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Uninitialized record MWIS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 778
    :cond_18
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    goto/16 :goto_1

    .line 783
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 784
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Message;

    .line 785
    .local v25, onComplete:Landroid/os/Message;
    if-eqz v25, :cond_2

    .line 788
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_19

    .line 789
    invoke-static/range {v25 .. v25}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v6, "SIM update failed for EF_MWIS/EF_CPHS_MWIS"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 795
    :goto_7
    invoke-virtual/range {v25 .. v25}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 793
    :cond_19
    invoke-static/range {v25 .. v25}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_7

    .line 800
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v25           #onComplete:Landroid/os/Message;
    :pswitch_9
    const/16 v18, 0x1

    .line 801
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 802
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 804
    .restart local v13       #data:[B
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CPHS_MWI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1a

    .line 807
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 811
    :cond_1a
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    goto/16 :goto_1

    .line 815
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :pswitch_a
    const/16 v18, 0x1

    .line 817
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 818
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 820
    .restart local v13       #data:[B
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 824
    const/4 v4, 0x0

    array-length v5, v13

    invoke-static {v13, v4, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 826
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    .line 833
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :pswitch_b
    const/16 v18, 0x1

    .line 835
    :try_start_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 836
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 838
    .restart local v13       #data:[B
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v4, :cond_22

    .line 862
    :try_start_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1d

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1d

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 865
    .local v21, mcc:Ljava/lang/String;
    const-string v4, "404"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "405"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 866
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 867
    .restart local v24       #mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_2DIGITS_MNC:[Ljava/lang/String;

    .restart local v12       #arr$:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v20, v0

    .restart local v20       #len$:I
    const/16 v16, 0x0

    .restart local v16       #i$:I
    :goto_8
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_1d

    aget-object v23, v12, v16

    .line 868
    .restart local v23       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 869
    const/4 v4, 0x2

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 875
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v20           #len$:I
    .end local v21           #mcc:Ljava/lang/String;
    .end local v23           #mccmnc:Ljava/lang/String;
    .end local v24           #mccmncCode:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_20

    .line 876
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v4, :cond_59

    .line 878
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 879
    .restart local v22       #mccStr:Ljava/lang/String;
    const-string v4, "404"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "405"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 880
    :cond_1f
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    .line 898
    .end local v22           #mccStr:Ljava/lang/String;
    :cond_20
    :goto_9
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_21

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v7, v0

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 906
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkGlobalAutoMatchParam()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_1

    .line 842
    :cond_22
    :try_start_d
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_AD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    array-length v4, v13

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2a

    .line 846
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt AD data on SIM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 862
    :try_start_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_25

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_25

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 865
    .restart local v21       #mcc:Ljava/lang/String;
    const-string v4, "404"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    const-string v4, "405"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 866
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 867
    .restart local v24       #mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_2DIGITS_MNC:[Ljava/lang/String;

    .restart local v12       #arr$:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v20, v0

    .restart local v20       #len$:I
    const/16 v16, 0x0

    .restart local v16       #i$:I
    :goto_a
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_25

    aget-object v23, v12, v16

    .line 868
    .restart local v23       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 869
    const/4 v4, 0x2

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 875
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v20           #len$:I
    .end local v21           #mcc:Ljava/lang/String;
    .end local v23           #mccmnc:Ljava/lang/String;
    .end local v24           #mccmncCode:Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_28

    .line 876
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    if-eqz v4, :cond_5c

    .line 878
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 879
    .restart local v22       #mccStr:Ljava/lang/String;
    const-string v4, "404"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string v4, "405"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 880
    :cond_27
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    .line 898
    .end local v22           #mccStr:Ljava/lang/String;
    :cond_28
    :goto_b
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_29

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v7, v0

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 906
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkGlobalAutoMatchParam()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_1

    .line 850
    :cond_2a
    :try_start_11
    array-length v4, v13

    const/4 v5, 0x3

    if-ne v4, v5, :cond_32

    .line 851
    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 862
    :try_start_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2d

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2d

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 865
    .restart local v21       #mcc:Ljava/lang/String;
    const-string v4, "404"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, "405"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 866
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 867
    .restart local v24       #mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_2DIGITS_MNC:[Ljava/lang/String;

    .restart local v12       #arr$:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v20, v0

    .restart local v20       #len$:I
    const/16 v16, 0x0

    .restart local v16       #i$:I
    :goto_c
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_2d

    aget-object v23, v12, v16

    .line 868
    .restart local v23       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 869
    const/4 v4, 0x2

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 875
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v20           #len$:I
    .end local v21           #mcc:Ljava/lang/String;
    .end local v23           #mccmnc:Ljava/lang/String;
    .end local v24           #mccmncCode:Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_30

    .line 876
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    if-eqz v4, :cond_5f

    .line 878
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 879
    .restart local v22       #mccStr:Ljava/lang/String;
    const-string v4, "404"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    const-string v4, "405"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 880
    :cond_2f
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0

    .line 898
    .end local v22           #mccStr:Ljava/lang/String;
    :cond_30
    :goto_d
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_31

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v7, v0

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 906
    :cond_31
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkGlobalAutoMatchParam()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_1

    .line 855
    :cond_32
    const/4 v4, 0x3

    :try_start_15
    aget-byte v4, v13, v4

    and-int/lit8 v4, v4, 0xf

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 857
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/16 v5, 0xf

    if-ne v4, v5, :cond_33

    .line 858
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 862
    :cond_33
    :try_start_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_36

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_36

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 865
    .restart local v21       #mcc:Ljava/lang/String;
    const-string v4, "404"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    const-string v4, "405"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 866
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 867
    .restart local v24       #mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_2DIGITS_MNC:[Ljava/lang/String;

    .restart local v12       #arr$:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v20, v0

    .restart local v20       #len$:I
    const/16 v16, 0x0

    .restart local v16       #i$:I
    :goto_e
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_36

    aget-object v23, v12, v16

    .line 868
    .restart local v23       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 869
    const/4 v4, 0x2

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 875
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v20           #len$:I
    .end local v21           #mcc:Ljava/lang/String;
    .end local v23           #mccmnc:Ljava/lang/String;
    .end local v24           #mccmncCode:Ljava/lang/String;
    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_39

    .line 876
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    if-eqz v4, :cond_62

    .line 878
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 879
    .restart local v22       #mccStr:Ljava/lang/String;
    const-string v4, "404"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    const-string v4, "405"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 880
    :cond_38
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    .line 898
    .end local v22           #mccStr:Ljava/lang/String;
    :cond_39
    :goto_f
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_3a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_3a

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v7, v0

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 906
    :cond_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkGlobalAutoMatchParam()V

    goto/16 :goto_1

    .line 862
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :catchall_1
    move-exception v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v5, v0

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v5, v0

    if-eqz v5, :cond_3b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3d

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_3d

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 865
    .restart local v21       #mcc:Ljava/lang/String;
    const-string v5, "404"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    const-string v5, "405"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 866
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 867
    .restart local v24       #mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_2DIGITS_MNC:[Ljava/lang/String;

    .restart local v12       #arr$:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v20, v0

    .restart local v20       #len$:I
    const/16 v16, 0x0

    .restart local v16       #i$:I
    :goto_10
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_3d

    aget-object v23, v12, v16

    .line 868
    .restart local v23       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 869
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 875
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v20           #len$:I
    .end local v21           #mcc:Ljava/lang/String;
    .end local v23           #mccmnc:Ljava/lang/String;
    .end local v24           #mccmncCode:Ljava/lang/String;
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v5, v0

    if-eqz v5, :cond_3e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_40

    .line 876
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    if-eqz v5, :cond_56

    .line 878
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 879
    .restart local v22       #mccStr:Ljava/lang/String;
    const-string v5, "404"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    const-string v5, "405"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 880
    :cond_3f
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0

    .line 898
    .end local v22           #mccStr:Ljava/lang/String;
    :cond_40
    :goto_11
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v5, v0

    if-eqz v5, :cond_41

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v8, v0

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 906
    :cond_41
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkGlobalAutoMatchParam()V

    .line 862
    throw v4

    .line 912
    .restart local p1
    :pswitch_c
    const/16 v18, 0x1

    .line 913
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 914
    .restart local v11       #ar:Landroid/os/AsyncResult;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 916
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 919
    .restart local v21       #mcc:Ljava/lang/String;
    const-string v4, "404"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    const-string v4, "405"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 920
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 921
    .restart local v24       #mccmncCode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "reliance"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 922
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_2DIGITS_MNC_ZERO_PREFIX_RELIANCE:[Ljava/lang/String;

    .restart local v12       #arr$:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v20, v0

    .restart local v20       #len$:I
    const/16 v16, 0x0

    .restart local v16       #i$:I
    :goto_12
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    aget-object v23, v12, v16

    .line 923
    .restart local v23       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 924
    const/4 v4, 0x2

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    goto/16 :goto_1

    .line 922
    :cond_44
    add-int/lit8 v16, v16, 0x1

    goto :goto_12

    .line 935
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v20           #len$:I
    .end local v21           #mcc:Ljava/lang/String;
    .end local v23           #mccmnc:Ljava/lang/String;
    .end local v24           #mccmncCode:Ljava/lang/String;
    :pswitch_d
    const/16 v18, 0x1

    .line 937
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 938
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 940
    .restart local v13       #data:[B
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 944
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFF_CPHS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    move-object v4, v0

    if-nez v4, :cond_2

    .line 949
    const/4 v4, 0x0

    aget-byte v4, v13, v4

    and-int/lit8 v4, v4, 0xf

    const/16 v5, 0xa

    if-ne v4, v5, :cond_45

    const/4 v4, 0x1

    :goto_13
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 949
    :cond_45
    const/4 v4, 0x0

    goto :goto_13

    .line 957
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :pswitch_e
    const/16 v18, 0x1

    .line 959
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 960
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 962
    .restart local v13       #data:[B
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 966
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_1

    .line 970
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 971
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 972
    const-string v4, "GSM"

    const-string v5, "SIMRecords update failed"

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 977
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    const/16 v18, 0x1

    .line 979
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 980
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 982
    .restart local v13       #data:[B
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 986
    new-instance v27, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, v13

    move-object/from16 v0, v27

    move-object v1, v13

    move v2, v4

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 988
    .local v27, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_14
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 989
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v4

    const/16 v5, 0x43

    if-ne v4, v5, :cond_46

    .line 990
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    goto/16 :goto_1

    .line 988
    :cond_46
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_14

    .line 999
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v27           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .restart local p1
    :pswitch_11
    const/16 v18, 0x1

    .line 1001
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 1002
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 1005
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1009
    .end local v11           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_12
    const-string v4, "ENF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "marked read: sms "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1014
    :pswitch_13
    const/16 v18, 0x0

    .line 1016
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 1018
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v17, v0

    .line 1020
    .local v17, index:[I
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_47

    move-object/from16 v0, v17

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_48

    .line 1021
    :cond_47
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SIMRecords] Error on SMS_ON_SIM with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    array-length v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1024
    :cond_48
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "READ EF_SMS RECORD index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v17, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v4, v0

    const/16 v5, 0x6f3c

    const/4 v6, 0x0

    aget v6, v17, v6

    const/16 v7, 0x16

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1031
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v17           #index:[I
    .restart local p1
    :pswitch_14
    const/16 v18, 0x0

    .line 1032
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 1033
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_49

    .line 1034
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSms([B)V

    goto/16 :goto_1

    .line 1036
    .restart local p1
    :cond_49
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SIMRecords] Error on GET_SMS with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1042
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_15
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->sstFdnValue:I

    .line 1043
    const/16 v18, 0x1

    .line 1045
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 1046
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1048
    .restart local v13       #data:[B
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 1051
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSstDataFdn([B)V

    .line 1052
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SST: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1057
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :pswitch_16
    const/16 v18, 0x1

    .line 1059
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 1061
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 1065
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 1067
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iCPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1071
    .end local v11           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_17
    const/16 v18, 0x0

    .line 1072
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 1074
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4a

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1079
    :cond_4a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1080
    new-instance v5, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    move-object v6, v0

    invoke-direct {v5, v4, v6}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    .restart local v5       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Message;

    .line 1090
    .local v26, onCphsCompleted:Landroid/os/Message;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4b

    iget-object v4, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_4b

    .line 1091
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    const/4 v6, 0x0

    iput-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1093
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    .line 1095
    const-string v4, "Callback with MBDN successful."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1097
    const/16 v26, 0x0

    .line 1100
    :cond_4b
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v6, v0

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v6, 0x6f17

    const/16 v7, 0x6f4a

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x19

    move-object/from16 v0, p0

    move v1, v10

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1105
    .end local v5           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v26           #onCphsCompleted:Landroid/os/Message;
    .restart local p1
    :cond_4c
    iget-object v4, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 1106
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1108
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1113
    .end local v11           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_18
    const/16 v18, 0x0

    .line 1114
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 1115
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4d

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1122
    :goto_15
    iget-object v4, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 1123
    const-string v4, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1124
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1126
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1119
    .restart local p1
    :cond_4d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set CPHS MailBox with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_15

    .line 1130
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_19
    const/16 v18, 0x0

    .line 1131
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 1132
    .restart local v11       #ar:Landroid/os/AsyncResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim REFRESH with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1133
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 1134
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimRefresh(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1138
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_1a
    const/16 v18, 0x1

    .line 1140
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 1141
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1143
    .restart local v13       #data:[B
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 1147
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFIS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 1153
    const/4 v4, 0x1

    aget-byte v4, v13, v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4e

    const/4 v4, 0x1

    :goto_16
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1153
    :cond_4e
    const/4 v4, 0x0

    goto :goto_16

    .line 1159
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :pswitch_1b
    const/16 v18, 0x1

    .line 1161
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 1163
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4f

    .line 1164
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in fetching EF_CSP data "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1168
    :cond_4f
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1170
    .restart local v13       #data:[B
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CSP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleEfCspData([B)V

    goto/16 :goto_1

    .line 1175
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :pswitch_1c
    const/16 v18, 0x1

    .line 1176
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 1178
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_50

    .line 1179
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EONS] Exception in fetching OPL Records: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/Eons;->resetOplData()V

    goto/16 :goto_1

    .line 1184
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    move-object v4, v0

    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/Eons;->setOplData(Ljava/util/ArrayList;)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1188
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->fillOPLArrayList(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1193
    .end local v11           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_1d
    const/16 v18, 0x1

    .line 1194
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 1196
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_51

    .line 1197
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EONS] Exception in fetching PNN Records: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/Eons;->resetPnnData()V

    goto/16 :goto_1

    .line 1202
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    move-object v4, v0

    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/Eons;->setPnnData(Ljava/util/ArrayList;)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1206
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->fillPNNArrayList(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1211
    .end local v11           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_1e
    const/16 v18, 0x1

    .line 1212
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 1214
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_52

    .line 1215
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EONS] Exception in reading EF_SPN_CPHS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/Eons$CphsType;->LONG:Lcom/android/internal/telephony/gsm/Eons$CphsType;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/Eons;->resetCphsData(Lcom/android/internal/telephony/gsm/Eons$CphsType;)V

    goto/16 :goto_1

    .line 1220
    :cond_52
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1221
    .restart local v13       #data:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/Eons$CphsType;->LONG:Lcom/android/internal/telephony/gsm/Eons$CphsType;

    invoke-virtual {v4, v5, v13}, Lcom/android/internal/telephony/gsm/Eons;->setCphsData(Lcom/android/internal/telephony/gsm/Eons$CphsType;[B)V

    goto/16 :goto_1

    .line 1225
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :pswitch_1f
    const/16 v18, 0x1

    .line 1226
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 1228
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_53

    .line 1229
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EONS] Exception in reading EF_SPN_SHORT_CPHS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/Eons$CphsType;->SHORT:Lcom/android/internal/telephony/gsm/Eons$CphsType;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/Eons;->resetCphsData(Lcom/android/internal/telephony/gsm/Eons$CphsType;)V

    goto/16 :goto_1

    .line 1234
    :cond_53
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1235
    .restart local v13       #data:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/Eons$CphsType;->SHORT:Lcom/android/internal/telephony/gsm/Eons$CphsType;

    invoke-virtual {v4, v5, v13}, Lcom/android/internal/telephony/gsm/Eons;->setCphsData(Lcom/android/internal/telephony/gsm/Eons$CphsType;[B)V

    goto/16 :goto_1

    .line 1239
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :pswitch_20
    const/16 v18, 0x1

    .line 1240
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .line 1242
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_54

    .line 1243
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EONS] Exception in reading EF_SPN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto/16 :goto_1

    .line 1248
    :cond_54
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1249
    .restart local v13       #data:[B
    const/4 v4, 0x0

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xff

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 1250
    const/4 v4, 0x1

    array-length v5, v13

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {v13, v4, v5}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 1252
    const-string v4, "gsm.sim.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 867
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v16       #i$:I
    .restart local v20       #len$:I
    .restart local v21       #mcc:Ljava/lang/String;
    .restart local v23       #mccmnc:Ljava/lang/String;
    .restart local v24       #mccmncCode:Ljava/lang/String;
    :cond_55
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_10

    .line 892
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v20           #len$:I
    .end local v21           #mcc:Ljava/lang/String;
    .end local v23           #mccmnc:Ljava/lang/String;
    .end local v24           #mccmncCode:Ljava/lang/String;
    :cond_56
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 894
    const-string v5, "GSM"

    const-string v6, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 886
    :catch_2
    move-exception v5

    move-object v14, v5

    .line 887
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 888
    const-string v5, "GSM"

    const-string v6, "SIMRecords: Corrupt IMSI!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0

    goto/16 :goto_11

    .line 882
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v22       #mccStr:Ljava/lang/String;
    :cond_57
    :try_start_1b
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 883
    .local v21, mcc:I
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIMRecords: AD err, mcc is determing mnc length in error case::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_0

    goto/16 :goto_11

    .line 867
    .end local v22           #mccStr:Ljava/lang/String;
    .restart local v11       #ar:Landroid/os/AsyncResult;
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v13       #data:[B
    .restart local v16       #i$:I
    .restart local v20       #len$:I
    .local v21, mcc:Ljava/lang/String;
    .restart local v23       #mccmnc:Ljava/lang/String;
    .restart local v24       #mccmncCode:Ljava/lang/String;
    :cond_58
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_8

    .line 892
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v20           #len$:I
    .end local v21           #mcc:Ljava/lang/String;
    .end local v23           #mccmnc:Ljava/lang/String;
    .end local v24           #mccmncCode:Ljava/lang/String;
    :cond_59
    const/4 v4, 0x0

    :try_start_1c
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 894
    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 886
    :catch_3
    move-exception v4

    move-object v14, v4

    .line 887
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 888
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_0

    goto/16 :goto_9

    .line 882
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v22       #mccStr:Ljava/lang/String;
    :cond_5a
    :try_start_1d
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 883
    .local v21, mcc:I
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIMRecords: AD err, mcc is determing mnc length in error case::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_0

    goto/16 :goto_9

    .line 867
    .end local v22           #mccStr:Ljava/lang/String;
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v16       #i$:I
    .restart local v20       #len$:I
    .local v21, mcc:Ljava/lang/String;
    .restart local v23       #mccmnc:Ljava/lang/String;
    .restart local v24       #mccmncCode:Ljava/lang/String;
    :cond_5b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_a

    .line 892
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v20           #len$:I
    .end local v21           #mcc:Ljava/lang/String;
    .end local v23           #mccmnc:Ljava/lang/String;
    .end local v24           #mccmncCode:Ljava/lang/String;
    :cond_5c
    const/4 v4, 0x0

    :try_start_1e
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 894
    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 886
    :catch_4
    move-exception v4

    move-object v14, v4

    .line 887
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 888
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_0

    goto/16 :goto_b

    .line 882
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v22       #mccStr:Ljava/lang/String;
    :cond_5d
    :try_start_1f
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 883
    .local v21, mcc:I
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIMRecords: AD err, mcc is determing mnc length in error case::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_0

    goto/16 :goto_b

    .line 867
    .end local v22           #mccStr:Ljava/lang/String;
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v16       #i$:I
    .restart local v20       #len$:I
    .local v21, mcc:Ljava/lang/String;
    .restart local v23       #mccmnc:Ljava/lang/String;
    .restart local v24       #mccmncCode:Ljava/lang/String;
    :cond_5e
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_c

    .line 892
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v20           #len$:I
    .end local v21           #mcc:Ljava/lang/String;
    .end local v23           #mccmnc:Ljava/lang/String;
    .end local v24           #mccmncCode:Ljava/lang/String;
    :cond_5f
    const/4 v4, 0x0

    :try_start_20
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 894
    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 886
    :catch_5
    move-exception v4

    move-object v14, v4

    .line 887
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 888
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_0

    goto/16 :goto_d

    .line 882
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v22       #mccStr:Ljava/lang/String;
    :cond_60
    :try_start_21
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 883
    .local v21, mcc:I
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIMRecords: AD err, mcc is determing mnc length in error case::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_0

    goto/16 :goto_d

    .line 867
    .end local v22           #mccStr:Ljava/lang/String;
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v16       #i$:I
    .restart local v20       #len$:I
    .local v21, mcc:Ljava/lang/String;
    .restart local v23       #mccmnc:Ljava/lang/String;
    .restart local v24       #mccmncCode:Ljava/lang/String;
    :cond_61
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_e

    .line 892
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v20           #len$:I
    .end local v21           #mcc:Ljava/lang/String;
    .end local v23           #mccmnc:Ljava/lang/String;
    .end local v24           #mccmncCode:Ljava/lang/String;
    :cond_62
    const/4 v4, 0x0

    :try_start_22
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 894
    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 886
    :catch_6
    move-exception v4

    move-object v14, v4

    .line 887
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 888
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_0

    goto/16 :goto_f

    .line 882
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v22       #mccStr:Ljava/lang/String;
    :cond_63
    :try_start_23
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 883
    .local v21, mcc:I
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIMRecords: AD err, mcc is determing mnc length in error case::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_0

    goto/16 :goto_f

    .line 566
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_19
        :pswitch_2
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_5
        :pswitch_4
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_15
        :pswitch_11
        :pswitch_12
        :pswitch_17
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_d
        :pswitch_18
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_20
        :pswitch_1e
        :pswitch_1f
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method handleSstDataFdn([B)V
    .locals 5
    .parameter "data"

    .prologue
    const-string v1, "false"

    const-string/jumbo v1, "true"

    const-string v4, "GSM"

    .line 1994
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/UiccCard;

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1998
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstFdnValue:I

    .line 1999
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstFdnValue:I

    if-ne v1, v2, :cond_0

    .line 2000
    const-string/jumbo v1, "true"

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->FDNVALUE:Ljava/lang/String;

    .line 2001
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SST: 2G Sim,FDNVALUE enabled FDNVALUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->FDNVALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :goto_0
    const-string v1, "gsm.sim.fdnvalue"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->FDNVALUE:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    :goto_1
    return-void

    .line 2003
    :cond_0
    const-string v1, "false"

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->FDNVALUE:Ljava/lang/String;

    .line 2004
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SST: 2G Sim,FDNVALUE disabled  FDNVALUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->FDNVALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2024
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2025
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Exception in processing SST Data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2006
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/UiccCard;

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2010
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstFdnValue:I

    .line 2011
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstFdnValue:I

    if-ne v1, v2, :cond_2

    .line 2012
    const-string/jumbo v1, "true"

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->FDNVALUE:Ljava/lang/String;

    .line 2013
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SST: 3G Sim,FDNVALUE enabled   FDNVALUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->FDNVALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2015
    :cond_2
    const-string v1, "false"

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->FDNVALUE:Ljava/lang/String;

    .line 2016
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SST: 3G Sim,FDNVALUE  disabled  FDNVALUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->FDNVALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2019
    :cond_3
    const-string/jumbo v1, "true"

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->FDNVALUE:Ljava/lang/String;

    .line 2020
    const-string v1, "GSM"

    const-string v2, "Unhandled SIM type, disabling FDN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public isCallForwardStatusStored()Z
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 1913
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1905
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1448
    const-string v1, "GSM"

    const-string v2, "SIMRecords: record load complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1453
    .local v0, operator:Ljava/lang/String;
    const/4 v1, 0x2

    const-string v2, "ro.telephony.default_network"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1455
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1460
    const-string v1, "gsm.sim.operator.iso-country"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 1468
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    .line 1470
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1472
    return-void

    .line 1464
    :cond_1
    const-string v1, "SIM"

    const-string v2, "[SIMRecords] onAllRecordsLoaded: imsi is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRecordLoaded()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "GSM"

    .line 1436
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1437
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIMRecords:onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    if-ne v0, v2, :cond_1

    .line 1440
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onAllRecordsLoaded()V

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1441
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 1442
    const-string v0, "GSM"

    const-string v0, "SIMRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 530
    if-eqz p1, :cond_0

    .line 534
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 536
    :cond_0
    return-void
.end method

.method protected resetRecords()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 260
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    .line 261
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 262
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 263
    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 264
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 266
    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 267
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 268
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 269
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 270
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 273
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->allPnnDataLongName:Ljava/util/ArrayList;

    .line 274
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->allPnnDataShortName:Ljava/util/ArrayList;

    .line 275
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplPlmnList:Ljava/util/ArrayList;

    .line 276
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplPnnNumList:Ljava/util/ArrayList;

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons;->reset()V

    .line 282
    const/4 v0, 0x2

    const-string v1, "ro.telephony.default_network"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 283
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 293
    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 325
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 326
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "xxxxxxx"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 331
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 335
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 8
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 480
    if-eq p1, v1, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_2

    .line 489
    if-eqz p2, :cond_3

    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 498
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fcb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 503
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 504
    if-eqz p2, :cond_4

    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 512
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 517
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 492
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 508
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    .line 371
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 372
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 374
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 400
    :goto_0
    return-void

    .line 378
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 379
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 381
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    .line 385
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 389
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 396
    :cond_2
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 398
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(IILandroid/os/Message;)V
    .locals 9
    .parameter "line"
    .parameter "countWaiting"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 419
    if-eq p1, v5, :cond_0

    .line 464
    :goto_0
    return-void

    .line 425
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v0, :cond_3

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xfe

    if-nez p2, :cond_1

    move v3, v4

    :goto_1
    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 433
    if-gez p2, :cond_2

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 441
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0x27

    const/16 v7, 0x6fca

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v7, v8, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 461
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    move v3, v5

    .line 429
    goto :goto_1

    .line 438
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    goto :goto_2

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    if-eqz v0, :cond_5

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    if-nez p2, :cond_4

    const/4 v3, 0x5

    :goto_3
    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 448
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/16 v3, 0x28

    const/16 v4, 0x6f11

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto :goto_0

    .line 446
    :cond_4
    const/16 v3, 0xa

    goto :goto_3

    .line 454
    :cond_5
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v2, "SIM does not support EF_MWIS & EF_CPHS_MWIS"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 457
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateEons(Ljava/lang/String;I)Z
    .locals 2
    .parameter "regOperator"
    .parameter "lac"

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/telephony/gsm/Eons;->updateEons(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
