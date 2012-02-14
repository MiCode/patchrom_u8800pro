.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x3

.field static final TRANSACTION_getAllNetworkInfo:I = 0x5

.field static final TRANSACTION_getBackgroundDataSetting:I = 0xc

.field static final TRANSACTION_getFmcStatus:I = 0x21

.field static final TRANSACTION_getLastTetherError:I = 0x12

.field static final TRANSACTION_getLink:I = 0x1a

.field static final TRANSACTION_getMobileDataEnabled:I = 0xe

.field static final TRANSACTION_getNetworkInfo:I = 0x4

.field static final TRANSACTION_getNetworkPreference:I = 0x2

.field static final TRANSACTION_getTetherableIfaces:I = 0x14

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x17

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x18

.field static final TRANSACTION_getTetheredIfaces:I = 0x15

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x16

.field static final TRANSACTION_isTetheringSupported:I = 0x13

.field static final TRANSACTION_rejectSwitch:I = 0x1e

.field static final TRANSACTION_releaseLink:I = 0x1c

.field static final TRANSACTION_reportInetCondition:I = 0x19

.field static final TRANSACTION_reportLinkSatisfaction:I = 0x1b

.field static final TRANSACTION_requestRouteToHost:I = 0xa

.field static final TRANSACTION_requestRouteToHostAddress:I = 0xb

.field static final TRANSACTION_setBackgroundDataSetting:I = 0xd

.field static final TRANSACTION_setMobileDataEnabled:I = 0xf

.field static final TRANSACTION_setNetworkPreference:I = 0x1

.field static final TRANSACTION_setRadio:I = 0x7

.field static final TRANSACTION_setRadios:I = 0x6

.field static final TRANSACTION_startFmc:I = 0x1f

.field static final TRANSACTION_startUsingNetworkFeature:I = 0x8

.field static final TRANSACTION_stopFmc:I = 0x20

.field static final TRANSACTION_stopUsingNetworkFeature:I = 0x9

.field static final TRANSACTION_switchLink:I = 0x1d

.field static final TRANSACTION_tether:I = 0x10

