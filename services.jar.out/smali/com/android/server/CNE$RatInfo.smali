.class Lcom/android/server/CNE$RatInfo;
.super Ljava/lang/Object;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RatInfo"
.end annotation


# instance fields
.field rat:I

.field status:Lcom/android/server/CNE$RatTriedStatus;

.field final synthetic this$0:Lcom/android/server/CNE;


# direct methods
.method public constructor <init>(Lcom/android/server/CNE;)V
    .locals 1
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/server/CNE$RatInfo;->this$0:Lcom/android/server/CNE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/CNE$RatInfo;->rat:I

    .line 659
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 662
    instance-of v2, p1, Lcom/android/server/CNE$RatInfo;

    if-eqz v2, :cond_0

    .line 663
    move-object v0, p1

    check-cast v0, Lcom/android/server/CNE$RatInfo;

    move-object v1, v0

    .line 664
    .local v1, ratInfo:Lcom/android/server/CNE$RatInfo;
    iget v2, p0, Lcom/android/server/CNE$RatInfo;->rat:I

    iget v3, v1, Lcom/android/server/CNE$RatInfo;->rat:I

    if-ne v2, v3, :cond_0

    .line 665
    const/4 v2, 0x1

    .line 668
    .end local v1           #ratInfo:Lcom/android/server/CNE$RatInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
