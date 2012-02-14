.class Lcom/android/server/am/ActivityManagerService$FrontActivityInfo;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrontActivityInfo"
.end annotation


# instance fields
.field activityName:Ljava/lang/String;

.field endDisplayTime:Ljava/lang/String;

.field startDisplayTime:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