.field static final TRANSACTION_untether:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_0
    return-object v1

    .line 30
    :cond_0
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/net/IConnectivityManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/IConnectivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v9, "android.net.IConnectivityManager"

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 424
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setNetworkPreference(I)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 56
    goto :goto_0

    .line 60
    .end local v1           #_arg0:I
    :sswitch_2
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getNetworkPreference()I

    move-result v6

    .line 62
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 64
    goto :goto_0

    .line 68
    .end local v6           #_result:I
    :sswitch_3
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 70
    .local v6, _result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v6, :cond_0

    .line 72
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {v6, p3, v8}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v0, v8

    .line 78
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 82
    .end local v6           #_result:Landroid/net/NetworkInfo;
    :sswitch_4
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 86
    .restart local v6       #_result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v6, :cond_1

    .line 88
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v6, p3, v8}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v8

    .line 94
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 98
    .end local v1           #_arg0:I
    .end local v6           #_result:Landroid/net/NetworkInfo;
    :sswitch_5
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v6

    .line 100
    .local v6, _result:[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v6, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v0, v8

    .line 102
    goto :goto_0

    .line 106
    .end local v6           #_result:[Landroid/net/NetworkInfo;
    :sswitch_6
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v8

    .line 109
    .local v1, _arg0:Z
    :goto_3
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setRadios(Z)Z

    move-result v6

    .line 110
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v6, :cond_3

    move v0, v8

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 112
    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_2
    move v1, v10

    .line 108
    goto :goto_3

    .restart local v1       #_arg0:Z
    .restart local v6       #_result:Z
    :cond_3
    move v0, v10

    .line 111
    goto :goto_4

    .line 116
    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :sswitch_7
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 120
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v2, v8

    .line 121
    .local v2, _arg1:Z
    :goto_5
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setRadio(IZ)Z

    move-result v6

    .line 122
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v6, :cond_5

    move v0, v8

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 124
    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_4
    move v2, v10

    .line 120
    goto :goto_5

    .restart local v2       #_arg1:Z
    .restart local v6       #_result:Z
    :cond_5
    move v0, v10

    .line 123
    goto :goto_6

    .line 128
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :sswitch_8
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 135
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v6

    .line 136
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 138
    goto/16 :goto_0

    .line 142
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/IBinder;
    .end local v6           #_result:I
    :sswitch_9
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v6

    .line 148
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 150
    goto/16 :goto_0

    .line 154
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHost(II)Z

    move-result v6

    .line 160
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v6, :cond_6

    move v0, v8

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 162
    goto/16 :goto_0

    :cond_6
    move v0, v10

    .line 161
    goto :goto_7

    .line 166
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 170
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(ILjava/lang/String;)Z

    move-result v6

    .line 172
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v6, :cond_7

    move v0, v8

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 174
    goto/16 :goto_0

    :cond_7
    move v0, v10

    .line 173
    goto :goto_8

    .line 178
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getBackgroundDataSetting()Z

    move-result v6

    .line 180
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v6, :cond_8

    move v0, v8

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 182
    goto/16 :goto_0

    :cond_8
    move v0, v10

    .line 181
    goto :goto_9

    .line 186
    .end local v6           #_result:Z
    :sswitch_d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v1, v8

    .line 189
    .local v1, _arg0:Z
    :goto_a
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setBackgroundDataSetting(Z)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 191
    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_9
    move v1, v10

    .line 188
    goto :goto_a

    .line 195
    :sswitch_e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileDataEnabled()Z

    move-result v6

    .line 197
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v6, :cond_a

    move v0, v8

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 199
    goto/16 :goto_0

    :cond_a
    move v0, v10

    .line 198
    goto :goto_b

    .line 203
    .end local v6           #_result:Z
    :sswitch_f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v1, v8

    .line 206
    .restart local v1       #_arg0:Z
    :goto_c
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setMobileDataEnabled(Z)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 208
    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_b
    move v1, v10

    .line 205
    goto :goto_c

    .line 212
    :sswitch_10
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v6

    .line 216
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 218
    goto/16 :goto_0

    .line 222
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_11
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v6

    .line 226
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 228
    goto/16 :goto_0

    .line 232
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_12
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v6

    .line 236
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 238
    goto/16 :goto_0

    .line 242
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_13
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v6

    .line 244
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v6, :cond_c

    move v0, v8

    :goto_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 246
    goto/16 :goto_0

    :cond_c
    move v0, v10

    .line 245
    goto :goto_d

    .line 250
    .end local v6           #_result:Z
    :sswitch_14
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 254
    goto/16 :goto_0

    .line 258
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_15
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 260
    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 262
    goto/16 :goto_0

    .line 266
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_16
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 268
    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 270
    goto/16 :goto_0

    .line 274
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_17
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 276
    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 278
    goto/16 :goto_0

    .line 282
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_18
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 284
    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 286
    goto/16 :goto_0

    .line 290
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_19
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 294
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 295
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 297
    goto/16 :goto_0

    .line 301
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_1a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 305
    .restart local v1       #_arg0:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 306
    .local v7, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 308
    .local v2, _arg1:Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 310
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 311
    .local v4, _arg3:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->getLink(ILjava/util/Map;ILandroid/os/IBinder;)Z

    move-result v6

    .line 312
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    if-eqz v6, :cond_d

    move v0, v8

    :goto_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 314
    goto/16 :goto_0

    :cond_d
    move v0, v10

    .line 313
    goto :goto_e

    .line 318
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/util/Map;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Landroid/os/IBinder;
    .end local v6           #_result:Z
    .end local v7           #cl:Ljava/lang/ClassLoader;
    :sswitch_1b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 322
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 324
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 325
    sget-object v0, Landroid/net/LinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkInfo;

    .line 331
    .local v3, _arg2:Landroid/net/LinkInfo;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v4, v8

    .line 333
    .local v4, _arg3:Z
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    move v5, v8

    .local v5, _arg4:Z
    :goto_11
    move-object v0, p0

    .line 334
    invoke-virtual/range {v0 .. v5}, Landroid/net/IConnectivityManager$Stub;->reportLinkSatisfaction(IILandroid/net/LinkInfo;ZZ)Z

    move-result v6

    .line 335
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    if-eqz v6, :cond_11

    move v0, v8

    :goto_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 337
    goto/16 :goto_0

    .line 328
    .end local v3           #_arg2:Landroid/net/LinkInfo;
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    .end local v6           #_result:Z
    :cond_e
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/net/LinkInfo;
    goto :goto_f

    :cond_f
    move v4, v10

    .line 331
    goto :goto_10

    .restart local v4       #_arg3:Z
    :cond_10
    move v5, v10

    .line 333
    goto :goto_11

    .restart local v5       #_arg4:Z
    .restart local v6       #_result:Z
    :cond_11
    move v0, v10

    .line 336
    goto :goto_12

    .line 341
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/net/LinkInfo;
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    .end local v6           #_result:Z
    :sswitch_1c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 345
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 346
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->releaseLink(II)Z

    move-result v6

    .line 347
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v6, :cond_12

    move v0, v8

    :goto_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 349
    goto/16 :goto_0

    :cond_12
    move v0, v10

    .line 348
    goto :goto_13

    .line 353
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_1d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 357
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 359
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 360
    sget-object v0, Landroid/net/LinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkInfo;

    .line 366
    .restart local v3       #_arg2:Landroid/net/LinkInfo;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    move v4, v8

    .line 367
    .restart local v4       #_arg3:Z
    :goto_15
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->switchLink(IILandroid/net/LinkInfo;Z)Z

    move-result v6

    .line 368
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    if-eqz v6, :cond_15

    move v0, v8

    :goto_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 370
    goto/16 :goto_0

    .line 363
    .end local v3           #_arg2:Landroid/net/LinkInfo;
    .end local v4           #_arg3:Z
    .end local v6           #_result:Z
    :cond_13
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/net/LinkInfo;
    goto :goto_14

    :cond_14
    move v4, v10

    .line 366
    goto :goto_15

    .restart local v4       #_arg3:Z
    .restart local v6       #_result:Z
    :cond_15
    move v0, v10

    .line 369
    goto :goto_16

    .line 374
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/net/LinkInfo;
    .end local v4           #_arg3:Z
    .end local v6           #_result:Z
    :sswitch_1e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 378
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 380
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 381
    sget-object v0, Landroid/net/LinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkInfo;

    .line 387
    .restart local v3       #_arg2:Landroid/net/LinkInfo;
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    move v4, v8

    .line 388
    .restart local v4       #_arg3:Z
    :goto_18
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->rejectSwitch(IILandroid/net/LinkInfo;Z)Z

    move-result v6

    .line 389
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    if-eqz v6, :cond_18

    move v0, v8

    :goto_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 391
    goto/16 :goto_0

    .line 384
    .end local v3           #_arg2:Landroid/net/LinkInfo;
    .end local v4           #_arg3:Z
    .end local v6           #_result:Z
    :cond_16
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/net/LinkInfo;
    goto :goto_17

    :cond_17
    move v4, v10

    .line 387
    goto :goto_18

    .restart local v4       #_arg3:Z
    .restart local v6       #_result:Z
    :cond_18
    move v0, v10

    .line 390
    goto :goto_19

    .line 395
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/net/LinkInfo;
    .end local v4           #_arg3:Z
    .end local v6           #_result:Z
    :sswitch_1f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 398
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->startFmc(Landroid/os/IBinder;)Z

    move-result v6

    .line 399
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    if-eqz v6, :cond_19

    move v0, v8

    :goto_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 401
    goto/16 :goto_0

    :cond_19
    move v0, v10

    .line 400
    goto :goto_1a

    .line 405
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v6           #_result:Z
    :sswitch_20
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 408
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->stopFmc(Landroid/os/IBinder;)Z

    move-result v6

    .line 409
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    if-eqz v6, :cond_1a

    move v0, v8

    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 411
    goto/16 :goto_0

    :cond_1a
    move v0, v10

    .line 410
    goto :goto_1b

    .line 415
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v6           #_result:Z
    :sswitch_21
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 418
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getFmcStatus(Landroid/os/IBinder;)Z

    move-result v6

    .line 419
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    if-eqz v6, :cond_1b

    move v0, v8

    :goto_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 421
    goto/16 :goto_0

    :cond_1b
    move v0, v10

    .line 420
    goto :goto_1c

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
