.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI09;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI09.java"


# static fields
.field public static final BATTERY_MAXSCALE_LEVEL:I = 0x64

.field public static final BATTERY_NOT_PRESENT_LEVEL:I = 0xfd

.field public static final BATTERY_UNKNOWN_LEVEL:I = 0xff

.field public static final ID:I


# instance fields
.field public ucBatteryDisplay:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "UI09"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI09;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI09;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI09;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 19
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .parameter "_ucBatteryDisplay"

    .prologue
    .line 22
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI09;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 23
    iput-byte p1, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI09;->ucBatteryDisplay:B

    .line 24
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
    .line 27
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI09;->ucBatteryDisplay:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
