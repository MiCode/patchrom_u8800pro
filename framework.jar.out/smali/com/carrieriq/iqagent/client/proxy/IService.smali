.class public Lcom/carrieriq/iqagent/client/proxy/IService;
.super Lcom/carrieriq/iqagent/client/proxy/LooselyCoupledBinderProxy;
.source "IService.java"


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.carrieriq.iqagent.interfaces.IService"

.field private static final TRANSACTION_connect:I = 0x1


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "binder"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/carrieriq/iqagent/client/proxy/LooselyCoupledBinderProxy;-><init>(Ljava/lang/Object;)V

    .line 10
    return-void
.end method


# virtual methods
.method public connect(Lcom/carrieriq/iqagent/client/proxy/IClientBackchannel;)Lcom/carrieriq/iqagent/client/proxy/IMetricConnection;
    .locals 5
    .parameter "client"

    .prologue
    .line 14
    invoke-static {}, Lcom/carrieriq/iqagent/client/proxy/Parcel;->obtain()Lcom/carrieriq/iqagent/client/proxy/Parcel;

    move-result-object v0

    .line 15
    .local v0, _data:Lcom/carrieriq/iqagent/client/proxy/Parcel;
    invoke-static {}, Lcom/carrieriq/iqagent/client/proxy/Parcel;->obtain()Lcom/carrieriq/iqagent/client/proxy/Parcel;

    move-result-object v1

    .line 18
    .local v1, _reply:Lcom/carrieriq/iqagent/client/proxy/Parcel;
    :try_start_0
    const-string v3, "com.carrieriq.iqagent.interfaces.IService"

    invoke-virtual {v0, v3}, Lcom/carrieriq/iqagent/client/proxy/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 19
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/carrieriq/iqagent/client/proxy/IClientBackchannel;->asBinder()Ljava/lang/Object;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Lcom/carrieriq/iqagent/client/proxy/Parcel;->writeStrongBinder(Ljava/lang/Object;)V

    .line 20
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v1, v4}, Lcom/carrieriq/iqagent/client/proxy/IService;->transact(ILcom/carrieriq/iqagent/client/proxy/Parcel;Lcom/carrieriq/iqagent/client/proxy/Parcel;I)Z

    .line 21
    invoke-virtual {v1}, Lcom/carrieriq/iqagent/client/proxy/Parcel;->readException()V

    .line 22
    new-instance v2, Lcom/carrieriq/iqagent/client/proxy/IMetricConnection;

    invoke-virtual {v1}, Lcom/carrieriq/iqagent/client/proxy/Parcel;->readStrongBinder()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/carrieriq/iqagent/client/proxy/IMetricConnection;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .local v2, _result:Lcom/carrieriq/iqagent/client/proxy/IMetricConnection;
    invoke-virtual {v1}, Lcom/carrieriq/iqagent/client/proxy/Parcel;->recycle()V

    .line 26
    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/proxy/Parcel;->recycle()V

    .line 28
    return-object v2

    .line 19
    .end local v2           #_result:Lcom/carrieriq/iqagent/client/proxy/IMetricConnection;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Lcom/carrieriq/iqagent/client/proxy/Parcel;->recycle()V

    .line 26
    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/proxy/Parcel;->recycle()V

    .line 25
    throw v3
.end method
