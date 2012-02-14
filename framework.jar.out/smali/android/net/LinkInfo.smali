.class public Landroid/net/LinkInfo;
.super Ljava/lang/Object;
.source "LinkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/LinkInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final INF_UNSPECIFIED:I = -0x1

.field public static final STATUS_FAILURE:I = 0x0

.field public static final STATUS_SUCCESS:I = 0x1


# instance fields
.field private availFwLinkBw:I

.field private availRevLinkBw:I

.field private ipAddr:Ljava/net/InetAddress;

.field private nwId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    new-instance v0, Landroid/net/LinkInfo$1;

    invoke-direct {v0}, Landroid/net/LinkInfo$1;-><init>()V

    sput-object v0, Landroid/net/LinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/LinkInfo;->ipAddr:Ljava/net/InetAddress;

    .line 66
    iput v1, p0, Landroid/net/LinkInfo;->availFwLinkBw:I

    .line 67
    iput v1, p0, Landroid/net/LinkInfo;->availRevLinkBw:I

    .line 68
    iput v1, p0, Landroid/net/LinkInfo;->nwId:I

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .parameter "ip"
    .parameter "fwLinkBw"
    .parameter "revLinkBw"
    .parameter "netId"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/LinkInfo;->ipAddr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    iput p2, p0, Landroid/net/LinkInfo;->availFwLinkBw:I

    .line 82
    iput p3, p0, Landroid/net/LinkInfo;->availRevLinkBw:I

    .line 83
    iput p4, p0, Landroid/net/LinkInfo;->nwId:I

    .line 84
    return-void

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/net/InetAddress;III)V
    .locals 0
    .parameter "ip"
    .parameter "fwLinkBw"
    .parameter "revLinkBw"
    .parameter "netId"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/net/LinkInfo;->ipAddr:Ljava/net/InetAddress;

    .line 92
    iput p2, p0, Landroid/net/LinkInfo;->availFwLinkBw:I

    .line 93
    iput p3, p0, Landroid/net/LinkInfo;->availRevLinkBw:I

    .line 94
    iput p4, p0, Landroid/net/LinkInfo;->nwId:I

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Ljava/net/InetAddress;IIILandroid/net/LinkInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/LinkInfo;-><init>(Ljava/net/InetAddress;III)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailFwLinkBw()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroid/net/LinkInfo;->availFwLinkBw:I

    return v0
.end method

.method public getAvailRevLinkBw()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Landroid/net/LinkInfo;->availRevLinkBw:I

    return v0
.end method

.method public getIpAddr()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/net/LinkInfo;->ipAddr:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getNwId()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Landroid/net/LinkInfo;->nwId:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-array v1, v2, [B

    .line 162
    .local v1, ip:[B
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 164
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Landroid/net/LinkInfo;->ipAddr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/LinkInfo;->availFwLinkBw:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/LinkInfo;->availRevLinkBw:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/LinkInfo;->nwId:I

    .line 171
    return-void

    .line 165
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 166
    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/LinkInfo;->ipAddr:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 148
    iget-object v1, p0, Landroid/net/LinkInfo;->ipAddr:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 149
    .local v0, ip:[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 151
    iget v1, p0, Landroid/net/LinkInfo;->availFwLinkBw:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v1, p0, Landroid/net/LinkInfo;->availRevLinkBw:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v1, p0, Landroid/net/LinkInfo;->nwId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    return-void
.end method
