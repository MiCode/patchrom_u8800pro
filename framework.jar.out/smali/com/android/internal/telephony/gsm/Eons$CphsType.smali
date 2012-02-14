.class public final enum Lcom/android/internal/telephony/gsm/Eons$CphsType;
.super Ljava/lang/Enum;
.source "Eons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/Eons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CphsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/Eons$CphsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/Eons$CphsType;

.field public static final enum LONG:Lcom/android/internal/telephony/gsm/Eons$CphsType;

.field public static final enum SHORT:Lcom/android/internal/telephony/gsm/Eons$CphsType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/android/internal/telephony/gsm/Eons$CphsType;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/Eons$CphsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/Eons$CphsType;->LONG:Lcom/android/internal/telephony/gsm/Eons$CphsType;

    .line 88
    new-instance v0, Lcom/android/internal/telephony/gsm/Eons$CphsType;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/Eons$CphsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/Eons$CphsType;->SHORT:Lcom/android/internal/telephony/gsm/Eons$CphsType;

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/Eons$CphsType;

    sget-object v1, Lcom/android/internal/telephony/gsm/Eons$CphsType;->LONG:Lcom/android/internal/telephony/gsm/Eons$CphsType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/Eons$CphsType;->SHORT:Lcom/android/internal/telephony/gsm/Eons$CphsType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/gsm/Eons$CphsType;->$VALUES:[Lcom/android/internal/telephony/gsm/Eons$CphsType;

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
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/Eons$CphsType;
    .locals 1
    .parameter "name"

    .prologue
    .line 86
    const-class v0, Lcom/android/internal/telephony/gsm/Eons$CphsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/Eons$CphsType;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/Eons$CphsType;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$CphsType;->$VALUES:[Lcom/android/internal/telephony/gsm/Eons$CphsType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/Eons$CphsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/Eons$CphsType;

    return-object v0
.end method


# virtual methods
.method public isLong()Z
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$CphsType;->LONG:Lcom/android/internal/telephony/gsm/Eons$CphsType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShort()Z
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$CphsType;->SHORT:Lcom/android/internal/telephony/gsm/Eons$CphsType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
