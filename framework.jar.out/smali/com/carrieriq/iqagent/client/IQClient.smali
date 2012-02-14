.class public Lcom/carrieriq/iqagent/client/IQClient;
.super Ljava/lang/Object;
.source "IQClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;,
        Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnectionProxy;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IQ_ENABLE:Z = false

.field public static final IQ_EVENT_PARAM_ANY:I = 0x0

.field public static final IQ_EVENT_TYPE_ANY:I = 0x0

.field public static final IQ_EVENT_TYPE_INVOKE_KEYSTROKE:I = -0x7fffffff

.field public static final IQ_EVENT_TYPE_INVOKE_KEY_DOWN:I = -0x7ffffffd

.field public static final IQ_EVENT_TYPE_INVOKE_KEY_UP:I = -0x7ffffffc

.field public static final IQ_EVENT_TYPE_INVOKE_SETTINGS_PANEL:I = -0x7ffffffa

.field public static final IQ_EVENT_TYPE_PROFILE_CHANGED:I = -0x7ffffffe

.field public static final IQ_EVENT_TYPE_QUERY_METRIC:I = -0x80000000

.field public static final IQ_EVENT_TYPE_SERIAL_CONNECTION_STATE_CHANGED:I = -0x7ffffffb

.field public static final IQ_EVENT_TYPE_TRIGGER_SURVEY:I = -0x7ffffff9

.field private static final LOG_TAG:Ljava/lang/String; = "IQClient"

.field private static final SERVICE_CONNECT_TIMEOUT:J = 0x2710L

.field private static _BIND_AUTO_CREATE:I

.field private static _bindService:Ljava/lang/reflect/Method;

.field private static _componentName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static _context:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static _equals:Ljava/lang/reflect/Method;

.field private static _getClassName:Ljava/lang/reflect/Method;

.field private static _getPackageName:Ljava/lang/reflect/Method;

.field private static _hashCode:Ljava/lang/reflect/Method;

.field private static _ibinder:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static _intent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static _intentConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static _onServiceConnected:Ljava/lang/reflect/Method;

.field private static _onServiceDisconnected:Ljava/lang/reflect/Method;

.field private static _serviceConnection:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static _setAction:Ljava/lang/reflect/Method;

.field private static _setClassName:Ljava/lang/reflect/Method;

.field private static _startService:Ljava/lang/reflect/Method;

.field private static _unbindService:Ljava/lang/reflect/Method;

.field private static tlsBuffers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Ljava/lang/Object;

.field private eventRegistrations:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/carrieriq/iqagent/client/IEventCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private iqService:Lcom/carrieriq/iqagent/client/proxy/IService;

.field private iqServiceConnection:Ljava/lang/Object;

