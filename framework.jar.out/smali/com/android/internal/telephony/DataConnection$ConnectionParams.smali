.class public Lcom/android/internal/telephony/DataConnection$ConnectionParams;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ConnectionParams"
.end annotation


# instance fields
.field public dp:Lcom/android/internal/telephony/DataProfile;

.field public ipv:Lcom/android/internal/telephony/Phone$IPVersion;

.field public onCompletedMsg:Landroid/os/Message;

.field public radioTech:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public tag:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;Lcom/android/internal/telephony/DataProfile;Lcom/android/internal/telephony/Phone$IPVersion;Landroid/os/Message;)V
    .locals 0
    .parameter "radioTech"
    .parameter "dp"
    .parameter "ipv"
    .parameter "onCompletedMsg"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->radioTech:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 138
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->dp:Lcom/android/internal/telephony/DataProfile;

    .line 139
    iput-object p3, p0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    .line 140
    iput-object p4, p0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->onCompletedMsg:Landroid/os/Message;

    .line 141
    return-void
.end method
