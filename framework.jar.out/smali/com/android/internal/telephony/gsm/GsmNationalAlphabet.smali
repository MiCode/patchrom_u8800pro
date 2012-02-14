.class public Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;
.super Ljava/lang/Object;
.source "GsmNationalAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;,
        Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;
    }
.end annotation


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final charToGsm:Landroid/util/SparseIntArray;

.field private static final charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

.field private static final charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

.field private static final charToGsmSpanishLocking:Landroid/util/SparseIntArray;

.field private static final charToGsmSpanishSingle:Landroid/util/SparseIntArray;

.field private static final charToGsmTurkishLocking:Landroid/util/SparseIntArray;

.field private static final charToGsmTurkishSingle:Landroid/util/SparseIntArray;

.field private static final gsmExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmPortugueseLockingToChar:Landroid/util/SparseIntArray;

.field private static final gsmPortugueseSingleToChar:Landroid/util/SparseIntArray;

.field private static final gsmSpanishLockingToChar:Landroid/util/SparseIntArray;

.field private static final gsmSpanishSingleToChar:Landroid/util/SparseIntArray;

.field private static final gsmToChar:Landroid/util/SparseIntArray;

.field private static final gsmTurkishLockingToChar:Landroid/util/SparseIntArray;

.field private static final gsmTurkishSingleToChar:Landroid/util/SparseIntArray;