.field private nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const-class v0, Ljava/lang/String;

    const-class v0, Ljava/lang/Object;

    .line 28
    const-string v0, "ro.config.hw_ciq"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    .line 38
    new-instance v0, Lcom/carrieriq/iqagent/client/IQClient$1;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/IQClient$1;-><init>()V

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->tlsBuffers:Ljava/lang/ThreadLocal;

    .line 82
    :try_start_0
    const-string v0, "android.content.Context"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_context:Ljava/lang/Class;

    .line 83
    const-string v0, "android.content.Intent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_intent:Ljava/lang/Class;

    .line 84
    const-string v0, "android.content.ServiceConnection"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_serviceConnection:Ljava/lang/Class;

    .line 85
    const-string v0, "android.content.ComponentName"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_componentName:Ljava/lang/Class;

    .line 86
    const-string v0, "android.os.IBinder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_ibinder:Ljava/lang/Class;

    .line 88
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_context:Ljava/lang/Class;

    const-string/jumbo v1, "startService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Lcom/carrieriq/iqagent/client/IQClient;->_intent:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_startService:Ljava/lang/reflect/Method;

    .line 89
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_context:Ljava/lang/Class;

    const-string v1, "bindService"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Lcom/carrieriq/iqagent/client/IQClient;->_intent:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/carrieriq/iqagent/client/IQClient;->_serviceConnection:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_bindService:Ljava/lang/reflect/Method;

    .line 90
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_context:Ljava/lang/Class;

    const-string/jumbo v1, "unbindService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Lcom/carrieriq/iqagent/client/IQClient;->_serviceConnection:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_unbindService:Ljava/lang/reflect/Method;

    .line 91
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_context:Ljava/lang/Class;

    const-string v1, "BIND_AUTO_CREATE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/IQClient;->_BIND_AUTO_CREATE:I

    .line 93
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_serviceConnection:Ljava/lang/Class;

    const-string v1, "onServiceConnected"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Lcom/carrieriq/iqagent/client/IQClient;->_componentName:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/carrieriq/iqagent/client/IQClient;->_ibinder:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_onServiceConnected:Ljava/lang/reflect/Method;

    .line 94
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_serviceConnection:Ljava/lang/Class;

    const-string v1, "onServiceDisconnected"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Lcom/carrieriq/iqagent/client/IQClient;->_componentName:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_onServiceDisconnected:Ljava/lang/reflect/Method;

    .line 96
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_componentName:Ljava/lang/Class;

    const-string v1, "getPackageName"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_getPackageName:Ljava/lang/reflect/Method;

    .line 97
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_componentName:Ljava/lang/Class;

    const-string v1, "getClassName"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_getClassName:Ljava/lang/reflect/Method;

    .line 99
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_intent:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_intentConstructor:Ljava/lang/reflect/Constructor;

    .line 100
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_intent:Ljava/lang/Class;

    const-string v1, "setClassName"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_setClassName:Ljava/lang/reflect/Method;

    .line 101
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_intent:Ljava/lang/Class;

    const-string v1, "setAction"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_setAction:Ljava/lang/reflect/Method;

    .line 103
    const-class v0, Ljava/lang/Object;

    const-string v1, "hashCode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_hashCode:Ljava/lang/reflect/Method;

    .line 104
    const-class v0, Ljava/lang/Object;

    const-string v1, "equals"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_equals:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/IQClient;-><init>(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 11
    .parameter "_context"

    .prologue
    const/4 v6, 0x0

    const-string v5, "com.carrieriq.iqagent.service.IQService"

    const-string v10, "IQClient"

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    iput-object v5, p0, Lcom/carrieriq/iqagent/client/IQClient;->eventRegistrations:Ljava/util/TreeMap;

    .line 114
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/IQClient;->context:Ljava/lang/Object;

    .line 118
    iget-object v5, p0, Lcom/carrieriq/iqagent/client/IQClient;->context:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 120
    invoke-static {v6}, Lcom/carrieriq/iqagent/client/NativeClient;->acquire(Ljava/lang/Object;)Lcom/carrieriq/iqagent/client/NativeClient;

    move-result-object v5

    iput-object v5, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    .line 121
    iget-object v5, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    if-nez v5, :cond_1

    .line 123
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Context must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 127
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    iput-object v5, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    .line 128
    new-instance v5, Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;

    invoke-direct {v5, p0}, Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;-><init>(Lcom/carrieriq/iqagent/client/IQClient;)V

    invoke-static {v5}, Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnectionProxy;->newInstance(Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/carrieriq/iqagent/client/IQClient;->iqServiceConnection:Ljava/lang/Object;

    .line 129
    sget-object v5, Lcom/carrieriq/iqagent/client/IQClient;->_intentConstructor:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 130
    .local v2, i:Ljava/lang/Object;
    sget-object v5, Lcom/carrieriq/iqagent/client/IQClient;->_setAction:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "com.carrieriq.iqagent.service.IQService"

    aput-object v8, v6, v7

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v5, Lcom/carrieriq/iqagent/client/IQClient;->_startService:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/carrieriq/iqagent/client/IQClient;->context:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    .local v0, componentName:Ljava/lang/Object;
    if-eqz v0, :cond_1

    sget-object v5, Lcom/carrieriq/iqagent/client/IQClient;->_getClassName:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "com.carrieriq.iqagent.service.IQService"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    sget-object v5, Lcom/carrieriq/iqagent/client/IQClient;->_bindService:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/carrieriq/iqagent/client/IQClient;->context:Ljava/lang/Object;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/carrieriq/iqagent/client/IQClient;->iqServiceConnection:Ljava/lang/Object;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget v9, Lcom/carrieriq/iqagent/client/IQClient;->_BIND_AUTO_CREATE:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 135
    .local v4, success:Z
    if-nez v4, :cond_1

    .line 137
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/carrieriq/iqagent/client/NativeClient;->acquire(Ljava/lang/Object;)Lcom/carrieriq/iqagent/client/NativeClient;

    move-result-object v5

    iput-object v5, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    .line 138
    iget-object v5, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_1

    .line 152
    .end local v0           #componentName:Ljava/lang/Object;
    .end local v2           #i:Ljava/lang/Object;
    .end local v4           #success:Z
    :cond_1
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 147
    .local v3, ite:Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "IQClient"

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5, v3}, Lcom/carrieriq/iqagent/client/proxy/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 148
    .end local v3           #ite:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 149
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "IQClient"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5, v1}, Lcom/carrieriq/iqagent/client/proxy/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_serviceConnection:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_onServiceConnected:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_onServiceDisconnected:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_hashCode:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_equals:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$502(Lcom/carrieriq/iqagent/client/IQClient;Lcom/carrieriq/iqagent/client/proxy/IService;)Lcom/carrieriq/iqagent/client/proxy/IService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/IQClient;->iqService:Lcom/carrieriq/iqagent/client/proxy/IService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/carrieriq/iqagent/client/IQClient;)Lcom/carrieriq/iqagent/client/NativeClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    return-object v0
.end method

