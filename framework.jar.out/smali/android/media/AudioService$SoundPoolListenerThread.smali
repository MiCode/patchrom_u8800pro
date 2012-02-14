.class Landroid/media/AudioService$SoundPoolListenerThread;
.super Ljava/lang/Thread;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundPoolListenerThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;)V
    .locals 1
    .parameter

    .prologue
    .line 968
    iput-object p1, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    .line 969
    const-string v0, "SoundPoolListenerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 970
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 975
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 976
    iget-object v0, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    #setter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$1202(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 978
    iget-object v0, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioService;->access$1300(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 979
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 980
    iget-object v1, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    new-instance v2, Landroid/media/AudioService$SoundPoolCallback;

    iget-object v3, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/media/AudioService$SoundPoolCallback;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    #setter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;

    .line 981
    iget-object v1, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v2}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 983
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/AudioService;->access$1300(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 984
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 986
    return-void

    .line 984
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
