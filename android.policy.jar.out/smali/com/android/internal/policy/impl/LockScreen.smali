.class Lcom/android/internal/policy/impl/LockScreen;
.super Landroid/widget/LinearLayout;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreen$4;,
        Lcom/android/internal/policy/impl/LockScreen$IccText;,
        Lcom/android/internal/policy/impl/LockScreen$Status;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final TAG:Ljava/lang/String; = "LockScreen"


# instance fields
.field private mAlarmIcon:Landroid/graphics/drawable/Drawable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryLevel:I

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/graphics/drawable/Drawable;

.field private mCreationOrientation:I

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEmergencyCallText:Landroid/widget/TextView;

.field private mEnableMenuKeyInLockScreen:Z

.field private mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextAlarm:Ljava/lang/String;

.field private mPendingR1:Ljava/lang/Runnable;

.field private mPendingR2:Ljava/lang/Runnable;

.field private mPluggedIn:Z

.field private mScreenLocked:Landroid/widget/TextView;

.field private mSelector:Lcom/android/internal/widget/SlidingTab;

.field private mShowingBatteryInfo:Z

.field private mSilentMode:Z

.field private mSimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

.field private mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

.field private mStatus1:Landroid/widget/TextView;

.field private mStatus2:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mUimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 6
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 245
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 81
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    .line 84
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    .line 87
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    .line 89
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 91
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 101
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    .line 102
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    .line 103
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    .line 246
    iput-object p3, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 247
    iput-object p4, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 248
    iput-object p5, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 250
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->shouldEnableMenuKey()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 252
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    .line 254
    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 262
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 264
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 265
    const v1, 0x1090036

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 270
    :goto_0
    const v1, 0x10201d5

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    .line 272
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 273
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    const v1, 0x102005a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mDate:Landroid/widget/TextView;

    .line 276
    const v1, 0x10201df

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    .line 277
    const v1, 0x10201e0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    .line 279
    const v1, 0x10201e1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    .line 280
    const v1, 0x10201e2

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SlidingTab;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    .line 281
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 282
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x10402ad

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 284
    const v1, 0x10201dc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    .line 285
    const v1, 0x10201d0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 286
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v2, 0x1040290

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 288
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 289
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/internal/policy/impl/LockScreen$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockScreen$1;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->setFocusable(Z)V

    .line 297
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->setFocusableInTouchMode(Z)V

    .line 298
    const/high16 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setDescendantFocusability(I)V

    .line 300
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 301
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 304
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 306
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x108019d

    const v3, 0x1080210

    const v4, 0x10801f1

    const v5, 0x1080204

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 312
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    .line 314
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 316
    invoke-direct {p0, p4}, Lcom/android/internal/policy/impl/LockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 317
    return-void

    .line 267
    :cond_0
    const v1, 0x1090037

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method private createSimText()Lcom/android/internal/policy/impl/LockScreen$IccText;
    .locals 2

    .prologue
    .line 898
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$IccText;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/LockScreen$IccText;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/policy/impl/LockScreen$1;)V

    .line 899
    .local v0, simText:Lcom/android/internal/policy/impl/LockScreen$IccText;
    const v1, 0x104029d

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccPukLockedMessage:I

    .line 900
    const v1, 0x104029a

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingInstructions:I

    .line 901
    const v1, 0x104029f

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccPinLockedMessage:I

    .line 902
    const v1, 0x1040298

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingMessageShort:I

    .line 903
    return-object v0
.end method

