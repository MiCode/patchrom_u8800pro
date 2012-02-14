.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field static final preferredCdmaSubscription:I = 0x1

.field static final preferredNetworkMode:I

.field private static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sLooper:Landroid/os/Looper;

.field private static sMadeDefaults:Z

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 40
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone(Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/Phone;
    .locals 5
    .parameter "dct"

    .prologue
    .line 174
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v2, v3, v4, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 176
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v1

    return-object v0

    .line 177
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 162
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone(Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/Phone;
    .locals 5
    .parameter "dct"

    .prologue
    .line 181
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v2, v3, v4, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 183
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v1

    return-object v0

    .line 184
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getPhoneType(I)I
    .locals 2
    .parameter "networkMode"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 138
    packed-switch p0, :pswitch_data_0

    .line 157
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 143
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 155
    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const-string v7, "PHONE"

    .line 62
    const-class v7, Lcom/android/internal/telephony/Phone;

    monitor-enter v7

    .line 63
    :try_start_0
    sget-boolean v8, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v8, :cond_2

    .line 64
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    sput-object v8, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    .line 65
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 67
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v8, :cond_0

    .line 68
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 127
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 72
    :cond_0
    const/4 v6, 0x0

    .line 74
    .local v6, retryCount:I
    :goto_0
    const/4 v3, 0x0

    .line 75
    .local v3, hasException:Z
    add-int/lit8 v6, v6, 0x1

    .line 80
    :try_start_1
    new-instance v8, Landroid/net/LocalServerSocket;

    const-string v9, "com.android.internal.telephony"

    invoke-direct {v8, v9}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    :goto_1
    if-nez v3, :cond_3

    .line 97
    :try_start_2
    new-instance v8, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v8}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v8, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "preferred_network_mode"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 102
    .local v4, networkMode:I
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Network Mode set to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "preferred_cdma_subscription"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 107
    .local v0, cdmaSubscription:I
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cdma Subscription set to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v8, Lcom/android/internal/telephony/RIL;

    invoke-direct {v8, p0, v4, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    sput-object v8, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 112
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v5

    .line 113
    .local v5, phoneType:I
    new-instance v1, Lcom/android/internal/telephony/MMDataConnectionTracker;

    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v1, p0, v8, v9}, Lcom/android/internal/telephony/MMDataConnectionTracker;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 115
    .local v1, dct:Lcom/android/internal/telephony/DataConnectionTracker;
    if-ne v5, v11, :cond_5

    .line 116
    new-instance v8, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v9, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v11, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v9, p0, v10, v11, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/DataConnectionTracker;)V

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v8, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 118
    const-string v8, "PHONE"

    const-string v9, "Creating GSMPhone"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_1
    :goto_2
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 127
    .end local v0           #cdmaSubscription:I
    .end local v1           #dct:Lcom/android/internal/telephony/DataConnectionTracker;
    .end local v3           #hasException:Z
    .end local v4           #networkMode:I
    .end local v5           #phoneType:I
    .end local v6           #retryCount:I
    :cond_2
    monitor-exit v7

    .line 128
    return-void

    .line 81
    .restart local v3       #hasException:Z
    .restart local v6       #retryCount:I
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 82
    .local v2, ex:Ljava/io/IOException;
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 87
    .end local v2           #ex:Ljava/io/IOException;
    :cond_3
    const/4 v8, 0x3

    if-le v6, v8, :cond_4

    .line 88
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "PhoneFactory probably already running"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :cond_4
    const-wide/16 v8, 0x7d0

    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 92
    :catch_1
    move-exception v8

    goto/16 :goto_0

    .line 119
    .restart local v0       #cdmaSubscription:I
    .restart local v1       #dct:Lcom/android/internal/telephony/DataConnectionTracker;
    .restart local v4       #networkMode:I
    .restart local v5       #phoneType:I
    :cond_5
    const/4 v8, 0x2

    if-ne v5, v8, :cond_1

    .line 120
    :try_start_4
    new-instance v8, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v9, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v11, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v9, p0, v10, v11, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/DataConnectionTracker;)V

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v8, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 122
    const-string v8, "PHONE"

    const-string v9, "Creating CDMAPhone"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .parameter "sipUri"

    .prologue
    .line 193
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method
