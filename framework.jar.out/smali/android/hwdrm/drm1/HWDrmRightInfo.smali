.class public Landroid/hwdrm/drm1/HWDrmRightInfo;
.super Ljava/lang/Object;
.source "HWDrmRightInfo.java"


# instance fields
.field private count:J

.field private endDate:Ljava/lang/String;

.field private inFutureRoCount:I

.field private interval:J

.field private rightsCount:I

.field private startDate:Ljava/lang/String;

.field private startDateDay:I

.field private startDateHour:I

.field private startDateMinute:I

.field private startDateMonth:I

.field private startDateSecone:I

.field private startDateYear:I

.field private validRoCount:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v1, -0x1

    const-string v3, ""

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->rightsCount:I

    .line 84
    iput-wide v1, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->count:J

    .line 85
    const-string v0, ""

    iput-object v3, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->startDate:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v3, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->endDate:Ljava/lang/String;

    .line 87
    iput-wide v1, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->interval:J

    .line 88
    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->count:J

    return-wide v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 133
    iget-object v2, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->endDate:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->endDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    :cond_0
    const/4 v2, 0x0

    .line 139
    :goto_0
    return-object v2

    .line 138
    :cond_1
    iget-object v2, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->endDate:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 139
    .local v0, endDateLong:J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getInFutureROCount()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->inFutureRoCount:I

    return v0
.end method

.method public getInterval()J
    .locals 4

    .prologue
    .line 148
    const-wide/16 v0, -0x1

    iget-wide v2, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->interval:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 150
    const-wide/16 v0, 0x0

    .line 156
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->interval:J

    goto :goto_0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 118
    iget-object v2, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->startDate:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->startDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    :cond_0
    const/4 v2, 0x0

    .line 124
    :goto_0
    return-object v2

    .line 123
    :cond_1
    iget-object v2, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->startDate:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 124
    .local v0, startDateLong:J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getValidROCount()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->validRoCount:I

    return v0
.end method

.method public rightsCount()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->rightsCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "\n"

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "total rights count is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->rightsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "the validRoCount is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->validRoCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "the inFutureRoCount is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->inFutureRoCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "the count rights is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->count:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "the startDate is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->startDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "the endDate is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->endDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "the interval is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hwdrm/drm1/HWDrmRightInfo;->interval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
