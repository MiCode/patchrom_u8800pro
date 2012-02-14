.class public Lcom/carrieriq/iqagent/client/metrics/hw/HW12;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "HW12.java"


# static fields
.field public static final ACTION_EXCEPTION_RESET:Ljava/lang/String; = "com.carrieriq.iqagent.service.action.ACTION_EXCEPTION_RESET"

.field public static final EXTRA_RESET_CAUSE:Ljava/lang/String; = "reset_cause"

#the value of this static final field might be set in the static constructor
.field public static final ID:I = 0x0

.field public static final IQ_BUFFER_TOO_LARGE:B = 0x4t

.field public static final IQ_CONCURRENT_TICK_CALL:B = 0x5t

.field public static final IQ_EARLY_ERROR:B = 0x10t

.field public static final IQ_FACTORY_DATA_RESET:B = 0x19t

.field public static final IQ_INCOMPATIBLE_CONFIGURATION:B = 0x12t

.field public static final IQ_INCOMPATIBLE_CPU_HAL:B = 0xct

.field public static final IQ_INTERRUPT_STACK_OVERFLOW:B = 0x7t

.field public static final IQ_NO_BUFFER_END_MARK:B = 0x13t

.field public static final IQ_POOL_EXTENSION_FAILED:B = 0x3t

.field public static final IQ_PRIORITY_ERROR:B = 0xet

.field public static final IQ_RECURSIVE_ERROR:B = 0x15t

.field public static final IQ_RECURSIVE_SYSERROR:B = 0x16t

.field public static final IQ_RESET_CAUSE_UNKNOWN:B = 0x0t

.field public static final IQ_RESET_EXCEPTION:B = 0x2t

.field public static final IQ_RESET_PROCESSOR_APPLICATION:B = 0x0t

.field public static final IQ_RESET_PROCESSOR_BASEBAND:B = 0x1t

.field public static final IQ_RESET_WATCHDOG_EXPIRED:B = 0x1t

.field public static final IQ_START_STACK_OVERFLOW:B = 0xat

.field public static final IQ_SUPERV_STACK_OVERFLOW:B = 0x6t

.field public static final IQ_SYSCALL_TOO_EARLY:B = 0x11t

.field public static final IQ_TOO_MANY_ATTACHED:B = 0x14t

.field public static final IQ_TOO_MANY_MUTEXES:B = 0x17t

.field public static final IQ_UNEXPECTED_EXCEPTION:B = 0xdt

.field public static final IQ_UNEXPECTED_EXCEPTION_REGDUMP:B = 0xft

.field public static final IQ_UNKNOWN_BREAKPOINT:B = 0x8t

.field public static final IQ_UNKNOWN_INTERRUPT:B = 0x9t

.field public static final IQ_UNRECOGNIZED_CPU:B = 0xbt

.field public static final IQ_USER_STACK_OVERFLOW:B = 0x18t


# instance fields
.field public ucCause:B

.field public ucProcessor:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "HW12"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/hw/HW12;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW12;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW12;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 50
    return-void
.end method

.method public constructor <init>(BB)V
    .locals 1
    .parameter "cause"
    .parameter "processor"

    .prologue
    .line 53
    sget v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW12;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 54
    iput-byte p1, p0, Lcom/carrieriq/iqagent/client/metrics/hw/HW12;->ucCause:B

    .line 55
    iput-byte p2, p0, Lcom/carrieriq/iqagent/client/metrics/hw/HW12;->ucProcessor:B

    .line 56
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
    .line 59
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/hw/HW12;->ucCause:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 60
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/hw/HW12;->ucProcessor:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
