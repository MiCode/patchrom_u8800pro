.class public abstract Landroid/smartcard/ISmartcardSystemService$Stub;
.super Landroid/os/Binder;
.source "ISmartcardSystemService.java"

# interfaces
.implements Landroid/smartcard/ISmartcardSystemService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/smartcard/ISmartcardSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/smartcard/ISmartcardSystemService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.smartcard.ISmartcardSystemService"

.field static final TRANSACTION_closeChannel:I = 0x1

.field static final TRANSACTION_getLastError:I = 0x7

.field static final TRANSACTION_getReaders:I = 0x2

.field static final TRANSACTION_isCardPresent:I = 0x3

.field static final TRANSACTION_openBasicChannel:I = 0x4

.field static final TRANSACTION_openLogicalChannel:I = 0x5

.field static final TRANSACTION_transmit:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.smartcard.ISmartcardSystemService"

    invoke-virtual {p0, p0, v0}, Landroid/smartcard/ISmartcardSystemService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/smartcard/ISmartcardSystemService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_0
    return-object v1

    .line 29
    :cond_0
    const-string v1, "android.smartcard.ISmartcardSystemService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/smartcard/ISmartcardSystemService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/smartcard/ISmartcardSystemService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/smartcard/ISmartcardSystemService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/smartcard/ISmartcardSystemService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v6, 0x1

    const-string v7, "android.smartcard.ISmartcardSystemService"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 45
    :sswitch_0
    const-string v5, "android.smartcard.ISmartcardSystemService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "android.smartcard.ISmartcardSystemService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 53
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/smartcard/ISmartcardSystemService$Stub;->closeChannel(J)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 55
    goto :goto_0

    .line 59
    .end local v0           #_arg0:J
    :sswitch_2
    const-string v5, "android.smartcard.ISmartcardSystemService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Landroid/smartcard/ISmartcardSystemService$Stub;->getReaders()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 63
    goto :goto_0

    .line 67
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v5, "android.smartcard.ISmartcardSystemService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/smartcard/ISmartcardSystemService$Stub;->isCardPresent(Ljava/lang/String;)Z

    move-result v3

    .line 71
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v3, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 73
    goto :goto_0

    .line 72
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 77
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_4
    const-string v5, "android.smartcard.ISmartcardSystemService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/smartcard/ISmartcardSystemService$Stub;->openBasicChannel(Ljava/lang/String;)J

    move-result-wide v3

    .line 81
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 83
    goto :goto_0

    .line 87
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:J
    :sswitch_5
    const-string v5, "android.smartcard.ISmartcardSystemService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/smartcard/ISmartcardSystemService$Stub;->openLogicalChannel(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 93
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 95
    goto :goto_0

    .line 99
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_result:J
    :sswitch_6
    const-string v5, "android.smartcard.ISmartcardSystemService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 103
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/smartcard/ISmartcardSystemService$Stub;->transmit(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 107
    goto/16 :goto_0

    .line 111
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v5, "android.smartcard.ISmartcardSystemService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/smartcard/ISmartcardSystemService$Stub;->getLastError()Ljava/lang/String;

    move-result-object v3

    .line 113
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 115
    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
