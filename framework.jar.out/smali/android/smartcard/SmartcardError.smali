.class public Landroid/smartcard/SmartcardError;
.super Ljava/lang/Object;
.source "SmartcardError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/smartcard/SmartcardError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private clazz:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Landroid/smartcard/SmartcardError$1;

    invoke-direct {v0}, Landroid/smartcard/SmartcardError$1;-><init>()V

    sput-object v0, Landroid/smartcard/SmartcardError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v1, p0, Landroid/smartcard/SmartcardError;->clazz:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v1, p0, Landroid/smartcard/SmartcardError;->message:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/smartcard/SmartcardError;->clazz:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/smartcard/SmartcardError;->message:Ljava/lang/String;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/smartcard/SmartcardError$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/smartcard/SmartcardError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "clazz"
    .parameter "message"

    .prologue
    const-string v1, ""

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_0

    const-string v0, ""

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/smartcard/SmartcardError;->clazz:Ljava/lang/String;

    .line 65
    if-nez p2, :cond_1

    const-string v0, ""

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Landroid/smartcard/SmartcardError;->message:Ljava/lang/String;

    .line 66
    return-void

    :cond_0
    move-object v0, p1

    .line 64
    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 65
    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 72
    const-string v0, ""

    iput-object v1, p0, Landroid/smartcard/SmartcardError;->clazz:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v1, p0, Landroid/smartcard/SmartcardError;->message:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public createException()Ljava/lang/Exception;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 85
    :try_start_0
    iget-object v2, p0, Landroid/smartcard/SmartcardError;->clazz:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v6

    .line 92
    .end local p0
    :goto_0
    return-object v2

    .line 87
    .restart local p0
    :cond_0
    iget-object v2, p0, Landroid/smartcard/SmartcardError;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 88
    iget-object v2, p0, Landroid/smartcard/SmartcardError;->clazz:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Exception;

    move-object v2, p0

    goto :goto_0

    .line 89
    .restart local p0
    :cond_1
    iget-object v2, p0, Landroid/smartcard/SmartcardError;->clazz:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 90
    .local v0, constructor:Ljava/lang/reflect/Constructor;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/smartcard/SmartcardError;->message:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_0

    .line 91
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/lang/Exception;
    move-object v2, v6

    .line 92
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/smartcard/SmartcardError;->clazz:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/smartcard/SmartcardError;->message:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setError(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter "clazz"
    .parameter "message"

    .prologue
    const-string v1, ""

    .line 114
    if-nez p1, :cond_0

    const-string v0, ""

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/smartcard/SmartcardError;->clazz:Ljava/lang/String;

    .line 115
    if-nez p2, :cond_1

    const-string v0, ""

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Landroid/smartcard/SmartcardError;->message:Ljava/lang/String;

    .line 116
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 115
    goto :goto_1
.end method

.method public throwException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/smartcard/CardException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/smartcard/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    if-nez v0, :cond_0

    .line 130
    return-void

    .line 131
    :cond_0
    instance-of v1, v0, Landroid/smartcard/CardException;

    if-eqz v1, :cond_1

    .line 132
    check-cast v0, Landroid/smartcard/CardException;

    .end local v0           #e:Ljava/lang/Exception;
    throw v0

    .line 133
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 134
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #e:Ljava/lang/Exception;
    throw v0

    .line 135
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 139
    iget-object v0, p0, Landroid/smartcard/SmartcardError;->clazz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Landroid/smartcard/SmartcardError;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    return-void
.end method
