.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "looper"

    .prologue
    .line 522
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 523
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 524
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 525
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "Camera"

    .line 529
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 610
    const-string v1, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 531
    :sswitch_0
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 537
    :sswitch_1
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v2, v1, v3}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 543
    :sswitch_2
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v2, v1, v3}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 549
    :sswitch_3
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 550
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v0

    .line 551
    .local v0, cb:Landroid/hardware/Camera$PreviewCallback;
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mOneShot:Z
    invoke-static {v1}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 555
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v2, 0x0

    #setter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v1, v2}, Landroid/hardware/Camera;->access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 562
    :cond_1
    :goto_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 556
    :cond_2
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mWithBuffer:Z
    invoke-static {v1}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 560
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #calls: Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V
    invoke-static {v1, v5, v4}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;ZZ)V

    goto :goto_1

    .line 567
    .end local v0           #cb:Landroid/hardware/Camera$PreviewCallback;
    :sswitch_4
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v2, v1, v3}, Landroid/hardware/Camera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 573
    :sswitch_5
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v2, v1, v3}, Landroid/hardware/Camera$CameraMetaDataCallback;->onCameraMetaData([ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 579
    :sswitch_6
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v2, v1, v3}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 585
    :sswitch_7
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 586
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_3

    move v2, v4

    :goto_2
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v1, v2, v3}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_3
    move v2, v5

    goto :goto_2

    .line 591
    :sswitch_8
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAutoFocusSwitchCallback:Landroid/hardware/Camera$AutoFocusSwitchCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusSwitchCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 592
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAutoFocusSwitchCallback:Landroid/hardware/Camera$AutoFocusSwitchCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusSwitchCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v1, v2, v3}, Landroid/hardware/Camera$AutoFocusSwitchCallback;->onAutoFocusSwitch(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 597
    :sswitch_9
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v1}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v1}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_4

    move v3, v5

    :goto_3
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_4
    move v3, v4

    goto :goto_3

    .line 603
    :sswitch_a
    const-string v1, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v1}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v1, v2, v3}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 529
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_0
        0x4 -> :sswitch_7
        0x8 -> :sswitch_9
        0x10 -> :sswitch_3
        0x40 -> :sswitch_6
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x200 -> :sswitch_4
        0x400 -> :sswitch_5
        0x800 -> :sswitch_8
    .end sparse-switch
.end method
