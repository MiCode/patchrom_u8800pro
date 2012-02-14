.class public Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;
.super Landroid/widget/LinearLayout;
.source "SimUnlockScreenHuaWei.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$2;,
        Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;,
        Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;,
        Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x7530

#the value of this static final field might be set in the static constructor
.field private static final HW_SWITCH_PUK_TRIED_TEN_TIMES:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_CDMA:Z = false

.field private static final PIN_INPUT:I = 0x0

.field private static final PUK_INPUT:I = 0x1

.field private static final PUK_TRIED_TEN_TIMES:Ljava/lang/String; = "PUK_TRIED_TEN_TIMES"

.field private static final TAG:Ljava/lang/String; = "PIN_PUK"


# instance fields
.field private mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputEnabled:Z

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewPinCode:Ljava/lang/String;

.field private mOkButton:Landroid/widget/TextView;

.field private mPUKCode:Ljava/lang/String;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPinText:Landroid/widget/TextView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mState:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

.field mTouchInput:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->DIGITS:[C

    .line 86
    const/4 v0, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->IS_CDMA:Z

    .line 87
    const-string v0, "ro.config.hw_pukTriedTenTimes"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->HW_SWITCH_PUK_TRIED_TEN_TIMES:Z

    return-void

    :cond_0
    move v0, v2

    .line 86
    goto :goto_0

    .line 80
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 119
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEnteredPin:[I

    .line 70
    iput v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEnteredDigits:I

    .line 72
    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 85
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mInputEnabled:Z

    .line 103
    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;->SUCCESSFUL:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mState:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    .line 120
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 121
    iput-object p4, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 125
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 128
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mCreationOrientation:I

    .line 129
    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mKeyboardHidden:I

    .line 130
    iput-object p5, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 133
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 134
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mKeyboardHidden:I

    if-ne v1, v3, :cond_1

    .line 135
    const v1, 0x1090034

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 145
    :goto_0
    const v1, 0x10201d4

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mHeaderText:Landroid/widget/TextView;

    .line 148
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mHeaderText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mHeaderText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    :cond_0
    const v1, 0x10201d7

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPinText:Landroid/widget/TextView;

    .line 155
    const v1, 0x10201d8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mBackSpaceButton:Landroid/view/View;

    .line 156
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v1, 0x10201bc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEmergencyCallButton:Landroid/widget/Button;

    .line 160
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 161
    const v1, 0x10201c2

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mOkButton:Landroid/widget/TextView;

    .line 166
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPhone:Landroid/telephony/TelephonyManager;

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->updateState()V

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->updateView()V

    .line 174
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x1040286

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 177
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->setFocusableInTouchMode(Z)V

    .line 181
    return-void

    .line 137
    :cond_1
    const v1, 0x1090035

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 138
    sget-boolean v1, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->HW_SWITCH_PUK_TRIED_TEN_TIMES:Z

    if-eqz v1, :cond_2

    .line 139
    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$1;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mTouchInput:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;

    goto/16 :goto_0

    .line 141
    :cond_2
    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$1;)V

    goto/16 :goto_0

    .line 69
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mState:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEnteredDigits:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPUKCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPUKCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mNewPinCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mNewPinCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->verifyNewPin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkPin()V
    .locals 2

    .prologue
    .line 579
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEnteredDigits:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 582
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEnteredDigits:I

    .line 584
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 614
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 589
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$1;->start()V

    goto :goto_0
.end method

.method private getPinPukRetries(I)Ljava/lang/String;
    .locals 4
    .parameter "pinOrPuk"

    .prologue
    const-string v3, "PIN_PUK"

    .line 239
    const-string v0, ""

    .line 240
    .local v0, strPinPukRetryNum:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 248
    const-string v1, "PIN_PUK"

    const-string v1, "getPinPukRetries(): input error!"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->HW_SWITCH_PUK_TRIED_TEN_TIMES:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 257
    const-string v0, "PUK_TRIED_TEN_TIMES"

    .line 263
    :goto_1
    const-string v1, "PIN_PUK"

    const-string v1, "PinPuk retry num: do not show"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_2
    return-object v0

    .line 242
    :pswitch_0
    const-string v1, "gsm.sim.num.pin"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    goto :goto_0

    .line 245
    :pswitch_1
    const-string v1, "gsm.sim.num.puk"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    goto :goto_0

    .line 259
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 265
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    const-string v1, "PIN_PUK"

    const-string v1, "PinPuk retry num:show"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 560
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mContext:Landroid/content/Context;

    const v2, 0x10402a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 563
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 566
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private reportDigit(I)V
    .locals 3
    .parameter "digit"

    .prologue
    .line 652
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEnteredDigits:I

    if-nez v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 660
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPinText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_0
.end method

.method private setInputEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mTouchInput:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mTouchInput:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->setInputEnabled(Z)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPinText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mInputEnabled:Z

    .line 379
    return-void

    .line 377
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private verifyNewPin(Ljava/lang/String;)Z
    .locals 1
    .parameter "pin2"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mNewPinCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const/4 v0, 0x1

    .line 387
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 429
    return-void
.end method

.method getState()Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mState:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    return-object v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 678
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 679
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->updateConfiguration()V

    .line 680
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 539
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v2, :cond_2

    .line 540
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 541
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 542
    .local v1, len:I
    if-lez v1, :cond_0

    .line 543
    sub-int v2, v1, v3

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 544
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEnteredDigits:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEnteredDigits:I

    .line 546
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 555
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_1
    :goto_0
    return-void

    .line 547
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_3

    .line 549
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 551
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_0

    .line 552
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_1

    .line 553
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->checkPin()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 685
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 686
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->updateConfiguration()V

    .line 687
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 618
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    move v1, v2

    .line 648
    :goto_0
    return v1

    .line 625
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->HW_SWITCH_PUK_TRIED_TEN_TIMES:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mInputEnabled:Z

    if-nez v1, :cond_1

    move v1, v3

    .line 626
    goto :goto_0

    .line 630
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->DIGITS:[C

    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v0

    .line 631
    .local v0, match:C
    if-eqz v0, :cond_2

    .line 632
    const/16 v1, 0x30

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->reportDigit(I)V

    move v1, v2

    .line 633
    goto :goto_0

    .line 635
    :cond_2
    const/16 v1, 0x43

    if-ne p1, v1, :cond_4

    .line 636
    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEnteredDigits:I

    if-lez v1, :cond_3

    .line 637
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 638
    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEnteredDigits:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEnteredDigits:I

    :cond_3
    move v1, v2

    .line 640
    goto :goto_0

    .line 643
    :cond_4
    const/16 v1, 0x42

    if-ne p1, v1, :cond_5

    .line 644
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->checkPin()V

    move v1, v2

    .line 645
    goto :goto_0

    :cond_5
    move v1, v3

    .line 648
    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 807
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 811
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 815
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->updateState()V

    .line 408
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->updateView()V

    .line 416
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEnteredDigits:I

    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 420
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 819
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 823
    return-void
.end method

.method setState(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mState:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    .line 193
    const-string v0, "PIN_PUK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set new state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mState:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method updateConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 663
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 664
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mCreationOrientation:I

    if-eq v2, v3, :cond_1

    .line 665
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    .line 667
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mKeyboardHidden:I

    .line 668
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mKeyboardHidden:I

    if-ne v2, v4, :cond_2

    move v0, v4

    .line 669
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 670
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 668
    .end local v0           #isKeyboardOpen:Z
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method updateState()V
    .locals 4

    .prologue
    .line 211
    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->getState()Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->getState()Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->getState()Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 218
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v0, :cond_2

    .line 220
    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;->REQUIRE_PIN:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->setState(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;)V

    goto :goto_0

    .line 222
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v0, :cond_3

    .line 224
    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->setState(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;)V

    goto :goto_0

    .line 229
    :cond_3
    const-string v1, "PIN_PUK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim is not pin or puk state :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateView()V
    .locals 10

    .prologue
    const v5, 0x104029d

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "PUK_TRIED_TEN_TIMES"

    const-string v6, "PIN_PUK"

    .line 276
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, pinRetry:Ljava/lang/String;
    const/4 v1, 0x0

    .line 280
    .local v1, pukRetry:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$2;->$SwitchMap$com$android$internal$policy$impl$SimUnlockScreenHuaWei$SimLockState:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mState:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$SimLockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 348
    const-string v2, "PIN_PUK"

    const-string v2, "UNLOCKED STATE!"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_0
    sget-boolean v2, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->HW_SWITCH_PUK_TRIED_TEN_TIMES:Z

    if-eqz v2, :cond_0

    .line 353
    const-string v2, "PUK_TRIED_TEN_TIMES"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 354
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mInputEnabled:Z

    if-eqz v2, :cond_0

    .line 355
    const-string v2, "PIN_PUK"

    const-string v2, "disable all buttons when PUK is wrong for 10 times"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->setInputEnabled(Z)V

    .line 364
    :cond_0
    :goto_1
    return-void

    .line 285
    :pswitch_0
    const-string v2, "PIN_PUK"

    const-string v2, "updateView(),REQUIRE_PIN"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->getPinPukRetries(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mHeaderText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mContext:Landroid/content/Context;

    const v5, 0x1040286

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 293
    :pswitch_1
    const-string v2, "PIN_PUK"

    const-string v2, "updateView(),REQUIRE_PUK"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->getPinPukRetries(I)Ljava/lang/String;

    move-result-object v1

    .line 296
    sget-boolean v2, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->HW_SWITCH_PUK_TRIED_TEN_TIMES:Z

    if-eqz v2, :cond_2

    const-string v2, "PUK_TRIED_TEN_TIMES"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 297
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mHeaderText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->IS_CDMA:Z

    if-eqz v4, :cond_1

    const v4, 0x2020009

    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_2

    .line 299
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mHeaderText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mContext:Landroid/content/Context;

    const v5, 0x2020001

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 307
    :pswitch_2
    const-string v2, "PIN_PUK"

    const-string v2, "updateView(),REQUIRE_NEW_PIN"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x2020002

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 314
    :pswitch_3
    const-string v2, "PIN_PUK"

    const-string v2, "updateView(),VERIFY_NEW_PIN"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x2020003

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 321
    :pswitch_4
    const-string v2, "PIN_PUK"

    const-string v2, "updateView(),VERIFY_PIN_FAILED"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->getPinPukRetries(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mHeaderText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mContext:Landroid/content/Context;

    const v5, 0x1040288

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 329
    :pswitch_5
    const-string v2, "PIN_PUK"

    const-string v2, "updateView(),VERIFY_PUK_FAILED"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->getPinPukRetries(I)Ljava/lang/String;

    move-result-object v1

    .line 332
    sget-boolean v2, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->HW_SWITCH_PUK_TRIED_TEN_TIMES:Z

    if-eqz v2, :cond_4

    const-string v2, "PUK_TRIED_TEN_TIMES"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 333
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mHeaderText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->IS_CDMA:Z

    if-eqz v4, :cond_3

    const v4, 0x2020009

    :goto_3
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    move v4, v5

    goto :goto_3

    .line 335
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mHeaderText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mContext:Landroid/content/Context;

    const v5, 0x2020004

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 343
    :pswitch_6
    const-string v2, "PIN_PUK"

    const-string v2, "updateView(),VERIFY_NEW_PIN_FAILED"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x2020005

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 358
    :cond_5
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mInputEnabled:Z

    if-nez v2, :cond_0

    .line 359
    const-string v2, "PIN_PUK"

    const-string v2, "enable all buttons to input PIN or PUK"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->setInputEnabled(Z)V

    goto/16 :goto_1

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
