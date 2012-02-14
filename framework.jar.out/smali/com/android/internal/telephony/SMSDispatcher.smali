.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;
    }
.end annotation


# static fields
.field private static final DEFAULT_SMS_CHECK_PERIOD:I = 0x36ee80

.field private static final DEFAULT_SMS_MAX_COUNT:I = 0x3e8

.field private static final DEFAULT_SMS_TIMEOUT:I = 0x1770

.field protected static final EVENT_ALERT_TIMEOUT:I = 0x9

.field protected static final EVENT_ICC_CHANGED:I = 0x10

.field protected static final EVENT_ICC_FULL:I = 0x6

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0xd

.field protected static final EVENT_IMS_STATE_DONE:I = 0xe

.field protected static final EVENT_NEW_BROADCAST_SMS:I = 0x14

.field protected static final EVENT_NEW_ICC_SMS:I = 0x11

.field protected static final EVENT_NEW_SMS:I = 0x1

.field protected static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x5

.field protected static final EVENT_POST_ALERT:I = 0x7

.field protected static final EVENT_PROCESS_SEND_RETRY:I = 0xf

.field protected static final EVENT_RADIO_ON:I = 0xc

.field protected static final EVENT_REPORT_MEMORY_STATUS_DONE:I = 0xb

.field protected static final EVENT_SEND_CONFIRMED_SMS:I = 0x8

.field protected static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field protected static final EVENT_SMS_SENDING_TIMEOUT:I = 0x13

.field protected static final EVENT_STOP_SENDING:I = 0xa

.field protected static final EVENT_UPDATE_ICC_MWI:I = 0x12

.field private static final MAX_SEND_RETRIES:I = 0x3

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field protected static final RAW_PROJECTION:[Ljava/lang/String; = null

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field private static final SEND_RETRY_DELAY:I = 0x7d0

.field private static final SINGLE_PART_SMS:I = 0x1

.field protected static final SMS_SENDING_TIMOUEOUT:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "SMS"

.field protected static mIms:Z

.field protected static mImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

.field protected static mPhone:Lcom/android/internal/telephony/Phone;

.field protected static mRemainingMessages:I

.field protected static mReportMemoryStatusPending:Z

.field protected static mSendRetryRegistrant:Landroid/os/Registrant;

.field protected static mStorageAvailable:Z

.field private static sConcatenatedRef:I


# instance fields
.field private final WAKE_LOCK_TIMEOUT:I

.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mApplication:Lcom/android/internal/telephony/UiccCardApplication;

.field protected mCm:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field private mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

.field protected mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field protected final mRawUri:Landroid/net/Uri;

.field protected mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

.field protected mResolver:Landroid/content/ContentResolver;

.field private mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mSTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mTrackerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mUiccManager:Lcom/android/internal/telephony/UiccManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v3

    const-string v1, "sequence"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    .line 158
    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->mIms:Z

    .line 159
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    .line 218
    sput-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 219
    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    .line 221
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .parameter "phone"
    .parameter "cm"

    .prologue
    const/4 v6, 0x0

    .line 285
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 170
    iput-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    .line 174
    iput-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 175
    iput-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 176
    iput-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 180
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "raw"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    .line 200
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    .line 209
    const/16 v3, 0x1388

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->WAKE_LOCK_TIMEOUT:I

    .line 215
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    .line 345
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 1240
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1254
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SMSDispatcher$2;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 286
    sput-object p1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 287
    new-instance v3, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 288
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 289
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 290
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 292
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->createWakelock()V

    .line 294
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "sms_outgoing_check_interval_ms"

    const v5, 0x36ee80

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 297
    .local v0, check_period:I
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "sms_outgoing_check_max_count"

    const/16 v5, 0x3e8

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 300
    .local v2, max_count:I
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;-><init>(Lcom/android/internal/telephony/SMSDispatcher;II)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    .line 303
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sput v3, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 307
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v3, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/UiccManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 313
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const/16 v4, 0x10

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 315
    sget-boolean v3, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    if-eqz v3, :cond_0

    .line 316
    new-instance v3, Lcom/carrieriq/iqagent/client/IQClient;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/carrieriq/iqagent/client/IQClient;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    .line 319
    :cond_0
    return-void
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 522
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 523
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 524
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 525
    return-void
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .prologue
    .line 224
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 225
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method private handleIccFull()V
    .locals 4

    .prologue
    .line 549
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 551
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method public static isIms()Z
    .locals 1

    .prologue
    .line 1280
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->mIms:Z

    return v0
.end method

.method public static isImsSmsEncodingCdma()Z
    .locals 1

    .prologue
    .line 1284
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isCdma()Z

    move-result v0

    return v0
.end method

.method private isMultipartTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 2
    .parameter "tracker"

    .prologue
    .line 1183
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1184
    .local v0, map:Ljava/util/HashMap;
    const-string v1, "parts"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 1166
    if-nez p1, :cond_0

    .line 1168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1169
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1170
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1171
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1173
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 1174
    return-void
.end method


# virtual methods
.method protected SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 6
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "encoding"

    .prologue
    .line 1214
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;Lcom/android/internal/telephony/SMSDispatcher$1;)V

    return-object v0
