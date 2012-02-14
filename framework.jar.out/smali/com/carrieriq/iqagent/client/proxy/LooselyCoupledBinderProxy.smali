.class public Lcom/carrieriq/iqagent/client/proxy/LooselyCoupledBinderProxy;
.super Ljava/lang/Object;
.source "LooselyCoupledBinderProxy.java"


# static fields
.field static final FIRST_CALL_TRANSACTION:I = 0x1

.field private static _ibinder:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static _transact:Ljava/lang/reflect/Method;


# instance fields
.field remoteBinder:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 15
    :try_start_0
    const-string v1, "android.os.IBinder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/carrieriq/iqagent/client/proxy/LooselyCoupledBinderProxy;->_ibinder:Ljava/lang/Class;

    .line 16
    const-string v1, "android.os.Parcel"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 17
    .local v0, _parcel:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lcom/carrieriq/iqagent/client/proxy/LooselyCoupledBinderProxy;->_ibinder:Ljava/lang/Class;

    const-string/jumbo v2, "transact"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/carrieriq/iqagent/client/proxy/LooselyCoupledBinderProxy;->_transact:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .end local v0           #_parcel:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "binder"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/proxy/LooselyCoupledBinderProxy;->remoteBinder:Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method protected transact(ILcom/carrieriq/iqagent/client/proxy/Parcel;Lcom/carrieriq/iqagent/client/proxy/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "msg"
    .parameter "reply"
    .parameter "flags"

    .prologue
    const/4 v5, 0x0

    .line 27
    :try_start_0
    sget-object v0, Lcom/carrieriq/iqagent/client/proxy/LooselyCoupledBinderProxy;->_transact:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/proxy/LooselyCoupledBinderProxy;->remoteBinder:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 29
    :goto_0
    return v0

    .line 28
    :catch_0
    move-exception v0

    move v0, v5

    .line 29
    goto :goto_0
.end method
