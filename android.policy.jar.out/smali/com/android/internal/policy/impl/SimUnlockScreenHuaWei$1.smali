.class Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$1;
.super Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;
.source "SimUnlockScreenHuaWei.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->checkPin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .locals 2
    .parameter "success"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 594
    :cond_0
    if-eqz p1, :cond_1

    .line 597
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimPinUnlocked()V

    .line 598
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->access$800(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 611
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->access$800(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 612
    return-void

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->updateView()V

    .line 608
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPinText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->access$900(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEnteredDigits:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->access$1002(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;I)I

    goto :goto_0
.end method
