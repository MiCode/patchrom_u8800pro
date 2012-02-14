.class Lcom/android/server/CNE$AddressInfo;
.super Ljava/lang/Object;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressInfo"
.end annotation


# instance fields
.field gatewayAddr:Ljava/lang/String;

.field ifName:Ljava/lang/String;

.field ipAddr:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/CNE;


# direct methods
.method public constructor <init>(Lcom/android/server/CNE;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 325
    iput-object p1, p0, Lcom/android/server/CNE$AddressInfo;->this$0:Lcom/android/server/CNE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object v0, p0, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    .line 327
    iput-object v0, p0, Lcom/android/server/CNE$AddressInfo;->gatewayAddr:Ljava/lang/String;

    .line 328
    iput-object v0, p0, Lcom/android/server/CNE$AddressInfo;->ifName:Ljava/lang/String;

    .line 329
    return-void
.end method