.method static synthetic access$602(Lcom/carrieriq/iqagent/client/IQClient;Lcom/carrieriq/iqagent/client/NativeClient;)Lcom/carrieriq/iqagent/client/NativeClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    return-object p1
.end method

.method static synthetic access$700(Lcom/carrieriq/iqagent/client/IQClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/carrieriq/iqagent/client/IQClient;->reregisterNativeEvents()V

    return-void
.end method

.method private reregisterNativeEvents()V
    .locals 10

    .prologue
    .line 263
    iget-object v6, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    if-eqz v6, :cond_3

    .line 264
    iget-object v7, p0, Lcom/carrieriq/iqagent/client/IQClient;->eventRegistrations:Ljava/util/TreeMap;

    monitor-enter v7

    .line 265
    :try_start_0
    iget-object v6, p0, Lcom/carrieriq/iqagent/client/IQClient;->eventRegistrations:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 266
    .local v2, etEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 267
    .local v1, epEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/IEventCallback;

    .line 268
    .local v0, callback:Lcom/carrieriq/iqagent/client/IEventCallback;
    iget-object v8, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v9, v6, v0}, Lcom/carrieriq/iqagent/client/NativeClient;->registerForEvent(IILcom/carrieriq/iqagent/client/IEventCallback;)I

    goto :goto_0

    .line 272
    .end local v0           #callback:Lcom/carrieriq/iqagent/client/IEventCallback;
    .end local v1           #epEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;"
    .end local v2           #etEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :cond_3
    return-void
.end method

.method private unregisterForEventType(Ljava/util/TreeMap;ILcom/carrieriq/iqagent/client/IEventCallback;)V
    .locals 4
    .parameter
    .parameter "eventParam"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/carrieriq/iqagent/client/IEventCallback;",
            ">;>;I",
            "Lcom/carrieriq/iqagent/client/IEventCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, byParam:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;"
    if-eqz p1, :cond_2

    .line 244
    if-nez p2, :cond_1

    .line 245
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 246
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 248
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 249
    .local v2, refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;"
    invoke-direct {p0, v2, p3}, Lcom/carrieriq/iqagent/client/IQClient;->unregisterRef(Ljava/util/ArrayList;Lcom/carrieriq/iqagent/client/IEventCallback;)V

    .line 250
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 251
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 255
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;"
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;>;"
    .end local v2           #refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;"
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 256
    .restart local v2       #refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;"
    invoke-direct {p0, v2, p3}, Lcom/carrieriq/iqagent/client/IQClient;->unregisterRef(Ljava/util/ArrayList;Lcom/carrieriq/iqagent/client/IEventCallback;)V

    .line 257
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .end local v2           #refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;"
    :cond_2
    return-void
.end method

