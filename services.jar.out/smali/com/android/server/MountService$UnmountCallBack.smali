.class Lcom/android/server/MountService$UnmountCallBack;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountCallBack"
.end annotation


# instance fields
.field final force:Z

.field final path:Ljava/lang/String;

.field retries:I

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "path"
    .parameter "force"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    .line 311
    iput-object p2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 312
    iput-boolean p3, p0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    .line 313
    return-void
.end method


# virtual methods
.method handleFinished()V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v1, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    const/4 v2, 0x1

    #calls: Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;Z)I
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$100(Lcom/android/server/MountService;Ljava/lang/String;Z)I

    .line 318
    return-void
.end method
