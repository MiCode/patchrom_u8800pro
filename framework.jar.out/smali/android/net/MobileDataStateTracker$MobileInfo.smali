.class Landroid/net/MobileDataStateTracker$MobileInfo;
.super Ljava/lang/Object;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobileInfo"
.end annotation


# instance fields
.field mApnName:Ljava/lang/String;

.field mGateway:Ljava/net/InetAddress;

.field mInterfaceName:Ljava/lang/String;

.field mIpAddress:Ljava/net/InetAddress;

.field mState:Lcom/android/internal/telephony/Phone$DataState;

.field final synthetic this$0:Landroid/net/MobileDataStateTracker;


# direct methods
.method constructor <init>(Landroid/net/MobileDataStateTracker;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 63
    iput-object p1, p0, Landroid/net/MobileDataStateTracker$MobileInfo;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v1, p0, Landroid/net/MobileDataStateTracker$MobileInfo;->mInterfaceName:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    .line 67
    iput-object v1, p0, Landroid/net/MobileDataStateTracker$MobileInfo;->mApnName:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Landroid/net/MobileDataStateTracker$MobileInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 69
    iput-object v1, p0, Landroid/net/MobileDataStateTracker$MobileInfo;->mGateway:Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ", "

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, r:Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker$MobileInfo;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, "mApnName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker$MobileInfo;->mApnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "mIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker$MobileInfo;->mIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, "mGateway="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker$MobileInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
