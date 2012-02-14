.class Lcom/android/server/am/ActivityRecord;
.super Landroid/view/IApplicationToken$Stub;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;
    }
.end annotation


# static fields
.field private static final SOCKET_NAME:Ljava/lang/String; = "socket_act_start_perf"

.field static mCommunicationCreated:Z

.field private static mLocalSocket:Landroid/net/LocalSocket;

.field private static mLocalSocketAddr:Landroid/net/LocalSocketAddress;

.field private static mOutputStream:Ljava/io/OutputStream;


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field final baseDir:Ljava/lang/String;

.field final componentSpecified:Z

.field configChangeFlags:I

.field configDestroy:Z

.field configuration:Landroid/content/res/Configuration;

.field connections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field cpuTimeAtResume:J

.field final dataDir:Ljava/lang/String;

.field delayedResume:Z

.field description:Ljava/lang/CharSequence;

.field finishing:Z

.field frontOfTask:Z

.field frozenBeforeDestroy:Z

.field final fullscreen:Z

.field hasBeenLaunched:Z

.field haveState:Z

.field icicle:Landroid/os/Bundle;

.field icon:I

.field idle:Z

.field inHistory:Z

.field final info:Landroid/content/pm/ActivityInfo;

.field final intent:Landroid/content/Intent;

.field final isHomeActivity:Z

.field keysPaused:Z

.field labelRes:I

.field launchFailed:Z

.field launchMode:I

.field launchTime:J

.field final launchedFromUid:I

.field newIntents:Ljava/util/ArrayList;

.field nonLocalizedLabel:Ljava/lang/CharSequence;

.field nowVisible:Z

.field final packageName:Ljava/lang/String;

.field pendingResults:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final processName:Ljava/lang/String;

.field final realActivity:Landroid/content/ComponentName;

.field final requestCode:I

.field final resDir:Ljava/lang/String;

.field final resolvedType:Ljava/lang/String;

.field resultTo:Lcom/android/server/am/ActivityRecord;

.field final resultWho:Ljava/lang/String;

.field results:Ljava/util/ArrayList;

.field final service:Lcom/android/server/am/ActivityManagerService;

.field final shortComponentName:Ljava/lang/String;

.field final stack:Lcom/android/server/am/ActivityStack;

.field startTime:J

.field state:Lcom/android/server/am/ActivityStack$ActivityState;

.field final stateNotNeeded:Z

.field stopped:Z

.field stringName:Ljava/lang/String;

.field task:Lcom/android/server/am/TaskRecord;

.field final taskAffinity:Ljava/lang/String;

.field theme:I

.field thumbnail:Landroid/graphics/Bitmap;

.field thumbnailNeeded:Z

.field uriPermissions:Lcom/android/server/am/UriPermissionOwner;

.field visible:Z

