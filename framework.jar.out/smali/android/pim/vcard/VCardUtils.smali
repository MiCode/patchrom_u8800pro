.class public Landroid/pim/vcard/VCardUtils;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VCardUtils"

.field private static final sEscapeIndicatorsV30:[I

.field private static final sEscapeIndicatorsV40:[I

.field private static final sKnownImPropNameMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownPhoneTypeMap_StoI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownPhoneTypesMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMobilePhoneLabelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhoneTypesUnknownToContactsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    .line 65
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CAR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "CAR"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PAGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "PAGER"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ISDN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "ISDN"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "HOME"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "WORK"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "CELL"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "OTHER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "CALLBACK"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "COMPANY-MAIN"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "RADIO"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "TTY-TDD"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "ASSISTANT"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    .line 88
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v1, "MODEM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v1, "MSG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v1, "BBS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v1, "VIDEO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    .line 94
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-GOOGLE-TALK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-QQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-NETMEETING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "MOBILE"

    aput-object v3, v1, v2

    const-string/jumbo v2, "\u643a\u5e2f\u96fb\u8a71"

    aput-object v2, v1, v5

    const-string/jumbo v2, "\u643a\u5e2f"

    aput-object v2, v1, v4

    const-string/jumbo v2, "\u30b1\u30a4\u30bf\u30a4"

    aput-object v2, v1, v6

    const-string/jumbo v2, "\uff79\uff72\uff80\uff72"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/pim/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    .line 457
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Character;

    const/4 v2, 0x0

    const/16 v3, 0x5b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/pim/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    .line 559
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/pim/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    .line 563
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/pim/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    return-void

    .line 559
    nop

    :array_0
    .array-data 0x4
        0x3at 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    .line 563
    :array_1
    .array-data 0x4
        0x3bt 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 815
    return-void
.end method

.method public static varargs areAllEmpty([Ljava/lang/String;)Z
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x1

    .line 670
    if-nez p0, :cond_0

    move v4, v5

    .line 679
    :goto_0
    return v4

    .line 674
    :cond_0
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 675
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 676
    const/4 v4, 0x0

    goto :goto_0

    .line 674
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #value:Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 679
    goto :goto_0
.end method

.method public static constructListFromValue(Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .parameter "value"
    .parameter "vcardType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 364
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_6

    .line 365
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 366
    .local v1, ch:C
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_4

    const/4 v7, 0x1

    sub-int v7, v3, v7

    if-ge v2, v7, :cond_4

    .line 367
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 369
    .local v5, nextCh:C
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->isVersion40(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 370
    invoke-static {v5}, Landroid/pim/vcard/VCardParserImpl_V40;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .line 381
    .local v6, unescapedString:Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_3

    .line 382
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    add-int/lit8 v2, v2, 0x1

    .line 364
    .end local v5           #nextCh:C
    .end local v6           #unescapedString:Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    .restart local v5       #nextCh:C
    :cond_0
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 372
    invoke-static {v5}, Landroid/pim/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #unescapedString:Ljava/lang/String;
    goto :goto_1

    .line 374
    .end local v6           #unescapedString:Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->isVersion21(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 376
    const-string v7, "VCardUtils"

    const-string v8, "Unknown vCard type"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_2
    invoke-static {v5}, Landroid/pim/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #unescapedString:Ljava/lang/String;
    goto :goto_1

    .line 385
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 387
    .end local v5           #nextCh:C
    .end local v6           #unescapedString:Ljava/lang/String;
    :cond_4
    const/16 v7, 0x3b

    if-ne v1, v7, :cond_5

    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    goto :goto_2

    .line 391
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 394
    .end local v1           #ch:C
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    return-object v4
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "vcardType"
    .parameter "familyName"
    .parameter "middleName"
    .parameter "givenName"

    .prologue
    const/4 v4, 0x0

    .line 321
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/pim/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "vcardType"
    .parameter "familyName"
    .parameter "middleName"
    .parameter "givenName"
    .parameter "prefix"
    .parameter "suffix"

    .prologue
    const/16 v8, 0x20

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-static {p0, p1, p2, p3}, Landroid/pim/vcard/VCardUtils;->sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, nameList:[Ljava/lang/String;
    const/4 v2, 0x1

    .line 331
    .local v2, first:Z
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 332
    const/4 v2, 0x0

    .line 333
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_0
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 336
    .local v6, namePart:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 337
    if-eqz v2, :cond_2

    .line 338
    const/4 v2, 0x0

    .line 342
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    :cond_2
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 345
    .end local v6           #namePart:Ljava/lang/String;
    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 346
    if-nez v2, :cond_4

    .line 347
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    :cond_4
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 480
    if-nez p0, :cond_0

    move v12, v13

    .line 505
    :goto_0
    return v12

    .line 483
    :cond_0
    const/16 v11, 0x41

    .line 484
    .local v11, upperAlphabetFirst:I
    const/16 v10, 0x5b

    .line 485
    .local v10, upperAlphabetAfterLast:I
    const/16 v8, 0x61

    .line 486
    .local v8, lowerAlphabetFirst:I
    const/16 v7, 0x7b

    .line 487
    .local v7, lowerAlphabetAfterLast:I
    const/16 v2, 0x30

    .line 488
    .local v2, digitFirst:I
    const/16 v1, 0x3a

    .line 489
    .local v1, digitAfterLast:I
    const/16 v3, 0x2d

    .line 490
    .local v3, hyphen:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 491
    .local v9, str:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 494
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    .line 495
    .local v6, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 496
    invoke-virtual {v9, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 497
    .local v0, codepoint:I
    const/16 v12, 0x61

    if-gt v12, v0, :cond_2

    const/16 v12, 0x7b

    if-lt v0, v12, :cond_5

    :cond_2
    const/16 v12, 0x41

    if-gt v12, v0, :cond_3

    const/16 v12, 0x5b

    if-lt v0, v12, :cond_5

    :cond_3
    const/16 v12, 0x30

    if-gt v12, v0, :cond_4

    const/16 v12, 0x3a

    if-lt v0, v12, :cond_5

    :cond_4
    const/16 v12, 0x2d

    if-eq v0, v12, :cond_5

    .line 501
    const/4 v12, 0x0

    goto :goto_0

    .line 495
    :cond_5
    invoke-virtual {v9, v4, v13}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    goto :goto_1

    .end local v0           #codepoint:I
    .end local v4           #i:I
    .end local v6           #length:I
    .end local v9           #str:Ljava/lang/String;
    :cond_6
    move v12, v13

    .line 505
    goto :goto_0
.end method

.method public static varargs containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z
    .locals 1
    .parameter "values"

    .prologue
    .line 473
    if-nez p0, :cond_0

    .line 474
    const/4 v0, 0x1

    .line 476
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/pim/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 437
    if-nez p0, :cond_0

    move v7, v8

    .line 454
    :goto_0
    return v7

    .line 440
    :cond_0
    const/16 v0, 0x20

    .line 441
    .local v0, asciiFirst:I
    const/16 v1, 0x7e

    .line 442
    .local v1, asciiLast:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 443
    .local v6, value:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 446
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 447
    .local v5, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 448
    invoke-virtual {v6, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 449
    .local v2, c:I
    const/16 v7, 0x20

    if-gt v7, v2, :cond_2

    const/16 v7, 0x7e

    if-le v2, v7, :cond_3

    .line 450
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 447
    :cond_3
    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_1

    .end local v2           #c:I
    .end local v3           #i:I
    .end local v5           #length:I
    .end local v6           #value:Ljava/lang/String;
    :cond_4
    move v7, v8

    .line 454
    goto :goto_0
.end method

.method public static varargs containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z
    .locals 1
    .parameter "values"

    .prologue
    .line 430
    if-nez p0, :cond_0

    .line 431
    const/4 v0, 0x1

    .line 433
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static containsOnlyPrintableAscii(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 406
    if-nez p0, :cond_0

    move v2, v3

    .line 417
    :goto_0
    return v2

    .line 409
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 410
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 413
    invoke-static {v1}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 414
    const/4 v2, 0x0

    goto :goto_0

    .end local v1           #value:Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 417
    goto :goto_0
.end method

.method public static varargs containsOnlyPrintableAscii([Ljava/lang/String;)Z
    .locals 1
    .parameter "values"

    .prologue
    .line 399
    if-nez p0, :cond_0

    .line 400
    const/4 v0, 0x1

    .line 402
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static containsOnlyWhiteSpaces(Ljava/util/Collection;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 516
    if-nez p0, :cond_0

    move v4, v5

    .line 530
    :goto_0
    return v4

    .line 519
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 520
    .local v3, str:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 523
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 524
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 525
    invoke-virtual {v3, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 526
    const/4 v4, 0x0

    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    goto :goto_1

    .end local v0           #i:I
    .end local v2           #length:I
    .end local v3           #str:Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 530
    goto :goto_0
.end method

.method public static varargs containsOnlyWhiteSpaces([Ljava/lang/String;)Z
    .locals 1
    .parameter "values"

    .prologue
    .line 509
    if-nez p0, :cond_0

    .line 510
    const/4 v0, 0x1

    .line 512
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/pim/vcard/VCardUtils;->containsOnlyWhiteSpaces(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "originalString"
    .parameter "sourceCharset"
    .parameter "targetCharset"

    .prologue
    .line 795
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p0

    .line 808
    :goto_0
    return-object v4

    .line 798
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 799
    .local v2, charset:Ljava/nio/charset/Charset;
    invoke-virtual {v2, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 802
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v1, v4, [B

    .line 803
    .local v1, bytes:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 805
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 806
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 807
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "VCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to encode: charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static final getAppropriateParser(I)Landroid/pim/vcard/VCardParser;
    .locals 2
    .parameter "vcardType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 782
    invoke-static {p0}, Landroid/pim/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    new-instance v0, Landroid/pim/vcard/VCardParser_V21;

    invoke-direct {v0}, Landroid/pim/vcard/VCardParser_V21;-><init>()V

    .line 787
    :goto_0
    return-object v0

    .line 784
    :cond_0
    invoke-static {p0}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    new-instance v0, Landroid/pim/vcard/VCardParser_V30;

    invoke-direct {v0}, Landroid/pim/vcard/VCardParser_V30;-><init>()V

    goto :goto_0

    .line 786
    :cond_1
    invoke-static {p0}, Landroid/pim/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 787
    new-instance v0, Landroid/pim/vcard/VCardParser_V40;

    invoke-direct {v0}, Landroid/pim/vcard/VCardParser_V40;-><init>()V

    goto :goto_0

    .line 789
    :cond_2
    new-instance v0, Landroid/pim/vcard/exception/VCardException;

    const-string v1, "Version is not specified"

    invoke-direct {v0, v1}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPhoneNumberFormat(I)I
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 247
    invoke-static {p0}, Landroid/pim/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x2

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .parameter
    .parameter "number"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, types:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 124
    if-nez p1, :cond_0

    .line 125
    const-string p1, ""

    .line 127
    :cond_0
    const/4 v6, -0x1

    .line 128
    .local v6, type:I
    const/4 v4, 0x0

    .line 129
    .local v4, label:Ljava/lang/String;
    const/4 v3, 0x0

    .line 130
    .local v3, isFax:Z
    const/4 v0, 0x0

    .line 132
    .local v0, hasPref:Z
    if-eqz p0, :cond_8

    .line 133
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 134
    .local v8, typeString:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 137
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 138
    const-string v9, "PREF"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 139
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :cond_2
    const-string v9, "FAX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 141
    const/4 v3, 0x1

    goto :goto_0

    .line 143
    :cond_3
    const-string v9, "X-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-gez v6, :cond_4

    .line 144
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 146
    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    .line 149
    sget-object v9, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 150
    .local v5, tmp:Ljava/lang/Integer;
    if-eqz v5, :cond_7

    .line 151
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 158
    .local v7, typeCandidate:I
    const-string v9, "@"

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 159
    .local v2, indexOfAt:I
    const/4 v9, 0x6

    if-ne v7, v9, :cond_5

    if-lez v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v10

    if-lt v2, v9, :cond_6

    :cond_5
    if-ltz v6, :cond_6

    if-nez v6, :cond_1

    .line 163
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    .line 165
    .end local v2           #indexOfAt:I
    .end local v7           #typeCandidate:I
    :cond_7
    if-gez v6, :cond_1

    .line 166
    const/4 v6, 0x0

    .line 167
    move-object v4, v8

    goto :goto_0

    .line 172
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #tmp:Ljava/lang/Integer;
    .end local v8           #typeString:Ljava/lang/String;
    :cond_8
    if-gez v6, :cond_9

    .line 173
    if-eqz v0, :cond_b

    .line 174
    const/16 v6, 0xc

    .line 180
    :cond_9
    :goto_1
    if-eqz v3, :cond_a

    .line 181
    if-ne v6, v10, :cond_c

    .line 182
    const/4 v6, 0x5

    .line 189
    :cond_a
    :goto_2
    if-nez v6, :cond_e

    move-object v9, v4

    .line 192
    :goto_3
    return-object v9

    .line 177
    :cond_b
    const/4 v6, 0x1

    goto :goto_1

    .line 183
    :cond_c
    const/4 v9, 0x3

    if-ne v6, v9, :cond_d

    .line 184
    const/4 v6, 0x4

    goto :goto_2

    .line 185
    :cond_d
    const/4 v9, 0x7

    if-ne v6, v9, :cond_a

    .line 186
    const/16 v6, 0xd

    goto :goto_2

    .line 192
    :cond_e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3
.end method

.method public static getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 115
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getPropertyNameForIm(I)Ljava/lang/String;
    .locals 2
    .parameter "protocol"

    .prologue
    .line 209
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static guessImageType([B)Ljava/lang/String;
    .locals 7
    .parameter "input"

    .prologue
    const/16 v6, 0x47

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 647
    if-nez p0, :cond_0

    .line 648
    const/4 v0, 0x0

    .line 662
    :goto_0
    return-object v0

    .line 650
    :cond_0
    array-length v0, p0

    if-lt v0, v5, :cond_1

    aget-byte v0, p0, v2

    if-ne v0, v6, :cond_1

    aget-byte v0, p0, v3

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    aget-byte v0, p0, v4

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1

    .line 651
    const-string v0, "GIF"

    goto :goto_0

    .line 652
    :cond_1
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    aget-byte v0, p0, v2

    const/16 v1, -0x77

    if-ne v0, v1, :cond_2

    aget-byte v0, p0, v3

    const/16 v1, 0x50

    if-ne v0, v1, :cond_2

    aget-byte v0, p0, v4

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_2

    aget-byte v0, p0, v5

    if-ne v0, v6, :cond_2

    .line 657
    const-string v0, "PNG"

    goto :goto_0

    .line 658
    :cond_2
    array-length v0, p0

    if-lt v0, v4, :cond_3

    aget-byte v0, p0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    aget-byte v0, p0, v3

    const/16 v1, -0x28

    if-ne v0, v1, :cond_3

    .line 660
    const-string v0, "JPEG"

    goto :goto_0

    .line 662
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static insertStructuredPostalDataUsingContactsStruct(ILandroid/content/ContentProviderOperation$Builder;Landroid/pim/vcard/VCardEntry$PostalData;)V
    .locals 4
    .parameter "vcardType"
    .parameter "builder"
    .parameter "postalData"

    .prologue
    const/4 v2, 0x0

    const-string v3, "data1"

    .line 266
    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 267
    const-string v0, "mimetype"

    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 269
    const-string v0, "data2"

    iget v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 270
    iget v0, p2, Landroid/pim/vcard/VCardEntry$PostalData;->type:I

    if-nez v0, :cond_0

    .line 271
    const-string v0, "data3"

    iget-object v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->label:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 293
    :cond_0
    const-string v0, "data5"

    iget-object v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->pobox:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 295
    const-string v0, "data6"

    iget-object v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->extendedAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 296
    const-string v0, "data4"

    iget-object v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->street:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 298
    const-string v0, "data7"

    iget-object v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->localty:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 299
    const-string v0, "data8"

    iget-object v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->region:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 300
    const-string v0, "data9"

    iget-object v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->postalCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 301
    const-string v0, "data10"

    iget-object v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->country:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 304
    const-string v0, "ro.config.hw_opta"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_2

    const-string v0, "ro.config.hw_optb"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x188

    if-ne v0, v1, :cond_2

    .line 307
    const-string v0, "data1"

    invoke-virtual {p2}, Landroid/pim/vcard/VCardEntry$PostalData;->getFormattedAddressForJP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 314
    :goto_0
    iget-boolean v0, p2, Landroid/pim/vcard/VCardEntry$PostalData;->isPrimary:Z

    if-eqz v0, :cond_1

    .line 315
    const-string v0, "is_primary"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 317
    :cond_1
    return-void

    .line 310
    :cond_2
    const-string v0, "data1"

    invoke-virtual {p2, p0}, Landroid/pim/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method public static isMobilePhoneLabel(Ljava/lang/String;)Z
    .locals 1
    .parameter "label"

    .prologue
    .line 201
    const-string v0, "_AUTO_CELL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/pim/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isV21Word(Ljava/lang/String;)Z
    .locals 8
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    .line 543
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    .line 556
    :goto_0
    return v5

    .line 546
    :cond_0
    const/16 v0, 0x20

    .line 547
    .local v0, asciiFirst:I
    const/16 v1, 0x7e

    .line 548
    .local v1, asciiLast:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 549
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 550
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 551
    .local v2, c:I
    const/16 v5, 0x20

    if-gt v5, v2, :cond_1

    const/16 v5, 0x7e

    if-gt v2, v5, :cond_1

    sget-object v5, Landroid/pim/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 553
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 549
    :cond_2
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_1

    .end local v2           #c:I
    :cond_3
    move v5, v7

    .line 556
    goto :goto_0
.end method

.method public static isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z
    .locals 1
    .parameter "label"

    .prologue
    .line 205
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "value"
    .parameter "strictLineBreaking"
    .parameter "sourceCharset"
    .parameter "targetCharset"

    .prologue
    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 696
    .local v3, length:I
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 697
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 698
    .local v1, ch:C
    const/16 v4, 0x3d

    if-ne v1, v4, :cond_1

    const/4 v4, 0x1

    sub-int v4, v3, v4

    if-ge v2, v4, :cond_1

    .line 699
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 700
    .local v4, nextCh:C
    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    .line 701
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 702
    add-int/lit8 v1, v2, 0x1

    .line 696
    .end local v2           #i:I
    .end local v4           #nextCh:C
    .local v1, i:I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 706
    .local v1, ch:C
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .end local v2           #i:I
    .local v1, i:I
    goto :goto_1

    .line 708
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 712
    .local v3, quotedPrintable:Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 713
    const-string p0, "\r\n"

    .end local p0
    invoke-virtual {v3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 743
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    .end local p1
    .local p0, lines:[Ljava/lang/String;
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .local p1, builder:Ljava/lang/StringBuilder;
    move-object p0, p0

    .local p0, arr$:[Ljava/lang/String;
    array-length v1, p0

    .local v1, len$:I
    const/4 v0, 0x0

    .end local v3           #quotedPrintable:Ljava/lang/String;
    .local v0, i$:I
    :goto_3
    if-ge v0, v1, :cond_a

    aget-object v2, p0, v0

    .line 745
    .local v2, line:Ljava/lang/String;
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 746
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 748
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 715
    .end local v1           #len$:I
    .local v0, builder:Ljava/lang/StringBuilder;
    .local v2, i:I
    .restart local v3       #quotedPrintable:Ljava/lang/String;
    .local p0, value:Ljava/lang/String;
    .local p1, strictLineBreaking:Z
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #value:Ljava/lang/String;
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .local p0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 717
    .local v1, length:I
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #i:I
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 p1, 0x0

    .local p1, i:I
    move v0, p1

    .end local p1           #i:I
    .local v0, i:I
    :goto_4
    if-ge v0, v1, :cond_8

    .line 719
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 720
    .local p1, ch:C
    const/16 v4, 0xa

    if-ne p1, v4, :cond_5

    .line 721
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #builder:Ljava/lang/StringBuilder;
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local p0       #builder:Ljava/lang/StringBuilder;
    move p1, v0

    .line 718
    .end local v0           #i:I
    .local p1, i:I
    :goto_5
    add-int/lit8 p1, p1, 0x1

    move v0, p1

    .end local p1           #i:I
    .restart local v0       #i:I
    goto :goto_4

    .line 723
    .local p1, ch:C
    :cond_5
    const/16 v4, 0xd

    if-ne p1, v4, :cond_6

    .line 724
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #builder:Ljava/lang/StringBuilder;
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    .restart local p0       #builder:Ljava/lang/StringBuilder;
    const/4 p1, 0x1

    sub-int p1, v1, p1

    if-ge v0, p1, :cond_7

    .line 727
    .end local p1           #ch:C
    add-int/lit8 p1, v0, 0x1

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 728
    .local p1, nextCh:C
    const/16 v4, 0xa

    if-ne p1, v4, :cond_7

    .line 729
    add-int/lit8 p1, v0, 0x1

    .end local v0           #i:I
    .local p1, i:I
    goto :goto_5

    .line 733
    .restart local v0       #i:I
    .local p1, ch:C
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local p1           #ch:C
    :cond_7
    move p1, v0

    .end local v0           #i:I
    .local p1, i:I
    goto :goto_5

    .line 736
    .end local p1           #i:I
    .restart local v0       #i:I
    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 737
    .local p0, lastLine:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_9

    .line 738
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_9
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .end local p0           #lastLine:Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .local p0, lines:[Ljava/lang/String;
    goto/16 :goto_2

    .line 751
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #quotedPrintable:Ljava/lang/String;
    .local v0, i$:I
    .local v1, len$:I
    .local p0, arr$:[Ljava/lang/String;
    .local p1, builder:Ljava/lang/StringBuilder;
    :cond_a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 752
    .local p1, rawString:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    .end local p0           #arr$:[Ljava/lang/String;
    if-eqz p0, :cond_b

    .line 753
    const-string p0, "VCardUtils"

    const-string v0, "Given raw string is empty."

    .end local v0           #i$:I
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_b
    const/4 p0, 0x0

    .line 758
    .local p0, rawBytes:[B
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    move-object p1, p0

    .line 764
    .end local v1           #len$:I
    .end local p0           #rawBytes:[B
    .end local p2
    .local p1, rawBytes:[B
    :goto_6
    const/4 p0, 0x0

    .line 766
    .local p0, decodedBytes:[B
    :try_start_1
    invoke-static {p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B
    :try_end_1
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p0

    .line 773
    :goto_7
    :try_start_2
    new-instance p1, Ljava/lang/String;

    .end local p1           #rawBytes:[B
    invoke-direct {p1, p0, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-object p0, p1

    .line 776
    .end local p0           #decodedBytes:[B
    :goto_8
    return-object p0

    .line 759
    .restart local v1       #len$:I
    .local p0, rawBytes:[B
    .local p1, rawString:Ljava/lang/String;
    .restart local p2
    :catch_0
    move-exception p0

    .line 760
    .local p0, e:Ljava/io/UnsupportedEncodingException;
    const-string p0, "VCardUtils"

    .end local p0           #e:Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to decode: "

    .end local v1           #len$:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .local p0, rawBytes:[B
    move-object p1, p0

    .end local p0           #rawBytes:[B
    .local p1, rawBytes:[B
    goto :goto_6

    .line 767
    .local p0, decodedBytes:[B
    :catch_1
    move-exception p0

    .line 768
    .local p0, e:Lorg/apache/commons/codec/DecoderException;
    const-string p0, "VCardUtils"

    .end local p0           #e:Lorg/apache/commons/codec/DecoderException;
    const-string p2, "DecoderException is thrown."

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    move-object p0, p1

    .local p0, decodedBytes:[B
    goto :goto_7

    .line 774
    .end local p1           #rawBytes:[B
    :catch_2
    move-exception p1

    .line 775
    .local p1, e:Ljava/io/UnsupportedEncodingException;
    const-string p1, "VCardUtils"

    .end local p1           #e:Ljava/io/UnsupportedEncodingException;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to encode: charset="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    move-object p0, p1

    goto :goto_8
.end method

.method public static sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "vcardType"
    .parameter "familyName"
    .parameter "middleName"
    .parameter "givenName"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 214
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 215
    .local v0, list:[Ljava/lang/String;
    invoke-static {p0}, Landroid/pim/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v1

    .line 216
    .local v1, nameOrderType:I
    sparse-switch v1, :sswitch_data_0

    .line 237
    aput-object p3, v0, v3

    .line 238
    aput-object p2, v0, v4

    .line 239
    aput-object p1, v0, v5

    .line 243
    :goto_0
    return-object v0

    .line 218
    :sswitch_0
    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-static {v2}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v4, [Ljava/lang/String;

    aput-object p3, v2, v3

    invoke-static {v2}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    aput-object p3, v0, v3

    .line 221
    aput-object p2, v0, v4

    .line 222
    aput-object p1, v0, v5

    goto :goto_0

    .line 224
    :cond_0
    aput-object p1, v0, v3

    .line 225
    aput-object p2, v0, v4

    .line 226
    aput-object p3, v0, v5

    goto :goto_0

    .line 231
    :sswitch_1
    aput-object p2, v0, v3

    .line 232
    aput-object p3, v0, v4

    .line 233
    aput-object p1, v0, v5

    goto :goto_0

    .line 216
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "orgString"

    .prologue
    .line 620
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 621
    const/4 v5, 0x0

    .line 636
    :goto_0
    return-object v5

    .line 623
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 625
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 628
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 629
    .local v1, ch:C
    invoke-static {v1}, Landroid/pim/vcard/JapaneseUtils;->tryGetHalfWidthText(C)Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, halfWidthText:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 631
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    :goto_2
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_1

    .line 633
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 636
    .end local v1           #ch:C
    .end local v2           #halfWidthText:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 9
    .parameter "value"
    .parameter "escapeIndicators"

    .prologue
    .line 589
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    const-string p0, ""

    .line 592
    :cond_0
    const/16 v0, 0x20

    .line 593
    .local v0, asciiFirst:I
    const/16 v0, 0x7e

    .line 594
    .local v0, asciiLast:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 596
    .local v7, length:I
    const/4 v2, 0x0

    .line 597
    .local v2, needQuote:Z
    const/4 v0, 0x0

    .local v0, i:I
    move v3, v0

    .end local v0           #i:I
    .local v3, i:I
    move v8, v2

    .end local v2           #needQuote:Z
    .local v8, needQuote:Z
    :goto_0
    if-ge v3, v7, :cond_3

    .line 598
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 599
    .local v2, codePoint:I
    const/16 v0, 0x20

    if-lt v2, v0, :cond_7

    const/16 v0, 0x22

    if-ne v2, v0, :cond_1

    move v2, v8

    .line 597
    .end local v8           #needQuote:Z
    .local v2, needQuote:Z
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    .end local v3           #i:I
    .restart local v0       #i:I
    move v3, v0

    .end local v0           #i:I
    .restart local v3       #i:I
    move v8, v2

    .end local v2           #needQuote:Z
    .restart local v8       #needQuote:Z
    goto :goto_0

    .line 603
    .local v2, codePoint:I
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 604
    move-object v0, p1

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v6, :cond_7

    aget v5, v0, v4

    .line 605
    .local v5, indicator:I
    if-ne v2, v5, :cond_2

    .line 606
    const/4 v0, 0x1

    .end local v8           #needQuote:Z
    .local v0, needQuote:Z
    move v2, v0

    .line 607
    .end local v0           #needQuote:Z
    .local v2, needQuote:Z
    goto :goto_1

    .line 604
    .local v0, arr$:[I
    .local v2, codePoint:I
    .restart local v8       #needQuote:Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 612
    .end local v0           #arr$:[I
    .end local v2           #codePoint:I
    .end local v4           #i$:I
    .end local v5           #indicator:I
    .end local v6           #len$:I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 613
    .local p0, result:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    .end local p1
    if-nez p1, :cond_4

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    invoke-static {p1}, Landroid/pim/vcard/VCardUtils;->containsOnlyWhiteSpaces([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_4
    const-string p0, ""

    .end local p0           #result:Ljava/lang/String;
    :cond_5
    :goto_3
    return-object p0

    .restart local p0       #result:Ljava/lang/String;
    :cond_6
    if-eqz v8, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #result:Ljava/lang/String;
    const/16 p1, 0x22

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .restart local v2       #codePoint:I
    .local p0, value:Ljava/lang/String;
    .restart local p1
    :cond_7
    move v2, v8

    .end local v8           #needQuote:Z
    .local v2, needQuote:Z
    goto :goto_1
.end method

.method public static toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 581
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    invoke-static {p0, v0}, Landroid/pim/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 585
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    invoke-static {p0, v0}, Landroid/pim/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
