.class public final enum Landroid/net/LinkProvider$LinkRequirement;
.super Ljava/lang/Enum;
.source "LinkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkRequirement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/LinkProvider$LinkRequirement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/LinkProvider$LinkRequirement;

.field public static final enum FW_LINK_BW:Landroid/net/LinkProvider$LinkRequirement;

.field public static final enum REV_LINK_BW:Landroid/net/LinkProvider$LinkRequirement;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    new-instance v0, Landroid/net/LinkProvider$LinkRequirement;

    const-string v1, "FW_LINK_BW"

    invoke-direct {v0, v1, v2}, Landroid/net/LinkProvider$LinkRequirement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/LinkProvider$LinkRequirement;->FW_LINK_BW:Landroid/net/LinkProvider$LinkRequirement;

    .line 94
    new-instance v0, Landroid/net/LinkProvider$LinkRequirement;

    const-string v1, "REV_LINK_BW"

    invoke-direct {v0, v1, v3}, Landroid/net/LinkProvider$LinkRequirement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/LinkProvider$LinkRequirement;->REV_LINK_BW:Landroid/net/LinkProvider$LinkRequirement;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/LinkProvider$LinkRequirement;

    sget-object v1, Landroid/net/LinkProvider$LinkRequirement;->FW_LINK_BW:Landroid/net/LinkProvider$LinkRequirement;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/LinkProvider$LinkRequirement;->REV_LINK_BW:Landroid/net/LinkProvider$LinkRequirement;

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/LinkProvider$LinkRequirement;->$VALUES:[Landroid/net/LinkProvider$LinkRequirement;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/LinkProvider$LinkRequirement;
    .locals 1
    .parameter "name"

    .prologue
    .line 92
    const-class v0, Landroid/net/LinkProvider$LinkRequirement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/LinkProvider$LinkRequirement;

    return-object p0
.end method

.method public static values()[Landroid/net/LinkProvider$LinkRequirement;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Landroid/net/LinkProvider$LinkRequirement;->$VALUES:[Landroid/net/LinkProvider$LinkRequirement;

    invoke-virtual {v0}, [Landroid/net/LinkProvider$LinkRequirement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/LinkProvider$LinkRequirement;

    return-object v0
.end method