.field waitingVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActivityRecord;->mCommunicationCreated:Z

    .line 131
    sput-object v1, Lcom/android/server/am/ActivityRecord;->mOutputStream:Ljava/io/OutputStream;

    .line 132
    sput-object v1, Lcom/android/server/am/ActivityRecord;->mLocalSocket:Landroid/net/LocalSocket;

    .line 133
    sput-object v1, Lcom/android/server/am/ActivityRecord;->mLocalSocketAddr:Landroid/net/LocalSocketAddress;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZ)V
    .locals 8
    .parameter "_service"
    .parameter "_stack"
    .parameter "_caller"
    .parameter "_launchedFromUid"
    .parameter "_intent"
    .parameter "_resolvedType"
    .parameter "aInfo"
    .parameter "_configuration"
    .parameter "_resultTo"
    .parameter "_resultWho"
    .parameter "_reqCode"
    .parameter "_componentSpecified"

    .prologue
    .line 218
    invoke-direct {p0}, Landroid/view/IApplicationToken$Stub;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 220
    iput-object p2, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 221
    iput-object p7, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 222
    iput p4, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 223
    iput-object p5, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 224
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 225
    iput-object p6, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 226
    move/from16 v0, p12

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    .line 227
    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 228
    move-object/from16 v0, p9

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 229
    move-object/from16 v0, p10

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 230
    move/from16 v0, p11

    move-object v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 231
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 232
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 233
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 234
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 235
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 236
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 237
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 238
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 239
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 240
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 241
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 242
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 243
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 244
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    .line 245
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 246
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 249
    sget-boolean v4, Lcom/android/server/am/ActivityRecord;->mCommunicationCreated:Z

    if-nez v4, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->createSocketCommunication()V

    .line 252
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/am/ActivityRecord;->mCommunicationCreated:Z

    .line 256
    :cond_0
    if-eqz p7, :cond_d

    .line 257
    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget v4, p7, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v4, :cond_1

    iget v4, p7, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 260
    :cond_1
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 265
    :goto_0
    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 266
    iget v4, p7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    .line 268
    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    .line 269
    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    .line 270
    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->dataDir:Ljava/lang/String;

    .line 271
    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 272
    iget v4, p7, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v4, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    .line 273
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    if-nez v4, :cond_2

    .line 274
    iget-object v2, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 275
    .local v2, app:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 276
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v4, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    .line 278
    .end local v2           #app:Landroid/content/pm/ApplicationInfo;
    :cond_2
    invoke-virtual {p7}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v4

    iput v4, p0, Lcom/android/server/am/ActivityRecord;->icon:I

    .line 279
    invoke-virtual {p7}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v4

    iput v4, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    .line 280
    iget v4, p7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8

    if-eqz p3, :cond_8

    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_3

    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_8

    .line 284
    :cond_3
    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 289
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_4

    iget v4, p7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_4

    .line 290
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 293
    :cond_4
    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 294
    iget v4, p7, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v4, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    .line 296
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    :goto_3
    sget-object v7, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v3

    .line 299
    .local v3, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v3, :cond_a

    iget-object v4, v3, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v3, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 304
    if-eqz p12, :cond_5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq p4, v4, :cond_5

    if-nez p4, :cond_c

    .line 308
    :cond_5
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {p5, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    invoke-virtual {p5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_b

    invoke-virtual {p5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x1000

    and-int/2addr v4, v5

    if-eqz v4, :cond_b

    const-string v4, "android"

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 320
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    .line 339
    .end local v3           #ent:Lcom/android/server/AttributeCache$Entry;
    :goto_5
    return-void

    .line 262
    :cond_6
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 266
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 286
    :cond_8
    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto/16 :goto_2

    .line 296
    :cond_9
    const v6, 0x1030005

    goto/16 :goto_3

    .line 299
    .restart local v3       #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_a
    const/4 v4, 0x0

    goto :goto_4

    .line 322
    :cond_b
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    goto :goto_5

    .line 325
    :cond_c
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    goto :goto_5

    .line 328
    .end local v3           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_d
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 329
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 330
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    .line 331
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    .line 332
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    .line 333
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->dataDir:Ljava/lang/String;

    .line 334
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 335
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 336
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 337
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    goto :goto_5
.end method

.method private getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;
    .locals 2

    .prologue
    .line 640
    move-object v0, p0

    .line 641
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v1, :cond_1

    .line 643
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 644
    if-nez v0, :cond_0

    .line 645
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 648
    :cond_0
    if-nez v0, :cond_1

    .line 649
    move-object v0, p0

    .line 653
    :cond_1
    return-object v0
.end method


# virtual methods
.method addNewIntentLocked(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    return-void
.end method

.method addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 6
    .parameter "from"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 351
    new-instance v0, Lcom/android/server/am/ActivityResult;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityResult;-><init>(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 353
    .local v0, r:Lcom/android/server/am/ActivityResult;
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method final createSocketCommunication()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-string v6, "ActivityRecord"

    .line 460
    sget-object v3, Lcom/android/server/am/ActivityRecord;->mLocalSocket:Landroid/net/LocalSocket;

    if-nez v3, :cond_0

    .line 463
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    sput-object v3, Lcom/android/server/am/ActivityRecord;->mLocalSocket:Landroid/net/LocalSocket;

    .line 466
    :cond_0
    sget-object v3, Lcom/android/server/am/ActivityRecord;->mLocalSocketAddr:Landroid/net/LocalSocketAddress;

    if-nez v3, :cond_1

    .line 468
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v4, "socket_act_start_perf"

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    sput-object v3, Lcom/android/server/am/ActivityRecord;->mLocalSocketAddr:Landroid/net/LocalSocketAddress;

    .line 473
    :cond_1
    :try_start_0
    sget-object v3, Lcom/android/server/am/ActivityRecord;->mLocalSocket:Landroid/net/LocalSocket;

    sget-object v4, Lcom/android/server/am/ActivityRecord;->mLocalSocketAddr:Landroid/net/LocalSocketAddress;

    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :goto_0
    :try_start_1
    sget-object v3, Lcom/android/server/am/ActivityRecord;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/ActivityRecord;->mOutputStream:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 510
    :goto_1
    return-void

    .line 475
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 477
    .local v0, e:Ljava/io/IOException;
    const-string v3, "ActivityRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 488
    .local v2, ioe:Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lcom/android/server/am/ActivityRecord;->mLocalSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_2

    .line 490
    sget-object v3, Lcom/android/server/am/ActivityRecord;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 500
    :cond_2
    :goto_2
    :try_start_3
    sget-object v3, Lcom/android/server/am/ActivityRecord;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/am/ActivityRecord;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 507
    :cond_3
    :goto_3
    sput-object v7, Lcom/android/server/am/ActivityRecord;->mLocalSocket:Landroid/net/LocalSocket;

    .line 508
    sput-object v7, Lcom/android/server/am/ActivityRecord;->mOutputStream:Ljava/io/OutputStream;

    goto :goto_1

    .line 493
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 495
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "ActivityRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception mLocalSocket.close"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 502
    .end local v1           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v3

    move-object v1, v3

    .line 504
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v3, "ActivityRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception mOutputStream.close"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method final deliverNewIntentLocked(ILandroid/content/Intent;)V
    .locals 9
    .parameter "callingUid"
    .parameter "intent"

    .prologue
    const-string v8, "Exception thrown sending new intent to "

    const-string v7, "ActivityManager"

    .line 389
    const/4 v3, 0x0

    .line 390
    .local v3, sent:Z
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_0

    .line 393
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v0, ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 395
    .end local p2
    .local v2, intent:Landroid/content/Intent;
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v2, v6}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 398
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4, v0, p0}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 399
    const/4 v3, 0x1

    move-object p2, v2

    .line 408
    .end local v0           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v2           #intent:Landroid/content/Intent;
    .restart local p2
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 409
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityRecord;->addNewIntentLocked(Landroid/content/Intent;)V

    .line 411
    :cond_1
    return-void

    .line 400
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 401
    .local v1, e:Landroid/os/RemoteException;
    :goto_1
    const-string v4, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown sending new intent to "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 403
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 404
    .local v1, e:Ljava/lang/NullPointerException;
    :goto_2
    const-string v4, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown sending new intent to "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 403
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local p2
    .restart local v0       #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v4

    move-object v1, v4

    move-object p2, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local p2
    goto :goto_2

    .line 400
    .end local p2
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_3
    move-exception v4

    move-object v1, v4

    move-object p2, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local p2
    goto :goto_1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .parameter "pw"
    .parameter "prefix"

    .prologue
    const-wide/16 v2, 0x0

    .line 138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    const-string v0, " processName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "launchedFromUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 141
    const-string v0, " app="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "frontOfTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 144
    const-string v0, " task="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "taskAffinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "realActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "base="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " res="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    const-string v0, " data="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "labelRes=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    const-string v0, " icon=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->icon:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    const-string v0, " theme=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "stateNotNeeded="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 156
    const-string v0, " componentSpecified="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 157
    const-string v0, " isHomeActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 158
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "configuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 160
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "resultTo="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 161
    const-string v0, " resultWho="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    const-string v0, " resultCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "results="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v0, :cond_4

    .line 168
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "pendingResults="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v0, :cond_6

    .line 171
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v0, v0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    if-eqz v0, :cond_5

    .line 172
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "readUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v0, v0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 175
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v0, v0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    if-eqz v0, :cond_6

    .line 176
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "writeUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v0, v0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 180
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "launchFailed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 181
    const-string v0, " haveState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 182
    const-string v0, " icicle="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "state="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 184
    const-string v0, " stopped="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 185
    const-string v0, " delayedResume="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 186
    const-string v0, " finishing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 187
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "keysPaused="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 188
    const-string v0, " inHistory="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 189
    const-string v0, " launchMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 190
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 191
    const-string v0, " visible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 192
    const-string v0, " frozenBeforeDestroy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 193
    const-string v0, " thumbnailNeeded="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 194
    const-string v0, " idle="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 195
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 196
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "launchTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, " startTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_a

    .line 201
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "waitingVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 202
    const-string v0, " nowVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 204
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    if-eqz v0, :cond_c

    .line 205
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "configDestroy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 206
    const-string v0, " configChangeFlags="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v0, :cond_d

    .line 210
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "connections="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 212
    :cond_d
    return-void
.end method

.method final getCurrentTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 536
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 539
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getKeyDispatchingTimeout()J
    .locals 4

    .prologue
    .line 694
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 695
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 696
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v2, :cond_1

    .line 698
    :cond_0
    const-wide/16 v2, 0x1388

    monitor-exit v1

    move-wide v1, v2

    .line 701
    :goto_0
    return-wide v1

    :cond_1
    const-wide/32 v2, 0xea60

    monitor-exit v1

    move-wide v1, v2

    goto :goto_0

    .line 702
    .end local v0           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lcom/android/server/am/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/UriPermissionOwner;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    return-object v0
.end method

.method public isInterestingToUserLocked()Z
    .locals 2

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyDispatchingTimedOut()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v7, "keyDispatchingTimedOut"

    .line 658
    const/4 v0, 0x0

    .line 659
    .local v0, anrApp:Lcom/android/server/am/ProcessRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 660
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 661
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2

    .line 662
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->debugging:Z

    if-eqz v4, :cond_0

    .line 663
    monitor-exit v3

    move v3, v6

    .line 689
    :goto_0
    return v3

    .line 666
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_1

    .line 668
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 669
    monitor-exit v3

    move v3, v6

    goto :goto_0

    .line 672
    :cond_1
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v4, :cond_4

    .line 673
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 682
    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    if-eqz v0, :cond_3

    .line 685
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "keyDispatchingTimedOut"

    invoke-virtual {v3, v0, v2, p0, v7}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 689
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 675
    :cond_4
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 676
    .local v1, info:Landroid/os/Bundle;
    const-string v4, "shortMsg"

    const-string v5, "keyDispatchingTimedOut"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v4, "longMsg"

    const-string v5, "Timed out while dispatching key event"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/am/ActivityManagerService;->finishInstrumentationLocked(Lcom/android/server/am/ProcessRecord;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 682
    .end local v1           #info:Landroid/os/Bundle;
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .parameter "app"

    .prologue
    .line 441
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pauseKeyDispatchingLocked()V
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 423
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/WindowManagerService;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 425
    :cond_0
    return-void
.end method

.method removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 4
    .parameter "from"
    .parameter "resultWho"
    .parameter "requestCode"

    .prologue
    .line 361
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 362
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_4

    .line 363
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityResult;

    .line 364
    .local v1, r:Lcom/android/server/am/ActivityResult;
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mFrom:Lcom/android/server/am/ActivityRecord;

    if-eq v2, p1, :cond_1

    .line 362
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 365
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 366
    if-nez p2, :cond_0

    .line 370
    :cond_2
    iget v2, v1, Lcom/android/server/am/ActivityResult;->mRequestCode:I

    if-ne v2, p3, :cond_0

    .line 372
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 368
    :cond_3
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 375
    .end local v0           #i:I
    .end local v1           #r:Lcom/android/server/am/ActivityResult;
    :cond_4
    return-void
.end method

.method removeUriPermissionsLocked()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked()V

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 418
    :cond_0
    return-void
.end method

.method resumeKeyDispatchingLocked()V
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-eqz v0, :cond_0

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 430
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/WindowManagerService;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 432
    :cond_0
    return-void
.end method

.method final sendActivityPerformanceInfo(Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;)V
    .locals 5
    .parameter "actInfo"

    .prologue
    const-string v2, ";"

    .line 516
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;->startupTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;->endTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;->consumedTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;->killProcsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, strInfo:Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/ActivityRecord;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    .line 524
    sget-object v2, Lcom/android/server/am/ActivityRecord;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .end local v1           #strInfo:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 529
    .local v0, e:Ljava/io/IOException;
    const-string v2, "ActivityRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendActivityPerformanceInfo exception occurs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1
    .parameter "app"
    .parameter "configChanges"

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0, p2}, Lcom/android/server/WindowManagerService;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 448
    :cond_0
    return-void
.end method

.method public stopFreezingScreenLocked(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 451
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz v0, :cond_1

    .line 452
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 453
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/WindowManagerService;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 455
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 715
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    .line 724
    :goto_0
    return-object v1

    .line 718
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 719
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "HistoryRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 722
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    goto :goto_0
.end method

.method public windowsGone()V
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 634
    return-void
.end method

.method public windowsVisible()V
    .locals 24

    .prologue
    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 546
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    move-wide v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 547
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 548
    .local v12, curTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    move-wide v3, v0

    sub-long v6, v12, v3

    .line 549
    .local v6, thisTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object v3, v0

    iget-wide v3, v3, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object v3, v0

    iget-wide v3, v3, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    sub-long v3, v12, v3

    move-wide v8, v3

    .line 552
    .local v8, totalTime:J
    :goto_0
    const/16 v3, 0x7539

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object v10, v0

    aput-object v10, v4, v5

    const/4 v5, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    move-object v0, v3

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    .line 556
    .local v19, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 557
    const-string v3, "Displayed "

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const-string v3, ": "

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    move-wide v0, v6

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 561
    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    .line 562
    const-string v3, " (total "

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    move-wide v0, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 564
    const-string v3, ")"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object v3, v0

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 569
    .local v16, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object v3, v0

    add-int/lit8 v4, v16, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 571
    .local v22, subString:Ljava/lang/String;
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 572
    .local v14, currentTime:Ljava/util/Date;
    new-instance v11, Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;

    invoke-direct {v11}, Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;-><init>()V

    .line 574
    .local v11, actPerformanceInfo:Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object v3, v0

    iput-object v3, v11, Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;->activityName:Ljava/lang/String;

    .line 575
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->getCurrentTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;->endTime:Ljava/lang/String;

    .line 576
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    move-wide v3, v0

    sub-long v3, v12, v3

    iput-wide v3, v11, Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;->consumedTime:J

    .line 577
    const/4 v3, 0x0

    iput v3, v11, Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;->killProcsCount:I

    .line 578
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-wide v12, v11, Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;->consumedTime:J

    .end local v12           #curTime:J
    sub-long v20, v3, v12

    .line 579
    .local v20, startupMillsecond:J
    new-instance v3, Ljava/util/Date;

    move-object v0, v3

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->getCurrentTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;->startupTime:Ljava/lang/String;

    .line 580
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->sendActivityPerformanceInfo(Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;)V

    .line 583
    const-string v3, "ActivityManager"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object v3, v0

    const/4 v4, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 586
    const-wide/16 v3, 0x0

    cmp-long v3, v8, v3

    if-lez v3, :cond_1

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Lcom/android/server/am/UsageStatsService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object v4, v0

    long-to-int v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/UsageStatsService;->noteLaunchTime(Landroid/content/ComponentName;I)V

    .line 589
    :cond_1
    const-wide/16 v3, 0x0

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ActivityRecord;->launchTime:J

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 592
    .end local v6           #thisTime:J
    .end local v8           #totalTime:J
    .end local v11           #actPerformanceInfo:Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;
    .end local v14           #currentTime:Ljava/util/Date;
    .end local v16           #index:I
    .end local v19           #sb:Ljava/lang/StringBuilder;
    .end local v20           #startupMillsecond:J
    .end local v22           #subString:Ljava/lang/String;
    :cond_2
    const-wide/16 v3, 0x0

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ActivityRecord;->startTime:J

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 596
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    move v3, v0

    if-nez v3, :cond_4

    .line 597
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 598
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->idle:Z

    move v3, v0

    if-nez v3, :cond_6

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    .line 625
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 627
    :cond_4
    monitor-exit v23

    .line 628
    return-void

    .restart local v6       #thisTime:J
    .restart local v12       #curTime:J
    :cond_5
    move-wide v8, v6

    .line 549
    goto/16 :goto_0

    .line 609
    .end local v6           #thisTime:J
    .end local v12           #curTime:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 610
    .local v10, N:I
    if-lez v10, :cond_3

    .line 611
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    if-ge v15, v10, :cond_7

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 614
    .local v18, r:Lcom/android/server/am/ActivityRecord;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 611
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 619
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 620
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v17

    .line 621
    .local v17, msg:Landroid/os/Message;
    const/16 v3, 0xb

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 627
    .end local v10           #N:I
    .end local v15           #i:I
    .end local v17           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
