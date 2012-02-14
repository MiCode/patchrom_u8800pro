.class final enum Lcom/android/server/CNE$RatTriedStatus;
.super Ljava/lang/Enum;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RatTriedStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/CNE$RatTriedStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/CNE$RatTriedStatus;

.field public static final enum RAT_STATUS_NOT_TRIED:Lcom/android/server/CNE$RatTriedStatus;

.field public static final enum RAT_STATUS_TRIED:Lcom/android/server/CNE$RatTriedStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 649
    new-instance v0, Lcom/android/server/CNE$RatTriedStatus;

    const-string v1, "RAT_STATUS_TRIED"

    invoke-direct {v0, v1, v2}, Lcom/android/server/CNE$RatTriedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/CNE$RatTriedStatus;->RAT_STATUS_TRIED:Lcom/android/server/CNE$RatTriedStatus;

    new-instance v0, Lcom/android/server/CNE$RatTriedStatus;

    const-string v1, "RAT_STATUS_NOT_TRIED"

    invoke-direct {v0, v1, v3}, Lcom/android/server/CNE$RatTriedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/CNE$RatTriedStatus;->RAT_STATUS_NOT_TRIED:Lcom/android/server/CNE$RatTriedStatus;

    .line 648
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/CNE$RatTriedStatus;

    sget-object v1, Lcom/android/server/CNE$RatTriedStatus;->RAT_STATUS_TRIED:Lcom/android/server/CNE$RatTriedStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/CNE$RatTriedStatus;->RAT_STATUS_NOT_TRIED:Lcom/android/server/CNE$RatTriedStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/CNE$RatTriedStatus;->$VALUES:[Lcom/android/server/CNE$RatTriedStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 648
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/CNE$RatTriedStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 648
    const-class v0, Lcom/android/server/CNE$RatTriedStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/CNE$RatTriedStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/server/CNE$RatTriedStatus;
    .locals 1

    .prologue
    .line 648
    sget-object v0, Lcom/android/server/CNE$RatTriedStatus;->$VALUES:[Lcom/android/server/CNE$RatTriedStatus;

    invoke-virtual {v0}, [Lcom/android/server/CNE$RatTriedStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/CNE$RatTriedStatus;

    return-object v0
.end method
