.class public Lcom/android/internal/telephony/DataProfileTracker;
.super Landroid/os/Handler;
.source "DataProfileTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;
    }
.end annotation


# static fields
.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final EVENT_DATA_PROFILE_DB_CHANGED:I = 0x1

.field private static final EVENT_GET_DATA_CALL_PROFILE_DONE:I = 0x3

.field private static final EVENT_READ_MODEM_PROFILES:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "DATA"

.field private static final OMH_MAX_PRIORITY:I = 0xff

.field static final PREFER_DEFAULT_APN_URI:Landroid/net/Uri;


# instance fields
.field dsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/DataServiceType;",
            "Lcom/android/internal/telephony/DataServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field mCanSetDefaultPreferredApn:Z

.field private mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDataDataProfileDbChangedRegistrants:Landroid/os/RegistrantList;

.field private mDpObserver:Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;

.field private mOmhDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mOmhEnabled:Z

.field private mOmhReadProfileContext:I

.field private mOmhReadProfileCount:I

.field mOmhServicePriorityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/DataServiceType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorNumeric:Ljava/lang/String;

.field mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

.field private mTempOmhDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 715
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/DataProfileTracker;->PREFER_DEFAULT_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .parameter "context"
    .parameter "ci"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 121
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 75
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mDataDataProfileDbChangedRegistrants:Landroid/os/RegistrantList;

    .line 76
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    .line 91
    iput v5, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileContext:I

    .line 96
    iput v5, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileCount:I

    .line 98
    const-string v4, "persist.omh.enabled"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhEnabled:Z

    .line 718
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    .line 719
    iput-boolean v5, p0, Lcom/android/internal/telephony/DataProfileTracker;->mCanSetDefaultPreferredApn:Z

    .line 123
    iput-object p1, p0, Lcom/android/internal/telephony/DataProfileTracker;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 130
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    .line 131
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 132
    .local v3, t:Lcom/android/internal/telephony/DataServiceType;
    iget-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/internal/telephony/DataServiceInfo;

    iget-object v6, p0, Lcom/android/internal/telephony/DataProfileTracker;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Lcom/android/internal/telephony/DataServiceInfo;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DataServiceType;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v3           #t:Lcom/android/internal/telephony/DataServiceType;
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhEnabled:Z

    if-eqz v4, :cond_1

    .line 139
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    .line 145
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;

    invoke-direct {v4, p0, p0}, Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;-><init>(Lcom/android/internal/telephony/DataProfileTracker;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mDpObserver:Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;

    .line 146
    iget-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/internal/telephony/DataProfileTracker;->mDpObserver:Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 150
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataProfileTracker;->sendMessage(Landroid/os/Message;)Z

    .line 151
    return-void
.end method

.method private addServiceTypeToUnSpecified()V
    .locals 9

    .prologue
    .line 497
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .local v1, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, v1, v4

    .line 498
    .local v6, t:Lcom/android/internal/telephony/DataServiceType;
    iget-object v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 500
    iget-object v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4           #i$:I
    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataProfile;

    .line 502
    .local v2, dp:Lcom/android/internal/telephony/DataProfile;
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataProfileOmh;->getDataProfileTypeModem()Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    if-ne v7, v8, :cond_0

    .line 504
    check-cast v2, Lcom/android/internal/telephony/DataProfileOmh;

    .end local v2           #dp:Lcom/android/internal/telephony/DataProfile;
    invoke-static {v6}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;)V

    .line 506
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OMH] Service Type added to UNSPECIFIED is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 497
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 513
    .end local v6           #t:Lcom/android/internal/telephony/DataServiceType;
    :cond_2
    return-void
.end method

