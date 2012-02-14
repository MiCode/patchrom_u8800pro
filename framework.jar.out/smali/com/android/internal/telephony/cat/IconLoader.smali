.class Lcom/android/internal/telephony/cat/IconLoader;
.super Landroid/os/Handler;
.source "IconLoader.java"


# static fields
.field private static final CLUT_ENTRY_SIZE:I = 0x3

.field private static final CLUT_LOCATION_OFFSET:I = 0x4

.field private static final EVENT_READ_CLUT_DONE:I = 0x3

.field private static final EVENT_READ_EF_IMG_RECOED_DONE:I = 0x1

.field private static final EVENT_READ_ICON_DONE:I = 0x2

.field private static final STATE_MULTI_ICONS:I = 0x2

.field private static final STATE_SINGLE_ICON:I = 0x1

.field private static sLoader:Lcom/android/internal/telephony/cat/IconLoader;


# instance fields
.field private mCurrentIcon:Landroid/graphics/Bitmap;

.field private mCurrentRecordIndex:I

.field private mEndMsg:Landroid/os/Message;

.field private mIconData:[B

.field private mIcons:[Landroid/graphics/Bitmap;

.field private mIconsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

.field private mRecordNumber:I

.field private mRecordNumbers:[I

.field private mSimFH:Lcom/android/internal/telephony/IccFileHandler;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 2
    .parameter "looper"
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 40
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 43
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 44
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    .line 49
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 50
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 73
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 76
    return-void
.end method

.method private static bitToBnW(I)I
    .locals 1
    .parameter "bit"

    .prologue
    .line 275
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 276
    const/4 v0, -0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x100

    goto :goto_0
.end method

.method static getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;
    .locals 3
    .parameter "caller"
    .parameter "fh"

    .prologue
    .line 79
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    if-eqz v1, :cond_0

    .line 80
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 86
    :goto_0
    return-object v1

    .line 83
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Cat Icon Loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v1, Lcom/android/internal/telephony/cat/IconLoader;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/internal/telephony/cat/IconLoader;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/IccFileHandler;)V

    sput-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 86
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    goto :goto_0
.end method

.method private static getMask(I)I
    .locals 1
    .parameter "numOfBits"

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 339
    .local v0, mask:I
    packed-switch p0, :pswitch_data_0

    .line 365
    :goto_0
    return v0

    .line 341
    :pswitch_0
    const/4 v0, 0x1

    .line 342
    goto :goto_0

    .line 344
    :pswitch_1
    const/4 v0, 0x3

    .line 345
    goto :goto_0

    .line 347
    :pswitch_2
    const/4 v0, 0x7

    .line 348
    goto :goto_0

    .line 350
    :pswitch_3
    const/16 v0, 0xf

    .line 351
    goto :goto_0

    .line 353
    :pswitch_4
    const/16 v0, 0x1f

    .line 354
    goto :goto_0

    .line 356
    :pswitch_5
    const/16 v0, 0x3f

    .line 357
    goto :goto_0

    .line 359
    :pswitch_6
    const/16 v0, 0x7f

    .line 360
    goto :goto_0

    .line 362
    :pswitch_7
    const/16 v0, 0xff

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handleImageDescriptor([B)Z
    .locals 2
    .parameter "rawData"

    .prologue
    const/4 v1, 0x1

    .line 185
    invoke-static {p1, v1}, Lcom/android/internal/telephony/cat/ImageDescriptor;->parse([BI)Lcom/android/internal/telephony/cat/ImageDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "data"
    .parameter "length"

    .prologue
    .line 242
    const/4 v8, 0x0

    .line 243
    .local v8, valueIndex:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #valueIndex:I
    .local v9, valueIndex:I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .line 244
    .local v10, width:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .line 245
    .local v3, height:I
    mul-int v4, v10, v3

    .line 247
    .local v4, numOfPixels:I
    new-array v7, v4, [I

    .line 249
    .local v7, pixels:[I
    const/4 v5, 0x0

    .line 250
    .local v5, pixelIndex:I
    const/4 v0, 0x7

    .line 251
    .local v0, bitIndex:I
    const/4 v2, 0x0

    .local v2, currentByte:B
    move v6, v5

    .end local v5           #pixelIndex:I
    .local v6, pixelIndex:I
    move v9, v8

    .line 252
    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 254
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    .line 255
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v2, p0, v9

    .line 256
    const/4 v0, 0x7

    .line 258
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pixelIndex:I
    .restart local v5       #pixelIndex:I
    add-int/lit8 v1, v0, -0x1

    .end local v0           #bitIndex:I
    .local v1, bitIndex:I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/cat/IconLoader;->bitToBnW(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1           #bitIndex:I
    .restart local v0       #bitIndex:I
    move v6, v5

    .end local v5           #pixelIndex:I
    .restart local v6       #pixelIndex:I
    move v9, v8

    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    goto :goto_0

    .line 261
    :cond_0
    if-eq v6, v4, :cond_1

    .line 262
    const-string v11, "IconLoader"

    const-string v12, "parseToBnW; size error"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ[B)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "data"
    .parameter "length"
    .parameter "transparency"
    .parameter "clut"

    .prologue
    .line 293
    const/16 p1, 0x0

    .line 294
    .local p1, valueIndex:I
    add-int/lit8 v4, p1, 0x1

    .end local p1           #valueIndex:I
    .local v4, valueIndex:I
    aget-byte p1, p0, p1

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0xff

    move v15, v0

    .line 295
    .local v15, width:I
    add-int/lit8 p1, v4, 0x1

    .end local v4           #valueIndex:I
    .restart local p1       #valueIndex:I
    aget-byte v4, p0, v4

    and-int/lit16 v8, v4, 0xff

    .line 296
    .local v8, height:I
    add-int/lit8 v5, p1, 0x1

    .end local p1           #valueIndex:I
    .local v5, valueIndex:I
    aget-byte p1, p0, p1

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    .line 297
    .local v4, bitsPerImg:I
    add-int/lit8 p1, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local p1       #valueIndex:I
    aget-byte p1, p0, v5

    .end local p1           #valueIndex:I
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0xff

    move/from16 p1, v0

    .line 299
    .local p1, numOfClutEntries:I
    const/4 v5, 0x1

    move v0, v5

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 300
    const/16 p2, 0x1

    sub-int p1, p1, p2

    const/16 p2, 0x0

    aput-byte p2, p3, p1

    .line 303
    .end local p1           #numOfClutEntries:I
    .end local p2
    :cond_0
    mul-int v10, v15, v8

    .line 304
    .local v10, numOfPixels:I
    new-array v13, v10, [I

    .line 306
    .local v13, pixels:[I
    const/16 p2, 0x6

    .line 307
    .local p2, valueIndex:I
    const/4 v7, 0x0

    .line 308
    .local v7, pixelIndex:I
    const/16 p1, 0x8

    sub-int v5, p1, v4

    .line 309
    .local v5, bitsStartOffset:I
    move/from16 p1, v5

    .line 310
    .local p1, bitIndex:I
    add-int/lit8 v11, p2, 0x1

    .end local p2           #valueIndex:I
    .local v11, valueIndex:I
    aget-byte v6, p0, p2

    .line 311
    .local v6, currentByte:B
    invoke-static {v4}, Lcom/android/internal/telephony/cat/IconLoader;->getMask(I)I

    move-result v9

    .line 312
    .local v9, mask:I
    const/16 p2, 0x8

    rem-int p2, p2, v4

    if-nez p2, :cond_1

    const/16 p2, 0x1

    .local p2, bitsOverlaps:Z
    :goto_0
    move v12, v7

    .line 313
    .end local v7           #pixelIndex:I
    .local v12, pixelIndex:I
    :goto_1
    if-ge v12, v10, :cond_3

    .line 315
    if-gez p1, :cond_4

    .line 316
    add-int/lit8 v7, v11, 0x1

    .end local v11           #valueIndex:I
    .local v7, valueIndex:I
    aget-byte v6, p0, v11

    .line 317
    if-eqz p2, :cond_2

    move/from16 p1, v5

    :goto_2
    move v14, v7

    .end local v7           #valueIndex:I
    .local v14, valueIndex:I
    move v7, v6

    .line 319
    .end local v6           #currentByte:B
    .local v7, currentByte:B
    :goto_3
    shr-int v6, v7, p1

    and-int/2addr v6, v9

    .line 320
    .local v6, clutEntry:I
    mul-int/lit8 v6, v6, 0x3

    .line 321
    .local v6, clutIndex:I
    add-int/lit8 v11, v12, 0x1

    .end local v12           #pixelIndex:I
    .local v11, pixelIndex:I
    aget-byte v16, p3, v6

    add-int/lit8 v17, v6, 0x1

    aget-byte v17, p3, v17

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, p3, v6

    .end local v6           #clutIndex:I
    move/from16 v0, v16

    move/from16 v1, v17

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v13, v12

    .line 323
    sub-int p1, p1, v4

    move v6, v7

    .end local v7           #currentByte:B
    .local v6, currentByte:B
    move v12, v11

    .end local v11           #pixelIndex:I
    .restart local v12       #pixelIndex:I
    move v11, v14

    .line 324
    .end local v14           #valueIndex:I
    .local v11, valueIndex:I
    goto :goto_1

    .line 312
    .end local v12           #pixelIndex:I
    .end local p2           #bitsOverlaps:Z
    .local v7, pixelIndex:I
    :cond_1
    const/16 p2, 0x0

    goto :goto_0

    .line 317
    .end local v11           #valueIndex:I
    .local v7, valueIndex:I
    .restart local v12       #pixelIndex:I
    .restart local p2       #bitsOverlaps:Z
    :cond_2
    mul-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 326
    .end local v7           #valueIndex:I
    .restart local v11       #valueIndex:I
    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local p0
    move-object v0, v13

    move v1, v15

    move v2, v8

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .restart local p0
    :cond_4
    move v7, v6

    .end local v6           #currentByte:B
    .local v7, currentByte:B
    move v14, v11

    .end local v11           #valueIndex:I
    .restart local v14       #valueIndex:I
    goto :goto_3
.end method

.method private postIcon()V
    .locals 3

    .prologue
    .line 220
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    .line 226
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private readClut()V
    .locals 7

    .prologue
    const/4 v1, 0x3

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    aget-byte v0, v0, v1

    mul-int/lit8 v4, v0, 0x3

    .line 195
    .local v4, length:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 196
    .local v5, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v1, v1, Lcom/android/internal/telephony/cat/ImageDescriptor;->imageId:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    const/4 v6, 0x5

    aget-byte v3, v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 199
    return-void
.end method

.method private readIconData()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 214
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 215
    .local v5, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v1, v1, Lcom/android/internal/telephony/cat/ImageDescriptor;->imageId:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v4, v3, Lcom/android/internal/telephony/cat/ImageDescriptor;->length:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 216
    return-void
.end method

.method private readId()V
    .locals 3

    .prologue
    .line 203
    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    if-gez v1, :cond_0

    .line 204
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 205
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 209
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/IccFileHandler;

    iget v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/IccFileHandler;->loadEFImgLinearFixed(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private startLoadingIcon(I)V
    .locals 2
    .parameter "recordNumber"

    .prologue
    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 120
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 121
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 122
    iput p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readId()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 140
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 142
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 143
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/IconLoader;->handleImageDescriptor([B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readIconData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v1           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 171
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "Icon load failed"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    goto :goto_0

    .line 146
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #ar:Landroid/os/AsyncResult;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Unable to parse image descriptor"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 150
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 151
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 152
    .local v4, rawData:[B
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v5, v5, Lcom/android/internal/telephony/cat/ImageDescriptor;->codingScheme:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_2

    .line 153
    array-length v5, v4

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/IconLoader;->parseToBnW([BI)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 154
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v6, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v5, v5, Lcom/android/internal/telephony/cat/ImageDescriptor;->codingScheme:I

    const/16 v6, 0x21

    if-ne v5, v6, :cond_0

    .line 157
    iput-object v4, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 158
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readClut()V

    goto :goto_0

    .line 162
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v4           #rawData:[B
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 163
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 164
    .local v2, clut:[B
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    iget-object v6, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v2}, Lcom/android/internal/telephony/cat/IconLoader;->parseToRGB([BIZ[B)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 166
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v6, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method loadIcon(ILandroid/os/Message;)V
    .locals 1
    .parameter "recordNumber"
    .parameter "msg"

    .prologue
    .line 109
    if-nez p2, :cond_0

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 114
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    goto :goto_0
.end method

.method loadIcons([ILandroid/os/Message;)V
    .locals 2
    .parameter "recordNumbers"
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 96
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 101
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    .line 103
    iput v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    .line 104
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 105
    aget v0, p1, v1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    goto :goto_0
.end method

.method public updateIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1
    .parameter "fh"

    .prologue
    .line 90
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/IccFileHandler;

    if-eq p1, v0, :cond_0

    .line 91
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 93
    :cond_0
    return-void
.end method
