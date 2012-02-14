.class public Lcom/carrieriq/iqagent/client/proxy/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static _d:Ljava/lang/reflect/Method;

.field private static _dE:Ljava/lang/reflect/Method;

.field private static _e:Ljava/lang/reflect/Method;

.field private static _eE:Ljava/lang/reflect/Method;

.field private static log:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-class v1, Ljava/lang/String;

    .line 12
    :try_start_0
    const-string v1, "android.util.Log"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/carrieriq/iqagent/client/proxy/Log;->log:Ljava/lang/Class;

    .line 13
    sget-object v1, Lcom/carrieriq/iqagent/client/proxy/Log;->log:Ljava/lang/Class;

    const-string v2, "d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/carrieriq/iqagent/client/proxy/Log;->_d:Ljava/lang/reflect/Method;

    .line 14
    sget-object v1, Lcom/carrieriq/iqagent/client/proxy/Log;->log:Ljava/lang/Class;

    const-string v2, "d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/carrieriq/iqagent/client/proxy/Log;->_dE:Ljava/lang/reflect/Method;

    .line 15
    sget-object v1, Lcom/carrieriq/iqagent/client/proxy/Log;->log:Ljava/lang/Class;

    const-string v2, "e"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/carrieriq/iqagent/client/proxy/Log;->_e:Ljava/lang/reflect/Method;

    .line 16
    sget-object v1, Lcom/carrieriq/iqagent/client/proxy/Log;->log:Ljava/lang/Class;

    const-string v2, "e"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/carrieriq/iqagent/client/proxy/Log;->_eE:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 18
    .local v0, t:Ljava/lang/Throwable;
    const/4 v1, 0x0

    sput-object v1, Lcom/carrieriq/iqagent/client/proxy/Log;->log:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 23
    sget-object v0, Lcom/carrieriq/iqagent/client/proxy/Log;->_d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    sget-object v0, Lcom/carrieriq/iqagent/client/proxy/Log;->_d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 31
    sget-object v0, Lcom/carrieriq/iqagent/client/proxy/Log;->_dE:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    sget-object v0, Lcom/carrieriq/iqagent/client/proxy/Log;->_dE:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 39
    sget-object v0, Lcom/carrieriq/iqagent/client/proxy/Log;->_e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 41
    :try_start_0
    sget-object v0, Lcom/carrieriq/iqagent/client/proxy/Log;->_e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 47
    sget-object v0, Lcom/carrieriq/iqagent/client/proxy/Log;->_e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    sget-object v0, Lcom/carrieriq/iqagent/client/proxy/Log;->_e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method
