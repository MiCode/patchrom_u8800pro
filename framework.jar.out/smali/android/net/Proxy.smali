.class public final Landroid/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final PROXY_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.PROXY_CHANGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefaultHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    const-string v2, "net.gprs.http-proxy"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 100
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 101
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 104
    .end local v1           #u:Landroid/net/Uri;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final getDefaultPort()I
    .locals 3

    .prologue
    .line 114
    const-string v2, "net.gprs.http-proxy"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 116
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 117
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v2

    .line 119
    .end local v1           #u:Landroid/net/Uri;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static final getHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 48
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 49
    const-string v3, "http_proxy"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 53
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 54
    .local v2, i:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 58
    const/4 v3, 0x0

    .line 62
    .end local v2           #i:I
    :goto_0
    return-object v3

    .line 60
    .restart local v2       #i:I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 62
    .end local v2           #i:I
    :cond_1
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static final getPort(Landroid/content/Context;)I
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, -0x1

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 73
    const-string v3, "http_proxy"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 77
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 78
    .local v2, i:I
    if-ne v2, v4, :cond_0

    move v3, v4

    .line 89
    .end local v2           #i:I
    :goto_0
    return v3

    .line 87
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 89
    .end local v2           #i:I
    :cond_1
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    goto :goto_0
.end method
