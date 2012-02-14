.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GPA:I = 0xa

.field public static final FILE_TYPE_3GPP:I = 0x21

.field public static final FILE_TYPE_3GPP2:I = 0x22

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AC3:I = 0xb

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_APE:I = 0xe

.field public static final FILE_TYPE_ASF:I = 0x24

.field public static final FILE_TYPE_AVI:I = 0x27

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x40

.field public static final FILE_TYPE_DCF:I = 0x63

.field public static final FILE_TYPE_DIVX:I = 0x2b

.field public static final FILE_TYPE_FLAC:I = 0xd

.field public static final FILE_TYPE_GIF:I = 0x3e

.field public static final FILE_TYPE_IMY:I = 0x17

.field public static final FILE_TYPE_JPEG:I = 0x3d

.field public static final FILE_TYPE_M3U:I = 0x47

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x20

.field public static final FILE_TYPE_MID:I = 0x15

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x25

.field public static final FILE_TYPE_MP2TS:I = 0x26

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x1f

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_OTHER:I = 0x64

.field public static final FILE_TYPE_PLS:I = 0x48

.field public static final FILE_TYPE_PNG:I = 0x3f

.field public static final FILE_TYPE_QCP:I = 0xf

.field public static final FILE_TYPE_RA:I = 0xc

.field public static final FILE_TYPE_RM:I = 0x28

.field public static final FILE_TYPE_RMVB:I = 0x2a

.field public static final FILE_TYPE_RV:I = 0x29

.field public static final FILE_TYPE_SMF:I = 0x16

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x41

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x23

.field public static final FILE_TYPE_WPL:I = 0x49

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x3d

.field private static final FIRST_MIDI_FILE_TYPE:I = 0x15

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x47

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x1f

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xf

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x41

.field private static final LAST_MIDI_FILE_TYPE:I = 0x17

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x49

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x2b

