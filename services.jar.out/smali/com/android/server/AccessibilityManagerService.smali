.class public Lcom/android/server/AccessibilityManagerService;
.super Landroid/view/accessibility/IAccessibilityManager$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AccessibilityManagerService$Service;,
        Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;
    }
.end annotation


# static fields
.field private static final DO_SET_SERVICE_INFO:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManagerService"

.field private static final OWN_PROCESS_ID:I

.field private static sIdCounter:I


# instance fields
.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field private final mClientDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field final mComponentNameToServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/AccessibilityManagerService$Service;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private final mEnabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mHandledFeedbackTypes:I

.field private mHandler:Landroid/os/Handler;

.field private final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnabled:Z

.field final mLock:Ljava/lang/Object;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field final mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/AccessibilityManagerService$Service;",
            ">;"
        }
    .end annotation
.end field

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput v0, Lcom/android/server/AccessibilityManagerService;->sIdCounter:I

    .line 80
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/AccessibilityManagerService;->OWN_PROCESS_ID:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mClients:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mClientDeathHandlers:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;

    .line 105
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AccessibilityManagerService;->mHandledFeedbackTypes:I

    .line 116
    new-instance v0, Lcom/android/server/AccessibilityManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AccessibilityManagerService$1;-><init>(Lcom/android/server/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    .line 153
    iput-object p1, p0, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 154
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 155
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Lcom/android/internal/os/HandlerCaller$Callback;)V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 157
    invoke-direct {p0}, Lcom/android/server/AccessibilityManagerService;->registerPackageChangeAndBootCompletedBroadcastReceiver()V

    .line 158
    invoke-direct {p0}, Lcom/android/server/AccessibilityManagerService;->registerSettingsContentObservers()V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AccessibilityManagerService;Lcom/android/server/AccessibilityManagerService$Service;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/AccessibilityManagerService;->notifyEventListenerLocked(Lcom/android/server/AccessibilityManagerService$Service;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/AccessibilityManagerService;->tryRecycleLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/AccessibilityManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mClientDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AccessibilityManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/AccessibilityManagerService;->populateAccessibilityServiceListLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/AccessibilityManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/AccessibilityManagerService;->manageServicesLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/AccessibilityManagerService;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AccessibilityManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/AccessibilityManagerService;->mIsEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/AccessibilityManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/AccessibilityManagerService;->mIsEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/AccessibilityManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/AccessibilityManagerService;->updateClientsLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/AccessibilityManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/AccessibilityManagerService;->unbindAllServicesLocked()V

    return-void
.end method

.method static synthetic access$908()I
    .locals 2

    .prologue
    .line 73
    sget v0, Lcom/android/server/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/AccessibilityManagerService;->sIdCounter:I

    return v0
.end method

.method private canDispathEventLocked(Lcom/android/server/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;I)Z
    .locals 6
    .parameter "service"
    .parameter "event"
    .parameter "handledFeedbackTypes"

    .prologue
    const/4 v5, 0x0

    .line 545
    invoke-virtual {p1}, Lcom/android/server/AccessibilityManagerService$Service;->isConfigured()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 570
    :goto_0
    return v4

    .line 549
    :cond_0
    iget-object v4, p1, Lcom/android/server/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-interface {v4}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 550
    invoke-direct {p0, p1}, Lcom/android/server/AccessibilityManagerService;->removeDeadServiceLocked(Lcom/android/server/AccessibilityManagerService$Service;)Z

    move v4, v5

    .line 551
    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 555
    .local v0, eventType:I
    iget v4, p1, Lcom/android/server/AccessibilityManagerService$Service;->mEventTypes:I

    and-int/2addr v4, v0

    if-eq v4, v0, :cond_2

    move v4, v5

    .line 556
    goto :goto_0

    .line 559
    :cond_2
    iget-object v3, p1, Lcom/android/server/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    .line 560
    .local v3, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 562
    .local v2, packageName:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 563
    :cond_3
    iget v1, p1, Lcom/android/server/AccessibilityManagerService$Service;->mFeedbackType:I

    .line 564
    .local v1, feedbackType:I
    and-int v4, p3, v1

    if-ne v4, v1, :cond_4

    const/16 v4, 0x10

    if-ne v1, v4, :cond_5

    .line 566
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .end local v1           #feedbackType:I
    :cond_5
    move v4, v5

    .line 570
    goto :goto_0
.end method

.method private manageServicesLocked()V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/server/AccessibilityManagerService;->populateEnabledServicesLocked(Ljava/util/Set;)V

    .line 578
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/android/server/AccessibilityManagerService;->updateServicesStateLocked(Ljava/util/List;Ljava/util/Set;)V

    .line 579
    return-void
.end method

.method private notifyAccessibilityServiceDelayedLocked(Lcom/android/server/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 8
    .parameter "service"
    .parameter "event"

    .prologue
    .line 440
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 441
    :try_start_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 442
    .local v0, eventType:I
    iget-object v5, p1, Lcom/android/server/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityEvent;

    .line 443
    .local v2, oldEvent:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v5, p1, Lcom/android/server/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    iget v5, p1, Lcom/android/server/AccessibilityManagerService$Service;->mId:I

    shl-int/lit8 v5, v5, 0x10

    or-int v3, v0, v5

    .line 446
    .local v3, what:I
    if-eqz v2, :cond_0

    .line 447
    iget-object v5, p0, Lcom/android/server/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 448
    invoke-direct {p0, v2}, Lcom/android/server/AccessibilityManagerService;->tryRecycleLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 451
    :cond_0
    iget-object v5, p0, Lcom/android/server/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 452
    .local v1, message:Landroid/os/Message;
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v5

    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 453
    iget-object v5, p0, Lcom/android/server/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    iget-wide v6, p1, Lcom/android/server/AccessibilityManagerService$Service;->mNotificationTimeout:J

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 454
    monitor-exit v4

    .line 455
    return-void

    .line 454
    .end local v0           #eventType:I
    .end local v1           #message:Landroid/os/Message;
    .end local v2           #oldEvent:Landroid/view/accessibility/AccessibilityEvent;
    .end local v3           #what:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 6
    .parameter "event"
    .parameter "isDefault"

    .prologue
    .line 413
    const/4 v1, 0x0

    .local v1, i:I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 414
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AccessibilityManagerService$Service;

    .line 416
    .local v3, service:Lcom/android/server/AccessibilityManagerService$Service;
    iget-boolean v4, v3, Lcom/android/server/AccessibilityManagerService$Service;->mIsDefault:Z

    if-ne v4, p2, :cond_0

    .line 417
    iget v4, p0, Lcom/android/server/AccessibilityManagerService;->mHandledFeedbackTypes:I

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/AccessibilityManagerService;->canDispathEventLocked(Lcom/android/server/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 418
    iget v4, p0, Lcom/android/server/AccessibilityManagerService;->mHandledFeedbackTypes:I

    iget v5, v3, Lcom/android/server/AccessibilityManagerService$Service;->mFeedbackType:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/AccessibilityManagerService;->mHandledFeedbackTypes:I

    .line 419
    invoke-direct {p0, v3, p1}, Lcom/android/server/AccessibilityManagerService;->notifyAccessibilityServiceDelayedLocked(Lcom/android/server/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    .end local v0           #count:I
    .end local v3           #service:Lcom/android/server/AccessibilityManagerService$Service;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 429
    :cond_1
    return-void
.end method

.method private notifyEventListenerLocked(Lcom/android/server/AccessibilityManagerService$Service;I)V
    .locals 6
    .parameter "service"
    .parameter "eventType"

    .prologue
    const-string v5, "AccessibilityManagerService"

    .line 487
    iget-object v1, p1, Lcom/android/server/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IEventListener;

    .line 488
    .local v1, listener:Landroid/accessibilityservice/IEventListener;
    iget-object v3, p1, Lcom/android/server/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 491
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    :try_start_0
    invoke-interface {v1, v0}, Landroid/accessibilityservice/IEventListener;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v2

    .line 496
    .local v2, re:Landroid/os/RemoteException;
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 497
    const-string v3, "AccessibilityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Cleaning up."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 499
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/AccessibilityManagerService;->removeDeadServiceLocked(Lcom/android/server/AccessibilityManagerService$Service;)Z

    .line 500
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 502
    :cond_0
    const-string v3, "AccessibilityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private populateAccessibilityServiceListLocked()V
    .locals 6

    .prologue
    .line 393
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 395
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 398
    .local v2, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 399
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    :cond_0
    return-void
.end method

.method private populateEnabledServicesLocked(Ljava/util/Set;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p1, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 605
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, servicesValue:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 609
    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 610
    .local v2, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 611
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 612
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 616
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 617
    .local v0, enabledService:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 618
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 622
    .end local v0           #enabledService:Landroid/content/ComponentName;
    .end local v2           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v3           #str:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private registerPackageChangeAndBootCompletedBroadcastReceiver()V
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 168
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/android/server/AccessibilityManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/AccessibilityManagerService$2;-><init>(Lcom/android/server/AccessibilityManagerService;)V

    .line 240
    .local v2, monitor:Lcom/android/internal/content/PackageMonitor;
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Z)V

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, bootFiler:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    return-void
.end method

.method private registerSettingsContentObservers()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 252
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 254
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v3, "accessibility_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 255
    .local v1, enabledUri:Landroid/net/Uri;
    new-instance v3, Lcom/android/server/AccessibilityManagerService$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/AccessibilityManagerService$3;-><init>(Lcom/android/server/AccessibilityManagerService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 275
    const-string v3, "enabled_accessibility_services"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 277
    .local v2, providersUri:Landroid/net/Uri;
    new-instance v3, Lcom/android/server/AccessibilityManagerService$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/AccessibilityManagerService$4;-><init>(Lcom/android/server/AccessibilityManagerService;Landroid/os/Handler;)V

    invoke-virtual {v0, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 288
    return-void
.end method

.method private removeDeadServiceLocked(Lcom/android/server/AccessibilityManagerService$Service;)Z
    .locals 2
    .parameter "service"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 515
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    iget v1, p1, Lcom/android/server/AccessibilityManagerService$Service;->mId:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 521
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AccessibilityManagerService;->mIsEnabled:Z

    .line 523
    invoke-direct {p0}, Lcom/android/server/AccessibilityManagerService;->updateClientsLocked()V

    .line 526
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private tryRecycleLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 464
    if-nez p1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 468
    .local v1, eventType:I
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    .line 471
    .local v4, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/AccessibilityManagerService$Service;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 472
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AccessibilityManagerService$Service;

    .line 473
    .local v3, service:Lcom/android/server/AccessibilityManagerService$Service;
    iget-object v5, v3, Lcom/android/server/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p1, :cond_0

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 477
    .end local v3           #service:Lcom/android/server/AccessibilityManagerService$Service;
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0
.end method

.method private unbindAllServicesLocked()V
    .locals 6

    .prologue
    .line 585
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    .line 587
    .local v3, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/AccessibilityManagerService$Service;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 588
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AccessibilityManagerService$Service;

    .line 590
    .local v2, service:Lcom/android/server/AccessibilityManagerService$Service;
    invoke-virtual {v2}, Lcom/android/server/AccessibilityManagerService$Service;->unbind()V

    .line 591
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v5, v2, Lcom/android/server/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 593
    .end local v2           #service:Lcom/android/server/AccessibilityManagerService$Service;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 594
    return-void
.end method

.method private updateClientsLocked()V
    .locals 5

    .prologue
    .line 662
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mClients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 664
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mClients:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/IAccessibilityManagerClient;

    iget-boolean v4, p0, Lcom/android/server/AccessibilityManagerService;->mIsEnabled:Z

    invoke-interface {v3, v4}, Landroid/view/accessibility/IAccessibilityManagerClient;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 665
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 666
    .local v2, re:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mClients:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 667
    add-int/lit8 v0, v0, -0x1

    .line 668
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 671
    .end local v2           #re:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private updateServicesStateLocked(Ljava/util/List;Ljava/util/Set;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 634
    .local p1, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    .local p2, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 635
    .local v1, componentNameToServiceMap:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/AccessibilityManagerService$Service;>;"
    iget-object v7, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    .line 636
    .local v7, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/AccessibilityManagerService$Service;>;"
    iget-boolean v5, p0, Lcom/android/server/AccessibilityManagerService;->mIsEnabled:Z

    .line 638
    .local v5, isEnabled:Z
    const/4 v3, 0x0

    .local v3, i:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 639
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ServiceInfo;

    .line 640
    .local v4, intalledService:Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .local v0, componentName:Landroid/content/ComponentName;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AccessibilityManagerService$Service;

    .line 644
    .local v6, service:Lcom/android/server/AccessibilityManagerService$Service;
    if-eqz v5, :cond_1

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 645
    if-nez v6, :cond_0

    .line 646
    new-instance v8, Lcom/android/server/AccessibilityManagerService$Service;

    invoke-direct {v8, p0, v0}, Lcom/android/server/AccessibilityManagerService$Service;-><init>(Lcom/android/server/AccessibilityManagerService;Landroid/content/ComponentName;)V

    invoke-virtual {v8}, Lcom/android/server/AccessibilityManagerService$Service;->bind()V

    .line 638
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 649
    :cond_1
    if-eqz v6, :cond_0

    .line 650
    invoke-virtual {v6}, Lcom/android/server/AccessibilityManagerService$Service;->unbind()V

    .line 651
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 656
    .end local v0           #componentName:Landroid/content/ComponentName;
    .end local v4           #intalledService:Landroid/content/pm/ServiceInfo;
    .end local v6           #service:Lcom/android/server/AccessibilityManagerService$Service;
    :cond_2
    return-void
.end method


# virtual methods
.method public addClient(Landroid/view/accessibility/IAccessibilityManagerClient;)V
    .locals 6
    .parameter "client"

    .prologue
    .line 291
    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 293
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/AccessibilityManagerService;->mIsEnabled:Z

    invoke-interface {p1, v3}, Landroid/view/accessibility/IAccessibilityManagerClient;->setEnabled(Z)V

    .line 294
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mClients:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v0, Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;-><init>(Lcom/android/server/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;)V

    .line 296
    .local v0, cdh:Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mClientDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v0           #cdh:Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 302
    return-void

    .line 298
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 299
    .local v1, re:Landroid/os/RemoteException;
    const-string v3, "AccessibilityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead AccessibilityManagerClient: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 301
    .end local v1           #re:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "message"

    .prologue
    .line 366
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 385
    const-string v4, "AccessibilityManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown message type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_0
    return-void

    .line 368
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 370
    .local v0, arguments:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 371
    .local v1, info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget-object v3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/AccessibilityManagerService$Service;

    .line 373
    .local v3, service:Lcom/android/server/AccessibilityManagerService$Service;
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 374
    :try_start_0
    iget v5, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v5, v3, Lcom/android/server/AccessibilityManagerService$Service;->mEventTypes:I

    .line 375
    iget v5, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v5, v3, Lcom/android/server/AccessibilityManagerService$Service;->mFeedbackType:I

    .line 376
    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 377
    .local v2, packageNames:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 378
    iget-object v5, v3, Lcom/android/server/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 380
    :cond_0
    iget-wide v5, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v5, v3, Lcom/android/server/AccessibilityManagerService$Service;->mNotificationTimeout:J

    .line 381
    iget v5, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v3, Lcom/android/server/AccessibilityManagerService$Service;->mIsDefault:Z

    .line 382
    monitor-exit v4

    goto :goto_0

    .end local v2           #packageNames:[Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 381
    .restart local v2       #packageNames:[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 366
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessibilityServiceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interrupt()V
    .locals 8

    .prologue
    const-string v4, "AccessibilityManagerService"

    .line 344
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 345
    const/4 v1, 0x0

    .local v1, i:I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 346
    iget-object v5, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AccessibilityManagerService$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    .local v3, service:Lcom/android/server/AccessibilityManagerService$Service;
    :try_start_1
    iget-object v5, v3, Lcom/android/server/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IEventListener;

    invoke-interface {v5}, Landroid/accessibilityservice/IEventListener;->onInterrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 345
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 350
    .local v2, re:Landroid/os/RemoteException;
    :try_start_2
    instance-of v5, v2, Landroid/os/DeadObjectException;

    if-eqz v5, :cond_1

    .line 351
    const-string v5, "AccessibilityManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dead "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Cleaning up."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-direct {p0, v3}, Lcom/android/server/AccessibilityManagerService;->removeDeadServiceLocked(Lcom/android/server/AccessibilityManagerService$Service;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 353
    add-int/lit8 v0, v0, -0x1

    .line 354
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 357
    :cond_1
    const-string v5, "AccessibilityManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error during sending interrupt request to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 362
    .end local v0           #count:I
    .end local v2           #re:Landroid/os/RemoteException;
    .end local v3           #service:Lcom/android/server/AccessibilityManagerService$Service;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v0       #count:I
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 363
    return-void
.end method

.method public removeClient(Landroid/view/accessibility/IAccessibilityManagerClient;)V
    .locals 6
    .parameter "client"

    .prologue
    .line 305
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 306
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mClients:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 308
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mClientDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 310
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 311
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mClientDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;

    .line 312
    .local v0, cdh:Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;
    iget-object v4, v0, Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient;

    if-ne v4, p1, :cond_1

    .line 313
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mClientDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 314
    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 319
    .end local v0           #cdh:Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_0
    monitor-exit v3

    .line 320
    return-void

    .line 310
    .restart local v0       #cdh:Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;
    .restart local v1       #i:I
    .restart local v2       #size:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v0           #cdh:Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 325
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 326
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    iget v0, p0, Lcom/android/server/AccessibilityManagerService;->mHandledFeedbackTypes:I

    if-nez v0, :cond_0

    .line 329
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 334
    :goto_0
    sget v0, Lcom/android/server/AccessibilityManagerService;->OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-eq v0, v1, :cond_1

    move v0, v3

    :goto_1
    return v0

    .line 326
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 331
    :cond_0
    iput v2, p0, Lcom/android/server/AccessibilityManagerService;->mHandledFeedbackTypes:I

    goto :goto_0

    :cond_1
    move v0, v2

    .line 334
    goto :goto_1
.end method
