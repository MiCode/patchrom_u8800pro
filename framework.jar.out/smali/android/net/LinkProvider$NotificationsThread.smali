.class Landroid/net/LinkProvider$NotificationsThread;
.super Ljava/lang/Thread;
.source "LinkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationsThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/LinkProvider;


# direct methods
.method private constructor <init>(Landroid/net/LinkProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Landroid/net/LinkProvider$NotificationsThread;->this$0:Landroid/net/LinkProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/LinkProvider;Landroid/net/LinkProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    invoke-direct {p0, p1}, Landroid/net/LinkProvider$NotificationsThread;-><init>(Landroid/net/LinkProvider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 331
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 332
    iget-object v0, p0, Landroid/net/LinkProvider$NotificationsThread;->this$0:Landroid/net/LinkProvider;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    #setter for: Landroid/net/LinkProvider;->mLooper:Landroid/os/Looper;
    invoke-static {v0, v1}, Landroid/net/LinkProvider;->access$302(Landroid/net/LinkProvider;Landroid/os/Looper;)Landroid/os/Looper;

    .line 333
    iget-object v0, p0, Landroid/net/LinkProvider$NotificationsThread;->this$0:Landroid/net/LinkProvider;

    new-instance v1, Landroid/net/LinkProvider$NotificationsThread$1;

    invoke-direct {v1, p0}, Landroid/net/LinkProvider$NotificationsThread$1;-><init>(Landroid/net/LinkProvider$NotificationsThread;)V

    #setter for: Landroid/net/LinkProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Landroid/net/LinkProvider;->access$202(Landroid/net/LinkProvider;Landroid/os/Handler;)Landroid/os/Handler;

    .line 371
    iget-object v0, p0, Landroid/net/LinkProvider$NotificationsThread;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Landroid/net/LinkProvider;->access$500(Landroid/net/LinkProvider;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 372
    iget-object v0, p0, Landroid/net/LinkProvider$NotificationsThread;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mHandlerAvail:Ljava/util/concurrent/locks/Condition;
    invoke-static {v0}, Landroid/net/LinkProvider;->access$600(Landroid/net/LinkProvider;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 373
    iget-object v0, p0, Landroid/net/LinkProvider$NotificationsThread;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Landroid/net/LinkProvider;->access$500(Landroid/net/LinkProvider;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 375
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 376
    return-void
.end method
