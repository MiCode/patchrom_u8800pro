.class public Landroid/webkit/Subhost;
.super Ljava/lang/Object;
.source "Subhost.java"


# static fields
.field private static final DECREMENTATION_WEIGHT:D = 0.67

.field private static final HOST_MAX_REFERENCES:I = 0x7fffffff

.field private static final INCREMENTATION_WEIGHT:D = 0.33


# instance fields
.field private mHost:Ljava/lang/String;

.field private mNumberOfReferences:I

.field private mOldNumberOfReferences:I

.field private mWeight:D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "host"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Landroid/webkit/Subhost;->mWeight:D

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    .line 55
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/webkit/Subhost;->mHost:Ljava/lang/String;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/Subhost;->mOldNumberOfReferences:I

    .line 60
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ID)V
    .locals 3
    .parameter "host"
    .parameter "numOfReferences"
    .parameter "weight"

    .prologue
    const-wide/16 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-eqz p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/webkit/Subhost;->mHost:Ljava/lang/String;

    .line 67
    if-lez p2, :cond_1

    .line 68
    iput p2, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    .line 73
    :goto_0
    cmpg-double v0, v1, p3

    if-gez v0, :cond_2

    .line 74
    iput-wide p3, p0, Landroid/webkit/Subhost;->mWeight:D

    .line 79
    :goto_1
    iget v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    iput v0, p0, Landroid/webkit/Subhost;->mOldNumberOfReferences:I

    .line 83
    :cond_0
    return-void

    .line 70
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    goto :goto_0

    .line 76
    :cond_2
    iput-wide v1, p0, Landroid/webkit/Subhost;->mWeight:D

    goto :goto_1
.end method


# virtual methods
.method public decrementWeight()V
    .locals 4

    .prologue
    .line 117
    iget-wide v0, p0, Landroid/webkit/Subhost;->mWeight:D

    const-wide v2, 0x3fe570a3d70a3d71L

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/webkit/Subhost;->mWeight:D

    .line 118
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/Subhost;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfReferences()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    return v0
.end method

.method public getWeight()D
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Landroid/webkit/Subhost;->mWeight:D

    return-wide v0
.end method

.method public incrementNumberOfReferences()V
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    .line 93
    iget v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    .line 96
    :cond_0
    return-void
.end method

.method public incrementWeight()V
    .locals 4

    .prologue
    .line 111
    iget-wide v0, p0, Landroid/webkit/Subhost;->mWeight:D

    const-wide v2, 0x3fd51eb851eb851fL

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/webkit/Subhost;->mWeight:D

    .line 112
    return-void
.end method

.method public resetNumberOfReferences()V
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    iput v0, p0, Landroid/webkit/Subhost;->mOldNumberOfReferences:I

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    .line 126
    return-void
.end method

.method public updateNumberOfReferences()V
    .locals 2

    .prologue
    .line 131
    const/4 v0, -0x1

    iget v1, p0, Landroid/webkit/Subhost;->mOldNumberOfReferences:I

    if-ne v0, v1, :cond_0

    .line 133
    iget v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    iput v0, p0, Landroid/webkit/Subhost;->mOldNumberOfReferences:I

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    iget v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    iget v1, p0, Landroid/webkit/Subhost;->mOldNumberOfReferences:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    goto :goto_0
.end method
