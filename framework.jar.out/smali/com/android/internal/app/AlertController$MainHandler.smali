.class Lcom/android/internal/app/AlertController$MainHandler;
.super Landroid/os/Handler;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# static fields
.field private static final START_ANIMATION:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/AlertController;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/internal/app/AlertController$MainHandler;->this$0:Lcom/android/internal/app/AlertController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/AlertController;Lcom/android/internal/app/AlertController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController$MainHandler;-><init>(Lcom/android/internal/app/AlertController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$MainHandler;->this$0:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->startAnimation()V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
