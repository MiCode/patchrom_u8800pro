.class Landroid/net/wifi/WifiStateTracker$WpsEventComing;
.super Ljava/lang/Object;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WpsEventComing"
.end annotation


# instance fields
.field wpsEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "wpsEvent"

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$WpsEventComing;->wpsEvent:Ljava/lang/String;

    .line 431
    return-void
.end method
