.class abstract Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;
.super Ljava/lang/Thread;
.source "SimUnlockScreenHuaWei.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private mresult:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "pin"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->mresult:Z

    .line 444
    iput-object p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->mPin:Ljava/lang/String;

    .line 445
    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->mresult:Z

    return v0
.end method


# virtual methods
.method abstract onSimLockChangedResponse(Z)V
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-string v2, "phone"

    const-string v2, "PIN_PUK"

    .line 455
    :try_start_0
    const-string v2, "PIN_PUK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter code :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->mPin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    sget-object v2, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$2;->$SwitchMap$com$android$internal$policy$impl$SimUnlockScreenHuaWei$SimLockState:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mState:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 510
    const-string v2, "PIN_PUK"

    const-string v3, "UNLOCKED STATE!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    new-instance v3, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->post(Ljava/lang/Runnable;)Z

    .line 535
    :goto_1
    return-void

    .line 460
    :pswitch_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->mresult:Z

    .line 463
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->mresult:Z

    if-ne v5, v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    sget-object v3, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;->SUCCESSFUL:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->setState(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 529
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    new-instance v3, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin$3;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 466
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    sget-object v3, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;->VERIFY_PIN_FAILED:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->setState(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;)V

    goto :goto_0

    .line 473
    :pswitch_1
    const-string v2, "PIN_PUK"

    const-string v3, "puk code entered, request for new pin."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->mPin:Ljava/lang/String;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPUKCode:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->access$202(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;Ljava/lang/String;)Ljava/lang/String;

    .line 475
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->mresult:Z

    .line 476
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    sget-object v3, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->setState(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;)V

    goto :goto_0

    .line 482
    :pswitch_2
    const-string v2, "PIN_PUK"

    const-string v3, "new pin code entered, verify pin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->mPin:Ljava/lang/String;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mNewPinCode:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->access$302(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;Ljava/lang/String;)Ljava/lang/String;

    .line 485
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->mresult:Z

    .line 486
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    sget-object v3, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->setState(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;)V

    goto :goto_0

    .line 491
    :pswitch_3
    const-string v2, "PIN_PUK"

    const-string v3, "new pin code re-entered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->mPin:Ljava/lang/String;

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->verifyNewPin(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 495
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPUKCode:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mNewPinCode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->access$300(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, newCode:Ljava/lang/String;
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->mresult:Z

    .line 499
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->mresult:Z

    if-ne v5, v2, :cond_1

    .line 500
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    sget-object v3, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;->SUCCESSFUL:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->setState(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;)V

    goto/16 :goto_0

    .line 502
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    sget-object v3, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;->VERIFY_PUK_FAILED:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->setState(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;)V

    goto/16 :goto_0

    .line 504
    .end local v1           #newCode:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->mresult:Z

    .line 505
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    sget-object v3, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->setState(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