.method private createDataProfileList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 18
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v17, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 606
    :cond_0
    const-string/jumbo v3, "type"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->parseServiceTypeString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 609
    .local v15, types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "numeric"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "proxy"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "port"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmsc"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsport"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "user"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "password"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v16, "ipversion"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .local v2, apn:Lcom/android/internal/telephony/ApnSetting;
    const-string/jumbo v3, "type"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->parseServiceTypes(Ljava/lang/String;)[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/ApnSetting;->serviceTypes:[Lcom/android/internal/telephony/DataServiceType;

    .line 626
    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 629
    .end local v2           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    :cond_1
    return-object v17
.end method

.method private fetchDunApn()Lcom/android/internal/telephony/ApnSetting;
    .locals 4

    .prologue
    .line 339
    iget-object v2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tether_dun_apn"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, apnData:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 342
    .local v1, dunSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 346
    :goto_0
    return-object v2

    .line 345
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v0}, Lcom/android/internal/telephony/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v2

    goto :goto_0
.end method

.method private getDuplicateProfile(Lcom/android/internal/telephony/DataProfile;)Lcom/android/internal/telephony/DataProfileOmh;
    .locals 5
    .parameter "dp"

    .prologue
    .line 482
    iget-object v3, p0, Lcom/android/internal/telephony/DataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataProfile;

    .line 483
    .local v1, dataProfile:Lcom/android/internal/telephony/DataProfile;
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfileOmh;->getProfileId()I

    move-result v4

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfileOmh;->getProfileId()I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 485
    check-cast v1, Lcom/android/internal/telephony/DataProfileOmh;

    .end local v1           #dataProfile:Lcom/android/internal/telephony/DataProfile;
    move-object v3, v1

    .line 488
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getPreferredDefaultApnFromDb(Ljava/util/ArrayList;)Lcom/android/internal/telephony/ApnSetting;
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;)",
            "Lcom/android/internal/telephony/ApnSetting;"
        }
    .end annotation

    .prologue
    .local p1, defaultDataProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v14, "_id"

    .line 729
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v4

    .line 762
    :goto_0
    return-object v1

    .line 733
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataProfileTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataProfileTracker;->PREFER_DEFAULT_APN_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v14, v3, v12

    const-string v5, "name"

    aput-object v5, v3, v13

    const/4 v5, 0x2

    const-string v6, "apn"

    aput-object v6, v3, v5

    const-string v6, "name ASC"

    move-object v5, v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 737
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 738
    iput-boolean v13, p0, Lcom/android/internal/telephony/DataProfileTracker;->mCanSetDefaultPreferredApn:Z

    .line 743
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataProfileTracker;->mCanSetDefaultPreferredApn:Z

    if-eqz v1, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 744
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 745
    const-string v1, "_id"

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 746
    .local v11, pos:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/DataProfile;

    .line 747
    .local v10, p:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v10}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v1, v2, :cond_1

    .line 748
    move-object v0, v10

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    move-object v7, v0

    .line 749
    .local v7, apn:Lcom/android/internal/telephony/ApnSetting;
    iget v1, v7, Lcom/android/internal/telephony/ApnSetting;->id:I

    if-ne v1, v11, :cond_1

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/ApnSetting;->canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 751
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v1, v7

    .line 752
    goto :goto_0

    .line 740
    .end local v7           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #p:Lcom/android/internal/telephony/DataProfile;
    .end local v11           #pos:I
    :cond_2
    iput-boolean v12, p0, Lcom/android/internal/telephony/DataProfileTracker;->mCanSetDefaultPreferredApn:Z

    goto :goto_1

    .line 758
    :cond_3
    if-eqz v8, :cond_4

    .line 759
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v1, v4

    .line 762
    goto :goto_0
.end method

.method private isApnDifferent(Lcom/android/internal/telephony/ApnSetting;Lcom/android/internal/telephony/ApnSetting;)Z
    .locals 3
    .parameter "oldApn"
    .parameter "newApn"

    .prologue
    .line 784
    const/4 v0, 0x1

    .line 785
    .local v0, different:Z
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 786
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnSetting;->toHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnSetting;->toHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    const/4 v0, 0x0

    .line 790
    :cond_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 802
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DPT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 810
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DPT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 798
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DPT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 806
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DPT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return-void
.end method