.field public static final sFileExtensions:Ljava/lang/String;

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/16 v5, 0x15

    const-string/jumbo v8, "video/x-pn-realvideo"

    const-string v7, "audio/x-pn-realaudio"

    const-string v6, "audio/midi"

    .line 127
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 129
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 167
    const-string v2, "MP3"

    const-string v3, "audio/mpeg"

    invoke-static {v2, v4, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    const-string v2, "ro.config.support_mpga"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const-string v2, "MPGA"

    const-string v3, "audio/mpeg"

    invoke-static {v2, v4, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    :cond_0
    const-string v2, "M4A"

    const/4 v3, 0x2

    const-string v4, "audio/mp4"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 174
    const-string v2, "WAV"

    const/4 v3, 0x3

    const-string v4, "audio/x-wav"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    const-string v2, "AMR"

    const/4 v3, 0x4

    const-string v4, "audio/amr"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 176
    const-string v2, "AWB"

    const/4 v3, 0x5

    const-string v4, "audio/amr-wb"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    invoke-static {}, Landroid/media/MediaFile;->isWMAEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const-string v2, "WMA"

    const/4 v3, 0x6

    const-string v4, "audio/x-ms-wma"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    :cond_1
    const-string v2, "QCP"

    const/16 v3, 0xf

    const-string v4, "audio/qcp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    const-string v2, "OGG"

    const/4 v3, 0x7

    const-string v4, "application/ogg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    const-string v2, "OGA"

    const/4 v3, 0x7

    const-string v4, "application/ogg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 183
    const-string v2, "AAC"

    const/16 v3, 0x8

    const-string v4, "audio/aac"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 184
    const-string v2, "MKA"

    const/16 v3, 0x9

    const-string v4, "audio/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    const-string v2, "3GPP"

    const/16 v3, 0xa

    const-string v4, "audio/3gpp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 187
    invoke-static {}, Landroid/media/MediaFile;->isHelixPlayerEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    const-string v2, "RA"

    const/16 v3, 0xc

    const-string v4, "audio/x-pn-realaudio"

    invoke-static {v2, v3, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 191
    :cond_2
    invoke-static {}, Landroid/media/MediaFile;->isHelixPlayerEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 192
    const-string v2, "APE"

    const/16 v3, 0xe

    const-string v4, "audio/x-pn-realaudio"

    invoke-static {v2, v3, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 193
    const-string v2, "FLAC"

    const/16 v3, 0xd

    const-string v4, "audio/x-pn-realaudio"

    invoke-static {v2, v3, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    :cond_3
    const-string v2, "MID"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    const-string v2, "MIDI"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    const-string v2, "XMF"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    const-string v2, "RTTTL"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 201
    const-string v2, "SMF"

    const/16 v3, 0x16

    const-string v4, "audio/sp-midi"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    const-string v2, "IMY"

    const/16 v3, 0x17

    const-string v4, "audio/imelody"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    const-string v2, "RTX"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    const-string v2, "OTA"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    const-string v2, "MPEG"

    const/16 v3, 0x1f

    const-string/jumbo v4, "video/mpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 207
    const-string v2, "MP4"

    const/16 v3, 0x1f

    const-string/jumbo v4, "video/mp4"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 208
    const-string v2, "M4V"

    const/16 v3, 0x20

    const-string/jumbo v4, "video/mp4"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 209
    const-string v2, "3GP"

    const/16 v3, 0x21

    const-string/jumbo v4, "video/3gpp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    const-string v2, "3GPP"

    const/16 v3, 0x21

    const-string/jumbo v4, "video/3gpp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    const-string v2, "3G2"

    const/16 v3, 0x22

    const-string/jumbo v4, "video/3gpp2"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    const-string v2, "3GPP2"

    const/16 v3, 0x22

    const-string/jumbo v4, "video/3gpp2"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 213
    const-string v2, "MKV"

    const/16 v3, 0x25

    const-string/jumbo v4, "video/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 214
    const-string v2, "WEBM"

    const/16 v3, 0x25

    const-string/jumbo v4, "video/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 215
    const-string v2, "TS"

    const/16 v3, 0x26

    const-string/jumbo v4, "video/mp2ts"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    invoke-static {}, Landroid/media/MediaFile;->isHelixPlayerEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 219
    const-string v2, "RM"

    const/16 v3, 0x28

    const-string/jumbo v4, "video/x-pn-realvideo"

    invoke-static {v2, v3, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 220
    const-string v2, "RV"

    const/16 v3, 0x29

    const-string/jumbo v4, "video/x-pn-realvideo"

    invoke-static {v2, v3, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    const-string v2, "RMVB"

    const/16 v3, 0x2a

    const-string/jumbo v4, "video/x-pn-realvideo"

    invoke-static {v2, v3, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    const-string v2, "AVI"

    const/16 v3, 0x27

    const-string/jumbo v4, "video/x-msvideo"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    :cond_4
    const-string v2, "DIVX"

    const/16 v3, 0x2b

    const-string/jumbo v4, "video/divx"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    invoke-static {}, Landroid/media/MediaFile;->isWMVEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 227
    const-string v2, "WMV"

    const/16 v3, 0x23

    const-string/jumbo v4, "video/x-ms-wmv"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 228
    const-string v2, "ASF"

    const/16 v3, 0x24

    const-string/jumbo v4, "video/x-ms-asf"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 231
    :cond_5
    const-string v2, "JPG"

    const/16 v3, 0x3d

    const-string v4, "image/jpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    const-string v2, "JPEG"

    const/16 v3, 0x3d

    const-string v4, "image/jpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    const-string v2, "GIF"

    const/16 v3, 0x3e

    const-string v4, "image/gif"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    const-string v2, "PNG"

    const/16 v3, 0x3f

    const-string v4, "image/png"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    const-string v2, "BMP"

    const/16 v3, 0x40

    const-string v4, "image/x-ms-bmp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    const-string v2, "WBMP"

    const/16 v3, 0x41

    const-string v4, "image/vnd.wap.wbmp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    const-string v2, "M3U"

    const/16 v3, 0x47

    const-string v4, "audio/x-mpegurl"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    const-string v2, "PLS"

    const/16 v3, 0x48

    const-string v4, "audio/x-scpls"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 240
    const-string v2, "WPL"

    const/16 v3, 0x49

    const-string v4, "application/vnd.ms-wpl"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    const-string v2, "AC3"

    const/16 v3, 0xb

    const-string v4, "audio/ac3"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    const-string v2, "DCF"

    const/16 v3, 0x63

    const-string v4, "application/vnd.oma.drm.content"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 250
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 252
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 256
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/MediaFile;->sFileExtensions:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 132
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 3
    .parameter "path"

    .prologue
    .line 282
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, lastDot:I
    if-gez v0, :cond_0

    .line 284
    const/4 v1, 0x0

    .line 285
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/MediaFile$MediaFileType;

    move-object v1, p0

    goto :goto_0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 6
    .parameter "mimeType"

    .prologue
    const/4 v5, 0x0

    .line 290
    const-string v3, "ro.config.hwdrm"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 292
    const/4 v1, 0x0

    .line 293
    .local v1, realMime:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 294
    invoke-static {p0}, Landroid/media/MediaFile;->getRealMimeType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 295
    .local v0, fileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v0, :cond_0

    .line 296
    iget-object v1, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    .line 299
    .end local v0           #fileType:Landroid/media/MediaFile$MediaFileType;
    :cond_0
    if-nez v1, :cond_1

    .line 300
    move-object v1, p0

    .line 303
    :cond_1
    sget-object v3, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 305
    .local v2, value:Ljava/lang/Integer;
    const-string v3, "OTHER"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 306
    const/16 v3, 0x64

    .line 312
    .end local v1           #realMime:Ljava/lang/String;
    :goto_0
    return v3

    .line 308
    .restart local v1       #realMime:Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 311
    .end local v1           #realMime:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/Integer;
    :cond_4
    sget-object v3, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 312
    .restart local v2       #value:Ljava/lang/Integer;
    if-nez v2, :cond_5

    move v3, v5

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0
.end method

.method public static getRealMimeType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 5
    .parameter "mime"

    .prologue
    .line 319
    if-nez p0, :cond_0

    .line 320
    const/4 v3, 0x0

    .line 368
    :goto_0
    return-object v3

    .line 322
    :cond_0
    const/4 v0, 0x0

    .line 323
    .local v0, fileType:Landroid/media/MediaFile$MediaFileType;
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 324
    const-string v3, "mpeg3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "mp3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 325
    :cond_1
    sget-object v3, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    const-string v4, "MP3"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fileType:Landroid/media/MediaFile$MediaFileType;
    check-cast v0, Landroid/media/MediaFile$MediaFileType;

    .line 357
    .restart local v0       #fileType:Landroid/media/MediaFile$MediaFileType;
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 359
    const/4 v1, 0x0

    .line 360
    .local v1, type:I
    sget-object v3, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 361
    .local v2, value:Ljava/lang/Integer;
    if-eqz v2, :cond_3

    .line 363
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 365
    :cond_3
    new-instance v0, Landroid/media/MediaFile$MediaFileType;

    .end local v0           #fileType:Landroid/media/MediaFile$MediaFileType;
    invoke-direct {v0, v1, p0}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    .end local v1           #type:I
    .end local v2           #value:Ljava/lang/Integer;
    .restart local v0       #fileType:Landroid/media/MediaFile$MediaFileType;
    :cond_4
    move-object v3, v0

    .line 368
    goto :goto_0

    .line 327
    :cond_5
    const-string/jumbo v3, "wma"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 328
    sget-object v3, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    const-string v4, "WMA"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fileType:Landroid/media/MediaFile$MediaFileType;
    check-cast v0, Landroid/media/MediaFile$MediaFileType;

    .restart local v0       #fileType:Landroid/media/MediaFile$MediaFileType;
    goto :goto_1

    .line 330
    :cond_6
    const-string/jumbo v3, "wav"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 331
    sget-object v3, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    const-string v4, "WAV"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fileType:Landroid/media/MediaFile$MediaFileType;
    check-cast v0, Landroid/media/MediaFile$MediaFileType;

    .restart local v0       #fileType:Landroid/media/MediaFile$MediaFileType;
    goto :goto_1

    .line 333
    :cond_7
    const-string v3, "imy"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 334
    sget-object v3, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    const-string v4, "IMY"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fileType:Landroid/media/MediaFile$MediaFileType;
    check-cast v0, Landroid/media/MediaFile$MediaFileType;

    .restart local v0       #fileType:Landroid/media/MediaFile$MediaFileType;
    goto :goto_1

    .line 336
    :cond_8
    const-string v3, "mid"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 337
    sget-object v3, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    const-string v4, "MID"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fileType:Landroid/media/MediaFile$MediaFileType;
    check-cast v0, Landroid/media/MediaFile$MediaFileType;

    .restart local v0       #fileType:Landroid/media/MediaFile$MediaFileType;
    goto :goto_1

    .line 340
    :cond_9
    const-string/jumbo v3, "video"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 341
    const-string/jumbo v3, "wmv"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 342
    sget-object v3, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    const-string v4, "WMV"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fileType:Landroid/media/MediaFile$MediaFileType;
    check-cast v0, Landroid/media/MediaFile$MediaFileType;

    .restart local v0       #fileType:Landroid/media/MediaFile$MediaFileType;
    goto/16 :goto_1

    .line 344
    :cond_a
    const-string v3, "m4v"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 345
    sget-object v3, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    const-string v4, "M4V"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fileType:Landroid/media/MediaFile$MediaFileType;
    check-cast v0, Landroid/media/MediaFile$MediaFileType;

    .restart local v0       #fileType:Landroid/media/MediaFile$MediaFileType;
    goto/16 :goto_1

    .line 348
    :cond_b
    const-string v3, "image"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 349
    const-string/jumbo v3, "wbmp"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 350
    sget-object v3, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    const-string v4, "WBMP"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fileType:Landroid/media/MediaFile$MediaFileType;
    check-cast v0, Landroid/media/MediaFile$MediaFileType;

    .restart local v0       #fileType:Landroid/media/MediaFile$MediaFileType;
    goto/16 :goto_1

    .line 352
    :cond_c
    const-string v3, "bmp"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    sget-object v3, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    const-string v4, "BMP"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fileType:Landroid/media/MediaFile$MediaFileType;
    check-cast v0, Landroid/media/MediaFile$MediaFileType;

    .restart local v0       #fileType:Landroid/media/MediaFile$MediaFileType;
    goto/16 :goto_1
.end method

.method private static isApeFlacEnabled()Z
    .locals 2

    .prologue
    .line 162
    const-string v0, "ro.config.ape_flac_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAudioFileType(I)Z
    .locals 2
    .parameter "fileType"

    .prologue
    const/4 v1, 0x1

    .line 260
    if-lt p0, v1, :cond_0

    const/16 v0, 0xf

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x15

    if-lt p0, v0, :cond_2

    const/16 v0, 0x17

    if-gt p0, v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHelixPlayerEnabled()Z
    .locals 2

    .prologue
    .line 158
    const-string v0, "ro.config.helix_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isImageFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 272
    const/16 v0, 0x3d

    if-lt p0, v0, :cond_0

    const/16 v0, 0x41

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 277
    const/16 v0, 0x47

    if-lt p0, v0, :cond_0

    const/16 v0, 0x49

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 267
    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2b

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWMAEnabled()Z
    .locals 4

    .prologue
    .line 137
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    move-result-object v1

    .line 138
    .local v1, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 139
    .local v0, decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    sget-object v3, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    if-ne v0, v3, :cond_0

    .line 140
    const/4 v3, 0x1

    .line 143
    .end local v0           #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isWMVEnabled()Z
    .locals 4

    .prologue
    .line 147
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v1

    .line 148
    .local v1, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 149
    .local v0, decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v3, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v0, v3, :cond_0

    .line 150
    const/4 v3, 0x1

    .line 153
    .end local v0           #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
