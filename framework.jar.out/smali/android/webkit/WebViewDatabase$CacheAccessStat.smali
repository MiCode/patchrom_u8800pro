.class Landroid/webkit/WebViewDatabase$CacheAccessStat;
.super Ljava/lang/Object;
.source "WebViewDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheAccessStat"
.end annotation


# instance fields
.field mCacheAccessCounter:I

.field mCacheItemPriority:I

.field mContentLength:J

.field mLastAccessTime:J

.field mWeight:J


# direct methods
.method public constructor <init>(Landroid/webkit/CacheManager$CacheResult;)V
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mLastAccessTime:J

    .line 227
    iput v2, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheAccessCounter:I

    .line 228
    iput v2, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheItemPriority:I

    .line 229
    iput-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mContentLength:J

    .line 230
    iput-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mWeight:J

    .line 233
    iget v0, p1, Landroid/webkit/CacheManager$CacheResult;->accessCounter:I

    iput v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheAccessCounter:I

    .line 234
    invoke-virtual {p1}, Landroid/webkit/CacheManager$CacheResult;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewDatabase$CacheAccessStat;->getCacheItemPriority(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheItemPriority:I

    .line 235
    invoke-virtual {p1}, Landroid/webkit/CacheManager$CacheResult;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mContentLength:J

    .line 236
    invoke-virtual {p0}, Landroid/webkit/WebViewDatabase$CacheAccessStat;->hit()V

    .line 237
    return-void
.end method


# virtual methods
.method getCacheItemPriority(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewDatabase$CacheAccessStat;->getCacheStatId(Ljava/lang/String;)I

    move-result v0

    .line 267
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 276
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 270
    :pswitch_0
    const/4 v1, 0x2

    goto :goto_0

    .line 272
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 274
    :pswitch_2
    const/4 v1, 0x0

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getCacheStatId(Ljava/lang/String;)I
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 247
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x4

    .line 259
    :goto_0
    return v0

    .line 250
    :cond_0
    const-string v0, "javascript"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 253
    :cond_2
    const-string v0, "css"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    const/4 v0, 0x2

    goto :goto_0

    .line 256
    :cond_3
    const-string v0, "html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    const/4 v0, 0x1

    goto :goto_0

    .line 259
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hit()V
    .locals 8

    .prologue
    .line 240
    iget v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheAccessCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheAccessCounter:I

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mLastAccessTime:J

    .line 242
    iget-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mLastAccessTime:J

    invoke-static {}, Landroid/webkit/WebViewDatabase;->access$000()J

    move-result-wide v2

    iget v4, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheItemPriority:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mWeight:J

    .line 243
    iget-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mWeight:J

    invoke-static {}, Landroid/webkit/WebViewDatabase;->access$100()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mContentLength:J

    iget v6, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheAccessCounter:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Landroid/webkit/WebViewDatabase$CacheAccessStat;->normalize(J)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mWeight:J

    .line 244
    return-void
.end method

.method normalize(J)I
    .locals 6
    .parameter "i"

    .prologue
    const-wide/16 v4, 0x0

    .line 280
    const/4 v1, 0x0

    .line 282
    .local v1, normalized:I
    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 283
    add-int/lit8 v1, v1, 0x1

    .line 285
    :cond_0
    const/16 v0, 0x10

    .local v0, index:I
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    .line 286
    shr-long v2, p1, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 287
    add-int/2addr v1, v0

    shr-long/2addr p1, v0

    .line 285
    :cond_1
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 290
    :cond_2
    const/4 v2, 0x1

    shr-long v2, p1, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 291
    add-int/lit8 v1, v1, 0x1

    .line 293
    :cond_3
    const/16 v2, 0x20

    sub-int/2addr v2, v1

    return v2
.end method
