.class public abstract Landroid/media/IHWDrmService$Stub;
.super Landroid/os/Binder;
.source "IHWDrmService.java"

# interfaces
.implements Landroid/media/IHWDrmService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IHWDrmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IHWDrmService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IHWDrmService"

.field static final TRANSACTION_endConsume:I = 0x5

.field static final TRANSACTION_isPresent:I = 0x6

.field static final TRANSACTION_newDrmContent:I = 0x1

.field static final TRANSACTION_pauseConsume:I = 0x3

.field static final TRANSACTION_resumeConsume:I = 0x4

.field static final TRANSACTION_startConsume:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.media.IHWDrmService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IHWDrmService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IHWDrmService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const-string v1, "android.media.IHWDrmService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IHWDrmService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/media/IHWDrmService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/IHWDrmService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IHWDrmService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const-string v6, "android.media.IHWDrmService"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v4, "android.media.IHWDrmService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "android.media.IHWDrmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/media/IHWDrmService$Stub;->newDrmContent(Ljava/lang/String;)I

    move-result v3

    .line 51
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 53
    goto :goto_0

    .line 57
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_2
    const-string v4, "android.media.IHWDrmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 64
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IHWDrmService$Stub;->startConsume(III)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 67
    goto :goto_0

    .line 71
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v4, "android.media.IHWDrmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/IHWDrmService$Stub;->pauseConsume(I)I

    move-result v3

    .line 75
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 77
    goto :goto_0

    .line 81
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_4
    const-string v4, "android.media.IHWDrmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/IHWDrmService$Stub;->resumeConsume(I)I

    move-result v3

    .line 85
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 87
    goto :goto_0

    .line 91
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_5
    const-string v4, "android.media.IHWDrmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/IHWDrmService$Stub;->endConsume(I)I

    move-result v3

    .line 95
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 97
    goto :goto_0

    .line 101
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_6
    const-string v4, "android.media.IHWDrmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/media/IHWDrmService$Stub;->isPresent()Z

    move-result v3

    .line 103
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v3, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 105
    goto/16 :goto_0

    .line 104
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