.method private createUimText()Lcom/android/internal/policy/impl/LockScreen$IccText;
    .locals 2

    .prologue
    .line 910
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$IccText;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/LockScreen$IccText;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/policy/impl/LockScreen$1;)V

    .line 911
    .local v0, uimText:Lcom/android/internal/policy/impl/LockScreen$IccText;
    const v1, 0x2020009

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccPukLockedMessage:I

    .line 912
    const v1, 0x2020007

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingInstructions:I

    .line 913
    const v1, 0x2020008

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccPinLockedMessage:I

    .line 914
    const v1, 0x2020006

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingMessageShort:I

    .line 915
    return-object v0
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    const-string v2, ""

    .line 786
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    move-object v0, p0

    .line 799
    :goto_0
    return-object v0

    .line 788
    :cond_0
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 791
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 792
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 795
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 796
    :cond_3
    if-nez p0, :cond_4

    if-eqz p1, :cond_4

    move-object v0, p1

    .line 797
    goto :goto_0

    .line 799
    :cond_4
    const-string v0, ""

    move-object v0, v2

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 554
    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 555
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 596
    :goto_1
    return-object v1

    .line 552
    .end local v0           #missingAndNotProvisioned:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 558
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 596
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 560
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 562
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->NetworkLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 564
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 566
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 568
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 570
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 572
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 574
    :pswitch_7
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimIOError:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 576
    :pswitch_8
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->NetworkSubsetLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 578
    :pswitch_9
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->CorporateLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 580
    :pswitch_a
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->ServiceProviderLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 582
    :pswitch_b
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimSimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 584
    :pswitch_c
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimNetwork1Locked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 586
    :pswitch_d
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimNetwork2Locked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 588
    :pswitch_e
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimHrpdLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 590
    :pswitch_f
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimCorporateLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 592
    :pswitch_10
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimServiceProviderLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 594
    :pswitch_11
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimRuimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 558
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private getCurrentText()Lcom/android/internal/policy/impl/LockScreen$IccText;
    .locals 3

    .prologue
    .line 922
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 923
    .local v0, activePhoneType:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 926
    .local v1, isCdma:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 927
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    if-nez v2, :cond_0

    .line 928
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->createUimText()Lcom/android/internal/policy/impl/LockScreen$IccText;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    .line 930
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    .line 935
    :goto_1
    return-object v2

    .line 923
    .end local v1           #isCdma:Z
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 932
    .restart local v1       #isCdma:Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    if-nez v2, :cond_3

    .line 933
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->createSimText()Lcom/android/internal/policy/impl/LockScreen$IccText;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    .line 935
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    goto :goto_1
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshAlarmDisplay()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 465
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 466
    return-void
.end method

.method private refreshBatteryStringAndIcon()V
    .locals 5

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    .line 500
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 491
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    if-eqz v0, :cond_3

    .line 492
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040295

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0

    .line 495
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040294

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0

    .line 498
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040297

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshTimeAndDateDisplay()V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    return-void
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 2
    .parameter "updateMonitor"

    .prologue
    .line 340
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    .line 341
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    .line 342
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    .line 344
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    .line 347
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshBatteryStringAndIcon()V

    .line 348
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshAlarmDisplay()V

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mTimeFormat:Ljava/text/DateFormat;

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDateFormatString:Ljava/lang/String;

    .line 352
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshTimeAndDateDisplay()V

    .line 353
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 354
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 221
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x10d000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 222
    .local v0, configDisabled:Z
    const-string v5, "ro.monkey"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 223
    .local v3, isMonkey:Z
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/local/enable_menu_key"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    .line 228
    .local v1, fileOverride:Z
    const-string v5, "ro.config.hw_menu_unlockscreen"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 229
    .local v2, hwAllowMenuUnlock:Z
    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v5, v8

    :goto_0
    return v5

    :cond_1
    move v5, v7

    goto :goto_0
.end method

.method private toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V
    .locals 8
    .parameter "textView"
    .parameter "text"
    .parameter "color"
    .parameter "iconResourceId"

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 426
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 431
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    .line 434
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 435
    .local v7, oldText:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 437
    .local v6, oldColors:Landroid/content/res/ColorStateList;
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen$2;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/widget/TextView;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 448
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$3;

    invoke-direct {v0, p0, p1, v7, v6}, Lcom/android/internal/policy/impl/LockScreen$3;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/widget/TextView;Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    .line 455
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 456
    return-void
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V
    .locals 8
    .parameter "status"

    .prologue
    const v7, 0x104028e

    const/4 v6, 0x4

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 608
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 610
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->getCurrentText()Lcom/android/internal/policy/impl/LockScreen$IccText;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    .line 612
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 772
    :goto_0
    return-void

    .line 615
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 633
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104029c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 641
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 648
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    iget v1, v1, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingMessageShort:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 649
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    iget v1, v1, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingInstructions:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 652
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    goto :goto_0

    .line 660
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    iget v3, v3, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingMessageShort:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    iget v1, v1, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingInstructions:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 667
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 675
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    iget v3, v3, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccPinLockedMessage:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 688
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    iget v3, v3, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccPukLockedMessage:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 697
    const-string v0, "ro.config.hwft_PinPukUnlockscr"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    goto/16 :goto_0

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x104029e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 705
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 713
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x1040394

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 714
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 717
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 723
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x1040397

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 724
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 728
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x1040399

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 729
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 733
    :pswitch_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x1040398

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 734
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 738
    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x104039a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 739
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 743
    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x10403a1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 744
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 748
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x10403a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 749
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 753
    :pswitch_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x10403a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 754
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 758
    :pswitch_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x10403a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 759
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 763
    :pswitch_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x10403a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 764
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 768
    :pswitch_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x10403a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 769
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 612
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private updateLayoutForPersoText()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 777
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x104028e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 780
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 783
    return-void
