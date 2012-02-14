.class public Landroid/net/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHostRoute(Ljava/lang/String;Ljava/net/InetAddress;)Z
    .locals 6
    .parameter "interfaceName"
    .parameter "hostAddress"

    .prologue
    const/4 v5, 0x0

    .line 218
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, address:Ljava/lang/String;
    instance-of v2, p1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 221
    const/16 v1, 0x20

    .line 230
    .local v1, prefixLength:I
    :goto_0
    invoke-static {p0, v0, v1}, Landroid/net/NetworkUtils;->addRoute(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .end local v1           #prefixLength:I
    :goto_1
    return v2

    .line 222
    :cond_0
    instance-of v2, p1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1

    .line 223
    const/16 v1, 0x80

    .restart local v1       #prefixLength:I
    goto :goto_0

    .line 225
    .end local v1           #prefixLength:I
    :cond_1
    const-string v2, "NetworkUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addHostRoute failure: address is neither IPv4 nor IPv6("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 227
    goto :goto_1

    .restart local v1       #prefixLength:I
    :cond_2
    move v2, v5

    .line 230
    goto :goto_1
.end method

.method public static native addRoute(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static addRoute(Ljava/lang/String;Ljava/net/InetAddress;I)Z
    .locals 2
    .parameter "interfaceName"
    .parameter "hostAddress"
    .parameter "prefixLength"

    .prologue
    .line 206
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, address:Ljava/lang/String;
    invoke-static {p0, v0, p2}, Landroid/net/NetworkUtils;->addRoute(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static byteArrayToInetAddress([B)Ljava/net/InetAddress;
    .locals 3
    .parameter "address"

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 165
    .local v1, result:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 169
    :goto_0
    return-object v2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static configureInterface(Ljava/lang/String;Landroid/net/DhcpInfo;)Z
    .locals 6
    .parameter "interfaceName"
    .parameter "ipInfo"

    .prologue
    .line 101
    iget v1, p1, Landroid/net/DhcpInfo;->ipAddress:I

    iget v2, p1, Landroid/net/DhcpInfo;->netmask:I

    iget v3, p1, Landroid/net/DhcpInfo;->gateway:I

    iget v4, p1, Landroid/net/DhcpInfo;->dns1:I

    iget v5, p1, Landroid/net/DhcpInfo;->dns2:I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/net/NetworkUtils;->configureNative(Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method private static native configureNative(Ljava/lang/String;IIIII)Z
.end method

.method public static native disableInterface(Ljava/lang/String;)I
.end method

.method public static native enableInterface(Ljava/lang/String;)I
.end method

.method public static native getDefaultRoute(Ljava/lang/String;)I
.end method

.method public static native getDhcpError()Ljava/lang/String;
.end method

.method public static intToInetAddress(I)Ljava/net/InetAddress;
    .locals 6
    .parameter "hostAddress"

    .prologue
    const-string v5, "."

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v4, p0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v4, p0, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v4, p0, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v4, p0, 0x18

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, hostName:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, inetAddress:Ljava/net/InetAddress;
    move-object v3, v2

    .line 193
    .end local v2           #inetAddress:Ljava/net/InetAddress;
    :goto_0
    return-object v3

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static ipStringToByteArray(Ljava/lang/String;)[B
    .locals 4
    .parameter "str"

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 154
    .local v2, result:[B
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 155
    .local v0, addr:Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 159
    .end local v0           #addr:Ljava/net/InetAddress;
    :goto_0
    return-object v3

    .line 156
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 157
    .local v1, e:Ljava/net/UnknownHostException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static lookupHost(Ljava/lang/String;)I
    .locals 6
    .parameter "hostname"

    .prologue
    .line 122
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 128
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 129
    .local v1, addrBytes:[B
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .local v0, addr:I
    move v4, v0

    .line 133
    .end local v0           #addr:I
    .end local v1           #addrBytes:[B
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    :goto_0
    return v4

    .line 123
    :catch_0
    move-exception v2

    .line 124
    .local v2, e:Ljava/net/UnknownHostException;
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static native releaseDhcpLease(Ljava/lang/String;)Z
.end method

.method public static native removeDefaultRoute(Ljava/lang/String;)I
.end method

.method public static native removeHostRoutes(Ljava/lang/String;)I
.end method

.method public static native resetConnections(Ljava/lang/String;)I
.end method

.method public static native runDhcp(Ljava/lang/String;Landroid/net/DhcpInfo;)Z
.end method

.method public static native runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpInfo;)Z
.end method

.method public static native stopDhcp(Ljava/lang/String;)Z
.end method

.method public static v4StringToInt(Ljava/lang/String;)I
    .locals 6
    .parameter "str"

    .prologue
    const/4 v5, 0x0

    .line 137
    const/4 v2, 0x0

    .line 138
    .local v2, result:I
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, array:[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    move v3, v5

    .line 148
    :goto_0
    return v3

    .line 141
    :cond_0
    const/4 v3, 0x3

    :try_start_0
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 142
    shl-int/lit8 v3, v2, 0x8

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int v2, v3, v4

    .line 143
    shl-int/lit8 v3, v2, 0x8

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int v2, v3, v4

    .line 144
    shl-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int v2, v3, v4

    move v3, v2

    .line 148
    goto :goto_0

    .line 145
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/NumberFormatException;
    move v3, v5

    .line 146
    goto :goto_0
.end method
