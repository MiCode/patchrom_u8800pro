.class Lcom/android/server/CNE$CallbackInfo;
.super Ljava/lang/Object;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackInfo"
.end annotation


# instance fields
.field isNotifBetterRat:Z

.field listener:Landroid/net/IConSvcEventListener;

.field final synthetic this$0:Lcom/android/server/CNE;


# direct methods
.method private constructor <init>(Lcom/android/server/CNE;)V
    .locals 0
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/server/CNE$CallbackInfo;->this$0:Lcom/android/server/CNE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/CNE;Lcom/android/server/CNE$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/android/server/CNE$CallbackInfo;-><init>(Lcom/android/server/CNE;)V

    return-void
.end method
