.class final enum Lcom/android/internal/policy/impl/LockScreen$Status;
.super Ljava/lang/Enum;
.source "LockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/LockScreen$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum CorporateLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum NetworkLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum NetworkSubsetLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum RuimCorporateLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum RuimHrpdLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum RuimNetwork1Locked:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum RuimNetwork2Locked:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum RuimRuimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum RuimServiceProviderLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum ServiceProviderLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum SimIOError:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum SimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum SimPukLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum SimSimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;


# instance fields
.field private final mShowStatusLines:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 113
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 118
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "NetworkLocked"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->NetworkLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 123
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "SimMissing"

    invoke-direct {v0, v1, v5, v4}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 129
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "SimMissingLocked"

    invoke-direct {v0, v1, v6, v4}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 135
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "SimPukLocked"

    invoke-direct {v0, v1, v7, v4}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 140
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "SimLocked"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 145
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "SimIOError"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimIOError:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 150
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "NetworkSubsetLocked"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->NetworkSubsetLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 155
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "CorporateLocked"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->CorporateLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 160
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "ServiceProviderLocked"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->ServiceProviderLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 165
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "SimSimLocked"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimSimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 170
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "RuimNetwork1Locked"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimNetwork1Locked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 175
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "RuimNetwork2Locked"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimNetwork2Locked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 180
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "RuimHrpdLocked"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimHrpdLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 185
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "RuimCorporateLocked"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimCorporateLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 190
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "RuimServiceProviderLocked"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimServiceProviderLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 195
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "RuimRuimLocked"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimRuimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 109
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/internal/policy/impl/LockScreen$Status;

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->NetworkLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen$Status;->SimIOError:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen$Status;->NetworkSubsetLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen$Status;->CorporateLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen$Status;->ServiceProviderLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen$Status;->SimSimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimNetwork1Locked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimNetwork2Locked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimHrpdLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimCorporateLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimServiceProviderLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimRuimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->$VALUES:[Lcom/android/internal/policy/impl/LockScreen$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "mShowStatusLines"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 200
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/LockScreen$Status;->mShowStatusLines:Z

    .line 201
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/LockScreen$Status;
    .locals 1
    .parameter "name"

    .prologue
    .line 109
    const-class v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/policy/impl/LockScreen$Status;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/policy/impl/LockScreen$Status;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->$VALUES:[Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/LockScreen$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/LockScreen$Status;

    return-object v0
.end method


# virtual methods
.method public showStatusLines()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen$Status;->mShowStatusLines:Z

    return v0
.end method
