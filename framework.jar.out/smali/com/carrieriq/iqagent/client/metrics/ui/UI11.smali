.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI11;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI11.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final ID:I = 0x0

.field public static final IQ_PEN_EVENT_DOWN:B = 0x10t

.field public static final IQ_PEN_EVENT_DRAG:B = 0x13t

.field public static final IQ_PEN_EVENT_HELD:B = 0x12t

.field public static final IQ_PEN_EVENT_UP:B = 0x11t


# instance fields
.field public dwErrorCode:I

.field public dwUserInputEventID:I

.field public dwVendorDataLength:I

.field public strVendorData:Ljava/lang/String;

.field public ucErrorLevel:B

.field public ucPenEvent:B

.field public wMaxScreenLocX:S

.field public wMaxScreenLocY:S

.field public wScreenLocX:S

.field public wScreenLocY:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "UI11"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 16
    iput v1, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->dwUserInputEventID:I

    .line 18
    iput v1, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->dwVendorDataLength:I

    .line 31
    return-void
.end method

.method public constructor <init>(SSSSIIIBBLjava/lang/String;)V
    .locals 2
    .parameter "wMaxScreenLocX"
    .parameter "wMaxScreenLocY"
    .parameter "wScreenLocX"
    .parameter "wScreenLocY"
    .parameter "dwUserInputEventID"
    .parameter "dwErrorCode"
    .parameter "dwVendorDataLength"
    .parameter "ucErrorLevel"
    .parameter "ucPenEvent"
    .parameter "strVendorData"

    .prologue
    const/4 v1, 0x0

    .line 38
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 16
    iput v1, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->dwUserInputEventID:I

    .line 18
    iput v1, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->dwVendorDataLength:I

    .line 39
    iput-short p1, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->wMaxScreenLocX:S

    .line 40
    iput-short p2, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->wMaxScreenLocY:S

    .line 41
    iput-short p3, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->wScreenLocX:S

    .line 42
    iput-short p4, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->wScreenLocY:S

    .line 43
    iput p5, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->dwUserInputEventID:I

    .line 44
    iput p6, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->dwErrorCode:I

    .line 45
    iput p7, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->dwVendorDataLength:I

    .line 46
    iput-byte p8, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->ucErrorLevel:B

    .line 47
    iput-byte p9, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->ucPenEvent:B

    .line 48
    iput-object p10, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->strVendorData:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 53
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->wMaxScreenLocX:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 54
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->wMaxScreenLocY:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 55
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->wScreenLocX:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 56
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->wScreenLocY:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 57
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->dwUserInputEventID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 58
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->dwErrorCode:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 59
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->dwVendorDataLength:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 60
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->ucErrorLevel:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 61
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->ucPenEvent:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->strVendorData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI11;->strVendorData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 65
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
