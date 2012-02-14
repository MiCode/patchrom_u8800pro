.class Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;
.super Landroid/database/ContentObserver;
.source "DataProfileTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataProfileTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataProfileDbObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataProfileTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataProfileTracker;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "h"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;->this$0:Lcom/android/internal/telephony/DataProfileTracker;

    .line 112
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 113
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;->this$0:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;->this$0:Lcom/android/internal/telephony/DataProfileTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->sendMessage(Landroid/os/Message;)Z

    .line 118
    return-void
.end method
