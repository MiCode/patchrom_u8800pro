.class public Landroid/app/ActivityManager$RunningAppProcessInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningAppProcessInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CANT_SAVE_STATE:I = 0x1

.field public static final FLAG_PERSISTENT:I = 0x2

.field public static final IMPORTANCE_BACKGROUND:I = 0x190

.field public static final IMPORTANCE_CANT_SAVE_STATE:I = 0xaa

.field public static final IMPORTANCE_EMPTY:I = 0x1f4

.field public static final IMPORTANCE_FOREGROUND:I = 0x64

.field public static final IMPORTANCE_PERCEPTIBLE:I = 0x82

.field public static final IMPORTANCE_SERVICE:I = 0x12c

.field public static final IMPORTANCE_VISIBLE:I = 0xc8

.field public static final REASON_PROVIDER_IN_USE:I = 0x1

.field public static final REASON_SERVICE_IN_USE:I = 0x2

.field public static final REASON_UNKNOWN:I


# instance fields
.field public flags:I

.field public importance:I

.field public importanceReasonCode:I

.field public importanceReasonComponent:Landroid/content/ComponentName;

.field public importanceReasonPid:I

.field public lru:I

.field public pid:I

.field public pkgList:[Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1015
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 975
    const/16 v0, 0x64

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 976
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 977
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 1027
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 822
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .parameter "pProcessName"
    .parameter "pPid"
    .parameter "pArr"

    .prologue
    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 980
    iput-object p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 981
    iput p2, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 982
    iput-object p3, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 983
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 986
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 1003
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 1004
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 1005
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 1006
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 1007
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 1008
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 1009
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 1010
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 1011
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 1012
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 1013
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 990
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 991
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 994
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 995
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 999
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1000
    return-void
.end method
