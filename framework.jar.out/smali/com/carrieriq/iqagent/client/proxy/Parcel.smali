.class public Lcom/carrieriq/iqagent/client/proxy/Parcel;
.super Ljava/lang/Object;
.source "Parcel.java"


# static fields
.field private static _obtain:Ljava/lang/reflect/Method;

.field private static _readException:Ljava/lang/reflect/Method;

.field private static _readStrongBinder:Ljava/lang/reflect/Method;

.field private static _recycle:Ljava/lang/reflect/Method;

.field private static _writeInterfaceToken:Ljava/lang/reflect/Method;

.field private static _writeStrongBinder:Ljava/lang/reflect/Method;

.field private static parcel:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private realParcel:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "_realParcel"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/proxy/Parcel;->realParcel:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public static obtain()Lcom/carrieriq/iqagent/client/proxy/Parcel;
    .locals 4

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, o:Ljava/lang/Object;
    :try_start_0
    sget-object v1, Lcom/carrieriq/iqagent/client/proxy/Parcel;->_obtain:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 28
    .end local v0           #o:Ljava/lang/Object;
    :goto_0
    new-instance v1, Lcom/carrieriq/iqagent/client/proxy/Parcel;

    invoke-direct {v1, v0}, Lcom/carrieriq/iqagent/client/proxy/Parcel;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 27
    .restart local v0       #o:Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public readException()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/proxy/Parcel;->realParcel:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    sget-object v0, Lcom/carrieriq/iqagent/client/proxy/Parcel;->_readException:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/proxy/Parcel;->realParcel:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    goto :goto_0

    .line 69
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public readStrongBinder()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/proxy/Parcel;->realParcel:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    sget-object v0, Lcom/carrieriq/iqagent/client/proxy/Parcel;->_readStrongBinder:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/proxy/Parcel;->realParcel:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/proxy/Parcel;->realParcel:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 34
    :try_start_0
    sget-object v0, Lcom/carrieriq/iqagent/client/proxy/Parcel;->_recycle:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/proxy/Parcel;->realParcel:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public writeInterfaceToken(Ljava/lang/String;)V
    .locals 4
    .parameter "token"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/proxy/Parcel;->realParcel:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 42
    :try_start_0
    sget-object v0, Lcom/carrieriq/iqagent/client/proxy/Parcel;->_writeInterfaceToken:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/proxy/Parcel;->realParcel:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public writeStrongBinder(Ljava/lang/Object;)V
    .locals 4
    .parameter "binder"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/proxy/Parcel;->realParcel:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    sget-object v0, Lcom/carrieriq/iqagent/client/proxy/Parcel;->_writeStrongBinder:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/proxy/Parcel;->realParcel:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method
