.class Landroid/net/http/PreConnectionThread$SocketEntry;
.super Ljava/lang/Object;
.source "PreConnectionThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/PreConnectionThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketEntry"
.end annotation


# instance fields
.field mSocketChannel:Ljava/nio/channels/SocketChannel;

.field mSubhost:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/http/PreConnectionThread;


# direct methods
.method constructor <init>(Landroid/net/http/PreConnectionThread;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Landroid/net/http/PreConnectionThread$SocketEntry;->this$0:Landroid/net/http/PreConnectionThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
