.class public Lcom/android/internal/app/ResolverActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"


# instance fields
.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAlwaysCheck:Landroid/widget/CheckBox;

.field private mClearDefaultHint:Landroid/widget/TextView;

.field private mDefaultActivity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->DEBUG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 71
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDefaultActivity:Ljava/util/ArrayList;

    .line 241
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private loadCustApkData(Ljava/lang/String;)V
    .locals 7
    .parameter "customedApks"

    .prologue
    const-string v6, "ResolverActivity"

    .line 471
    const-string v4, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadData, customedApks = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v1, 0x0

    .line 474
    .local v1, defaultCustomedApkString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 476
    .local v0, defaultCustomedApkArray:[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mDefaultActivity:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 501
    :cond_0
    return-void

    .line 480
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 482
    if-eqz v1, :cond_0

    .line 484
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_0

    array-length v4, v0

    if-eqz v4, :cond_0

    .line 492
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 493
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, s:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 495
    const-string v4, "ResolverActivity"

    const-string v4, "!!! There is an illegal activity config in the hw_defaults.xml!"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mDefaultActivity:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setDefaultApk()V
    .locals 33

    .prologue
    .line 510
    const/16 v28, 0x0

    .line 511
    .local v28, rInfo:Landroid/content/pm/ResolveInfo;
    const/16 v20, 0x0

    .line 512
    .local v20, intent:Landroid/content/Intent;
    const/16 v21, 0x0

    .line 513
    .local v21, match:Z
    const/4 v14, 0x0

    .line 516
    .local v14, defaultActivityName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "default_customed_apk"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 517
    .local v15, defaultCustomedApk:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->loadCustApkData(Ljava/lang/String;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v8

    .line 521
    .local v8, adapterCount:I
    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mDefaultActivity:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-nez v30, :cond_2

    .line 522
    :cond_0
    const-string v30, "ResolverActivity"

    const-string v31, "!!! Adapter count == 0 or mDefaultActivity.size() == 0 in the ResolverActivity#setDefaultApk!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_1
    :goto_0
    return-void

    .line 527
    :cond_2
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move/from16 v0, v18

    move v1, v8

    if-ge v0, v1, :cond_5

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v28

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v20

    .line 531
    sget-boolean v30, Lcom/android/internal/app/ResolverActivity;->DEBUG:Z

    if-eqz v30, :cond_3

    .line 532
    const-string v30, "ResolverActivity"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "resolveInfo["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "].name="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v30, "ResolverActivity"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "resolveInfo["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "].packageName="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_3
    new-instance v10, Landroid/content/ComponentName;

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object v0, v10

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    .local v10, c:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mDefaultActivity:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mDefaultActivity:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 544
    :cond_4
    const/16 v21, 0x1

    .line 546
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    .line 551
    .end local v10           #c:Landroid/content/ComponentName;
    :cond_5
    if-eqz v21, :cond_6

    if-eqz v28, :cond_6

    if-nez v20, :cond_8

    .line 552
    :cond_6
    const-string v30, "ResolverActivity"

    const-string v31, "!!! No match."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 527
    .restart local v10       #c:Landroid/content/ComponentName;
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 557
    .end local v10           #c:Landroid/content/ComponentName;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object v1, v14

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    if-eqz v30, :cond_9

    .line 558
    const-string v30, "ResolverActivity"

    const-string v31, "Not the first time to choose."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 564
    :cond_9
    sget-boolean v30, Lcom/android/internal/app/ResolverActivity;->DEBUG:Z

    if-eqz v30, :cond_a

    const-string v30, "ResolverActivity"

    const-string v31, "Enter setDefaultApkmain process."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_a
    new-instance v17, Landroid/content/IntentFilter;

    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    .line 569
    .local v17, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_b

    .line 570
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 572
    :cond_b
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v12

    .line 573
    .local v12, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v12, :cond_c

    .line 574
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 575
    .local v11, cat:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_2

    .line 578
    .end local v11           #cat:Ljava/lang/String;
    .end local v19           #i$:Ljava/util/Iterator;
    :cond_c
    const-string v30, "android.intent.category.DEFAULT"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 580
    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v30, v0

    const/high16 v31, 0xfff

    and-int v11, v30, v31

    .line 581
    .local v11, cat:I
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 582
    .local v13, data:Landroid/net/Uri;
    const/high16 v30, 0x60

    move/from16 v0, v30

    move v1, v11

    if-ne v0, v1, :cond_d

    .line 583
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    .line 584
    .local v22, mimeType:Ljava/lang/String;
    if-eqz v22, :cond_d

    .line 586
    :try_start_0
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    .end local v22           #mimeType:Ljava/lang/String;
    :cond_d
    :goto_3
    if-eqz v13, :cond_13

    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_13

    .line 597
    const/high16 v30, 0x60

    move/from16 v0, v30

    move v1, v11

    if-ne v0, v1, :cond_e

    const-string v30, "file"

    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_13

    const-string v30, "content"

    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_13

    .line 600
    :cond_e
    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 604
    sget-boolean v30, Lcom/android/internal/app/ResolverActivity;->DEBUG:Z

    if-eqz v30, :cond_f

    const-string v30, "ResolverActivity"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "The resolve info filter: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_f
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v7

    .line 606
    .local v7, aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v7, :cond_11

    .line 607
    :cond_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_11

    .line 608
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter$AuthorityEntry;

    .line 609
    .local v6, a:Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v6, v13}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v30

    if-ltz v30, :cond_10

    .line 610
    invoke-virtual {v6}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v26

    .line 611
    .local v26, port:I
    invoke-virtual {v6}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v30

    if-ltz v26, :cond_16

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    :goto_4
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .end local v6           #a:Landroid/content/IntentFilter$AuthorityEntry;
    .end local v26           #port:I
    :cond_11
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v24

    .line 618
    .local v24, pIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v24, :cond_13

    .line 619
    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v25

    .line 620
    .local v25, path:Ljava/lang/String;
    :cond_12
    if-eqz v25, :cond_13

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_13

    .line 621
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/PatternMatcher;

    .line 622
    .local v23, p:Landroid/os/PatternMatcher;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_12

    .line 623
    invoke-virtual/range {v23 .. v23}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v23 .. v23}, Landroid/os/PatternMatcher;->getType()I

    move-result v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 631
    .end local v7           #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v23           #p:Landroid/os/PatternMatcher;
    .end local v24           #pIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v25           #path:Ljava/lang/String;
    :cond_13
    if-eqz v17, :cond_1

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v30, v0

    #getter for: Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$000(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v5

    .line 633
    .local v5, N:I
    move v0, v5

    new-array v0, v0, [Landroid/content/ComponentName;

    move-object/from16 v29, v0

    .line 634
    .local v29, set:[Landroid/content/ComponentName;
    const/4 v9, 0x0

    .line 635
    .local v9, bestMatch:I
    const/16 v18, 0x0

    :goto_5
    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_17

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v30, v0

    #getter for: Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$000(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object v0, v6

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v27, v0

    .line 638
    .local v27, r:Landroid/content/pm/ResolveInfo;
    sget-boolean v30, Lcom/android/internal/app/ResolverActivity;->DEBUG:Z

    if-eqz v30, :cond_14

    const-string v30, "ResolverActivity"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "PackageName="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", class="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_14
    new-instance v30, Landroid/content/ComponentName;

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v30, v29, v18

    .line 642
    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v30, v0

    move/from16 v0, v30

    move v1, v9

    if-le v0, v1, :cond_15

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move v9, v0

    .line 635
    :cond_15
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 587
    .end local v5           #N:I
    .end local v9           #bestMatch:I
    .end local v27           #r:Landroid/content/pm/ResolveInfo;
    .end local v29           #set:[Landroid/content/ComponentName;
    .restart local v22       #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 588
    .local v16, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v30, "ResolverActivity"

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 611
    .end local v16           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v22           #mimeType:Ljava/lang/String;
    .restart local v6       #a:Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v7       #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v26       #port:I
    :cond_16
    const/16 v31, 0x0

    goto/16 :goto_4

    .line 645
    .end local v6           #a:Landroid/content/IntentFilter$AuthorityEntry;
    .end local v7           #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v26           #port:I
    .restart local v5       #N:I
    .restart local v9       #bestMatch:I
    .restart local v29       #set:[Landroid/content/ComponentName;
    :cond_17
    const-string v30, "ResolverActivity"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Set default activity. Component: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    move v2, v9

    move-object/from16 v3, v29

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move-object v1, v14

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 653
    if-eqz v20, :cond_18

    .line 654
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 656
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mClearDefaultHint:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 458
    :cond_0
    if-eqz p2, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 132
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 133
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 134
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 135
    .local v0, alwaysCheck:Z
    :goto_0
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/internal/app/ResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 137
    return-void

    .line 134
    .end local v0           #alwaysCheck:Z
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 76
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .parameter "savedInstanceState"
    .parameter "intent"
    .parameter "title"
    .parameter "initialIntents"
    .parameter
    .parameter "alwaysUseOption"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p5, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;ZZ)V

    .line 129
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;ZZ)V
    .locals 9
    .parameter "savedInstanceState"
    .parameter "intent"
    .parameter "title"
    .parameter "initialIntents"
    .parameter
    .parameter "alwaysUseOption"
    .parameter "alwaysChoose"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p5, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 88
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 90
    .local v6, ap:Lcom/android/internal/app/AlertController$AlertParams;
    iput-object p3, v6, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 91
    iput-object p0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 94
    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ResolverActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alwaysUseOption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    if-eqz p6, :cond_1

    .line 97
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 99
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, 0x1090018

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 100
    iget-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1020187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    .line 101
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    const v1, 0x10402f5

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    iget-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1020188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mClearDefaultHint:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    .end local v8           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 108
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v7

    .line 109
    .local v7, count:I
    const/4 v0, 0x1

    if-gt v7, v0, :cond_2

    const/4 v0, 0x1

    if-ne v7, v0, :cond_3

    if-eqz p7, :cond_3

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iput-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 112
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->setDefaultApk()V

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->setupAlert()V

    .line 123
    :goto_1
    return-void

    .line 114
    :cond_3
    const/4 v0, 0x1

    if-ne v7, v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_1

    .line 119
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 26
    .parameter "ri"
    .parameter "intent"
    .parameter "alwaysCheck"

    .prologue
    .line 140
    if-eqz p3, :cond_b

    .line 142
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v13, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    move-object v0, v13

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v10

    .line 148
    .local v10, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_1

    .line 149
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 150
    .local v9, cat:Ljava/lang/String;
    invoke-virtual {v13, v9}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v9           #cat:Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v23, "android.intent.category.DEFAULT"

    move-object v0, v13

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v23, v0

    const/high16 v24, 0xfff

    and-int v9, v23, v24

    .line 156
    .local v9, cat:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 157
    .local v11, data:Landroid/net/Uri;
    const/high16 v23, 0x60

    move v0, v9

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 158
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 159
    .local v16, mimeType:Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 161
    :try_start_0
    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v16           #mimeType:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_7

    .line 172
    const/high16 v23, 0x60

    move v0, v9

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    const-string v23, "file"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7

    const-string v23, "content"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 175
    :cond_3
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    move-object v0, v13

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v7

    .line 180
    .local v7, aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v7, :cond_5

    .line 181
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 182
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter$AuthorityEntry;

    .line 183
    .local v6, a:Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v6, v11}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v23

    if-ltz v23, :cond_4

    .line 184
    invoke-virtual {v6}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v20

    .line 185
    .local v20, port:I
    invoke-virtual {v6}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v23

    if-ltz v20, :cond_9

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    :goto_2
    move-object v0, v13

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v6           #a:Landroid/content/IntentFilter$AuthorityEntry;
    .end local v20           #port:I
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v18

    .line 192
    .local v18, pIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v18, :cond_7

    .line 193
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 194
    .local v19, path:Ljava/lang/String;
    :cond_6
    if-eqz v19, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 195
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PatternMatcher;

    .line 196
    .local v17, p:Landroid/os/PatternMatcher;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 197
    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getType()I

    move-result v24

    move-object v0, v13

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 205
    .end local v7           #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v17           #p:Landroid/os/PatternMatcher;
    .end local v18           #pIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v19           #path:Ljava/lang/String;
    :cond_7
    if-eqz v13, :cond_b

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$000(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v5

    .line 207
    .local v5, N:I
    move v0, v5

    new-array v0, v0, [Landroid/content/ComponentName;

    move-object/from16 v22, v0

    .line 208
    .local v22, set:[Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 209
    .local v8, bestMatch:I
    const/4 v14, 0x0

    .end local p1
    .local v14, i:I
    :goto_3
    if-ge v14, v5, :cond_a

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->access$000(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v21, v0

    .line 211
    .local v21, r:Landroid/content/pm/ResolveInfo;
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v23, v22, v14

    .line 213
    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v23, v0

    move/from16 v0, v23

    move v1, v8

    if-le v0, v1, :cond_8

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move v8, v0

    .line 209
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 162
    .end local v5           #N:I
    .end local v8           #bestMatch:I
    .end local v14           #i:I
    .end local v21           #r:Landroid/content/pm/ResolveInfo;
    .end local v22           #set:[Landroid/content/ComponentName;
    .restart local v16       #mimeType:Ljava/lang/String;
    .restart local p1
    :catch_0
    move-exception v12

    .line 163
    .local v12, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v23, "ResolverActivity"

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 185
    .end local v12           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v16           #mimeType:Ljava/lang/String;
    .restart local v6       #a:Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v7       #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v20       #port:I
    :cond_9
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 215
    .end local v6           #a:Landroid/content/IntentFilter$AuthorityEntry;
    .end local v7           #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v20           #port:I
    .end local p1
    .restart local v5       #N:I
    .restart local v8       #bestMatch:I
    .restart local v14       #i:I
    .restart local v22       #set:[Landroid/content/ComponentName;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v23

    move-object v1, v13

    move v2, v8

    move-object/from16 v3, v22

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 220
    .end local v5           #N:I
    .end local v8           #bestMatch:I
    .end local v9           #cat:I
    .end local v10           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11           #data:Landroid/net/Uri;
    .end local v13           #filter:Landroid/content/IntentFilter;
    .end local v14           #i:I
    .end local v22           #set:[Landroid/content/ComponentName;
    :cond_b
    if-eqz p2, :cond_c

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 223
    :cond_c
    return-void
.end method
