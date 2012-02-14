.class public abstract Landroid/net/IConSvcEventListener$Stub;
.super Landroid/os/Binder;
.source "IConSvcEventListener.java"

# interfaces
.implements Landroid/net/IConSvcEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConSvcEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConSvcEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConSvcEventListener"

.field static final TRANSACTION_onBetterLinkAvail:I = 0x2

.field static final TRANSACTION_onGetLinkFailure:I = 0x4

.field static final TRANSACTION_onLinkAvail:I = 0x1

.field static final TRANSACTION_onLinkLost:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.net.IConSvcEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConSvcEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConSvcEventListener;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_0
    return-object v1

    .line 27
    :cond_0
    const-string v1, "android.net.IConSvcEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConSvcEventListener;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/net/IConSvcEventListener;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/IConSvcEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IConSvcEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v3, "android.net.IConSvcEventListener"

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 43
    :sswitch_0
    const-string v1, "android.net.IConSvcEventListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v1, "android.net.IConSvcEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Landroid/net/LinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkInfo;

    .line 56
    .local v0, _arg0:Landroid/net/LinkInfo;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/IConSvcEventListener$Stub;->onLinkAvail(Landroid/net/LinkInfo;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v0, p3, v2}, Landroid/net/LinkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v1, v2

    .line 65
    goto :goto_0

    .line 54
    .end local v0           #_arg0:Landroid/net/LinkInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/LinkInfo;
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 69
    .end local v0           #_arg0:Landroid/net/LinkInfo;
    :sswitch_2
    const-string v1, "android.net.IConSvcEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    sget-object v1, Landroid/net/LinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkInfo;

    .line 77
    .restart local v0       #_arg0:Landroid/net/LinkInfo;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/net/IConSvcEventListener$Stub;->onBetterLinkAvail(Landroid/net/LinkInfo;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v0, p3, v2}, Landroid/net/LinkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v1, v2

    .line 86
    goto :goto_0

    .line 75
    .end local v0           #_arg0:Landroid/net/LinkInfo;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/LinkInfo;
    goto :goto_3

    .line 84
    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 90
    .end local v0           #_arg0:Landroid/net/LinkInfo;
    :sswitch_3
    const-string v1, "android.net.IConSvcEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    sget-object v1, Landroid/net/LinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkInfo;

    .line 98
    .restart local v0       #_arg0:Landroid/net/LinkInfo;
    :goto_5
    invoke-virtual {p0, v0}, Landroid/net/IConSvcEventListener$Stub;->onLinkLost(Landroid/net/LinkInfo;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v0, :cond_5

    .line 101
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-virtual {v0, p3, v2}, Landroid/net/LinkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    move v1, v2

    .line 107
    goto :goto_0

    .line 96
    .end local v0           #_arg0:Landroid/net/LinkInfo;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/LinkInfo;
    goto :goto_5

    .line 105
    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 111
    .end local v0           #_arg0:Landroid/net/LinkInfo;
    :sswitch_4
    const-string v1, "android.net.IConSvcEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConSvcEventListener$Stub;->onGetLinkFailure(I)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 116
    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