.method private unregisterRef(Ljava/util/ArrayList;Lcom/carrieriq/iqagent/client/IEventCallback;)V
    .locals 0
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/carrieriq/iqagent/client/IEventCallback;",
            ">;",
            "Lcom/carrieriq/iqagent/client/IEventCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;"
    if-nez p2, :cond_0

    .line 236
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public checkSMS(Ljava/lang/String;)Z
    .locals 1
    .parameter "payload"

    .prologue
    .line 319
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/carrieriq/iqagent/client/IQClient;->checkSMS([B)Z

    move-result v0

    return v0
.end method

.method public checkSMS([B)Z
    .locals 1
    .parameter "payload"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    invoke-virtual {v0, p1}, Lcom/carrieriq/iqagent/client/NativeClient;->checkSMS([B)Z

    move-result v0

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkWAPPush([B)Z
    .locals 1
    .parameter "payload"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    invoke-virtual {v0, p1}, Lcom/carrieriq/iqagent/client/NativeClient;->checkWAPPush([B)Z

    move-result v0

    .line 337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 341
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->eventRegistrations:Ljava/util/TreeMap;

    monitor-enter v0

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/carrieriq/iqagent/client/IQClient;->eventRegistrations:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    .line 343
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/NativeClient;->release()V

    .line 347
    iput-object v5, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 343
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->iqServiceConnection:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 351
    :try_start_2
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->_unbindService:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/IQClient;->context:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/carrieriq/iqagent/client/IQClient;->iqServiceConnection:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 353
    :goto_1
    iput-object v5, p0, Lcom/carrieriq/iqagent/client/IQClient;->iqServiceConnection:Ljava/lang/Object;

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/carrieriq/iqagent/client/IQClient;->disconnect()V

    .line 360
    return-void
.end method

.method public getAgentVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/NativeClient;->getAgentVersion()Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/NativeClient;->getTimestamp()J

    move-result-wide v0

    .line 167
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public registerForEvent(IILcom/carrieriq/iqagent/client/IEventCallback;)I
    .locals 5
    .parameter "eventType"
    .parameter "eventParam"
    .parameter "callback"

    .prologue
    .line 211
    iget-object v2, p0, Lcom/carrieriq/iqagent/client/IQClient;->eventRegistrations:Ljava/util/TreeMap;

    monitor-enter v2

    .line 212
    :try_start_0
    iget-object v3, p0, Lcom/carrieriq/iqagent/client/IQClient;->eventRegistrations:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 213
    .local v0, byParam:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;"
    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/util/TreeMap;

    .end local v0           #byParam:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;"
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 215
    .restart local v0       #byParam:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;"
    iget-object v3, p0, Lcom/carrieriq/iqagent/client/IQClient;->eventRegistrations:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 219
    .local v1, refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;"
    if-nez v1, :cond_1

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .restart local v1       #refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_1
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-object v2, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    if-eqz v2, :cond_2

    .line 228
    iget-object v2, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    invoke-virtual {v2, p1, p2, p3}, Lcom/carrieriq/iqagent/client/NativeClient;->registerForEvent(IILcom/carrieriq/iqagent/client/IEventCallback;)I

    move-result v2

    .line 231
    :goto_0
    return v2

    .line 225
    .end local v0           #byParam:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;"
    .end local v1           #refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 231
    .restart local v0       #byParam:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;"
    .restart local v1       #refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;"
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public registerQueriableMetric(ILcom/carrieriq/iqagent/client/MetricQueryCallback;)I
    .locals 1
    .parameter "metricID"
    .parameter "callback"

    .prologue
    .line 307
    const/high16 v0, -0x8000

    invoke-virtual {p0, v0, p1, p2}, Lcom/carrieriq/iqagent/client/IQClient;->registerForEvent(IILcom/carrieriq/iqagent/client/IEventCallback;)I

    move-result v0

    return v0
.end method

.method public shouldSubmitMetric(I)Z
    .locals 1
    .parameter "metricID"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    invoke-virtual {v0, p1}, Lcom/carrieriq/iqagent/client/NativeClient;->shouldSubmitMetric(I)Z

    move-result v0

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public submitMetric(IJ[BII)I
    .locals 7
    .parameter "metricID"
    .parameter "timestamp"
    .parameter "payloadBytes"
    .parameter "payloadOffs"
    .parameter "payloadLen"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/carrieriq/iqagent/client/NativeClient;->submitMetric(IJ[BII)I

    move-result v0

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public submitMetric(Lcom/carrieriq/iqagent/client/Metric;)I
    .locals 9
    .parameter "metric"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->tlsBuffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 183
    .local v5, buf:Ljava/nio/ByteBuffer;
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 184
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    iget v1, p1, Lcom/carrieriq/iqagent/client/Metric;->metricID:I

    iget-wide v2, p1, Lcom/carrieriq/iqagent/client/Metric;->timestamp:J

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/carrieriq/iqagent/client/NativeClient;->submitMetric(IJLcom/carrieriq/iqagent/client/Metric;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .local v8, r:I
    move v0, v8

    .line 199
    .end local v5           #buf:Ljava/nio/ByteBuffer;
    .end local v8           #r:I
    :goto_1
    return v0

    .line 186
    .restart local v5       #buf:Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 187
    .local v7, e:Ljava/nio/BufferOverflowException;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    .line 188
    .local v6, cap:I
    const/high16 v0, 0x1

    if-le v6, v0, :cond_1

    .line 199
    .end local v5           #buf:Ljava/nio/ByteBuffer;
    .end local v6           #cap:I
    .end local v7           #e:Ljava/nio/BufferOverflowException;
    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    .line 192
    .restart local v5       #buf:Ljava/nio/ByteBuffer;
    .restart local v6       #cap:I
    .restart local v7       #e:Ljava/nio/BufferOverflowException;
    :cond_1
    mul-int/lit8 v6, v6, 0x2

    .line 193
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 194
    sget-object v0, Lcom/carrieriq/iqagent/client/IQClient;->tlsBuffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unregisterAllQueriableMetrics(Lcom/carrieriq/iqagent/client/MetricQueryCallback;)I
    .locals 1
    .parameter "callback"

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/carrieriq/iqagent/client/IQClient;->unregisterForAllEvents(Lcom/carrieriq/iqagent/client/IEventCallback;)I

    move-result v0

    return v0
.end method

.method public unregisterForAllEvents(Lcom/carrieriq/iqagent/client/IEventCallback;)I
    .locals 1
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, v0, v0, p1}, Lcom/carrieriq/iqagent/client/IQClient;->unregisterForEvent(IILcom/carrieriq/iqagent/client/IEventCallback;)I

    move-result v0

    return v0
.end method

.method public unregisterForEvent(IILcom/carrieriq/iqagent/client/IEventCallback;)I
    .locals 6
    .parameter "eventType"
    .parameter "eventParam"
    .parameter "callback"

    .prologue
    .line 277
    iget-object v3, p0, Lcom/carrieriq/iqagent/client/IQClient;->eventRegistrations:Ljava/util/TreeMap;

    monitor-enter v3

    .line 278
    if-nez p2, :cond_1

    .line 279
    :try_start_0
    iget-object v4, p0, Lcom/carrieriq/iqagent/client/IQClient;->eventRegistrations:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 280
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 281
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 282
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 283
    .local v0, byParam:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;"
    invoke-direct {p0, v0, p2, p3}, Lcom/carrieriq/iqagent/client/IQClient;->unregisterForEventType(Ljava/util/TreeMap;ILcom/carrieriq/iqagent/client/IEventCallback;)V

    .line 284
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 285
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 293
    .end local v0           #byParam:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;"
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;>;"
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 289
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/carrieriq/iqagent/client/IQClient;->eventRegistrations:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 290
    .restart local v0       #byParam:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;"
    invoke-direct {p0, v0, p2, p3}, Lcom/carrieriq/iqagent/client/IQClient;->unregisterForEventType(Ljava/util/TreeMap;ILcom/carrieriq/iqagent/client/IEventCallback;)V

    .line 291
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/carrieriq/iqagent/client/IQClient;->eventRegistrations:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .end local v0           #byParam:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/carrieriq/iqagent/client/IEventCallback;>;>;"
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    iget-object v3, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    if-eqz v3, :cond_3

    .line 296
    iget-object v3, p0, Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;

    invoke-virtual {v3, p1, p2, p3}, Lcom/carrieriq/iqagent/client/NativeClient;->unregisterForEvent(IILcom/carrieriq/iqagent/client/IEventCallback;)I

    move-result v3

    .line 299
    :goto_1
    return v3

    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public unregisterQueriableMetric(ILcom/carrieriq/iqagent/client/MetricQueryCallback;)I
    .locals 1
    .parameter "metricID"
    .parameter "callback"

    .prologue
    .line 311
    const/high16 v0, -0x8000

    invoke-virtual {p0, v0, p1, p2}, Lcom/carrieriq/iqagent/client/IQClient;->unregisterForEvent(IILcom/carrieriq/iqagent/client/IEventCallback;)I

    move-result v0

    return v0
.end method
