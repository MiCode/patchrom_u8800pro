.class public Lcom/android/internal/policy/impl/KeyguardViewMediator$MyPhoneCallListener;
.super Landroid/telephony/PhoneStateListener;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPhoneCallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$MyPhoneCallListener;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const-string v2, "modemlogcat"

    const-string v1, "KeyguardViewMediator"

    .line 325
    packed-switch p1, :pswitch_data_0

    .line 337
    :goto_0
    return-void

    .line 327
    :pswitch_0
    const-string v0, "KeyguardViewMediator"

    const-string v0, "CALL_STATE_IDLE"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v0, "ctl.stop"

    const-string v1, "modemlogcat"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :pswitch_1
    const-string v0, "KeyguardViewMediator"

    const-string v0, "CALL_STATE_RINGING"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v0, "ctl.start"

    const-string v1, "modemlogcat"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