.method private onGetDataCallProfileDone(Landroid/os/AsyncResult;I)V
    .locals 10
    .parameter "ar"
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    .line 404
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_1

    .line 405
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in onOmhProfileDone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/DataProfileTracker;->loge(Ljava/lang/String;)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileContext:I

    if-ne p2, v7, :cond_0

    .line 416
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v1, dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v1           #dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 419
    .restart local v1       #dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 421
    .local v5, modemProfile:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    iget v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileCount:I

    sub-int/2addr v7, v9

    iput v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileCount:I

    .line 423
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 427
    invoke-virtual {v5}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getDataServiceType()Lcom/android/internal/telephony/DataServiceType;

    move-result-object v3

    .line 429
    .local v3, dst:Lcom/android/internal/telephony/DataServiceType;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OMH] # profiles returned from modem:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 432
    iget-object v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->omhListGetArbitratedPriority(Ljava/util/ArrayList;Lcom/android/internal/telephony/DataServiceType;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataProfile;

    .line 437
    .local v2, dp:Lcom/android/internal/telephony/DataProfile;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OMH] omh data profile from modem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 440
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v7, v0

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/DataProfileOmh;->setDataProfileTypeModem(Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;)V

    .line 446
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/DataProfileTracker;->getDuplicateProfile(Lcom/android/internal/telephony/DataProfile;)Lcom/android/internal/telephony/DataProfileOmh;

    move-result-object v6

    .line 447
    .local v6, omhDuplicatedp:Lcom/android/internal/telephony/DataProfileOmh;
    if-nez v6, :cond_2

    .line 448
    iget-object v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    check-cast v2, Lcom/android/internal/telephony/DataProfileOmh;

    .end local v2           #dp:Lcom/android/internal/telephony/DataProfile;
    invoke-static {v3}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;)V

    goto :goto_1

    .line 458
    .restart local v2       #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OMH] Duplicate Profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 459
    invoke-static {v3}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;)V

    goto :goto_1

    .line 466
    .end local v2           #dp:Lcom/android/internal/telephony/DataProfile;
    .end local v3           #dst:Lcom/android/internal/telephony/DataServiceType;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #omhDuplicatedp:Lcom/android/internal/telephony/DataProfileOmh;
    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileCount:I

    if-nez v7, :cond_0

    .line 467
    const-string v7, "[OMH] Modem omh profile read complete."

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 468
    invoke-direct {p0}, Lcom/android/internal/telephony/DataProfileTracker;->addServiceTypeToUnSpecified()V

    .line 469
    iget-object v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    .line 470
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/DataProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataProfileTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method private onReadDataprofilesFromModem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 375
    iget-boolean v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhEnabled:Z

    if-eqz v4, :cond_0

    .line 376
    iget v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileContext:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileContext:I

    .line 378
    iput v8, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileCount:I

    .line 380
    iget-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 381
    iget-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 382
    iget-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 385
    invoke-static {}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->values()[Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 386
    .local v3, p:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading profiles for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 387
    iget v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileCount:I

    .line 388
    iget-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v5

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileContext:I

    invoke-virtual {p0, v6, v7, v8, v3}, Lcom/android/internal/telephony/DataProfileTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallProfile(ILandroid/os/Message;)V

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    .end local v0           #arr$:[Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #p:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    :cond_0
    return-void
.end method

.method private parseServiceTypeString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 575
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 577
    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 581
    :goto_0
    return-object v0

    .line 579
    .end local v0           #result:[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;
    goto :goto_0
.end method

.method private parseServiceTypes(Ljava/lang/String;)[Lcom/android/internal/telephony/DataServiceType;
    .locals 9
    .parameter "types"

    .prologue
    .line 585
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataServiceType;>;"
    if-eqz p1, :cond_0

    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 587
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v8

    .line 599
    .end local p0
    :goto_0
    return-object v8

    .line 589
    .restart local p0
    :cond_1
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 590
    .local v5, tempString:[Ljava/lang/String;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v6, v1, v2

    .line 591
    .local v6, ts:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 592
    invoke-static {v6}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 596
    .end local v6           #ts:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [Lcom/android/internal/telephony/DataServiceType;

    .line 597
    .local v7, typeArray:[Lcom/android/internal/telephony/DataServiceType;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/internal/telephony/DataServiceType;

    move-object v0, p0

    check-cast v0, [Lcom/android/internal/telephony/DataServiceType;

    move-object v7, v0

    move-object v8, v7

    .line 599
    goto :goto_0
.end method

.method private declared-synchronized reloadAllDataProfiles(Ljava/lang/String;)Z
    .locals 24
    .parameter "reason"

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reloading profile db for operator = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 230
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v10, allDataProfiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_1

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numeric = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 241
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_1

    .line 242
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 243
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->createDataProfileList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v10

    .line 245
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 249
    .end local v7           #selection:Ljava/lang/String;
    .end local v13           #cursor:Landroid/database/Cursor;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhEnabled:Z

    move v4, v0

    if-eqz v4, :cond_2

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    move-object v4, v0

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/DataProfileTracker;->updateDataServiceTypePrioritiesForOmh()V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/DataProfile;

    .line 258
    .local v14, dp:Lcom/android/internal/telephony/DataProfile;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataProfile from Modem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 228
    .end local v10           #allDataProfiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    .end local v14           #dp:Lcom/android/internal/telephony/DataProfile;
    .end local v17           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 267
    .restart local v10       #allDataProfiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    :cond_2
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/DataProfileTracker;->fetchDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v15

    .line 268
    .local v15, dunApn:Lcom/android/internal/telephony/DataProfile;
    if-eqz v15, :cond_3

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "static dun apn found. ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_3
    new-instance v12, Lcom/android/internal/telephony/CdmaNAI;

    invoke-direct {v12}, Lcom/android/internal/telephony/CdmaNAI;-><init>()V

    .line 279
    .local v12, cdmaNaiProfile:Lcom/android/internal/telephony/CdmaNAI;
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v11

    .local v11, arr$:[Lcom/android/internal/telephony/DataServiceType;
    move-object v0, v11

    array-length v0, v0

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    aget-object v23, v11, v17

    .line 286
    .local v23, t:Lcom/android/internal/telephony/DataServiceType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataServiceInfo;->clearDataProfiles()V

    .line 285
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 289
    .end local v23           #t:Lcom/android/internal/telephony/DataServiceType;
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v17           #i$:I
    :cond_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/DataProfile;

    .line 290
    .restart local v14       #dp:Lcom/android/internal/telephony/DataProfile;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new dp found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v11

    move-object v0, v11

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    .local v18, i$:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    aget-object v23, v11, v18

    .line 292
    .restart local v23       #t:Lcom/android/internal/telephony/DataServiceType;
    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataProfile;->canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/DataServiceInfo;->addDataProfile(Lcom/android/internal/telephony/DataProfile;)V

    .line 291
    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 304
    .end local v14           #dp:Lcom/android/internal/telephony/DataProfile;
    .end local v18           #i$:I
    .end local v23           #t:Lcom/android/internal/telephony/DataServiceType;
    :cond_7
    const-string v22, ""

    .line 305
    .local v22, oldHash:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/DataProfile;

    .line 306
    .restart local v14       #dp:Lcom/android/internal/telephony/DataProfile;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/android/internal/telephony/DataProfile;->toHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_3

    .line 308
    .end local v14           #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_8
    const-string v20, ""

    .line 309
    .local v20, newHash:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/DataProfile;

    .line 310
    .restart local v14       #dp:Lcom/android/internal/telephony/DataProfile;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/android/internal/telephony/DataProfile;->toHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto :goto_4

    .line 313
    .end local v14           #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_9
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    .line 315
    const/16 v16, 0x1

    .line 316
    .local v16, hasProfileDbChanged:Z
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 317
    const/16 v16, 0x0

    .line 320
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataServiceInfo;->getDataProfiles()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->getPreferredDefaultApnFromDb(Ljava/util/ArrayList;)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v21

    .line 322
    .local v21, newPreferredApn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->isApnDifferent(Lcom/android/internal/telephony/ApnSetting;Lcom/android/internal/telephony/ApnSetting;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 323
    const-string v4, "preferred apn has changed"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 324
    const/16 v16, 0x1

    .line 325
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    .line 328
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasProfileDbChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 330
    if-eqz v16, :cond_c

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mDataDataProfileDbChangedRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    new-instance v5, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :cond_c
    monitor-exit p0

    return v16
.end method

.method private setPreferredDefaultApnToDb(Lcom/android/internal/telephony/ApnSetting;)V
    .locals 4
    .parameter "apn"

    .prologue
    const/4 v3, 0x0

    .line 767
    iget-boolean v2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mCanSetDefaultPreferredApn:Z

    if-nez v2, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 771
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/telephony/DataProfileTracker;->PREFER_DEFAULT_APN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 773
    if-eqz p1, :cond_0

    .line 774
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 775
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget v3, p1, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 776
    sget-object v2, Lcom/android/internal/telephony/DataProfileTracker;->PREFER_DEFAULT_APN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private updateDataServiceTypePrioritiesForOmh()V
    .locals 7

    .prologue
    .line 355
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 356
    .local v4, t:Lcom/android/internal/telephony/DataServiceType;
    iget-object v5, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/DataProfileTracker;->mapOmhPriorityToAndroidPriority(Lcom/android/internal/telephony/DataServiceType;Z)I

    move-result v3

    .line 357
    .local v3, p:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OMH] Setting service priority: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/DataServiceType;->setPriority(I)V

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    .end local v3           #p:I
    .end local v4           #t:Lcom/android/internal/telephony/DataServiceType;
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;
    .locals 1
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->getActiveDataConnection(Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    return-object v0
.end method

.method getNextWorkingDataProfile(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;
    .locals 2
    .parameter "ds"
    .parameter "dpt"
    .parameter "ipv"

    .prologue
    .line 677
    sget-object v0, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p3, v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSetting;->isWorking(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSetting;->canSupportIpVersion(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    .line 687
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/DataServiceInfo;->getNextWorkingDataProfile(Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v0

    goto :goto_0
.end method

.method getRetryManager(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/RetryManager;
    .locals 1
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->getRetryManager(Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v0

    return-object v0
.end method

.method getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->getState(Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unhandled msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataProfileTracker;->logw(Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 209
    :pswitch_0
    const-string v0, "apnChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataProfileTracker;->reloadAllDataProfiles(Ljava/lang/String;)Z

    goto :goto_0

    .line 212
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/DataProfileTracker;->onReadDataprofilesFromModem()V

    goto :goto_0

    .line 215
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->onGetDataCallProfileDone(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isAnyDataProfileAvailable(Lcom/android/internal/telephony/DataProfile$DataProfileType;)Z
    .locals 4
    .parameter "dpt"

    .prologue
    .line 520
    const/4 v2, 0x0

    .line 521
    .local v2, ret:Z
    iget-object v3, p0, Lcom/android/internal/telephony/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataProfile;

    .line 522
    .local v0, dp:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 523
    const/4 v2, 0x1

    .line 527
    .end local v0           #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_1
    return v2
.end method

.method isDataProfilesLoadedForOperator(Ljava/lang/String;)Z
    .locals 1
    .parameter "numeric"

    .prologue
    .line 531
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOmhEnabled()Z
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhEnabled:Z

    return v0
.end method

.method isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z
    .locals 1
    .parameter "ds"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceInfo;->isServiceTypeActive()Z

    move-result v0

    return v0
.end method

.method isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z
    .locals 1
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->isServiceTypeActive(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v0

    return v0
.end method

.method isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z
    .locals 1
    .parameter "ds"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceInfo;->isDataServiceTypeEnabled()Z

    move-result v0

    return v0
.end method

.method public mapOmhPriorityToAndroidPriority(Lcom/android/internal/telephony/DataServiceType;Z)I
    .locals 3
    .parameter "t"
    .parameter "isOmhProfileProvisioned"

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, mappedPriority:I
    if-eqz p2, :cond_0

    .line 167
    const/16 v1, 0xff

    iget-object v2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v0, v1, v2

    .line 170
    :cond_0
    return v0
.end method

.method public omhListGetArbitratedPriority(Ljava/util/ArrayList;Lcom/android/internal/telephony/DataServiceType;)I
    .locals 6
    .parameter
    .parameter "ds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;",
            "Lcom/android/internal/telephony/DataServiceType;",
            ")I"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    const/4 v3, 0x0

    .line 181
    .local v3, profile:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataProfile;

    .line 182
    .local v1, dp:Lcom/android/internal/telephony/DataProfile;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataProfileOmh;->isValidPriority()Z

    move-result v4

    if-nez v4, :cond_0

    .line 183
    const-string v4, "[OMH] Invalid priority... skipping"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DataProfileTracker;->logw(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_0
    if-nez v3, :cond_1

    .line 188
    move-object v3, v1

    goto :goto_0

    .line 190
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_SUPL:Lcom/android/internal/telephony/DataServiceType;

    if-ne p2, v4, :cond_3

    .line 192
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v4, v0

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataProfileOmh;->getPriority()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataProfileOmh;->isPriorityLower(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v1

    :cond_2
    goto :goto_0

    .line 196
    :cond_3
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v4, v0

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataProfileOmh;->getPriority()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataProfileOmh;->isPriorityHigher(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v3, v1

    :cond_4
    goto :goto_0

    .line 201
    .end local v1           #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_5
    check-cast v3, Lcom/android/internal/telephony/DataProfileOmh;

    .end local v3           #profile:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfileOmh;->getPriority()I

    move-result v4

    return v4
.end method

.method public readDataprofilesFromModem()V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataProfileTracker;->sendMessage(Landroid/os/Message;)Z

    .line 367
    return-void
.end method

.method registerForDataProfileDbChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 703
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 704
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataProfileTracker;->mDataDataProfileDbChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 705
    return-void
.end method

.method public resetAllProfilesAsWorking()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 549
    iget-object v2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 550
    iget-object v2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataProfile;

    .line 551
    .local v0, dp:Lcom/android/internal/telephony/DataProfile;
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    .line 552
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    goto :goto_0

    .line 555
    .end local v0           #dp:Lcom/android/internal/telephony/DataProfile;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method resetAllServiceStates()V
    .locals 5

    .prologue
    .line 558
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 559
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    iget-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataServiceInfo;->resetServiceConnectionState()V

    .line 558
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 561
    .end local v1           #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_0
    return-void
.end method

.method resetServiceState(Lcom/android/internal/telephony/DataServiceType;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceInfo;->resetServiceConnectionState()V

    .line 565
    return-void
.end method

.method setServiceTypeAsActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/Phone$IPVersion;)V
    .locals 3
    .parameter "ds"
    .parameter "dc"
    .parameter "ipv"

    .prologue
    .line 641
    iget-object v1, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/telephony/DataServiceInfo;->setDataServiceTypeAsActive(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 642
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/DataProfileTracker;->getRetryManager(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 645
    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p3, v1, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/DataConnection;->getDataProfile()Lcom/android/internal/telephony/DataProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v1, v2, :cond_0

    .line 648
    invoke-virtual {p2}, Lcom/android/internal/telephony/DataConnection;->getDataProfile()Lcom/android/internal/telephony/DataProfile;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 649
    .local v0, apnUsed:Lcom/android/internal/telephony/ApnSetting;
    iget-object v1, p0, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/DataProfileTracker;->isApnDifferent(Lcom/android/internal/telephony/ApnSetting;Lcom/android/internal/telephony/ApnSetting;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 650
    iput-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    .line 651
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataProfileTracker;->setPreferredDefaultApnToDb(Lcom/android/internal/telephony/ApnSetting;)V

    .line 654
    .end local v0           #apnUsed:Lcom/android/internal/telephony/ApnSetting;
    :cond_0
    return-void
.end method

.method setServiceTypeAsInactive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V
    .locals 1
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->setDataServiceTypeAsInactive(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 658
    return-void
.end method

.method setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V
    .locals 1
    .parameter "ds"
    .parameter "enable"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->setServiceTypeEnabled(Z)V

    .line 634
    return-void
.end method

.method setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V
    .locals 1
    .parameter "state"
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/DataServiceInfo;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 692
    return-void
.end method

.method unregisterForDataProfileDbChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mDataDataProfileDbChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 709
    return-void
.end method

.method public updateOperatorNumeric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "newOperatorNumeric"
    .parameter "reason"

    .prologue
    .line 537
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataProfileTracker;->isDataProfilesLoadedForOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    :goto_0
    return-void

    .line 540
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operator numeric changed : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]  >>  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]. Reloading profile db. reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 543
    iput-object p1, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    .line 545
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/DataProfileTracker;->reloadAllDataProfiles(Ljava/lang/String;)Z

    goto :goto_0
.end method
