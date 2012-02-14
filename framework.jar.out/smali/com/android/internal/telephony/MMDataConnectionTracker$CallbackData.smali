.class Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
.super Ljava/lang/Object;
.source "MMDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MMDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallbackData"
.end annotation


# instance fields
.field dc:Lcom/android/internal/telephony/DataConnection;

.field dp:Lcom/android/internal/telephony/DataProfile;

.field ds:Lcom/android/internal/telephony/DataServiceType;

.field ipv:Lcom/android/internal/telephony/Phone$IPVersion;

.field reason:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MMDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