.end method

.method private updateRightTabResources()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 324
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v0, v2

    .line 327
    .local v0, vibe:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    const v2, 0x108019e

    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v3, :cond_3

    const v3, 0x1080212

    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_4

    const v4, 0x10801fb

    :goto_3
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v5, :cond_5

    const v5, 0x108020e

    :goto_4
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    .line 337
    return-void

    .line 324
    .end local v0           #vibe:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 327
    .restart local v0       #vibe:Z
    :cond_1
    const v2, 0x108019b

    goto :goto_1

    :cond_2
    const v2, 0x108019c

    goto :goto_1

    :cond_3
    const v3, 0x108020f

    goto :goto_2

    :cond_4
    const v4, 0x10801fa

    goto :goto_3

    :cond_5
    const v5, 0x108020d

    goto :goto_4
.end method

.method private updateStatusLines()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 512
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreen$Status;->showStatusLines()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    :cond_1
    :goto_0
    return-void

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 523
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 525
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 530
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 537
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 864
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 865
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 866
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 867
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 868
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 848
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 825
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 831
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 832
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 837
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 843
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 844
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 403
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_2

    const v1, 0x10402ae

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 411
    :cond_0
    if-eqz p2, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 414
    :cond_1
    return-void

    .line 405
    :cond_2
    const v1, 0x10402af

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 358
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 361
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 854
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 881
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 472
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    .line 473
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    .line 474
    iput p3, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    .line 476
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshBatteryStringAndIcon()V

    .line 477
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 478
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    .line 546
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 859
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 860
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 872
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 873
    .local v0, silent:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eq v0, v1, :cond_0

    .line 874
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 875
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    .line 877
    :cond_0
    return-void

    .line 872
    .end local v0           #silent:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 805
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 806
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    .line 807
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 808
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshTimeAndDateDisplay()V

    .line 505
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 8
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 366
    if-ne p2, v6, :cond_1

    .line 367
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    if-ne p2, v5, :cond_0

    .line 370
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-nez v4, :cond_2

    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 371
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_5

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_3

    move v3, v6

    .line 376
    .local v3, vibe:Z
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_4

    move v5, v6

    :goto_3
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 383
    .end local v3           #vibe:Z
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    .line 385
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040121

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 389
    .local v0, message:Ljava/lang/String;
    :goto_5
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_7

    const v4, 0x10801a2

    move v2, v4

    .line 393
    .local v2, toastIcon:I
    :goto_6
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move v1, v4

    .line 396
    .local v1, toastColor:I
    :goto_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V

    .line 397
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .end local v0           #message:Ljava/lang/String;
    .end local v1           #toastColor:I
    .end local v2           #toastIcon:I
    :cond_2
    move v4, v7

    .line 370
    goto :goto_1

    :cond_3
    move v3, v7

    .line 372
    goto :goto_2

    .restart local v3       #vibe:Z
    :cond_4
    move v5, v7

    .line 376
    goto :goto_3

    .line 380
    .end local v3           #vibe:Z
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_4

    .line 385
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040122

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_5

    .line 389
    .restart local v0       #message:Ljava/lang/String;
    :cond_7
    const v4, 0x10801a3

    move v2, v4

    goto :goto_6

    .line 393
    .restart local v2       #toastIcon:I
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move v1, v4

    goto :goto_7
.end method

.method updateConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 811
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 812
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_1

    .line 813
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    .line 815
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 816
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-ne v2, v4, :cond_2

    move v0, v4

    .line 817
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 818
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 816
    .end local v0           #isKeyboardOpen:Z
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method
