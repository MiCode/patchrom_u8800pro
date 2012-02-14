.class public final Lcom/carrieriq/iqagent/client/metrics/net/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static final getNetworkType(I)B
    .locals 1
    .parameter "networkType"

    .prologue
    .line 17
    packed-switch p0, :pswitch_data_0

    .line 31
    const/4 v0, 0x6

    :goto_0
    return v0

    .line 19
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 22
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 25
    :pswitch_2
    const/4 v0, 0x7

    goto :goto_0

    .line 28
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
