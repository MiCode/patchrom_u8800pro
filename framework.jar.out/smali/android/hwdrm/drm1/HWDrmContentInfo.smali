.class public Landroid/hwdrm/drm1/HWDrmContentInfo;
.super Ljava/lang/Object;
.source "HWDrmContentInfo.java"


# instance fields
.field private cid:Ljava/lang/String;

.field private dcfMimetype:I

.field private fileMimeType:Ljava/lang/String;

.field private isCanForward:I

.field private isCanbeCopy:Z

.field private isCanbeCopyToSD:Z

.field private isCanbeCut:Z

.field private isCanbeCutToSD:Z

.field private isDrmFile:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v2, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->fileMimeType:Ljava/lang/String;

    .line 12
    iput-object v2, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->cid:Ljava/lang/String;

    .line 13
    iput v1, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->dcfMimetype:I

    .line 14
    iput v1, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->isDrmFile:I

    .line 15
    iput v1, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->isCanForward:I

    .line 17
    iput-boolean v0, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->isCanbeCopy:Z

    .line 18
    iput-boolean v0, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->isCanbeCut:Z

    .line 19
    iput-boolean v0, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->isCanbeCopyToSD:Z

    .line 20
    iput-boolean v0, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->isCanbeCutToSD:Z

    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getDcfMimetype()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->dcfMimetype:I

    return v0
.end method

.method public getFileMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->fileMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public isCanForward()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 61
    iget v0, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->isCanForward:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCanbeCopy()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->isCanbeCopy:Z

    return v0
.end method

.method public isCanbeCut()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->isCanbeCut:Z

    return v0
.end method

.method public isDrmFile()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    iget v0, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->isDrmFile:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCanForward(I)V
    .locals 0
    .parameter "canForward"

    .prologue
    .line 72
    iput p1, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->isCanForward:I

    .line 73
    return-void
.end method

.method public setCanbeCopy(Z)V
    .locals 0
    .parameter "isCanbeCopy"

    .prologue
    .line 97
    iput-boolean p1, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->isCanbeCopy:Z

    .line 98
    return-void
.end method

.method public setCanbeCut(Z)V
    .locals 0
    .parameter "isCanbeCut"

    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->isCanbeCut:Z

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " fileMimeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->fileMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n dcfMimetype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->dcfMimetype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n isCanForward: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->isCanForward:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n isDrmFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->isDrmFile:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n isCanbeCopy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->isCanbeCopy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n isCanbeCut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hwdrm/drm1/HWDrmContentInfo;->isCanbeCut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