.end method

.method protected SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "pdu"

    .prologue
    .line 1230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1231
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    const-string v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    const-string v1, "destPort"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    const-string/jumbo v1, "smsc"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    const-string v1, "pdu"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    return-object v0
.end method

.method protected SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "pdu"

    .prologue
    .line 1219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1220
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    const-string v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    const-string/jumbo v1, "smsc"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    const-string v1, "pdu"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    return-object v0
.end method

.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method dispatch(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .parameter "intent"
    .parameter "permission"

    .prologue
    const/4 v6, 0x0

    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 541
    return-void
.end method

.method protected dispatchBroadcastPdus(Ljava/lang/String;[[B)V
    .locals 4
    .parameter "intent"
    .parameter "pdus"

    .prologue
    .line 1338
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1339
    .local v0, broadcastIntent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1342
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1345
    return-void
.end method

.method protected dispatchBroadcastPdus([[BZ)V
    .locals 5
    .parameter "pdus"
    .parameter "isEmergencyMessage"

    .prologue
    const-string v2, "pdus"

    const-string v4, "SMS"

    const-string v3, "Dispatching "

    .line 1348
    if-eqz p2, :cond_0

    .line 1349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1350
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1352
    const-string v1, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " emergency SMS CB pdus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1363
    :goto_0
    return-void

    .line 1356
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1357
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1359
    const-string v1, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SMS CB pdus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchPdus([[B)V
    .locals 3
    .parameter "pdus"

    .prologue
    .line 905
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 906
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 907
    const-string v1, "encoding"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getEncoding()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 908
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 909
    return-void
.end method

.method protected dispatchPortAddressedPdus([[BI)V
    .locals 4
    .parameter "pdus"
    .parameter "port"

    .prologue
    .line 918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 919
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 920
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 921
    const-string v2, "encoding"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getEncoding()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 922
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 923
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 332
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 335
    const-string v0, "SMS"

    const-string v1, "SMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void
.end method

.method protected getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1129
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1130
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x1040323

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract getEncoding()I
.end method

.method getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 1315
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract handleBroadcastSms(Landroid/os/AsyncResult;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v10, "SMS"

    .line 356
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 515
    :pswitch_0
    const-string v8, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMSDispatcher.handleMessage, unknown msg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 360
    :pswitch_1
    const-string v8, "SMS"

    const-string v8, "New SMS Message Received"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 367
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_1

    .line 368
    const-string v8, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception processing incoming SMS. Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    :cond_1
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Landroid/telephony/SmsMessage;

    .line 374
    .local v6, sms:Landroid/telephony/SmsMessage;
    :try_start_0
    iget-object v8, v6, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v4

    .line 375
    .local v4, result:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    .line 378
    if-ne v4, v12, :cond_2

    move v3, v12

    .line 379
    .local v3, handled:Z
    :goto_1
    const/4 v8, 0x0

    invoke-direct {p0, v3, v4, v8}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    .end local v3           #handled:Z
    .end local v4           #result:I
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 382
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v8, "SMS"

    const-string v8, "Exception dispatching message"

    invoke-static {v10, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    const/4 v8, 0x2

    invoke-direct {p0, v11, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    .end local v2           #ex:Ljava/lang/RuntimeException;
    .restart local v4       #result:I
    :cond_2
    move v3, v11

    .line 378
    goto :goto_1

    .line 390
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v4           #result:I
    .end local v6           #sms:Landroid/telephony/SmsMessage;
    :pswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 395
    :pswitch_3
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsImmediately(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    goto :goto_0

    .line 400
    :pswitch_4
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 404
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleIccFull()V

    goto :goto_0

    .line 408
    :pswitch_6
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 412
    :pswitch_7
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/app/AlertDialog;

    check-cast v8, Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 413
    iput-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 414
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 416
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 417
    .local v5, sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v8, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 423
    .end local v5           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    :goto_2
    const-string v8, "SMS"

    const-string v8, "EVENT_ALERT_TIMEOUT, message stop sending"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 418
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 419
    .local v2, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v8, "SMS"

    const-string v8, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 428
    .end local v2           #ex:Landroid/app/PendingIntent$CanceledException;
    :pswitch_8
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 429
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v12

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 430
    .restart local v5       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->isMultipartTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 431
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 435
    :goto_3
    const/16 v8, 0x9

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 433
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_3

    .line 440
    .end local v5           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_9
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 443
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v12

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 444
    .restart local v5       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v8, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    .line 448
    .end local v5           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_4
    const/16 v8, 0x9

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 445
    :catch_2
    move-exception v8

    move-object v2, v8

    .line 446
    .restart local v2       #ex:Landroid/app/PendingIntent$CanceledException;
    const-string v8, "SMS"

    const-string v8, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 453
    .end local v2           #ex:Landroid/app/PendingIntent$CanceledException;
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 454
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_5

    .line 455
    sput-boolean v12, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    .line 456
    const-string v8, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Memory status report to modem pending : mStorageAvailable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 459
    :cond_5
    sput-boolean v11, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    goto/16 :goto_0

    .line 464
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_b
    sget-boolean v8, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    if-eqz v8, :cond_0

    .line 465
    const-string v8, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending pending memory status report : mStorageAvailable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    sget-boolean v9, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    const/16 v10, 0xb

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 473
    :pswitch_c
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->handleBroadcastSms(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 477
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->updateIccAvailability()V

    goto/16 :goto_0

    .line 481
    :pswitch_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 482
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    goto/16 :goto_0

    .line 486
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 487
    .restart local v1       #ar:Landroid/os/AsyncResult;
    if-eqz v1, :cond_0

    .line 489
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_0

    .line 490
    const-string v8, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " MWI update on card failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->storeVoiceMailCount()V

    goto/16 :goto_0

    .line 496
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object v7, v0

    .line 499
    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const-string v8, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_SMS_SENDING_TIMEOUT, failed tracker is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "blocked size is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 504
    const-string v8, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_SMS_SENDING_TIMEOUT, failed tracker is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "blocked size is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsImmediately(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 508
    const/16 v8, 0x13

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const-wide/32 v9, 0xea60

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method

.method protected handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "ss"
    .parameter "tracker"

    .prologue
    .line 691
    iget-object v0, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 693
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 694
    :try_start_0
    iget-object v0, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v0, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 698
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .parameter "tracker"

    .prologue
    const/4 v5, 0x5

    .line 1099
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_0

    .line 1102
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    :goto_0
    return-void

    .line 1103
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1104
    .local v2, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "SMS"

    const-string v5, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1109
    .end local v2           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 1111
    .local v3, r:Landroid/content/res/Resources;
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, appName:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1040324

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x1040325

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040326

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040327

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1120
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1121
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1123
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    const/16 v4, 0x9

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1770

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 11
    .parameter "ar"

    .prologue
    .line 573
    iget-object v7, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 574
    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v5, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 576
    .local v5, sentIntent:Landroid/app/PendingIntent;
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_5

    .line 578
    const-string v8, "SMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SMS send complete. Broadcasting intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_0

    .line 584
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/SmsResponse;

    iget v2, p1, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    .line 585
    .local v2, messageRef:I
    iput v2, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 586
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    .end local v2           #messageRef:I
    :cond_0
    if-eqz v5, :cond_2

    .line 591
    :try_start_0
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_1

    .line 592
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    sput v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 595
    :cond_1
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v8, :cond_4

    .line 596
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 597
    .local v4, sendNext:Landroid/content/Intent;
    const-string v8, "SendNextMsg"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 598
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .end local v4           #sendNext:Landroid/content/Intent;
    :cond_2
    :goto_0
    const-string v8, "SMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleSendComplete: tracker is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 662
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsImmediately(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 663
    const/16 v8, 0x13

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTrackerList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const-wide/32 v9, 0xea60

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 667
    :cond_3
    :goto_1
    return-void

    .line 600
    :cond_4
    const/4 v8, -0x1

    :try_start_1
    invoke-virtual {v5, v8}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 602
    :catch_0
    move-exception v8

    goto :goto_0

    .line 606
    .restart local p1
    :cond_5
    const-string v8, "SMS"

    const-string v9, "SMS send failed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    sget-object v8, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .line 612
    .local v6, ss:I
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz v6, :cond_6

    .line 613
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 614
    :cond_6
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_7

    iget v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v9, 0x3

    if-ge v8, v9, :cond_7

    .line 625
    iget v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 626
    const/4 v8, 0x3

    invoke-virtual {p0, v8, v7}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 627
    .local v3, retryMsg:Landroid/os/Message;
    const-wide/16 v8, 0x7d0

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 631
    .end local v3           #retryMsg:Landroid/os/Message;
    :cond_7
    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_2

    .line 632
    const/4 v0, 0x1

    .line 634
    .local v0, error:I
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_8

    .line 636
    const/4 v0, 0x6

    .line 640
    :cond_8
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 641
    .local v1, fillIn:Landroid/content/Intent;
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_9

    .line 642
    const-string v8, "errorCode"

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/SmsResponse;

    iget v9, p1, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    :cond_9
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_a

    .line 645
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    sput v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 648
    :cond_a
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v8, :cond_b

    .line 649
    const-string v8, "SendNextMsg"

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 652
    :cond_b
    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v0, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 653
    .end local v1           #fillIn:Landroid/content/Intent;
    :catch_1
    move-exception v8

    goto/16 :goto_0
.end method

.method protected abstract handleStatusReport(Landroid/os/AsyncResult;)V
.end method

.method protected isCdmaMo()Z
    .locals 2

    .prologue
    .line 1293
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1295
    const/4 v0, 0x2

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1298
    :goto_0
    return v0

    .line 1295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1298
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isImsSmsEncodingCdma()Z

    move-result v0

    goto :goto_0
.end method

.method protected processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I
    .locals 35
    .parameter "sms"
    .parameter "concatRef"
    .parameter "portAddrs"

    .prologue
    .line 726
    const-wide/32 v10, 0xa4cb800

    .line 727
    .local v10, SMSRAW_DEL_INTERVAL_TIME:J
    const-string v4, "hw.sms.dellong.interval.time"

    const-wide/32 v5, 0xa4cb800

    invoke-static {v4, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v27

    .line 729
    .local v27, retrivelTimes:J
    new-instance v34, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v5

    sub-long v5, v5, v27

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND address = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 731
    .local v34, whereTodel:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 733
    .local v16, delCount:I
    if-lez v16, :cond_0

    .line 734
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMessagePart: del "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " raw sms before than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_0
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v4, "reference_number ="

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 740
    .local v33, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move v4, v0

    move-object/from16 v0, v33

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 742
    const-string v4, " AND count ="

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    move-object/from16 v0, v33

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 745
    const-string v4, " AND address = ?"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 748
    .local v8, whereArgs:[Ljava/lang/String;
    const/16 v26, 0x0

    check-cast v26, [[B

    .line 749
    .local v26, pdus:[[B
    const/4 v12, 0x0

    .line 752
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMessagePart: received long sms from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ref|seq/count("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "_id DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 756
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 758
    .local v13, cursorCount:I
    const-string v4, "pdu"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 759
    .local v25, pduColumn:I
    const-string v4, "sequence"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 760
    .local v31, sequenceColumn:I
    const-string v4, "_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 765
    .local v15, dbIdColumn:I
    const/16 v29, 0x1

    .line 766
    .local v29, segCount:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    move v0, v4

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 767
    .local v21, index:[I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    move/from16 v0, v20

    move v1, v4

    if-ge v0, v1, :cond_1

    .line 768
    const/4 v4, -0x1

    aput v4, v21, v20

    .line 767
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 771
    :cond_1
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMessagePart: cursorCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-lt v13, v4, :cond_2

    .line 774
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aput v13, v21, v4

    .line 776
    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move v1, v13

    if-ge v0, v1, :cond_2

    .line 777
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 778
    move-object v0, v12

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    long-to-int v0, v0

    move/from16 v30, v0

    .line 779
    .local v30, seq:I
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMessagePart: find seg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at cursor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", use = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    sub-int v6, v30, v6

    aget v6, v21, v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", now get "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v29, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/4 v4, 0x1

    sub-int v4, v30, v4

    aget v4, v21, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    .line 782
    const/4 v4, 0x1

    sub-int v4, v30, v4

    aput v20, v21, v4

    .line 783
    add-int/lit8 v29, v29, 0x1

    .line 785
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    move/from16 v0, v29

    move v1, v4

    if-ne v0, v1, :cond_6

    .line 792
    .end local v30           #seq:I
    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    move/from16 v0, v29

    move v1, v4

    if-ge v0, v1, :cond_7

    .line 794
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMessagePart: ********** only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " received."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 796
    .local v32, values:Landroid/content/ContentValues;
    const-string v4, "date"

    new-instance v5, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v32

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 797
    const-string v4, "pdu"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v4, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v4, "reference_number"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v32

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 800
    const-string v4, "count"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v32

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 801
    const-string v4, "sequence"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v32

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 802
    if-eqz p3, :cond_3

    .line 803
    const-string v4, "destination_port"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v32

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 805
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    const/4 v4, 0x1

    .line 837
    if-eqz v12, :cond_4

    .end local v13           #cursorCount:I
    .end local v15           #dbIdColumn:I
    .end local v20           #i:I
    .end local v21           #index:[I
    .end local v25           #pduColumn:I
    .end local v29           #segCount:I
    .end local v31           #sequenceColumn:I
    .end local v32           #values:Landroid/content/ContentValues;
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 890
    :cond_4
    :goto_4
    return v4

    .line 779
    .restart local v13       #cursorCount:I
    .restart local v15       #dbIdColumn:I
    .restart local v20       #i:I
    .restart local v21       #index:[I
    .restart local v25       #pduColumn:I
    .restart local v29       #segCount:I
    .restart local v30       #seq:I
    .restart local v31       #sequenceColumn:I
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 776
    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 808
    .end local v30           #seq:I
    :cond_7
    :try_start_1
    const-string v4, "SMS"

    const-string v5, "processMessagePart: all received. OK"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    move v0, v4

    new-array v0, v0, [[B

    move-object/from16 v26, v0

    .line 812
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 813
    .local v17, delWhere:Ljava/lang/StringBuilder;
    const/16 v20, 0x0

    :goto_5
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    move/from16 v0, v20

    move v1, v4

    if-ge v0, v1, :cond_a

    .line 814
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move/from16 v0, v20

    move v1, v4

    if-eq v0, v1, :cond_8

    .line 815
    aget v4, v21, v20

    invoke-interface {v12, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 816
    move-object v0, v12

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v26, v20

    .line 818
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_9

    .line 819
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :cond_8
    :goto_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 821
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " OR _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 832
    .end local v13           #cursorCount:I
    .end local v15           #dbIdColumn:I
    .end local v17           #delWhere:Ljava/lang/StringBuilder;
    .end local v20           #i:I
    .end local v21           #index:[I
    .end local v25           #pduColumn:I
    .end local v29           #segCount:I
    .end local v31           #sequenceColumn:I
    :catch_0
    move-exception v4

    move-object/from16 v18, v4

    .line 833
    .local v18, e:Landroid/database/SQLException;
    :try_start_2
    const-string v4, "SMS"

    const-string v5, "Can\'t access multipart SMS database"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 835
    const/4 v4, 0x2

    .line 837
    if-eqz v12, :cond_4

    goto/16 :goto_3

    .line 826
    .end local v18           #e:Landroid/database/SQLException;
    .restart local v13       #cursorCount:I
    .restart local v15       #dbIdColumn:I
    .restart local v17       #delWhere:Ljava/lang/StringBuilder;
    .restart local v20       #i:I
    .restart local v21       #index:[I
    .restart local v25       #pduColumn:I
    .restart local v29       #segCount:I
    .restart local v31       #sequenceColumn:I
    :cond_a
    :try_start_3
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v5

    aput-object v5, v26, v4

    .line 829
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMessagePart: del msg where => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 837
    if-eqz v12, :cond_b

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 850
    :cond_b
    if-eqz p3, :cond_13

    .line 851
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v4, v0

    const/16 v5, 0xb84

    if-ne v4, v5, :cond_12

    .line 853
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;

    move v4, v0

    if-eqz v4, :cond_e

    const/4 v4, 0x2

    move/from16 v19, v4

    .line 858
    .local v19, encoding:I
    :goto_7
    new-instance v24, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 860
    .local v24, output:Ljava/io/ByteArrayOutputStream;
    const/16 v23, 0x0

    .line 861
    .local v23, oriaddress:Ljava/lang/String;
    const/16 v20, 0x0

    :goto_8
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    move/from16 v0, v20

    move v1, v4

    if-ge v0, v1, :cond_f

    .line 862
    aget-object v4, v26, v20

    move-object v0, v4

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v22

    .line 863
    .local v22, msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v14

    .line 864
    .local v14, data:[B
    const/4 v4, 0x0

    array-length v5, v14

    move-object/from16 v0, v24

    move-object v1, v14

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 865
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move/from16 v0, v20

    move v1, v4

    if-ne v0, v1, :cond_c

    .line 866
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v23

    .line 861
    :cond_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 837
    .end local v13           #cursorCount:I
    .end local v14           #data:[B
    .end local v15           #dbIdColumn:I
    .end local v17           #delWhere:Ljava/lang/StringBuilder;
    .end local v19           #encoding:I
    .end local v20           #i:I
    .end local v21           #index:[I
    .end local v22           #msg:Landroid/telephony/SmsMessage;
    .end local v23           #oriaddress:Ljava/lang/String;
    .end local v24           #output:Ljava/io/ByteArrayOutputStream;
    .end local v25           #pduColumn:I
    .end local v29           #segCount:I
    .end local v31           #sequenceColumn:I
    :catchall_0
    move-exception v4

    if-eqz v12, :cond_d

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v4

    .line 853
    .restart local v13       #cursorCount:I
    .restart local v15       #dbIdColumn:I
    .restart local v17       #delWhere:Ljava/lang/StringBuilder;
    .restart local v20       #i:I
    .restart local v21       #index:[I
    .restart local v25       #pduColumn:I
    .restart local v29       #segCount:I
    .restart local v31       #sequenceColumn:I
    :cond_e
    const/4 v4, 0x1

    move/from16 v19, v4

    goto :goto_7

    .line 871
    .restart local v19       #encoding:I
    .restart local v23       #oriaddress:Ljava/lang/String;
    .restart local v24       #output:Ljava/io/ByteArrayOutputStream;
    :cond_f
    sget-boolean v4, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    if-eqz v4, :cond_11

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    move-object v4, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/carrieriq/iqagent/client/IQClient;->checkWAPPush([B)Z

    move-result v4

    if-nez v4, :cond_10

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object v4, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v4

    goto/16 :goto_4

    .line 875
    :cond_10
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 878
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object v4, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v4

    goto/16 :goto_4

    .line 884
    .end local v19           #encoding:I
    .end local v23           #oriaddress:Ljava/lang/String;
    .end local v24           #output:Ljava/io/ByteArrayOutputStream;
    :cond_12
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 890
    :goto_9
    const/4 v4, -0x1

    goto/16 :goto_4

    .line 888
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_9
.end method

.method protected registerSendRetry(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1302
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mSendRetryRegistrant:Landroid/os/Registrant;

    .line 1303
    return-void
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation
.end method

.method protected sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .parameter "tracker"

    .prologue
    .line 1065
    iget-object v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1066
    .local v2, map:Ljava/util/HashMap;
    const-string v6, "pdu"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v3, v0

    .line 1068
    .local v3, pdu:[B
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 1069
    .local v4, sentIntent:Landroid/app/PendingIntent;
    if-nez v3, :cond_1

    .line 1070
    if-eqz v4, :cond_0

    .line 1072
    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v4, v6}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 1081
    .local v5, ss:I
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    .line 1082
    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 1084
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    .line 1085
    .local v1, appName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->check(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1086
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 1088
    :cond_3
    const/4 v6, 0x7

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1073
    .end local v1           #appName:Ljava/lang/String;
    .end local v5           #ss:I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected sendSmsImmediately(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 1
    .parameter "tracker"

    .prologue
    .line 676
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 677
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected storeVoiceMailCount()V
    .locals 7

    .prologue
    .line 1320
    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1321
    .local v1, imsi:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v2

    .line 1323
    .local v2, mwi:I
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Storing Voice Mail Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for imsi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in preferences."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1328
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1329
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/PhoneBase;

    const-string/jumbo v4, "vm_count_key"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1330
    sget-object p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/PhoneBase;

    const-string/jumbo v4, "vm_id_key"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1333
    return-void
.end method

.method protected unregisterSendRetry(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1306
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mSendRetryRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1307
    return-void
.end method

.method protected abstract updateIccAvailability()V
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    .line 322
    sput-object p1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 323
    instance-of v1, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_0

    const-string v1, "CDMA"

    move-object v0, v1

    .line 326
    .local v0, phoneType:Ljava/lang/String;
    :goto_0
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active phone changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void

    .line 323
    .end local v0           #phoneType:Ljava/lang/String;
    :cond_0
    const-string v1, "GSM"

    move-object v0, v1

    goto :goto_0
.end method
