.class Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;
.super Ljava/lang/Object;
.source "SimUnlockScreenHuaWei.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)V
    .locals 2
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    const v0, 0x1020225

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mZero:Landroid/widget/TextView;

    .line 712
    const v0, 0x102021c

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mOne:Landroid/widget/TextView;

    .line 713
    const v0, 0x102021d

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 714
    const v0, 0x102021e

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mThree:Landroid/widget/TextView;

    .line 715
    const v0, 0x102021f

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mFour:Landroid/widget/TextView;

    .line 716
    const v0, 0x1020220

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mFive:Landroid/widget/TextView;

    .line 717
    const v0, 0x1020221

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mSix:Landroid/widget/TextView;

    .line 718
    const v0, 0x1020222

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 719
    const v0, 0x1020223

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mEight:Landroid/widget/TextView;

    .line 720
    const v0, 0x1020224

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mNine:Landroid/widget/TextView;

    .line 721
    const v0, 0x1020193

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 723
    const-string v0, "ro.config.twelve_key_button"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mCancelButton:Landroid/widget/TextView;

    const v1, 0x2030028

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 742
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 697
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 767
    const/4 v0, -0x1

    .line 768
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 769
    const/4 v0, 0x0

    .line 789
    :cond_0
    :goto_0
    return v0

    .line 770
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 771
    const/4 v0, 0x1

    goto :goto_0

    .line 772
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 773
    const/4 v0, 0x2

    goto :goto_0

    .line 774
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 775
    const/4 v0, 0x3

    goto :goto_0

    .line 776
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 777
    const/4 v0, 0x4

    goto :goto_0

    .line 778
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 779
    const/4 v0, 0x5

    goto :goto_0

    .line 780
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 781
    const/4 v0, 0x6

    goto :goto_0

    .line 782
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 783
    const/4 v0, 0x7

    goto :goto_0

    .line 784
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 785
    const/16 v0, 0x8

    goto :goto_0

    .line 786
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 787
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 754
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 755
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->access$800(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 760
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 761
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->access$800(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/16 v2, 0x7530

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 762
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->reportDigit(I)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;->access$1100(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei;I)V

    goto :goto_0
.end method

.method public setInputEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 799
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 800
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 801
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 802
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 803
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 804
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 805
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 806
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 807
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 808
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 809
    return-void
.end method