.field private static sGsmSpaceChar:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x2f

    const/16 v9, 0x29

    const/16 v8, 0x28

    const/16 v7, 0xa

    .line 844
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .line 845
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    .line 847
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .line 848
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    .line 850
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    .line 851
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmTurkishSingleToChar:Landroid/util/SparseIntArray;

    .line 853
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    .line 854
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmTurkishLockingToChar:Landroid/util/SparseIntArray;

    .line 856
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    .line 857
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmSpanishSingleToChar:Landroid/util/SparseIntArray;

    .line 859
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    .line 860
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmSpanishLockingToChar:Landroid/util/SparseIntArray;

    .line 862
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    .line 863
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmPortugueseSingleToChar:Landroid/util/SparseIntArray;

    .line 865
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    .line 866
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmPortugueseLockingToChar:Landroid/util/SparseIntArray;

    .line 870
    const/4 v0, 0x0

    .line 872
    .local v0, i:I
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x40

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 873
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 874
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x24

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 875
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 876
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 877
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 878
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf9

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 879
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xec

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 880
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 881
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 882
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 883
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 884
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 885
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 886
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 887
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 889
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x394

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 890
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x5f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 891
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 892
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x393

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 893
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39b

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 894
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 895
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 896
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 897
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 898
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x398

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 899
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 900
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const v5, 0xffff

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 901
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 902
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe6

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 903
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xdf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 904
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 906
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x20

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 907
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x21

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 908
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x22

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 909
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x23

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 910
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa4

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 911
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x25

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 912
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x26

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 913
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x27

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 914
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 915
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 916
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 917
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 918
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 919
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 920
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 921
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 923
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x30

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 924
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x31

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 925
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x32

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 926
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x33

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 927
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x34

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 928
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x35

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 929
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x36

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 930
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x37

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 931
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x38

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 932
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 933
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 934
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 935
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v11, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 936
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 937
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 938
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 940
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 941
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x41

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 942
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x42

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 943
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x43

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 944
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x44

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 945
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x45

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 946
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x46

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 947
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x47

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 948
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x48

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 949
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x49

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 950
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 951
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 952
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 953
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 954
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 955
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 957
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x50

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 958
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x51

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 959
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x52

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 960
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x53

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 961
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x54

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 962
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x55

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 963
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x56

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 964
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x57

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 965
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x58

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 966
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x59

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 967
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x5a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 968
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 969
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 970
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 971
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xdc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 972
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 974
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xbf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 975
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x61

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 976
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x62

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 977
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x63

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 978
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x64

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 979
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x65

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 980
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x66

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 981
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x67

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 982
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x68

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 983
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x69

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 984
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 985
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 986
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 987
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 988
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 989
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 991
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x70

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 992
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x71

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 993
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x72

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 994
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x73

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 995
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x74

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 996
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x75

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 997
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x76

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 998
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x77

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 999
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x78

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1000
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x79

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1001
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x7a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1002
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1003
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1004
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1005
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xfc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1006
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1009
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1010
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5e

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1011
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7b

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1012
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7d

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1013
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1014
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5b

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1015
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7e

    const/16 v6, 0x3d

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1016
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5d

    const/16 v6, 0x3e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1017
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7c

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1018
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x20ac

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1022
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1023
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5e

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1024
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7b

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1025
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7d

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1026
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1027
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5b

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1028
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7e

    const/16 v6, 0x3d

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1029
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5d

    const/16 v6, 0x3e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1030
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7c

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1031
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x11e

    const/16 v6, 0x47

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1033
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x130

    const/16 v6, 0x49

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1034
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x15e

    const/16 v6, 0x53

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1035
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xe7

    const/16 v6, 0x63

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1036
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x20ac

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1037
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x11f

    const/16 v6, 0x67

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1038
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x131

    const/16 v6, 0x69

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1039
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x15f

    const/16 v6, 0x73

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1043
    const/4 v0, 0x0

    .line 1044
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x40

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1045
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1046
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x24

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1047
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1048
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x20ac

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1049
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1050
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf9

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1051
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x131

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1052
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1053
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1054
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1055
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x11e

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1056
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x11f

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1057
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1058
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1059
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1061
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x394

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1062
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x5f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1063
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1064
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x393

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1065
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x39b

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1066
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1067
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1068
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1069
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1070
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x398

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1071
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x39e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1072
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const v5, 0xffff

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1073
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x15e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1074
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x15f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1075
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xdf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1076
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1078
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x20

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1079
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x21

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1080
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x22

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1081
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x23

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1082
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa4

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1083
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x25

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1084
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x26

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1085
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x27

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1086
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1087
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1088
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1089
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1090
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1091
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1092
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1093
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1095
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x30

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1096
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x31

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1097
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x32

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1098
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x33

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1099
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x34

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1100
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x35

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1101
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x36

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1102
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x37

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1103
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x38

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1104
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x39

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1105
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1106
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1107
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v11, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1108
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1109
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1110
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1112
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x130

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1113
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x41

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1114
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x42

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1115
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x43

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1116
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x44

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1117
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x45

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1118
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x46

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1119
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x47

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1120
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x48

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1121
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x49

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1122
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1123
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1124
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1125
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1126
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1127
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1129
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x50

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1130
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x51

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1131
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x52

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1132
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x53

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1133
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x54

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1134
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x55

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1135
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x56

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1136
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x57

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1137
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x58

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1138
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x59

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1139
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x5a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1140
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1141
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1142
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1143
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xdc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1144
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1146
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe7

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1147
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x61

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1148
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x62

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1149
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x63

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1150
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x64

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1151
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x65

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1152
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x66

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1153
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x67

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1154
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x68

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1155
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x69

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1156
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1157
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1158
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1159
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1160
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1161
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1163
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x70

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1164
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x71

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1165
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x72

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1166
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x73

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1167
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x74

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1168
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x75

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1169
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x76

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1170
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x77

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1171
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x78

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1172
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x79

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1173
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x7a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1174
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1175
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1176
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1177
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xfc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1178
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1182
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xe7

    const/16 v6, 0x9

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1183
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1184
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5e

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1185
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7b

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1186
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7d

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1187
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1188
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5b

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1189
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7e

    const/16 v6, 0x3d

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1190
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5d

    const/16 v6, 0x3e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1191
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7c

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1193
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xc1

    const/16 v6, 0x41

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1194
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xcd

    const/16 v6, 0x49

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1195
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xd3

    const/16 v6, 0x4f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1196
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xda

    const/16 v6, 0x55

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1197
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xe1

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1198
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x20ac

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1199
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xed

    const/16 v6, 0x69

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1200
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xf3

    const/16 v6, 0x6f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1201
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xfa

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1205
    const/4 v0, 0x0

    .line 1206
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x40

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1207
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1208
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x24

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1209
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1210
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1211
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1212
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf9

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1213
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xec

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1214
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1215
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1216
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1217
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1218
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1219
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1220
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1221
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1223
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x394

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1224
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x5f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1225
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1226
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x393

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1227
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x39b

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1228
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1229
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1230
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1231
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1232
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x398

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1233
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x39e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1234
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const v5, 0xffff

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1235
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1236
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe6

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1237
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xdf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1238
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1240
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x20

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1241
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x21

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1242
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x22

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1243
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x23

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1244
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa4

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1245
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x25

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1246
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x26

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1247
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x27

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1248
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1249
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1250
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1251
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1252
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1253
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1254
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1255
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1257
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x30

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1258
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x31

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1259
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x32

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1260
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x33

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1261
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x34

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1262
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x35

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1263
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x36

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1264
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x37

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1265
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x38

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1266
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x39

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1267
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1268
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1269
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v11, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1270
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1271
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1272
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1274
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1275
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x41

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1276
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x42

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1277
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x43

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1278
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x44

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1279
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x45

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1280
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x46

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1281
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x47

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1282
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x48

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1283
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x49

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1284
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1285
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1286
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1287
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1288
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1289
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1291
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x50

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1292
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x51

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1293
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x52

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1294
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x53

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1295
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x54

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1296
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x55

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1297
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x56

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1298
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x57

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1299
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x58

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1300
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x59

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1301
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x5a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1302
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1303
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1304
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1305
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xdc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1306
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1308
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xbf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1309
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x61

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1310
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x62

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1311
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x63

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1312
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x64

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1313
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x65

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1314
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x66

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1315
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x67

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1316
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x68

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1317
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x69

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1318
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1319
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1320
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1321
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1322
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1323
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1325
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x70

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1326
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x71

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1327
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x72

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1328
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x73

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1329
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x74

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1330
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x75

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1331
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x76

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1332
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x77

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1333
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x78

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1334
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x79

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1335
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x7a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1336
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1337
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1338
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1339
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xfc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1340
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1344
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xea

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1345
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xe7

    const/16 v6, 0x9

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1346
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1347
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xd4

    const/16 v6, 0xb

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1348
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xf4

    const/16 v6, 0xc

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1349
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xc1

    const/16 v6, 0xe

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1350
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xe1

    const/16 v6, 0xf

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1351
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a6

    const/16 v6, 0x12

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1352
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x393

    const/16 v6, 0x13

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1353
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5e

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1354
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a9

    const/16 v6, 0x15

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1355
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a0

    const/16 v6, 0x16

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1356
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a8

    const/16 v6, 0x17

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1357
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a3

    const/16 v6, 0x18

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1358
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x398

    const/16 v6, 0x19

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1359
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xca

    const/16 v6, 0x1f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1361
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7b

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1362
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7d

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1363
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1364
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5b

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1365
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7e

    const/16 v6, 0x3d

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1366
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5d

    const/16 v6, 0x3e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1367
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7c

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1368
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xc0

    const/16 v6, 0x41

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1369
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xcd

    const/16 v6, 0x49

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1370
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xd3

    const/16 v6, 0x4f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1371
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xda

    const/16 v6, 0x55

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1372
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xc3

    const/16 v6, 0x5b

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1373
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xd5

    const/16 v6, 0x5c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1374
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xc2

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1375
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x20ac

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1376
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xed

    const/16 v6, 0x69

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1378
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xf3

    const/16 v6, 0x6f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1379
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xfa

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1380
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xe3

    const/16 v6, 0x7b

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1381
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xf5

    const/16 v6, 0x7c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1382
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xe2

    const/16 v6, 0x7f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1386
    const/4 v0, 0x0

    .line 1387
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x40

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1388
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1389
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x24

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1390
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1391
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xea

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1392
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1393
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xfa

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1394
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xed

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1395
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1396
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1397
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1398
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1399
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf4

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1400
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1401
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1402
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1404
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x394

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1405
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x5f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1406
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xaa

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1407
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1408
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1409
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x221e

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1410
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x5e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1411
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x5c

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1412
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x20ac

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1413
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1414
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x7c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1415
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x1b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1416
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1417
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1418
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xca

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1419
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1421
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x20

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1422
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x21

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1423
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x22

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1424
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x23

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1425
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xba

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1426
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x25

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1427
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x26

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1428
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x27

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1429
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1430
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1431
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1432
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1433
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1434
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1435
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1436
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1438
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x30

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1439
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x31

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1440
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x32

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1441
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x33

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1442
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x34

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1443
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x35

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1444
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x36

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1445
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x37

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1446
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x38

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1447
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x39

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1448
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1449
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1450
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v11, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1451
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1452
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1453
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1455
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xcd

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1456
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x41

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1457
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x42

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1458
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x43

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1459
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x44

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1460
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x45

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1461
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x46

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1462
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x47

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1463
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x48

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1464
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x49

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1465
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1466
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1467
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1468
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1469
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1470
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1472
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x50

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1473
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x51

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1474
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x52

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1475
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x53

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1476
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x54

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1477
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x55

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1478
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x56

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1479
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x57

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1480
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x58

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1481
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x59

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1482
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x5a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1483
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1484
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1485
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x1da

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1486
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xdc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1487
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1489
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x7e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1490
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x61

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1491
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x62

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1492
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x63

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1493
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x64

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1494
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x65

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1495
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x66

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1496
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x67

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1497
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x68

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1498
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x69

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1499
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1500
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1501
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1502
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1503
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1504
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1506
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x70

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1507
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x71

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1508
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x72

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1509
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x73

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1510
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x74

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1511
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x75

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1512
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x76

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1513
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x77

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1514
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x78

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1515
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x79

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1516
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x7a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1517
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1518
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1519
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x60

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1520
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xfc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1521
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1525
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1526
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1527
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1526
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1530
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1531
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 1532
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1531
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1535
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1536
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    .line 1537
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmTurkishSingleToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1536
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1540
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1541
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_3

    .line 1542
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmTurkishLockingToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1541
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1545
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1546
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_4

    .line 1547
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmSpanishSingleToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1546
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1550
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1551
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_5

    .line 1552
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmSpanishLockingToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1551
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1555
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1556
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_6

    .line 1557
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmPortugueseSingleToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1556
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1560
    :cond_6
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1561
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_7

    .line 1562
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmPortugueseLockingToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1561
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1565
    :cond_7
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    sput v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->sGsmSpaceChar:I

    .line 1566
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static charToGsmDefault(CLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    .locals 2
    .parameter "c"
    .parameter "base"
    .parameter "extend"

    .prologue
    .line 76
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1, p1, p2}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmDefault(CZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 79
    :goto_0
    return v1

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    sget v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->sGsmSpaceChar:I

    goto :goto_0
.end method

.method public static charToGsmDefault(CZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    .locals 4
    .parameter "c"
    .parameter "throwException"
    .parameter "base"
    .parameter "extend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 96
    const/4 v0, -0x1

    .line 98
    .local v0, ret:I
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 179
    :goto_0
    if-ne v0, v3, :cond_5

    .line 180
    if-eqz p1, :cond_4

    .line 181
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    .line 100
    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 101
    if-ne v3, v0, :cond_0

    .line 102
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 116
    const/4 v0, -0x1

    .line 117
    goto :goto_0

    .line 104
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 105
    goto :goto_0

    .line 107
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 108
    goto :goto_0

    .line 110
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 111
    goto :goto_0

    .line 113
    :pswitch_4
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 114
    goto :goto_0

    :cond_0
    move v1, v0

    .line 186
    :goto_1
    return v1

    .line 124
    :pswitch_5
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 125
    if-ne v3, v0, :cond_1

    .line 126
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    .line 134
    const/4 v0, -0x1

    .line 135
    goto :goto_0

    .line 128
    :pswitch_6
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 129
    goto :goto_0

    .line 131
    :pswitch_7
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 132
    goto :goto_0

    :cond_1
    move v1, v0

    .line 138
    goto :goto_1

    .line 142
    :pswitch_8
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 143
    if-ne v3, v0, :cond_2

    .line 144
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    .line 152
    :pswitch_9
    const/4 v0, -0x1

    .line 153
    goto :goto_0

    .line 146
    :pswitch_a
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 147
    goto :goto_0

    .line 149
    :pswitch_b
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 150
    goto/16 :goto_0

    :cond_2
    move v1, v0

    .line 156
    goto :goto_1

    .line 160
    :pswitch_c
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 161
    if-ne v3, v0, :cond_3

    .line 162
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4

    .line 170
    :pswitch_d
    const/4 v0, -0x1

    .line 171
    goto/16 :goto_0

    .line 164
    :pswitch_e
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 165
    goto/16 :goto_0

    .line 167
    :pswitch_f
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 168
    goto/16 :goto_0

    :cond_3
    move v1, v0

    .line 174
    goto :goto_1

    .line 183
    :cond_4
    sget v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->sGsmSpaceChar:I

    goto :goto_1

    .line 186
    :cond_5
    const/16 v1, 0x1b

    goto :goto_1

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_c
    .end packed-switch

    .line 102
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 126
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 144
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 162
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public static charToGsmExtend(CLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    .locals 4
    .parameter "c"
    .parameter "extend"

    .prologue
    const/4 v3, -0x1

    .line 204
    const/4 v0, -0x1

    .line 206
    .local v0, ret:I
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 220
    const/4 v0, -0x1

    .line 224
    :goto_0
    if-ne v0, v3, :cond_0

    .line 225
    sget v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->sGsmSpaceChar:I

    .line 228
    :goto_1
    return v1

    .line 208
    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 209
    goto :goto_0

    .line 211
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 212
    goto :goto_0

    .line 214
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 215
    goto :goto_0

    .line 217
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 218
    goto :goto_0

    :cond_0
    move v1, v0

    .line 228
    goto :goto_1

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static countGsmSeptets(CZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    .locals 5
    .parameter "c"
    .parameter "throwsException"
    .parameter "base"
    .parameter "extend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 629
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 722
    :cond_0
    :goto_0
    if-eqz p1, :cond_5

    .line 723
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0

    .line 631
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_1

    move v0, v4

    .line 726
    :goto_1
    return v0

    .line 635
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 637
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v3

    .line 638
    goto :goto_1

    .line 642
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v3

    .line 643
    goto :goto_1

    .line 647
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v3

    .line 648
    goto :goto_1

    .line 652
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v3

    .line 653
    goto :goto_1

    .line 661
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_2

    move v0, v4

    .line 662
    goto :goto_1

    .line 665
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 667
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v3

    .line 668
    goto :goto_1

    .line 672
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v3

    .line 673
    goto :goto_1

    .line 681
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_3

    move v0, v4

    .line 682
    goto :goto_1

    .line 685
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    :pswitch_9
    goto/16 :goto_0

    .line 687
    :pswitch_a
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v3

    .line 688
    goto :goto_1

    .line 692
    :pswitch_b
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v3

    .line 693
    goto/16 :goto_1

    .line 701
    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_4

    move v0, v4

    .line 702
    goto/16 :goto_1

    .line 705
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4

    :pswitch_d
    goto/16 :goto_0

    .line 707
    :pswitch_e
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v3

    .line 708
    goto/16 :goto_1

    .line 712
    :pswitch_f
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v3

    .line 713
    goto/16 :goto_1

    :cond_5
    move v0, v4

    .line 726
    goto/16 :goto_1

    .line 629
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_c
    .end packed-switch

    .line 635
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 665
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 685
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 705
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    .locals 3
    .parameter "s"
    .parameter "base"
    .parameter "extend"

    .prologue
    const/4 v2, 0x0

    .line 739
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1, p1, p2}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 742
    :goto_0
    return v1

    .line 740
    :catch_0
    move-exception v0

    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    move v1, v2

    .line 742
    goto :goto_0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;ZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    .locals 4
    .parameter "s"
    .parameter "throwsException"
    .parameter "base"
    .parameter "extend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 757
    .local v2, sz:I
    const/4 v1, 0x0

    .line 759
    .local v1, count:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 760
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->countGsmSeptets(CZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v3

    add-int/2addr v1, v3

    .line 761
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 764
    :cond_0
    return v1
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;IILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "limit"
    .parameter "base"
    .parameter "extend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, accumulator:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 785
    .local v2, size:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 786
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4, p3, p4}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->countGsmSeptets(CZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v3

    add-int/2addr v0, v3

    .line 787
    if-le v0, p2, :cond_0

    move v3, v1

    .line 792
    :goto_1
    return v3

    .line 785
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 792
    goto :goto_1
.end method

.method public static findLimitIndex(Ljava/lang/String;IIILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "limit"
    .parameter "encodingType"
    .parameter "base"
    .parameter "extend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 830
    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    .line 831
    :cond_0
    invoke-static {p0, p1, p2, p4, p5}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v0

    .line 834
    :goto_0
    return v0

    .line 833
    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 834
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->findUCS2LimitIndex(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    .line 837
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encoding type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static findUCS2LimitIndex(Ljava/lang/String;II)I
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 810
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, p1

    .line 811
    .local v0, numCharToBeEncoded:I
    mul-int/lit8 v1, v0, 0x2

    if-le v1, p2, :cond_0

    div-int/lit8 v1, p2, 0x2

    :goto_0
    add-int/2addr v1, p1

    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public static gsm7BitPackedToString([BIIILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)Ljava/lang/String;
    .locals 8
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"
    .parameter "base"
    .parameter "extend"

    .prologue
    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 473
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 475
    .local v1, prevCharWasEscape:Z
    const/4 v0, 0x0

    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    move v3, v1

    .end local v1           #prevCharWasEscape:Z
    .local v3, prevCharWasEscape:Z
    :goto_0
    if-ge v2, p2, :cond_3

    .line 476
    mul-int/lit8 v0, v2, 0x7

    add-int/2addr v0, p3

    .line 478
    .local v0, bitOffset:I
    :try_start_0
    div-int/lit8 v1, v0, 0x8

    .line 479
    .local v1, byteOffset:I
    rem-int/lit8 v5, v0, 0x8

    .line 482
    .local v5, shift:I
    add-int v0, p1, v1

    aget-byte v0, p0, v0

    .end local v0           #bitOffset:I
    shr-int/2addr v0, v5

    and-int/lit8 v0, v0, 0x7f

    .line 485
    .local v0, gsmVal:I
    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 487
    const/16 v6, 0x7f

    const/4 v7, 0x1

    sub-int v7, v5, v7

    shr-int/2addr v6, v7

    and-int/2addr v0, v6

    .line 489
    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p0, v1

    .end local v1           #byteOffset:I
    const/16 v6, 0x8

    sub-int v5, v6, v5

    shl-int/2addr v1, v5

    and-int/lit8 v1, v1, 0x7f

    or-int/2addr v0, v1

    .line 492
    .end local v5           #shift:I
    :cond_0
    if-eqz v3, :cond_1

    .line 493
    invoke-static {v0, p5}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmToChar(ILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)C

    move-result v0

    .end local v0           #gsmVal:I
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    const/4 v0, 0x0

    .end local v3           #prevCharWasEscape:Z
    .local v0, prevCharWasEscape:Z
    move v1, v0

    .line 475
    .end local v0           #prevCharWasEscape:Z
    .local v1, prevCharWasEscape:Z
    :goto_1
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    move v3, v1

    .end local v1           #prevCharWasEscape:Z
    .restart local v3       #prevCharWasEscape:Z
    goto :goto_0

    .line 495
    .local v0, gsmVal:I
    :cond_1
    const/16 v1, 0x1b

    if-ne v0, v1, :cond_2

    .line 496
    const/4 v0, 0x1

    .end local v3           #prevCharWasEscape:Z
    .local v0, prevCharWasEscape:Z
    move v1, v0

    .end local v0           #prevCharWasEscape:Z
    .restart local v1       #prevCharWasEscape:Z
    goto :goto_1

    .line 498
    .end local v1           #prevCharWasEscape:Z
    .local v0, gsmVal:I
    .restart local v3       #prevCharWasEscape:Z
    :cond_2
    invoke-static {v0, p4}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmToChar(ILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)C

    move-result v0

    .end local v0           #gsmVal:I
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .end local v3           #prevCharWasEscape:Z
    .restart local v1       #prevCharWasEscape:Z
    goto :goto_1

    .line 501
    .end local v1           #prevCharWasEscape:Z
    .restart local v3       #prevCharWasEscape:Z
    :catch_0
    move-exception p0

    .line 502
    .local p0, ex:Ljava/lang/RuntimeException;
    const-string p1, "GSM"

    .end local p1
    const-string p2, "Error GSM 7 bit packed: "

    .end local p2
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    const/4 p0, 0x0

    .line 506
    .end local p0           #ex:Ljava/lang/RuntimeException;
    :goto_2
    return-object p0

    .local p0, pdu:[B
    .restart local p1
    .restart local p2
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method public static gsm7BitPackedToString([BIILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)Ljava/lang/String;
    .locals 6
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "base"
    .parameter "extend"

    .prologue
    .line 448
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsm7BitPackedToString([BIIILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm8BitUnpackedToString([BIILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "base"
    .parameter "extend"

    .prologue
    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 524
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 525
    .local v2, prevWasEscape:Z
    move v1, p1

    .local v1, i:I
    :goto_0
    add-int v4, p1, p2

    if-ge v1, v4, :cond_0

    .line 528
    aget-byte v4, p0, v1

    and-int/lit16 v0, v4, 0xff

    .line 530
    .local v0, c:I
    const/16 v4, 0xff

    if-ne v0, v4, :cond_1

    .line 552
    .end local v0           #c:I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 532
    .restart local v0       #c:I
    :cond_1
    const/16 v4, 0x1b

    if-ne v0, v4, :cond_3

    .line 533
    if-eqz v2, :cond_2

    .line 537
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 538
    const/4 v2, 0x0

    .line 525
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 543
    :cond_3
    if-eqz v2, :cond_4

    .line 544
    invoke-static {v0, p4}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmToChar(ILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 546
    :cond_4
    invoke-static {v0, p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmToChar(ILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static gsmToChar(ILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)C
    .locals 4
    .parameter "gsmChar"
    .parameter "table"

    .prologue
    const/16 v3, 0x20

    .line 248
    const/16 v0, 0x20

    .line 250
    .local v0, ret:C
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 277
    :goto_0
    return v0

    .line 252
    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char v0, v1

    .line 253
    goto :goto_0

    .line 255
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char v0, v1

    .line 256
    goto :goto_0

    .line 258
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmTurkishSingleToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char v0, v1

    .line 259
    goto :goto_0

    .line 261
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmTurkishLockingToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char v0, v1

    .line 262
    goto :goto_0

    .line 264
    :pswitch_4
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmSpanishSingleToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char v0, v1

    .line 265
    goto :goto_0

    .line 267
    :pswitch_5
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmSpanishLockingToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char v0, v1

    .line 268
    goto :goto_0

    .line 270
    :pswitch_6
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmPortugueseSingleToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char v0, v1

    .line 271
    goto :goto_0

    .line 273
    :pswitch_7
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmPortugueseLockingToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char v0, v1

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private static packSmsChar([BII)V
    .locals 4
    .parameter "packedChars"
    .parameter "bitOffset"
    .parameter "value"

    .prologue
    .line 423
    div-int/lit8 v0, p1, 0x8

    .line 424
    .local v0, byteOffset:I
    rem-int/lit8 v1, p1, 0x8

    .line 426
    .local v1, shift:I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int v3, p2, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 428
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 429
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x8

    sub-int/2addr v2, v1

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 431
    :cond_0
    return-void
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IIIZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)[B
    .locals 6
    .parameter "data"
    .parameter "dataOffset"
    .parameter "maxSeptets"
    .parameter "startingBitOffset"
    .parameter "throwException"
    .parameter "base"
    .parameter "extend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 375
    .local v3, sz:I
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 376
    const/4 p2, 0x1

    invoke-static {p0, p2, p5, p6}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    .end local p2
    move-result p2

    .local p2, septetCount:I
    move v1, p2

    .line 381
    .end local p2           #septetCount:I
    .local v1, septetCount:I
    :goto_0
    const/16 p2, 0xff

    if-le v1, p2, :cond_1

    .line 382
    new-instance p0, Lcom/android/internal/telephony/EncodeException;

    .end local p0
    const-string p1, "Payload cannot exceed 32767 septets"

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 378
    .end local v1           #septetCount:I
    .restart local p0
    .restart local p1
    .local p2, maxSeptets:I
    :cond_0
    move p2, p2

    .local p2, septetCount:I
    move v1, p2

    .end local p2           #septetCount:I
    .restart local v1       #septetCount:I
    goto :goto_0

    .line 387
    :cond_1
    mul-int/lit8 p2, v1, 0x7

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    add-int/lit8 p2, p2, 0x1

    new-array v0, p2, [B

    .line 389
    .local v0, ret:[B
    move p2, p3

    .line 390
    .local p2, bitOffset:I
    div-int/lit8 p3, p3, 0x7

    .line 391
    .local p3, septets:I
    move p1, p1

    .local p1, i:I
    move v2, p3

    .end local p3           #septets:I
    .local v2, septets:I
    move p3, p1

    .end local p1           #i:I
    .local p3, i:I
    move p1, p2

    .end local p2           #bitOffset:I
    .local p1, bitOffset:I
    :goto_1
    if-ge p3, v3, :cond_2

    if-ge v2, v1, :cond_2

    .line 392
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 394
    .local p2, c:C
    invoke-static {p2, p4, p5, p6}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmDefault(CZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v4

    .line 395
    .local v4, v:I
    const/16 v5, 0x1b

    if-ne v4, v5, :cond_3

    .line 397
    invoke-static {p2, p6}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtend(CLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v4

    .line 399
    const/16 p2, 0x1b

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->packSmsChar([BII)V

    .line 400
    .end local p2           #c:C
    add-int/lit8 p1, p1, 0x7

    .line 401
    add-int/lit8 p2, v2, 0x1

    .end local v2           #septets:I
    .local p2, septets:I
    move v2, v4

    .line 404
    .end local v4           #v:I
    .local v2, v:I
    :goto_2
    invoke-static {v0, p1, v2}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->packSmsChar([BII)V

    .line 405
    add-int/lit8 v2, p2, 0x1

    .line 391
    .end local p2           #septets:I
    .local v2, septets:I
    add-int/lit8 p2, p3, 0x1

    .end local p3           #i:I
    .local p2, i:I
    add-int/lit8 p1, p1, 0x7

    move p3, p2

    .end local p2           #i:I
    .restart local p3       #i:I
    goto :goto_1

    .line 409
    :cond_2
    const/4 p0, 0x0

    int-to-byte p1, v2

    aput-byte p1, v0, p0

    .line 411
    .end local p0
    .end local p1           #bitOffset:I
    return-object v0

    .restart local v4       #v:I
    .restart local p0
    .restart local p1       #bitOffset:I
    .local p2, c:C
    :cond_3
    move p2, v2

    .end local v2           #septets:I
    .local p2, septets:I
    move v2, v4

    .end local v4           #v:I
    .local v2, v:I
    goto :goto_2
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)[B
    .locals 7
    .parameter "data"
    .parameter "base"
    .parameter "extend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 343
    const/4 v2, -0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v3, v1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IIIZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)[B
    .locals 11
    .parameter "data"
    .parameter "header"
    .parameter "base"
    .parameter "extend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 304
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 305
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)[B

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    .line 308
    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v7, v0, 0x8

    .line 309
    .local v7, headerBits:I
    div-int/lit8 v8, v7, 0x7

    .line 310
    .local v8, headerSeptets:I
    rem-int/lit8 v0, v7, 0x7

    if-lez v0, :cond_2

    move v0, v4

    :goto_1
    add-int/2addr v8, v0

    .line 312
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    .line 314
    .local v10, sz:I
    invoke-static {p0, v4, p2, p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v0

    add-int v2, v0, v8

    .line 316
    .local v2, septetCount:I
    mul-int/lit8 v3, v8, 0x7

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IIIZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)[B

    move-result-object v9

    .line 320
    .local v9, ret:[B
    array-length v0, p1

    int-to-byte v0, v0

    aput-byte v0, v9, v4

    .line 321
    const/4 v0, 0x2

    array-length v3, p1

    invoke-static {p1, v1, v9, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v9

    .line 322
    goto :goto_0

    .end local v2           #septetCount:I
    .end local v9           #ret:[B
    .end local v10           #sz:I
    :cond_2
    move v0, v1

    .line 310
    goto :goto_1
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)[B
    .locals 7
    .parameter "s"
    .parameter "base"
    .parameter "extend"

    .prologue
    .line 564
    const/4 v6, 0x0

    .line 566
    .local v6, septets:I
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v6

    .line 569
    new-array v1, v6, [B

    .line 571
    .local v1, ret:[B
    const/4 v2, 0x0

    array-length v3, v1

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BIILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)V

    .line 573
    return-object v1
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BIILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)V
    .locals 8
    .parameter "s"
    .parameter "dest"
    .parameter "offset"
    .parameter "length"
    .parameter "base"
    .parameter "extend"

    .prologue
    const/16 v7, 0x1b

    .line 588
    move v2, p2

    .line 591
    .local v2, outByteIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, sz:I
    move v3, v2

    .line 592
    .end local v2           #outByteIndex:I
    .local v3, outByteIndex:I
    :goto_0
    if-ge v1, v4, :cond_0

    sub-int v6, v3, p2

    if-ge v6, p3, :cond_0

    .line 595
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 597
    .local v0, c:C
    invoke-static {v0, p4, p5}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmDefault(CLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v5

    .line 599
    .local v5, v:I
    if-ne v5, v7, :cond_3

    .line 601
    add-int/lit8 v6, v3, 0x1

    sub-int/2addr v6, p2

    if-lt v6, p3, :cond_1

    .line 614
    .end local v0           #c:C
    .end local v5           #v:I
    :cond_0
    :goto_1
    sub-int v6, v3, p2

    if-ge v6, p3, :cond_2

    .line 615
    add-int/lit8 v2, v3, 0x1

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    const/4 v6, -0x1

    aput-byte v6, p1, v3

    move v3, v2

    .end local v2           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    goto :goto_1

    .line 605
    .restart local v0       #c:C
    .restart local v5       #v:I
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    aput-byte v7, p1, v3

    .line 607
    invoke-static {v0, p5}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtend(CLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v5

    .line 610
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    int-to-byte v6, v5

    aput-byte v6, p1, v2

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    .end local v0           #c:C
    .end local v5           #v:I
    :cond_2
    return-void

    .restart local v0       #c:C
    .restart local v5       #v:I
    :cond_3
    move v2, v3

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    goto :goto_2
.end method
