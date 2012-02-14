.class public Lcom/carrieriq/iqagent/client/metrics/hw/HW03;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "HW03.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final ID:I = 0x0

.field public static final IQ_BATTERY_EVENT_CHARGER_CONNECTED:B = 0x2t

.field public static final IQ_BATTERY_EVENT_CHARGER_DISCONNECTED:B = 0x3t

.field public static final IQ_BATTERY_EVENT_CHARGE_COMPLETE:B = 0x4t

.field public static final IQ_BATTERY_EVENT_LOW_BATTERY_WARNING:B = 0x0t

.field public static final IQ_BATTERY_EVENT_POWERING_OFF_DUE_TO_BATTERY:B = 0x1t

.field public static final IQ_BATTERY_NO_EVENT:B = 0x5t


# instance fields
.field public ucBatteryEvent:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "HW03"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/hw/HW03;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW03;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW03;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 24
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .parameter "event"

    .prologue
    .line 27
    sget v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW03;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 28
    iput-byte p1, p0, Lcom/carrieriq/iqagent/client/metrics/hw/HW03;->ucBatteryEvent:B

    .line 29
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
    .line 32
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/hw/HW03;->ucBatteryEvent:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
