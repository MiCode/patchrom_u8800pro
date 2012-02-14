.class public abstract Landroid/net/NetworkStateTracker;
.super Landroid/os/Handler;
.source "NetworkStateTracker.java"


# static fields
.field private static DBG:Z = false

.field public static final EVENT_CONFIGURATION_CHANGED:I = 0x4

.field public static final EVENT_NETWORK_SUBTYPE_CHANGED:I = 0x6

.field public static final EVENT_NOTIFICATION_CHANGED:I = 0x3

.field public static final EVENT_ROAMING_CHANGED:I = 0x5

.field public static final EVENT_SCAN_RESULTS_AVAILABLE:I = 0x2

.field public static final EVENT_STATE_CHANGED:I = 0x1

.field private static final MAX_NETWORK_STATE_TRACKER_EVENT:I = 0x64

.field private static final MIN_NETWORK_STATE_TRACKER_EVENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStateTracker"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mNetworkInfo:Landroid/net/NetworkInfo;

.field mPrivateDnsRouteSet:[Z

.field protected mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/NetworkStateTracker;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "target"
    .parameter "networkType"
    .parameter "subType"
    .parameter "typeName"
    .parameter "subtypeName"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:[Z

    .line 84
    iput-object p1, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkStateTracker;->mTeardownRequested:Z

    .line 88
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 89
    return-void

    .line 154
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method protected static getNameServerList([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "propertyNames"

    .prologue
    .line 135
    array-length v5, p0

    new-array v0, v5, [Ljava/lang/String;

    .line 138
    .local v0, dnsAddresses:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_1

    .line 139
    aget-object v5, p0, v1

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, value:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0.0.0.0"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 143
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    aput-object v4, v0, v2

    move v2, v3

    .line 138
    .end local v3           #j:I
    .restart local v2       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v4           #value:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private setBufferSize(Ljava/lang/String;)V
    .locals 7
    .parameter "bufferSizes"

    .prologue
    const-string v6, "NetworkStateTracker"

    .line 301
    :try_start_0
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, values:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 304
    const-string v1, "/sys/kernel/ipv4/tcp_"

    .line 305
    .local v1, prefix:Ljava/lang/String;
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_min"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_def"

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_max"

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_min"

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_def"

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_max"

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :goto_0
    return-void

    .line 312
    .restart local v2       #values:[Ljava/lang/String;
    :cond_0
    const-string v3, "NetworkStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid buffersize string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    .end local v2           #values:[Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 315
    .local v0, e:Ljava/io/IOException;
    const-string v3, "NetworkStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set tcp buffer sizes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, out:Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 333
    return-void

    .line 331
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method


# virtual methods
.method public addDefaultRoute()V
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->addDefaultRoute(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 218
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->addDefaultRoute(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 219
    return-void
.end method

.method public addDefaultRoute(Lcom/android/internal/telephony/Phone$IPVersion;)V
    .locals 10
    .parameter "ipv"

    .prologue
    const-string v9, "NetworkStateTracker"

    .line 223
    invoke-virtual {p0, p1}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, interfaceName:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/net/NetworkStateTracker;->getGateway(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/net/InetAddress;

    move-result-object v1

    .line 225
    .local v1, gateway:Ljava/net/InetAddress;
    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v7, :cond_1

    const/4 v7, 0x0

    move v3, v7

    .line 226
    .local v3, index:I
    :goto_0
    if-nez v1, :cond_2

    const-string v7, "0"

    move-object v2, v7

    .line 228
    .local v2, gwString:Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_0

    .line 229
    const-string v7, "NetworkStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addDefaultRoute ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), GatewayAddr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v6, 0x0

    .line 233
    .local v6, result:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v5

    .line 234
    .local v5, nms:Landroid/os/INetworkManagementService;
    if-nez v5, :cond_3

    .line 235
    const-string v7, "NetworkStateTracker"

    const-string v8, "could not acquire NetworkManagementService."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v5           #nms:Landroid/os/INetworkManagementService;
    .end local v6           #result:Z
    :cond_0
    :goto_2
    return-void

    .line 225
    .end local v2           #gwString:Ljava/lang/String;
    .end local v3           #index:I
    :cond_1
    const/4 v7, 0x1

    move v3, v7

    goto :goto_0

    .line 226
    .restart local v3       #index:I
    :cond_2
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    goto :goto_1

    .line 238
    .restart local v2       #gwString:Ljava/lang/String;
    .restart local v5       #nms:Landroid/os/INetworkManagementService;
    .restart local v6       #result:Z
    :cond_3
    if-nez v3, :cond_4

    .line 239
    :try_start_1
    invoke-interface {v5, v4, v2}, Landroid/os/INetworkManagementService;->replaceV4DefaultRoute(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .line 248
    .end local v5           #nms:Landroid/os/INetworkManagementService;
    :goto_3
    if-nez v6, :cond_0

    .line 249
    const-string v7, "NetworkStateTracker"

    const-string v7, "  Unable to add default route."

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 241
    .restart local v5       #nms:Landroid/os/INetworkManagementService;
    :cond_4
    :try_start_2
    invoke-interface {v5, v4, v2}, Landroid/os/INetworkManagementService;->replaceV6DefaultRoute(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    goto :goto_3

    .line 244
    .end local v5           #nms:Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 245
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "NetworkStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  NetworkManagementService was unable to add default route. Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public addPrivateDnsRoutes()V
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->addPrivateDnsRoutes(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 158
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->addPrivateDnsRoutes(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 159
    return-void
.end method

.method public addPrivateDnsRoutes(Lcom/android/internal/telephony/Phone$IPVersion;)V
    .locals 12
    .parameter "ipv"

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, interfaceName:Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v9, :cond_1

    const/4 v9, 0x0

    move v4, v9

    .line 165
    .local v4, index:I
    :goto_0
    if-eqz v6, :cond_0

    iget-object v9, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:[Z

    aget-boolean v9, v9, v4

    if-nez v9, :cond_0

    .line 166
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v7, :cond_5

    aget-object v0, v1, v3

    .line 167
    .local v0, addrString:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 169
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 170
    .local v5, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v8

    .line 171
    .local v8, nms:Landroid/os/INetworkManagementService;
    if-nez v8, :cond_2

    .line 172
    const-string v9, "NetworkStateTracker"

    const-string v10, "could not acquire NetworkManagementService."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v0           #addrString:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #inetAddress:Ljava/net/InetAddress;
    .end local v7           #len$:I
    .end local v8           #nms:Landroid/os/INetworkManagementService;
    :cond_0
    :goto_2
    return-void

    .line 163
    .end local v4           #index:I
    :cond_1
    const/4 v9, 0x1

    move v4, v9

    goto :goto_0

    .line 175
    .restart local v0       #addrString:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #index:I
    .restart local v5       #inetAddress:Ljava/net/InetAddress;
    .restart local v7       #len$:I
    .restart local v8       #nms:Landroid/os/INetworkManagementService;
    :cond_2
    sget-object v9, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v9, :cond_4

    instance-of v9, v5, Ljava/net/Inet4Address;

    if-eqz v9, :cond_4

    .line 176
    const-string v9, "NetworkStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adding ipv4 dns "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " through "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v6, v9, v10}, Landroid/os/INetworkManagementService;->addDstRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 166
    .end local v5           #inetAddress:Ljava/net/InetAddress;
    .end local v8           #nms:Landroid/os/INetworkManagementService;
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 179
    .restart local v5       #inetAddress:Ljava/net/InetAddress;
    .restart local v8       #nms:Landroid/os/INetworkManagementService;
    :cond_4
    sget-object v9, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v9, :cond_3

    instance-of v9, v5, Ljava/net/Inet6Address;

    if-eqz v9, :cond_3

    .line 180
    const-string v9, "NetworkStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adding ipv6 dns "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " through "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v6, v9, v10}, Landroid/os/INetworkManagementService;->addDstRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 185
    .end local v5           #inetAddress:Ljava/net/InetAddress;
    .end local v8           #nms:Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 186
    .local v2, e:Ljava/net/UnknownHostException;
    const-string v9, "NetworkStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " DNS address "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 187
    .end local v2           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 188
    .local v2, e:Landroid/os/RemoteException;
    const-string v9, "NetworkStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " DNS address "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 192
    .end local v0           #addrString:Ljava/lang/String;
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_5
    iget-object v9, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:[Z

    const/4 v10, 0x1

    aput-boolean v10, v9, v4

    goto/16 :goto_2
.end method

.method public abstract getGateway(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/net/InetAddress;
.end method

.method public abstract getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
.end method

.method public abstract getIpAdress(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/net/InetAddress;
.end method

.method public abstract getNameServers()[Ljava/lang/String;
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method protected getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    .prologue
    .line 150
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 151
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    return-object v1
.end method

.method public abstract getTcpBufferSizesPropName()Ljava/lang/String;
.end method

.method public interpretScanResultsAvailable()V
    .locals 0

    .prologue
    .line 514
    return-void
.end method

.method public abstract isAvailable()Z
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Landroid/net/NetworkStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public abstract reconnect()Z
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public removeDefaultRoute()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public removePrivateDnsRoutes()V
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->removePrivateDnsRoutes(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 198
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->removePrivateDnsRoutes(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 199
    return-void
.end method

.method public removePrivateDnsRoutes(Lcom/android/internal/telephony/Phone$IPVersion;)V
    .locals 6
    .parameter "ipv"

    .prologue
    const/4 v5, 0x0

    .line 205
    invoke-virtual {p0, p1}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, interfaceName:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v2, :cond_1

    move v0, v5

    .line 208
    .local v0, index:I
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 209
    const-string v2, "NetworkStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dns routes for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {v1}, Landroid/net/NetworkUtils;->removeHostRoutes(Ljava/lang/String;)I

    .line 213
    :cond_0
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:[Z

    aput-boolean v5, v2, v0

    .line 214
    return-void

    .line 206
    .end local v0           #index:I
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public requestRouteToHost(Ljava/net/InetAddress;)Z
    .locals 1
    .parameter "hostAddress"

    .prologue
    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method public abstract resetTornDownbyConnMgr()V
.end method

.method protected sendScanResultsAvailable()V
    .locals 4

    .prologue
    .line 409
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 410
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 411
    return-void
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 342
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v5, v4

    .line 348
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 352
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, v5

    move v3, v5

    move-object v5, v4

    .line 350
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "state"
    .parameter "isIpv4Connected"
    .parameter "isIpv6Connected"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    const/4 v9, 0x1

    .line 365
    sget-boolean v0, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDetailed state, old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_2

    move v8, v9

    .line 368
    .local v8, wasConnecting:Z
    :goto_0
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, lastReason:Ljava/lang/String;
    if-eqz v8, :cond_1

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    if-nez p4, :cond_1

    if-eqz v6, :cond_1

    .line 376
    move-object p4, v6

    .line 377
    :cond_1
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 379
    .local v7, msg:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 380
    return-void

    .line 367
    .end local v6           #lastReason:Ljava/lang/String;
    .end local v7           #msg:Landroid/os/Message;
    .end local v8           #wasConnecting:Z
    :cond_2
    const/4 v0, 0x0

    move v8, v0

    goto :goto_0
.end method

.method protected setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 384
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    .line 390
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object v1, p1

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object v1, p1

    move v2, v5

    move v3, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract setRadio(Z)Z
.end method

.method protected setRoamingStatus(Z)V
    .locals 4
    .parameter "isRoaming"

    .prologue
    .line 420
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eq p1, v1, :cond_0

    .line 421
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 422
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 425
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected setSubtype(ILjava/lang/String;)V
    .locals 6
    .parameter "subtype"
    .parameter "subtypeName"

    .prologue
    .line 428
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 429
    .local v1, oldSubtype:I
    if-eq p1, v1, :cond_0

    .line 430
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, p1, p2}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 431
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 434
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 437
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setTeardownRequested(Z)V
    .locals 0
    .parameter "isRequested"

    .prologue
    .line 397
    iput-boolean p1, p0, Landroid/net/NetworkStateTracker;->mTeardownRequested:Z

    .line 398
    return-void
.end method

.method public abstract startMonitoring()V
.end method

.method public abstract startUsingNetworkFeature(Ljava/lang/String;II)I
.end method

.method public abstract stopUsingNetworkFeature(Ljava/lang/String;II)I
.end method

.method public abstract teardown()Z
.end method

.method public updateNetworkSettings()V
    .locals 5

    .prologue
    const-string v4, "NetworkStateTracker"

    .line 264
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getTcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, bufferSizes:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 268
    const-string v2, "NetworkStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in system properties. Using defaults"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v1, "net.tcp.buffersize.default"

    .line 272
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    sget-boolean v2, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v2, :cond_1

    .line 278
    const-string v2, "NetworkStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting TCP values: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] which comes from ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    invoke-direct {p0, v0}, Landroid/net/NetworkStateTracker;->setBufferSize(Ljava/lang/String;)V

    .line 283
    :cond_2
    return-void
.end method
