.class Lcom/android/internal/policy/impl/LockScreen$IccText;
.super Ljava/lang/Object;
.source "LockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IccText"
.end annotation


# instance fields
.field iccMissingInstructions:I

.field iccMissingMessageShort:I

.field iccPinLockedMessage:I

.field iccPukLockedMessage:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 887
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$IccText;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccPukLockedMessage:I

    .line 889
    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingInstructions:I

    .line 890
    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccPinLockedMessage:I

    .line 891
    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingMessageShort:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/policy/impl/LockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 887
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockScreen$IccText;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    return-void
.end method
