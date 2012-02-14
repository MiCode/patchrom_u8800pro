.class final enum Landroid/widget/MbdvTvLang$CachedStatus;
.super Ljava/lang/Enum;
.source "MbdvTvLang.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MbdvTvLang;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CachedStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/MbdvTvLang$CachedStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/MbdvTvLang$CachedStatus;

.field public static final enum e_cachedStatusNA:Landroid/widget/MbdvTvLang$CachedStatus;

.field public static final enum e_cachedStatusSkip:Landroid/widget/MbdvTvLang$CachedStatus;

.field public static final enum e_cachedStatusTranslate:Landroid/widget/MbdvTvLang$CachedStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Landroid/widget/MbdvTvLang$CachedStatus;

    const-string v1, "e_cachedStatusNA"

    invoke-direct {v0, v1, v2}, Landroid/widget/MbdvTvLang$CachedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/MbdvTvLang$CachedStatus;->e_cachedStatusNA:Landroid/widget/MbdvTvLang$CachedStatus;

    .line 29
    new-instance v0, Landroid/widget/MbdvTvLang$CachedStatus;

    const-string v1, "e_cachedStatusTranslate"

    invoke-direct {v0, v1, v3}, Landroid/widget/MbdvTvLang$CachedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/MbdvTvLang$CachedStatus;->e_cachedStatusTranslate:Landroid/widget/MbdvTvLang$CachedStatus;

    .line 30
    new-instance v0, Landroid/widget/MbdvTvLang$CachedStatus;

    const-string v1, "e_cachedStatusSkip"

    invoke-direct {v0, v1, v4}, Landroid/widget/MbdvTvLang$CachedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/MbdvTvLang$CachedStatus;->e_cachedStatusSkip:Landroid/widget/MbdvTvLang$CachedStatus;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/MbdvTvLang$CachedStatus;

    sget-object v1, Landroid/widget/MbdvTvLang$CachedStatus;->e_cachedStatusNA:Landroid/widget/MbdvTvLang$CachedStatus;

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/MbdvTvLang$CachedStatus;->e_cachedStatusTranslate:Landroid/widget/MbdvTvLang$CachedStatus;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/MbdvTvLang$CachedStatus;->e_cachedStatusSkip:Landroid/widget/MbdvTvLang$CachedStatus;

    aput-object v1, v0, v4

    sput-object v0, Landroid/widget/MbdvTvLang$CachedStatus;->$VALUES:[Landroid/widget/MbdvTvLang$CachedStatus;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/MbdvTvLang$CachedStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 27
    const-class v0, Landroid/widget/MbdvTvLang$CachedStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/MbdvTvLang$CachedStatus;

    return-object p0
.end method

.method public static values()[Landroid/widget/MbdvTvLang$CachedStatus;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Landroid/widget/MbdvTvLang$CachedStatus;->$VALUES:[Landroid/widget/MbdvTvLang$CachedStatus;

    invoke-virtual {v0}, [Landroid/widget/MbdvTvLang$CachedStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/MbdvTvLang$CachedStatus;

    return-object v0
.end method
