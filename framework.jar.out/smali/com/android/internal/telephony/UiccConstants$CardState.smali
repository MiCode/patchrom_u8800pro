.class public final enum Lcom/android/internal/telephony/UiccConstants$CardState;
.super Ljava/lang/Enum;
.source "UiccConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/UiccConstants$CardState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/UiccConstants$CardState;

.field public static final enum ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

.field public static final enum ERROR:Lcom/android/internal/telephony/UiccConstants$CardState;

.field public static final enum NOT_READY:Lcom/android/internal/telephony/UiccConstants$CardState;

.field public static final enum PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$CardState;

    const-string v1, "ABSENT"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$CardState;

    const-string v1, "PRESENT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/UiccConstants$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$CardState;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/UiccConstants$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$CardState;->ERROR:Lcom/android/internal/telephony/UiccConstants$CardState;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$CardState;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/UiccConstants$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$CardState;->NOT_READY:Lcom/android/internal/telephony/UiccConstants$CardState;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/UiccConstants$CardState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$CardState;->ERROR:Lcom/android/internal/telephony/UiccConstants$CardState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$CardState;->NOT_READY:Lcom/android/internal/telephony/UiccConstants$CardState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$CardState;->$VALUES:[Lcom/android/internal/telephony/UiccConstants$CardState;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/UiccConstants$CardState;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Lcom/android/internal/telephony/UiccConstants$CardState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/UiccConstants$CardState;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/UiccConstants$CardState;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$CardState;->$VALUES:[Lcom/android/internal/telephony/UiccConstants$CardState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/UiccConstants$CardState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/UiccConstants$CardState;

    return-object v0
.end method
