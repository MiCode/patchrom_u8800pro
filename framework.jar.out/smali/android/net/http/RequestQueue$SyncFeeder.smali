.class Landroid/net/http/RequestQueue$SyncFeeder;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Landroid/net/http/RequestFeeder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncFeeder"
.end annotation


# instance fields
.field private mRequest:Landroid/net/http/Request;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    return-void
.end method


# virtual methods
.method public getRequest()Landroid/net/http/Request;
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Landroid/net/http/RequestQueue$SyncFeeder;->mRequest:Landroid/net/http/Request;

    .line 456
    .local v0, r:Landroid/net/http/Request;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/http/RequestQueue$SyncFeeder;->mRequest:Landroid/net/http/Request;

    .line 457
    return-object v0
.end method

.method public getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;
    .locals 1
    .parameter "host"

    .prologue
    .line 460
    invoke-virtual {p0}, Landroid/net/http/RequestQueue$SyncFeeder;->getRequest()Landroid/net/http/Request;

    move-result-object v0

    return-object v0
.end method

.method public haveRequest(Lorg/apache/http/HttpHost;)Z
    .locals 1
    .parameter "host"

    .prologue
    .line 466
    iget-object v0, p0, Landroid/net/http/RequestQueue$SyncFeeder;->mRequest:Landroid/net/http/Request;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peekRequest()Landroid/net/http/Request;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Landroid/net/http/RequestQueue$SyncFeeder;->mRequest:Landroid/net/http/Request;

    return-object v0
.end method

.method public requeueRequest(Landroid/net/http/Request;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 469
    iput-object p1, p0, Landroid/net/http/RequestQueue$SyncFeeder;->mRequest:Landroid/net/http/Request;

    .line 470
    return-void
.end method

.method public requeueRequest(Landroid/net/http/Request;ZZ)V
    .locals 0
    .parameter "r"
    .parameter "commit"
    .parameter "notif"

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Landroid/net/http/RequestQueue$SyncFeeder;->requeueRequest(Landroid/net/http/Request;)V

    .line 473
    return-void
.end method
