.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "opts"

    .prologue
    .line 402
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 405
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "pathName"

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "pathName"
    .parameter "opts"

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 283
    .local v1, stream:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    .end local v1           #stream:Ljava/io/InputStream;
    .local v2, stream:Ljava/io/InputStream;
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2, v3, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 290
    if-eqz v2, :cond_2

    .line 292
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 298
    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 293
    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 295
    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    goto :goto_0

    .line 285
    :catch_1
    move-exception v3

    .line 290
    :goto_1
    if-eqz v1, :cond_0

    .line 292
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 293
    :catch_2
    move-exception v3

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 292
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 295
    :cond_1
    :goto_3
    throw v3

    .line 293
    :catch_3
    move-exception v4

    goto :goto_3

    .line 290
    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    goto :goto_2

    .line 285
    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    goto :goto_1

    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "fd"

    .prologue
    const/4 v0, 0x0

    .line 574
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "fd"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    .line 550
    :try_start_0
    invoke-static {p0}, Landroid/os/MemoryFile;->isMemoryFile(Ljava/io/FileDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 551
    invoke-static {p0}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v4

    .line 552
    .local v4, mappedlength:I
    new-instance v2, Landroid/os/MemoryFile;

    const-string v5, "r"

    invoke-direct {v2, p0, v4, v5}, Landroid/os/MemoryFile;-><init>(Ljava/io/FileDescriptor;ILjava/lang/String;)V

    .line 553
    .local v2, file:Landroid/os/MemoryFile;
    invoke-virtual {v2}, Landroid/os/MemoryFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 554
    .local v3, is:Ljava/io/InputStream;
    invoke-static {v3, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 555
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 562
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #file:Landroid/os/MemoryFile;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #mappedlength:I
    :goto_0
    return-object v5

    .line 557
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 559
    .local v1, ex:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 561
    .end local v1           #ex:Ljava/io/IOException;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 562
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "res"
    .parameter "id"

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "res"
    .parameter "id"
    .parameter "opts"

    .prologue
    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 356
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 357
    .local v2, value:Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 359
    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 367
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 373
    .end local v2           #value:Landroid/util/TypedValue;
    :cond_0
    :goto_0
    return-object v0

    .line 360
    :catch_0
    move-exception v3

    .line 367
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 368
    :catch_1
    move-exception v3

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v3

    .line 367
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 370
    :cond_1
    :goto_1
    throw v3

    .line 368
    .restart local v2       #value:Landroid/util/TypedValue;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v2           #value:Landroid/util/TypedValue;
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "res"
    .parameter "value"
    .parameter "is"
    .parameter "pad"
    .parameter "opts"

    .prologue
    .line 319
    if-nez p4, :cond_0

    .line 320
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 323
    .restart local p4
    :cond_0
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 324
    iget v0, p1, Landroid/util/TypedValue;->density:I

    .line 325
    .local v0, density:I
    if-nez v0, :cond_3

    .line 326
    const/16 v1, 0xa0

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 332
    .end local v0           #density:I
    :cond_1
    :goto_0
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v1, :cond_2

    if-eqz p0, :cond_2

    .line 333
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 336
    :cond_2
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 327
    .restart local v0       #density:I
    :cond_3
    const v1, 0xffff

    if-eq v0, v1, :cond_1

    .line 328
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "is"

    .prologue
    const/4 v0, 0x0

    .line 531
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "is"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    const/16 v5, 0x4000

    .line 442
    if-nez p0, :cond_0

    .line 443
    const/4 v4, 0x0

    .line 479
    .end local p0
    :goto_0
    return-object v4

    .line 448
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-nez v4, :cond_1

    .line 449
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0
    .local v2, is:Ljava/io/InputStream;
    move-object p0, v2

    .line 455
    .end local v2           #is:Ljava/io/InputStream;
    .restart local p0
    :cond_1
    const/16 v4, 0x400

    invoke-virtual {p0, v4}, Ljava/io/InputStream;->mark(I)V

    .line 459
    instance-of v4, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v4, :cond_2

    .line 460
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v4

    invoke-static {v4, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 479
    .local v0, bm:Landroid/graphics/Bitmap;
    :goto_1
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 467
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local p0
    :cond_2
    const/4 v3, 0x0

    .line 468
    .local v3, tempStorage:[B
    if-eqz p2, :cond_3

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 469
    :cond_3
    if-nez v3, :cond_4

    new-array v3, v5, [B

    .line 472
    :cond_4
    :try_start_0
    invoke-static {p0, v3, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0       #bm:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 473
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 474
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    const/4 v0, 0x0

    .restart local v0       #bm:Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private static finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bm"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x3f00

    .line 483
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-object p0

    .line 487
    :cond_1
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 488
    .local v0, density:I
    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 493
    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 494
    .local v5, targetDensity:I
    if-eqz v5, :cond_0

    if-eq v0, v5, :cond_0

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-eq v0, v6, :cond_0

    .line 498
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 499
    .local v2, np:[B
    if-eqz v2, :cond_4

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v6

    if-eqz v6, :cond_4

    move v1, v9

    .line 500
    .local v1, isNinePatch:Z
    :goto_1
    iget-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v6, :cond_2

    if-eqz v1, :cond_0

    .line 501
    :cond_2
    int-to-float v6, v5

    int-to-float v7, v0

    div-float v4, v6, v7

    .line 503
    .local v4, scale:F
    move-object v3, p0

    .line 504
    .local v3, oldBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v3, v6, v7, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 506
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 508
    if-eqz v1, :cond_3

    .line 509
    invoke-static {v2, v4, p1}, Landroid/graphics/BitmapFactory;->nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B

    move-result-object v2

    .line 510
    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap;->setNinePatchChunk([B)V

    .line 512
    :cond_3
    invoke-virtual {p0, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0

    .line 499
    .end local v1           #isNinePatch:Z
    .end local v3           #oldBitmap:Landroid/graphics/Bitmap;
    .end local v4           #scale:F
    :cond_4
    const/4 v6, 0x0

    move v1, v6

    goto :goto_1
.end method

.method private static native nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B
.end method

.method private static native nativeSetDefaultConfig(I)V
.end method

.method public static setDefaultConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 592
    if-nez p0, :cond_0

    .line 595
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 597
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->nativeSetDefaultConfig(I)V

    .line 598
    return-void
.end method
