.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$1;,
        Landroid/media/MediaScanner$WplHandler;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$FileCacheEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final AUDIO_PROJECTION:[Ljava/lang/String; = null

.field private static final CRICKET_RINGTONE_DIR:Ljava/lang/String; = "/sdcard/cricket/ringtone/"

.field private static final DATE_MODIFIED_AUDIO_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_IMAGES_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_VIDEO_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final GENRE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field private static final ID3_GENRES:[Ljava/lang/String; = null

.field private static final ID_AUDIO_COLUMN_INDEX:I = 0x0

.field private static final ID_IMAGES_COLUMN_INDEX:I = 0x0

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_VIDEO_COLUMN_INDEX:I = 0x0

.field private static final IMAGES_PROJECTION:[Ljava/lang/String; = null

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_AUDIO_COLUMN_INDEX:I = 0x1

.field private static final PATH_IMAGES_COLUMN_INDEX:I = 0x1

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PATH_VIDEO_COLUMN_INDEX:I = 0x1

.field private static final PLAYLISTS_PROJECTION:[Ljava/lang/String; = null

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String; = null

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static final VIDEO_PROJECTION:[Ljava/lang/String;


# instance fields
.field private canForward:Z

.field private isCricketDrmRingtone:Z

.field private isDrmAudio:Z

.field private isDrmFile:Z

.field private isDrmImage:Z

.field private isDrmVideo:Z

.field private mAudioUri:Landroid/net/Uri;

.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mFileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mGenreCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mGenresUri:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mNativeContext:I

.field private mOriginalCount:I

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mThumbsUri:Landroid/net/Uri;

.field private mVideoUri:Landroid/net/Uri;

.field private rawDrmFileType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "_id"

    .line 113
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 119
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "date_modified"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->AUDIO_PROJECTION:[Ljava/lang/String;

    .line 129
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "date_modified"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->VIDEO_PROJECTION:[Ljava/lang/String;

    .line 139
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "date_modified"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->IMAGES_PROJECTION:[Ljava/lang/String;

    .line 149
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "date_modified"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->PLAYLISTS_PROJECTION:[Ljava/lang/String;

    .line 155
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "playlist_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 163
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Landroid/media/MediaScanner;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 177
    const/16 v0, 0x7e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v2

    const-string v1, "Classic Rock"

    aput-object v1, v0, v3

    const-string v1, "Country"

    aput-object v1, v0, v4

    const-string v1, "Dance"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "Disco"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-boolean v0, p0, Landroid/media/MediaScanner;->isDrmAudio:Z

    .line 331
    iput-boolean v0, p0, Landroid/media/MediaScanner;->isCricketDrmRingtone:Z

    .line 333
    iput-boolean v0, p0, Landroid/media/MediaScanner;->isDrmVideo:Z

    .line 334
    iput-boolean v0, p0, Landroid/media/MediaScanner;->isDrmImage:Z

    .line 335
    iput-boolean v0, p0, Landroid/media/MediaScanner;->isDrmFile:Z

    .line 336
    iput-boolean v2, p0, Landroid/media/MediaScanner;->canForward:Z

    .line 337
    const-string v0, ""

    iput-object v0, p0, Landroid/media/MediaScanner;->rawDrmFileType:Ljava/lang/String;

    .line 356
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 407
    new-instance v0, Landroid/media/MediaScanner$MyMediaScannerClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V

    iput-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 390
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 391
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 392
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 393
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 395
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 396
    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/media/MediaScanner;->isDrmImage:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Landroid/media/MediaScanner;->isDrmImage:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/media/MediaScanner;->isDrmVideo:Z

    return v0
.end method

.method static synthetic access$1102(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Landroid/media/MediaScanner;->isDrmVideo:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processDCFFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$1400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$200(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Landroid/media/MediaScanner;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$2302(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$2502(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$2600(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$2702(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$2800(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/media/MediaScanner;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 110
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/media/MediaScanner;->rawDrmFileType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Landroid/media/MediaScanner;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Landroid/media/MediaScanner;->rawDrmFileType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/media/MediaScanner;->isDrmFile:Z

    return v0
.end method

.method static synthetic access$602(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Landroid/media/MediaScanner;->isDrmFile:Z

    return p1
.end method

.method static synthetic access$700(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/media/MediaScanner;->canForward:Z

    return v0
.end method

.method static synthetic access$702(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Landroid/media/MediaScanner;->canForward:Z

    return p1
.end method

.method static synthetic access$800(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/media/MediaScanner;->isDrmAudio:Z

    return v0
.end method

.method static synthetic access$802(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Landroid/media/MediaScanner;->isDrmAudio:Z

    return p1
.end method

.method static synthetic access$900(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/media/MediaScanner;->isCricketDrmRingtone:Z

    return v0
.end method

.method static synthetic access$902(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Landroid/media/MediaScanner;->isCricketDrmRingtone:Z

    return p1
.end method

.method private addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .locals 16
    .parameter "entry"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"
    .parameter "index"

    .prologue
    .line 1370
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 1371
    .local v8, entryLength:I
    :goto_0
    if-lez v8, :cond_0

    const/4 v13, 0x1

    sub-int v13, v8, v13

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_0

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1374
    :cond_0
    const/4 v13, 0x3

    if-ge v8, v13, :cond_1

    const/4 v13, 0x0

    .line 1427
    :goto_1
    return v13

    .line 1375
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v8, v13, :cond_2

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1379
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1380
    .local v6, ch1:C
    const/16 v13, 0x2f

    if-eq v6, v13, :cond_3

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x3a

    if-ne v13, v14, :cond_8

    const/4 v13, 0x2

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5c

    if-ne v13, v14, :cond_8

    :cond_3
    const/4 v13, 0x1

    move v9, v13

    .line 1383
    .local v9, fullPath:Z
    :goto_2
    if-nez v9, :cond_4

    .line 1384
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1389
    :cond_4
    const/4 v3, 0x0

    .line 1392
    .local v3, bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    const/4 v4, 0x0

    .line 1394
    .local v4, bestMatchLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1395
    .local v10, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1396
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1397
    .local v5, cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v12, v5, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 1399
    .local v12, path:Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1400
    move-object v3, v5

    .line 1412
    .end local v5           #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v12           #path:Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    move-object v13, v0

    iget-object v14, v3, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 1413
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1380
    .end local v3           #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v4           #bestMatchLength:I
    .end local v9           #fullPath:Z
    .end local v10           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_8
    const/4 v13, 0x0

    move v9, v13

    goto :goto_2

    .line 1404
    .restart local v3       #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v4       #bestMatchLength:I
    .restart local v5       #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v9       #fullPath:Z
    .restart local v10       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    .restart local v12       #path:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1405
    .local v11, matchLength:I
    if-le v11, v4, :cond_5

    .line 1406
    move-object v3, v5

    .line 1407
    move v4, v11

    goto :goto_3

    .line 1418
    .end local v5           #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v11           #matchLength:I
    .end local v12           #path:Ljava/lang/String;
    :cond_a
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 1419
    const-string v13, "play_order"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p4

    move-object v1, v13

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1420
    const-string v13, "audio_id"

    iget-wide v14, v3, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p4

    move-object v1, v13

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1422
    :catch_0
    move-exception v13

    move-object v7, v13

    .line 1423
    .local v7, e:Landroid/os/RemoteException;
    const-string v13, "MediaScanner"

    const-string v14, "RemoteException in MediaScanner.addPlayListEntry()"

    invoke-static {v13, v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1424
    const/4 v13, 0x0

    goto/16 :goto_1
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "path"
    .parameter "directories"

    .prologue
    .line 1158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 1159
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1160
    const/4 v1, 0x1

    .line 1163
    :goto_1
    return v1

    .line 1158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1163
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 3
    .parameter "volumeName"

    .prologue
    const/4 v2, 0x1

    .line 1270
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1272
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 1273
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 1274
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 1275
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1277
    const-string v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1279
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 1280
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 1281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    .line 1282
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;

    .line 1283
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 1285
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    .line 1289
    :cond_0
    return-void
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .parameter "path1"
    .parameter "path2"

    .prologue
    .line 1341
    const/4 v10, 0x0

    .line 1342
    .local v10, result:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 1343
    .local v8, end1:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 1345
    .local v9, end2:I
    :goto_0
    if-lez v8, :cond_0

    if-lez v9, :cond_0

    .line 1346
    const/16 v0, 0x2f

    const/4 v1, 0x1

    sub-int v1, v8, v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 1347
    .local v11, slash1:I
    const/16 v0, 0x2f

    const/4 v1, 0x1

    sub-int v1, v9, v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 1348
    .local v12, slash2:I
    const/16 v0, 0x5c

    const/4 v1, 0x1

    sub-int v1, v8, v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 1349
    .local v6, backSlash1:I
    const/16 v0, 0x5c

    const/4 v1, 0x1

    sub-int v1, v9, v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 1350
    .local v7, backSlash2:I
    if-le v11, v6, :cond_1

    move v2, v11

    .line 1351
    .local v2, start1:I
    :goto_1
    if-le v12, v7, :cond_2

    move v4, v12

    .line 1352
    .local v4, start2:I
    :goto_2
    if-gez v2, :cond_3

    const/4 v2, 0x0

    .line 1353
    :goto_3
    if-gez v4, :cond_4

    const/4 v4, 0x0

    .line 1354
    :goto_4
    sub-int v5, v8, v2

    .line 1355
    .local v5, length:I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_5

    .line 1363
    .end local v2           #start1:I
    .end local v4           #start2:I
    .end local v5           #length:I
    .end local v6           #backSlash1:I
    .end local v7           #backSlash2:I
    .end local v11           #slash1:I
    .end local v12           #slash2:I
    :cond_0
    return v10

    .restart local v6       #backSlash1:I
    .restart local v7       #backSlash2:I
    .restart local v11       #slash1:I
    .restart local v12       #slash2:I
    :cond_1
    move v2, v6

    .line 1350
    goto :goto_1

    .restart local v2       #start1:I
    :cond_2
    move v4, v7

    .line 1351
    goto :goto_2

    .line 1352
    .restart local v4       #start2:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1353
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1356
    .restart local v5       #length:I
    :cond_5
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    add-int/lit8 v10, v10, 0x1

    .line 1358
    const/4 v0, 0x1

    sub-int v8, v2, v0

    .line 1359
    const/4 v0, 0x1

    sub-int v9, v4, v0

    .line 1361
    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 14
    .parameter "directories"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1212
    iget-object v8, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1214
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1215
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1216
    .local v0, entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v5, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 1219
    .local v5, path:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1221
    .local v1, fileMissing:Z
    iget-boolean v8, v0, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    if-nez v8, :cond_1

    .line 1222
    invoke-direct {p0, v5, p1}, Landroid/media/MediaScanner;->inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1224
    const/4 v1, 0x1

    .line 1235
    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    .line 1239
    invoke-static {v5}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v4

    .line 1240
    .local v4, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v4, :cond_3

    move v2, v13

    .line 1242
    .local v2, fileType:I
    :goto_2
    invoke-static {v2}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1243
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1244
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "_data"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const-string v8, "date_modified"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1246
    iget-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v9, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    iget-wide v10, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-interface {v8, v9, v7, v12, v12}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1228
    .end local v2           #fileType:I
    .end local v4           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1229
    .local v6, testFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1230
    const/4 v1, 0x1

    goto :goto_1

    .line 1240
    .end local v6           #testFile:Ljava/io/File;
    .restart local v4       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_3
    iget v8, v4, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move v2, v8

    goto :goto_2

    .line 1248
    .restart local v2       #fileType:I
    :cond_4
    iget-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v9, v0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    iget-wide v10, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-interface {v8, v9, v12, v12}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1249
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1255
    .end local v0           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v1           #fileMissing:Z
    .end local v2           #fileType:I
    .end local v4           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v5           #path:Ljava/lang/String;
    :cond_5
    iget-boolean v8, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v8, :cond_6

    .line 1256
    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 1259
    :cond_6
    iget v8, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-nez v8, :cond_7

    iget-object v8, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string v9, "external"

    invoke-static {v9}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1260
    invoke-direct {p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 1263
    :cond_7
    iput-object v12, p0, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    .line 1264
    iput-object v12, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1265
    iput-object v12, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 1266
    iput-object v12, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1267
    return-void
.end method

.method private prescan(Ljava/lang/String;)V
    .locals 15
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1000
    const/4 v12, 0x0

    .line 1001
    .local v12, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1002
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1004
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    if-nez v0, :cond_4

    .line 1005
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 1009
    :goto_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1010
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1018
    :goto_1
    if-eqz p1, :cond_0

    .line 1019
    :try_start_0
    const-string v3, "_data=?"

    .line 1020
    const/4 v0, 0x1

    new-array v14, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v14, v0

    .end local v4           #selectionArgs:[Ljava/lang/String;
    .local v14, selectionArgs:[Ljava/lang/String;
    move-object v4, v14

    .line 1022
    .end local v14           #selectionArgs:[Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/MediaScanner;->AUDIO_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .line 1024
    if-eqz v12, :cond_7

    .line 1026
    :cond_1
    :goto_2
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1027
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1028
    .local v7, rowId:J
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1029
    .local v9, path:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1034
    .local v10, lastModified:J
    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1035
    move-object v13, v9

    .line 1036
    .local v13, key:Ljava/lang/String;
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v0, :cond_2

    .line 1037
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 1039
    :cond_2
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    new-instance v5, Landroid/media/MediaScanner$FileCacheEntry;

    iget-object v6, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    invoke-direct/range {v5 .. v11}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1044
    .end local v7           #rowId:J
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #lastModified:J
    .end local v13           #key:Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1045
    const/4 v12, 0x0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1151
    :catchall_1
    move-exception v0

    if-eqz v12, :cond_3

    .line 1152
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1007
    :cond_4
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 1012
    :cond_5
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 1044
    :cond_6
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1045
    const/4 v12, 0x0

    .line 1050
    :cond_7
    if-eqz p1, :cond_a

    .line 1051
    const-string v3, "_data=?"

    .line 1055
    :goto_3
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/MediaScanner;->VIDEO_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v12

    .line 1057
    if-eqz v12, :cond_c

    .line 1059
    :cond_8
    :goto_4
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1060
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1061
    .restart local v7       #rowId:J
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1062
    .restart local v9       #path:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1067
    .restart local v10       #lastModified:J
    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1068
    move-object v13, v9

    .line 1069
    .restart local v13       #key:Ljava/lang/String;
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v0, :cond_9

    .line 1070
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 1072
    :cond_9
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    new-instance v5, Landroid/media/MediaScanner$FileCacheEntry;

    iget-object v6, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    invoke-direct/range {v5 .. v11}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    .line 1077
    .end local v7           #rowId:J
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #lastModified:J
    .end local v13           #key:Ljava/lang/String;
    :catchall_2
    move-exception v0

    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1078
    const/4 v12, 0x0

    throw v0

    .line 1053
    :cond_a
    const/4 v3, 0x0

    goto :goto_3

    .line 1077
    :cond_b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1078
    const/4 v12, 0x0

    .line 1083
    :cond_c
    if-eqz p1, :cond_f

    .line 1084
    const-string v3, "_data=?"

    .line 1088
    :goto_5
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1089
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/MediaScanner;->IMAGES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v12

    .line 1091
    if-eqz v12, :cond_11

    .line 1093
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1094
    :cond_d
    :goto_6
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1095
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1096
    .restart local v7       #rowId:J
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1097
    .restart local v9       #path:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1102
    .restart local v10       #lastModified:J
    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1103
    move-object v13, v9

    .line 1104
    .restart local v13       #key:Ljava/lang/String;
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v0, :cond_e

    .line 1105
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 1107
    :cond_e
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    new-instance v5, Landroid/media/MediaScanner$FileCacheEntry;

    iget-object v6, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    invoke-direct/range {v5 .. v11}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    .line 1112
    .end local v7           #rowId:J
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #lastModified:J
    .end local v13           #key:Ljava/lang/String;
    :catchall_3
    move-exception v0

    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1113
    const/4 v12, 0x0

    throw v0

    .line 1086
    :cond_f
    const/4 v3, 0x0

    goto :goto_5

    .line 1112
    :cond_10
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1113
    const/4 v12, 0x0

    .line 1117
    :cond_11
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v0, :cond_16

    .line 1119
    if-eqz p1, :cond_14

    .line 1120
    const-string v3, "_data=?"

    .line 1124
    :goto_7
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/MediaScanner;->PLAYLISTS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v12

    .line 1126
    if-eqz v12, :cond_16

    .line 1128
    :cond_12
    :goto_8
    :try_start_8
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1129
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1131
    .restart local v9       #path:Ljava/lang/String;
    if-eqz v9, :cond_12

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 1132
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1133
    .restart local v7       #rowId:J
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1135
    .restart local v10       #lastModified:J
    move-object v13, v9

    .line 1136
    .restart local v13       #key:Ljava/lang/String;
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v0, :cond_13

    .line 1137
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 1139
    :cond_13
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    new-instance v5, Landroid/media/MediaScanner$FileCacheEntry;

    iget-object v6, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-direct/range {v5 .. v11}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_8

    .line 1144
    .end local v7           #rowId:J
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #lastModified:J
    .end local v13           #key:Ljava/lang/String;
    :catchall_4
    move-exception v0

    :try_start_9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1145
    const/4 v12, 0x0

    throw v0

    .line 1122
    :cond_14
    const/4 v3, 0x0

    goto :goto_7

    .line 1144
    :cond_15
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1145
    const/4 v12, 0x0

    .line 1151
    :cond_16
    if-eqz v12, :cond_17

    .line 1152
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1155
    :cond_17
    return-void
.end method

.method private processDCFFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 12
    .parameter "path"
    .parameter "mimeType"
    .parameter "client"

    .prologue
    .line 1621
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "the file path is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    const/4 v4, 0x0

    .line 1626
    .local v4, drmContentInfo:Landroid/hwdrm/drm1/HWDrmContentInfo;
    invoke-static {p1}, Landroid/hwdrm/drm1/HWDrmUtils;->isDrmFile(Ljava/lang/String;)Landroid/hwdrm/drm1/HWDrmContentInfo;

    move-result-object v4

    .line 1627
    if-nez v4, :cond_1

    .line 1629
    const-string v9, "MediaScanner"

    const-string v10, "null == drmContentInfo,return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    :cond_0
    :goto_0
    return-void

    .line 1634
    :cond_1
    invoke-virtual {v4}, Landroid/hwdrm/drm1/HWDrmContentInfo;->isDrmFile()Z

    move-result v9

    iput-boolean v9, p0, Landroid/media/MediaScanner;->isDrmFile:Z

    .line 1635
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "the isDrmFile is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Landroid/media/MediaScanner;->isDrmFile:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    invoke-virtual {v4}, Landroid/hwdrm/drm1/HWDrmContentInfo;->isCanForward()Z

    move-result v9

    iput-boolean v9, p0, Landroid/media/MediaScanner;->canForward:Z

    .line 1638
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "the canForward is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Landroid/media/MediaScanner;->canForward:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    invoke-virtual {v4}, Landroid/hwdrm/drm1/HWDrmContentInfo;->getFileMimeType()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/media/MediaScanner;->rawDrmFileType:Ljava/lang/String;

    .line 1641
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "the rawType is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaScanner;->rawDrmFileType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    const/4 v6, 0x0

    .line 1644
    .local v6, isAutoUseDRM:Z
    const-string v9, "audio/mp3"

    iget-object v10, p0, Landroid/media/MediaScanner;->rawDrmFileType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Landroid/media/MediaScanner;->rawDrmFileType:Ljava/lang/String;

    const-string v10, "audio/mpeg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "audio/3gpp"

    iget-object v10, p0, Landroid/media/MediaScanner;->rawDrmFileType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_2
    const/4 v9, 0x1

    move v0, v9

    .line 1645
    .local v0, canBeProcess:Z
    :goto_1
    const-string v9, "ro.config.cricket.drmringtone"

    const-string v10, "false"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1647
    .local v1, cricketDRMsupport:Z
    iget-boolean v9, p0, Landroid/media/MediaScanner;->isDrmFile:Z

    if-eqz v9, :cond_6

    if-nez v0, :cond_3

    if-eqz v1, :cond_6

    .line 1650
    :cond_3
    const/4 v2, 0x0

    .line 1655
    .local v2, dc:Landroid/hwdrm/drm1/HWDrmContent;
    :try_start_0
    new-instance v3, Landroid/hwdrm/drm1/HWDrmContent;

    invoke-direct {v3, p1}, Landroid/hwdrm/drm1/HWDrmContent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/hwdrm/drm1/HWDrmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1658
    .end local v2           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .local v3, dc:Landroid/hwdrm/drm1/HWDrmContent;
    const/4 v9, 0x1

    const/4 v10, 0x1

    :try_start_1
    invoke-virtual {v3, v9, v10}, Landroid/hwdrm/drm1/HWDrmContent;->startConsume(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/hwdrm/drm1/HWDrmException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    .line 1660
    .local v8, rawPath:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 1662
    const/4 v9, 0x1

    :try_start_2
    invoke-virtual {v3, v9}, Landroid/hwdrm/drm1/HWDrmContent;->isAutoUse(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/hwdrm/drm1/HWDrmException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    .line 1667
    :cond_4
    :goto_2
    :try_start_3
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "the rawPath is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    if-eqz v8, :cond_5

    if-eqz v0, :cond_5

    .line 1672
    iget-object v9, p0, Landroid/media/MediaScanner;->rawDrmFileType:Ljava/lang/String;

    invoke-direct {p0, v8, v9, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/hwdrm/drm1/HWDrmException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1682
    :cond_5
    if-eqz v3, :cond_6

    .line 1684
    invoke-virtual {v3}, Landroid/hwdrm/drm1/HWDrmContent;->endConsume()I

    .line 1690
    .end local v3           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .end local v8           #rawPath:Ljava/lang/String;
    :cond_6
    :goto_3
    iget-object v9, p0, Landroid/media/MediaScanner;->rawDrmFileType:Ljava/lang/String;

    invoke-static {v9}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v7

    .line 1691
    .local v7, rawFileType:I
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "the FileType is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    invoke-static {v7}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1696
    const-string v9, "MediaScanner"

    const-string v10, "is audio file"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/media/MediaScanner;->isDrmAudio:Z

    .line 1699
    if-eqz v1, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/sdcard/cricket/ringtone/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_0

    .line 1700
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/media/MediaScanner;->isCricketDrmRingtone:Z

    goto/16 :goto_0

    .line 1644
    .end local v0           #canBeProcess:Z
    .end local v1           #cricketDRMsupport:Z
    .end local v7           #rawFileType:I
    :cond_7
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_1

    .line 1676
    .restart local v0       #canBeProcess:Z
    .restart local v1       #cricketDRMsupport:Z
    .restart local v2       #dc:Landroid/hwdrm/drm1/HWDrmContent;
    :catch_0
    move-exception v9

    move-object v5, v9

    .line 1678
    .local v5, e:Landroid/hwdrm/drm1/HWDrmException;
    :goto_4
    :try_start_4
    invoke-virtual {v5}, Landroid/hwdrm/drm1/HWDrmException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1682
    if-eqz v2, :cond_6

    .line 1684
    invoke-virtual {v2}, Landroid/hwdrm/drm1/HWDrmContent;->endConsume()I

    goto :goto_3

    .line 1682
    .end local v5           #e:Landroid/hwdrm/drm1/HWDrmException;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v2, :cond_8

    .line 1684
    invoke-virtual {v2}, Landroid/hwdrm/drm1/HWDrmContent;->endConsume()I

    :cond_8
    throw v9

    .line 1704
    .end local v2           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .restart local v7       #rawFileType:I
    :cond_9
    invoke-static {v7}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1706
    const-string v9, "MediaScanner"

    const-string v10, "is video file"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/media/MediaScanner;->isDrmVideo:Z

    goto/16 :goto_0

    .line 1709
    :cond_a
    invoke-static {v7}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1711
    const-string v9, "MediaScanner"

    const-string v10, "is image file"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/media/MediaScanner;->isDrmImage:Z

    goto/16 :goto_0

    .line 1663
    .end local v7           #rawFileType:I
    .restart local v3       #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .restart local v8       #rawPath:Ljava/lang/String;
    :catch_1
    move-exception v9

    goto/16 :goto_2

    .line 1682
    .end local v8           #rawPath:Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .restart local v2       #dc:Landroid/hwdrm/drm1/HWDrmContent;
    goto :goto_5

    .line 1676
    .end local v2           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .restart local v3       #dc:Landroid/hwdrm/drm1/HWDrmContent;
    :catch_2
    move-exception v9

    move-object v5, v9

    move-object v2, v3

    .end local v3           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .restart local v2       #dc:Landroid/hwdrm/drm1/HWDrmContent;
    goto :goto_4
.end method

.method private native processDirectory(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 10
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1431
    const/4 v8, 0x0

    .line 1433
    .local v8, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1434
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1435
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    invoke-direct {v9, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1437
    .end local v8           #reader:Ljava/io/BufferedReader;
    .local v9, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1438
    .local v1, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1439
    .local v5, index:I
    :goto_0
    if-eqz v1, :cond_1

    .line 1441
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-eq v0, v2, :cond_0

    .line 1442
    invoke-virtual {p4}, Landroid/content/ContentValues;->clear()V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1443
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    add-int/lit8 v5, v5, 0x1

    .line 1446
    :cond_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v8, v9

    .line 1453
    .end local v1           #line:Ljava/lang/String;
    .end local v5           #index:I
    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_2
    if-eqz v8, :cond_3

    .line 1454
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1459
    .end local v7           #f:Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 1455
    .restart local v7       #f:Ljava/io/File;
    :catch_0
    move-exception v6

    .line 1456
    .local v6, e:Ljava/io/IOException;
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1449
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #f:Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 1450
    .restart local v6       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1453
    if-eqz v8, :cond_3

    .line 1454
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1455
    :catch_2
    move-exception v6

    .line 1456
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1452
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 1453
    :goto_3
    if-eqz v8, :cond_4

    .line 1454
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1457
    :cond_4
    :goto_4
    throw v0

    .line 1455
    :catch_3
    move-exception v6

    .line 1456
    .restart local v6       #e:Ljava/io/IOException;
    const-string v1, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1452
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #f:Ljava/io/File;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 1449
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v6, v0

    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processPlayLists()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1559
    .local v14, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1560
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1561
    .local v12, entry:Landroid/media/MediaScanner$FileCacheEntry;
    move-object v0, v12

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1564
    .local v19, path:Ljava/lang/String;
    iget-boolean v5, v12, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-eqz v5, :cond_0

    .line 1565
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 1566
    .local v24, values:Landroid/content/ContentValues;
    const/16 v5, 0x2f

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 1567
    .local v16, lastSlash:I
    if-gez v16, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1569
    :cond_1
    move-object v0, v12

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v21, v0

    .line 1570
    .local v21, rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v21, v7

    if-nez v5, :cond_6

    .line 1573
    const/16 v5, 0x2e

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 1574
    .local v15, lastDot:I
    if-gez v15, :cond_5

    add-int/lit8 v5, v16, 0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v5

    .line 1575
    .local v18, name:Ljava/lang/String;
    :goto_1
    const-string v5, "name"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    const-string v5, "_data"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    const-string v5, "date_modified"

    iget-wide v7, v12, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v23

    .line 1579
    .local v23, uri:Landroid/net/Uri;
    invoke-static/range {v23 .. v23}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v21

    .line 1580
    const-string v5, "members"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1593
    .end local v15           #lastDot:I
    .end local v18           #name:Ljava/lang/String;
    .local v6, membersUri:Landroid/net/Uri;
    :goto_2
    const/4 v5, 0x0

    add-int/lit8 v7, v16, 0x1

    move-object/from16 v0, v19

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1594
    .local v20, playListDirectory:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v17

    .line 1595
    .local v17, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v17, :cond_7

    const/4 v5, 0x0

    move v13, v5

    .line 1597
    .local v13, fileType:I
    :goto_3
    const/16 v5, 0x47

    if-ne v13, v5, :cond_8

    .line 1598
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v6

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1604
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    sget-object v7, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1607
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_3

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_4

    .line 1608
    :cond_3
    const-string v5, "MediaScanner"

    const-string v6, "playlist is empty - deleting"

    .end local v6           #membersUri:Landroid/net/Uri;
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1612
    :cond_4
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1574
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v13           #fileType:I
    .end local v17           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v20           #playListDirectory:Ljava/lang/String;
    .end local v23           #uri:Landroid/net/Uri;
    .restart local v15       #lastDot:I
    :cond_5
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v0, v19

    move v1, v5

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v5

    goto/16 :goto_1

    .line 1582
    .end local v15           #lastDot:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 1585
    .restart local v23       #uri:Landroid/net/Uri;
    const-string v5, "date_modified"

    iget-wide v7, v12, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v6

    move-object v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1589
    const-string v5, "members"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1590
    .restart local v6       #membersUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1595
    .restart local v17       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v20       #playListDirectory:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v17

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move v5, v0

    move v13, v5

    goto/16 :goto_3

    .line 1599
    .restart local v13       #fileType:I
    :cond_8
    const/16 v5, 0x48

    if-ne v13, v5, :cond_9

    .line 1600
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v6

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_4

    .line 1601
    :cond_9
    const/16 v5, 0x49

    if-ne v13, v5, :cond_2

    .line 1602
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_4

    .line 1612
    .end local v6           #membersUri:Landroid/net/Uri;
    .restart local v11       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v5

    .line 1616
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v13           #fileType:I
    .end local v16           #lastSlash:I
    .end local v17           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v19           #path:Ljava/lang/String;
    .end local v20           #playListDirectory:Ljava/lang/String;
    .end local v21           #rowId:J
    .end local v23           #uri:Landroid/net/Uri;
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_b
    return-void
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 12
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1462
    const/4 v10, 0x0

    .line 1464
    .local v10, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1465
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1466
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    invoke-direct {v11, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1468
    .end local v10           #reader:Ljava/io/BufferedReader;
    .local v11, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 1469
    .local v9, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1470
    .local v5, index:I
    :goto_0
    if-eqz v9, :cond_1

    .line 1472
    const-string v0, "File"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1473
    const/16 v0, 0x3d

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 1474
    .local v7, equals:I
    if-lez v7, :cond_0

    .line 1475
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 1476
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1477
    add-int/lit8 v5, v5, 0x1

    .line 1480
    .end local v7           #equals:I
    :cond_0
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v10, v11

    .line 1487
    .end local v5           #index:I
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :cond_2
    if-eqz v10, :cond_3

    .line 1488
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1493
    .end local v8           #f:Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 1489
    .restart local v8       #f:Ljava/io/File;
    :catch_0
    move-exception v6

    .line 1490
    .local v6, e:Ljava/io/IOException;
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1483
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #f:Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 1484
    .restart local v6       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1487
    if-eqz v10, :cond_3

    .line 1488
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1489
    :catch_2
    move-exception v6

    .line 1490
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1486
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 1487
    :goto_3
    if-eqz v10, :cond_4

    .line 1488
    :try_start_5
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1491
    :cond_4
    :goto_4
    throw v0

    .line 1489
    :catch_3
    move-exception v6

    .line 1490
    .restart local v6       #e:Ljava/io/IOException;
    const-string v1, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1486
    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v8       #f:Ljava/io/File;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 1483
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v6, v0

    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 8
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"

    .prologue
    const-string v7, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processWplPlayList()"

    .line 1535
    const/4 v2, 0x0

    .line 1537
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1538
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1539
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1541
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    const-string v4, "UTF-8"

    invoke-static {v4}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v4

    new-instance v5, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v5, p0, p2, p3}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v2, v3

    .line 1549
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 1550
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1555
    .end local v1           #f:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 1551
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1552
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1543
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #f:Ljava/io/File;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 1544
    .local v0, e:Lorg/xml/sax/SAXException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1549
    if-eqz v2, :cond_1

    .line 1550
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1551
    :catch_2
    move-exception v0

    .line 1552
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1545
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    move-object v0, v4

    .line 1546
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1549
    if-eqz v2, :cond_1

    .line 1550
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 1551
    :catch_4
    move-exception v0

    .line 1552
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1548
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1549
    :goto_3
    if-eqz v2, :cond_2

    .line 1550
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1553
    :cond_2
    :goto_4
    throw v4

    .line 1551
    :catch_5
    move-exception v0

    .line 1552
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1548
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 1545
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 1543
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private pruneDeadThumbnailFiles()V
    .locals 14

    .prologue
    const/4 v1, 0x0

    const-string v0, "MediaScanner"

    .line 1167
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1168
    .local v8, existingFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v7, "/sdcard/DCIM/.thumbnails"

    .line 1169
    .local v7, directory:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 1170
    .local v10, files:[Ljava/lang/String;
    if-nez v10, :cond_0

    .line 1171
    new-array v10, v1, [Ljava/lang/String;

    .line 1173
    :cond_0
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    array-length v0, v10

    if-ge v12, v0, :cond_1

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v10, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1175
    .local v11, fullPathString:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1173
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1179
    .end local v11           #fullPathString:Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1185
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1188
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1189
    .restart local v11       #fullPathString:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1190
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1193
    .end local v11           #fullPathString:Ljava/lang/String;
    :cond_3
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1197
    .local v9, fileToDelete:Ljava/lang/String;
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1198
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1202
    .end local v9           #fileToDelete:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    if-eqz v6, :cond_5

    .line 1204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1209
    .end local v6           #c:Landroid/database/Cursor;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    return-void

    .line 1206
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 1

    .prologue
    .line 399
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 401
    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 403
    const-string v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 405
    return-void
.end method


# virtual methods
.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 1727
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1728
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 1729
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .parameter "directories"
    .parameter "volumeName"

    .prologue
    .line 1293
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1294
    .local v12, start:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1295
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;)V

    .line 1296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1298
    .local v8, prescan:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    if-ge v7, v14, :cond_0

    .line 1299
    aget-object v14, p1, v7

    sget-object v15, Landroid/media/MediaFile;->sFileExtensions:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1298
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1301
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1302
    .local v10, scan:J
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 1303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1306
    .local v5, end:J
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " prescan time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v8, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    scan time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v10, v8

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "postscan time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v5, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "   total time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v5, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1320
    .end local v5           #end:J
    .end local v7           #i:I
    .end local v8           #prescan:J
    .end local v10           #scan:J
    .end local v12           #start:J
    :goto_1
    return-void

    .line 1311
    :catch_0
    move-exception v14

    move-object v4, v14

    .line 1313
    .local v4, e:Landroid/database/SQLException;
    const-string v14, "MediaScanner"

    const-string v15, "SQLException in MediaScanner.scan()"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1314
    .end local v4           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v14

    move-object v4, v14

    .line 1316
    .local v4, e:Ljava/lang/UnsupportedOperationException;
    const-string v14, "MediaScanner"

    const-string v15, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1317
    .end local v4           #e:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v14

    move-object v4, v14

    .line 1318
    .local v4, e:Landroid/os/RemoteException;
    const-string v14, "MediaScanner"

    const-string v15, "RemoteException in MediaScanner.scan()"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .parameter "path"
    .parameter "volumeName"
    .parameter "mimeType"

    .prologue
    .line 1325
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1326
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;)V

    .line 1328
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1331
    .local v9, file:Ljava/io/File;
    iget-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1335
    .end local v9           #file:Ljava/io/File;
    :goto_0
    return-object v0

    .line 1333
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 1334
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "MediaScanner"

    const-string v1, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1335
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native setLocale(Ljava/lang/String;)V
.end method
