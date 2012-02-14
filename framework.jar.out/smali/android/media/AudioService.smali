.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$RemoteControlStackEntry;,
        Landroid/media/AudioService$MediaButtonBroadcastReceiver;,
        Landroid/media/AudioService$AudioFocusDeathHandler;,
        Landroid/media/AudioService$FocusStackEntry;,
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$SoundPoolCallback;,
        Landroid/media/AudioService$SoundPoolListenerThread;,
        Landroid/media/AudioService$SetModeDeathHandler;
    }
.end annotation


# static fields
.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x8

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x9

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x5

.field private static final MSG_MEDIA_SERVER_STARTED:I = 0x6

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_VIBRATE_SETTING:I = 0x4

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x7

.field private static final MSG_SET_SYSTEM_VOLUME:I = 0x0

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0xbb8

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SHARED_MSG:I = -0x1

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field private static final SOUND_EFFECT_VOLUME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;


# instance fields
.field private MAX_STREAM_VOLUME:[I

.field private SOUND_EFFECT_FILES_MAP:[[I

.field private STREAM_VOLUME_ALIAS:[I

.field private mAudioFocusDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$AudioFocusDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetConnected:Z

.field private mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

.field private mBootCompleted:Z

.field private mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDockAddress:Ljava/lang/String;

.field private mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$FocusStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mForcedUseForComm:I

.field private mIsRinging:Z

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaServerOk:Z

.field private mMode:I

.field private mMuteAffectedStreams:I

.field private mNotificationsUseRingVolume:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRCStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$RemoteControlStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeMutedStreams:I

.field private mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field private mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mVibrateSetting:I

.field private mVolumePanel:Landroid/view/VolumePanel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Effect_Tick.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "KeypressStandard.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "KeypressSpacebar.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "KeypressDelete.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "KeypressReturn.ogg"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 2242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    .line 2244
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 288
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 126
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 130
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 147
    const/16 v2, 0x9

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    aput-object v3, v2, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_2

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [I

    fill-array-data v4, :array_3

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-array v4, v5, [I

    fill-array-data v4, :array_4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_5

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_6

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [I

    fill-array-data v4, :array_7

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [I

    fill-array-data v4, :array_8

    aput-object v4, v2, v3

    iput-object v2, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 160
    new-array v2, v9, [I

    fill-array-data v2, :array_9

    iput-object v2, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    .line 177
    new-array v2, v9, [I

    fill-array-data v2, :array_a

    iput-object v2, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    .line 191
    new-instance v2, Landroid/media/AudioService$1;

    invoke-direct {v2, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 243
    new-instance v2, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v2, p0, v7}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v2, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 247
    new-instance v2, Landroid/media/AudioService$MediaButtonBroadcastReceiver;

    invoke-direct {v2, p0, v7}, Landroid/media/AudioService$MediaButtonBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v2, p0, Landroid/media/AudioService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 250
    iput-boolean v6, p0, Landroid/media/AudioService;->mIsRinging:Z

    .line 253
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    .line 260
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    .line 280
    iput-object v7, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 1259
    new-instance v2, Landroid/media/AudioService$2;

    invoke-direct {v2, p0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    .line 2246
    new-instance v2, Landroid/media/AudioService$3;

    invoke-direct {v2, p0}, Landroid/media/AudioService$3;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2317
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    .line 2629
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    .line 289
    iput-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 293
    iget-object v2, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const-string v3, "ro.config.vc_call_vol_steps"

    iget-object v4, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, v6

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v6

    .line 297
    new-instance v2, Landroid/view/VolumePanel;

    invoke-direct {v2, p1, p0}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    .line 298
    new-instance v2, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v2, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 299
    iput v6, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 300
    invoke-direct {p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    .line 301
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 302
    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    .line 304
    const/4 v2, -0x2

    iput v2, p0, Landroid/media/AudioService;->mMode:I

    .line 305
    invoke-virtual {p0, v6, v7}, Landroid/media/AudioService;->setMode(ILandroid/os/IBinder;)V

    .line 306
    iput-boolean v8, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    .line 310
    iput v6, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 311
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    invoke-direct {p0, v2, v6}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 313
    iget-object v2, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v2}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 315
    iput-boolean v6, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    .line 316
    new-instance v2, Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Landroid/media/AudioService;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    invoke-direct {v2, p1, v3}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v2, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 320
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v2, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v2, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v2, "HDMI_CONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v2, "HDMI_DISCONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 330
    const-string v2, "android.intent.action.FM"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    iget-object v2, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 336
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 337
    iget-object v2, p0, Landroid/media/AudioService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 340
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 342
    .local v1, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 343
    return-void

    .line 147
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_6
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_7
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_8
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 160
    :array_9
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 177
    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$1102(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Landroid/media/AudioService;->mMode:I

    return p1
.end method

.method static synthetic access$1202(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 80
    invoke-static/range {p0 .. p7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2000(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    return v0
.end method

.method static synthetic access$2002(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/AudioService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/AudioService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    return-void
.end method

.method static synthetic access$2500(Landroid/media/AudioService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    return-object v0
.end method

.method static synthetic access$2600(Landroid/media/AudioService;III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$3400(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    return v0
.end method

.method static synthetic access$3500(Landroid/media/AudioService;)[[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$3600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-static {p0}, Landroid/media/AudioService;->getMsgBase(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return v0
.end method

.method static synthetic access$4200(Landroid/media/AudioService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$4300(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return v0
.end method

.method static synthetic access$4502(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return p1
.end method

.method static synthetic access$4600(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    return v0
.end method

.method static synthetic access$4602(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    return p1
.end method

.method static synthetic access$4700(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    return-void
.end method

.method static synthetic access$4900(Landroid/media/AudioService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4902(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5000(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Landroid/media/AudioService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5302(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$5400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/media/AudioService;->mIsRinging:Z

    return v0
.end method

.method static synthetic access$5502(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Landroid/media/AudioService;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$5600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/media/AudioService;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    return-object v0
.end method

.method private broadcastRingerMode()V
    .locals 5

    .prologue
    .line 1382
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1383
    .local v0, broadcast:Landroid/content/Intent;
    const-string v3, "android.media.EXTRA_RINGER_MODE"

    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1384
    const/high16 v3, 0x3000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1387
    .local v1, origCallerIdentityToken:J
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1388
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1389
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .parameter "vibrateType"

    .prologue
    .line 1393
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1394
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1395
    .local v0, broadcast:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1396
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1397
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1399
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private canReassignAudioFocus()Z
    .locals 2

    .prologue
    .line 2398
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2399
    const/4 v0, 0x0

    .line 2401
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    .prologue
    .line 1949
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 1950
    return-void
.end method

.method private checkForRingerModeChange(II)Z
    .locals 5
    .parameter "oldIndex"
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 1290
    const/4 v0, 0x1

    .line 1291
    .local v0, adjustVolumeIndex:Z
    iget v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1293
    .local v1, newRingerMode:I
    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1295
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    add-int/lit8 v2, p1, 0x5

    div-int/lit8 v2, v2, 0xa

    if-ne v2, v4, :cond_0

    .line 1298
    iget-object v2, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "vibrate_in_silent"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    move v1, v4

    .line 1312
    :cond_0
    :goto_0
    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v1, v2, :cond_1

    .line 1313
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 1320
    const/4 v0, 0x0

    .line 1323
    :cond_1
    return v0

    .line 1298
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 1303
    :cond_3
    if-ne p2, v4, :cond_4

    .line 1305
    const/4 v1, 0x2

    goto :goto_0

    .line 1308
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createAudioSystemThread()V
    .locals 1

    .prologue
    .line 346
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 347
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 348
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    .line 349
    return-void
.end method

.method private createStreamStates()V
    .locals 7

    .prologue
    .line 366
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 367
    .local v2, numStreamTypes:I
    new-array v3, v2, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 369
    .local v3, streams:[Landroid/media/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 370
    new-instance v4, Landroid/media/AudioService$VolumeStreamState;

    sget-object v5, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v6, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v0, v6}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v4, v3, v0

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 375
    iget-object v4, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v4, v4, v0

    if-eq v4, v0, :cond_1

    .line 376
    aget-object v4, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 377
    .local v1, index:I
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$602(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 378
    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 379
    aget-object v4, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 380
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$802(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 374
    .end local v1           #index:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 383
    :cond_2
    return-void
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 2324
    const-string v2, "\nAudio Focus stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2325
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2326
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2327
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2328
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 2329
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2332
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2333
    return-void
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 2636
    const-string v2, "\nRemote Control stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2637
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 2638
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2639
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2640
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 2641
    .local v0, fse:Landroid/media/AudioService$RemoteControlStackEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     receiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2643
    .end local v0           #fse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2644
    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 1339
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1340
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1342
    :cond_1
    return-void
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .parameter "streamType"

    .prologue
    .line 1345
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1346
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1348
    :cond_1
    return-void
.end method

.method private getActiveStreamType(I)I
    .locals 8
    .parameter "suggestedStreamType"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 1351
    const/4 v1, 0x0

    .line 1353
    .local v1, isOffhook:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1354
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1359
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    invoke-static {v5}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 1361
    const/4 v3, 0x6

    .line 1376
    :goto_1
    return v3

    .line 1355
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1356
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    const-string v4, "Couldn\'t connect to phone service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1362
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    if-nez v1, :cond_2

    invoke-static {v5}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v3, v5

    .line 1364
    goto :goto_1

    .line 1365
    :cond_3
    invoke-static {v6}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v6

    .line 1367
    goto :goto_1

    .line 1368
    :cond_4
    invoke-static {v7}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v7

    .line 1370
    goto :goto_1

    .line 1371
    :cond_5
    const/high16 v3, -0x8000

    if-ne p1, v3, :cond_6

    .line 1373
    const/4 v3, 0x2

    goto :goto_1

    :cond_6
    move v3, p1

    .line 1376
    goto :goto_1
.end method

.method private static getMsg(II)I
    .locals 2
    .parameter "baseMsg"
    .parameter "streamType"

    .prologue
    .line 1403
    const v0, 0xffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private static getMsgBase(I)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 1407
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getValueForVibrateSetting(III)I
    .locals 2
    .parameter "existingValue"
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 682
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 685
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 687
    return p0
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    .prologue
    .line 1953
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private isStreamMutedByRingerMode(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v2, 0x1

    .line 1331
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    const/16 v2, 0x80

    .line 1918
    const/4 v0, 0x1

    invoke-static {v2, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 1922
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1923
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1925
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 1939
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1941
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1944
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1946
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    const/16 v2, 0x80

    .line 1928
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1929
    .local v0, noisyIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1930
    const/4 v1, 0x0

    invoke-static {v2, v1, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 1933
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    return-void
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 4

    .prologue
    .line 2282
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v1, :cond_0

    .line 2283
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2285
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, p0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2293
    :cond_0
    :goto_0
    return-void

    .line 2287
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2288
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to signal gain of audio control focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private pushMediaButtonReceiver(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "newReceiver"

    .prologue
    .line 2652
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v2, v2, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2664
    :goto_0
    return-void

    .line 2655
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2656
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2657
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 2658
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2659
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 2663
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_2
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    new-instance v3, Landroid/media/AudioService$RemoteControlStackEntry;

    invoke-direct {v3, p1}, Landroid/media/AudioService$RemoteControlStackEntry;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private readPersistedSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 386
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 388
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "mode_ringer"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 390
    const-string/jumbo v1, "vibrate_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 392
    const-string v1, "mode_ringer_streams_affected"

    const/16 v2, 0x426

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 397
    const-string v1, "mute_streams_affected"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 400
    iget v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 402
    const-string v1, "notifications_use_ring_volume"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    .line 405
    iget v1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    if-ne v1, v3, :cond_0

    .line 406
    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    const/4 v2, 0x5

    aput v5, v1, v2

    .line 411
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastRingerMode()V

    .line 414
    invoke-direct {p0, v4}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 415
    invoke-direct {p0, v3}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 416
    return-void
.end method

.method private removeFocusStackEntry(Ljava/lang/String;Z)V
    .locals 5
    .parameter "clientToRemove"
    .parameter "signal"

    .prologue
    .line 2344
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v2, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2347
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2348
    if-eqz p2, :cond_0

    .line 2350
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 2365
    :cond_0
    return-void

    .line 2355
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2356
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2357
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 2358
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2359
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .locals 6
    .parameter "cb"

    .prologue
    .line 2373
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 2375
    .local v1, isTopOfStackForClientToRemove:Z
    :goto_0
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2376
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2377
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 2378
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2379
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2373
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #isTopOfStackForClientToRemove:Z
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 2384
    .restart local v1       #isTopOfStackForClientToRemove:Z
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 2387
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 2389
    :cond_3
    return-void
.end method

.method private removeMediaButtonReceiver(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "newReceiver"

    .prologue
    .line 2671
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2672
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2673
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 2674
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2675
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 2679
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    return-void
.end method

.method private rescaleIndex(III)I
    .locals 2
    .parameter "index"
    .parameter "srcStream"
    .parameter "dstStream"

    .prologue
    .line 423
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private static sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    .locals 4
    .parameter "handler"
    .parameter "baseMsg"
    .parameter "streamType"
    .parameter "existingMsgPolicy"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 1412
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    move v0, p1

    .line 1414
    .local v0, msg:I
    :goto_0
    if-nez p3, :cond_2

    .line 1415
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1420
    :cond_0
    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p7

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1422
    :goto_1
    return-void

    .line 1412
    .end local v0           #msg:I
    :cond_1
    invoke-static {p1, p2}, Landroid/media/AudioService;->getMsg(II)I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 1416
    .restart local v0       #msg:I
    :cond_2
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method private sendVolumeUpdate(III)V
    .locals 2
    .parameter "streamType"
    .parameter "oldIndex"
    .parameter "index"

    .prologue
    .line 517
    add-int/lit8 v1, p2, 0x5

    div-int/lit8 p2, v1, 0xa

    .line 518
    add-int/lit8 v1, p3, 0x5

    div-int/lit8 p3, v1, 0xa

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 525
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 526
    return-void
.end method

.method private setRingerModeInt(IZ)V
    .locals 10
    .parameter "ringerMode"
    .parameter "persist"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 605
    iput p1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 611
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 612
    .local v8, numStreamTypes:I
    sub-int v9, v8, v2

    .local v9, streamType:I
    :goto_0
    if-ltz v9, :cond_3

    .line 613
    invoke-direct {p0, v9}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 614
    invoke-virtual {p0, v9}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v4, :cond_1

    .line 616
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 617
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v2, v9

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 612
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 620
    :cond_2
    invoke-virtual {p0, v9}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v4, :cond_1

    .line 622
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 623
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v2, v9

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto :goto_1

    .line 629
    :cond_3
    if-eqz p2, :cond_4

    .line 630
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/16 v7, 0xbb8

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 633
    :cond_4
    return-void
.end method

.method private setStreamVolumeIndex(II)V
    .locals 1
    .parameter "stream"
    .parameter "index"

    .prologue
    .line 419
    add-int/lit8 v0, p2, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-static {p1, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(II)I

    .line 420
    return-void
.end method

.method private setStreamVolumeInt(IIZZ)V
    .locals 8
    .parameter "streamType"
    .parameter "index"
    .parameter "force"
    .parameter "lastAudible"

    .prologue
    .line 539
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v0, p1

    .line 542
    .local v6, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    if-eqz p2, :cond_0

    .line 545
    invoke-virtual {v6, p2}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(I)V

    .line 547
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v7, 0xbb8

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    invoke-virtual {v6, p2, p4}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_0

    .line 554
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    .prologue
    .line 353
    monitor-enter p0

    .line 354
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 357
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 363
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 8
    .parameter "fl"
    .parameter "clientId"
    .parameter "cb"

    .prologue
    const/4 v6, 0x1

    const-string v7, "AudioService"

    .line 2517
    const-string v4, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    :try_start_0
    sget-object v4, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2521
    const/4 v5, 0x1

    :try_start_1
    invoke-direct {p0, p2, v5}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 2523
    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2525
    iget-object v5, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2527
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2529
    iget-object v5, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$AudioFocusDeathHandler;

    .line 2531
    .local v0, afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    invoke-virtual {v0}, Landroid/media/AudioService$AudioFocusDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne p3, v5, :cond_1

    .line 2532
    const/4 v5, 0x0

    invoke-interface {p3, v0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2533
    iget-object v5, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2538
    .end local v0           #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    .end local v2           #i:I
    .end local v3           #size:I
    :cond_0
    monitor-exit v4

    .line 2547
    :goto_1
    return v6

    .line 2527
    .restart local v0       #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    .restart local v2       #i:I
    .restart local v3       #size:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2538
    .end local v0           #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    .end local v2           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2539
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2543
    .local v1, cme:Ljava/util/ConcurrentModificationException;
    const-string v4, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    invoke-virtual {v1}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_1
.end method

.method public adjustStreamVolume(III)V
    .locals 11
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 450
    invoke-direct {p0, p2}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 451
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 454
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v2, v2, p1

    aget-object v6, v0, v2

    .line 455
    .local v6, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_2

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    move v10, v0

    .line 456
    .local v10, oldIndex:I
    :goto_0
    const/4 v8, 0x1

    .line 460
    .local v8, adjustVolume:Z
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 464
    :cond_0
    invoke-direct {p0, v10, p2}, Landroid/media/AudioService;->checkForRingerModeChange(II)Z

    move-result v8

    .line 469
    :cond_1
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v9

    .line 481
    .local v9, index:I
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0, p1, p3}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 483
    invoke-direct {p0, p1, v10, v9}, Landroid/media/AudioService;->sendVolumeUpdate(III)V

    .line 484
    return-void

    .line 455
    .end local v8           #adjustVolume:Z
    .end local v9           #index:I
    .end local v10           #oldIndex:I
    :cond_2
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    move v10, v0

    goto :goto_0

    .line 472
    .restart local v8       #adjustVolume:Z
    .restart local v10       #oldIndex:I
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v6, p2}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 475
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v2, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v2, v2, p1

    const/4 v3, 0x1

    move v4, v1

    move v5, v1

    move v7, v1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 478
    :cond_4
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v9

    .restart local v9       #index:I
    goto :goto_1
.end method

.method public adjustSuggestedStreamVolume(III)V
    .locals 2
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"

    .prologue
    .line 438
    invoke-direct {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v0

    .line 441
    .local v0, streamType:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_0

    .line 442
    and-int/lit8 p3, p3, -0x5

    .line 445
    :cond_0
    invoke-virtual {p0, v0, p1, p3}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    .line 446
    return-void
.end method

.method public adjustVolume(II)V
    .locals 1
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 432
    const/high16 v0, -0x8000

    invoke-virtual {p0, p1, v0, p2}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(III)V

    .line 433
    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "method"

    .prologue
    .line 1425
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1427
    const/4 v1, 0x1

    .line 1433
    :goto_0
    return v1

    .line 1429
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1432
    .local v0, msg:Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAllScoClients()V
    .locals 5

    .prologue
    .line 1251
    iget-object v3, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1252
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1253
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1254
    iget-object v2, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$ScoClient;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 1253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1256
    :cond_0
    monitor-exit v3

    .line 1257
    return-void

    .line 1256
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2704
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 2705
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 2706
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 798
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRingerMode()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method public getScoClient(Landroid/os/IBinder;)Landroid/media/AudioService$ScoClient;
    .locals 6
    .parameter "cb"

    .prologue
    .line 1236
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1238
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1239
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1240
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 1241
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 1242
    monitor-exit v4

    move-object v1, v0

    .line 1246
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .local v1, client:Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 1239
    .end local v1           #client:Ljava/lang/Object;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1244
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    :cond_1
    new-instance v0, Landroid/media/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    .line 1245
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    monitor-exit v4

    move-object v1, v0

    .restart local v1       #client:Ljava/lang/Object;
    goto :goto_1

    .line 1247
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .end local v1           #client:Ljava/lang/Object;
    .end local v2           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 584
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 585
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 578
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 579
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getVibrateSetting(I)I
    .locals 2
    .parameter "vibrateType"

    .prologue
    .line 657
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isBluetoothScoOn()Z
    .locals 2

    .prologue
    .line 1107
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1108
    const/4 v0, 0x1

    .line 1110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1082
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 1085
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v2, 0x1

    .line 1335
    iget v0, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v2, 0x1

    .line 1327
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadSoundEffects()Z
    .locals 13

    .prologue
    .line 821
    iget-object v8, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 822
    :try_start_0
    iget-boolean v9, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v9, :cond_0

    .line 823
    const-string v9, "AudioService"

    const-string v10, "loadSoundEffects() called before boot complete"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v9, 0x0

    monitor-exit v8

    move v8, v9

    .line 930
    :goto_0
    return v8

    .line 827
    :cond_0
    iget-object v9, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v9, :cond_1

    .line 828
    const/4 v9, 0x1

    monitor-exit v8

    move v8, v9

    goto :goto_0

    .line 830
    :cond_1
    new-instance v9, Landroid/media/SoundPool;

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v9, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 831
    iget-object v9, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v9, :cond_2

    .line 832
    const-string v9, "AudioService"

    const-string v10, "loadSoundEffects() could not allocate sound pool"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/4 v9, 0x0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v9

    goto :goto_0

    .line 837
    :cond_2
    const/4 v9, 0x0

    :try_start_1
    iput-object v9, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    .line 838
    new-instance v9, Landroid/media/AudioService$SoundPoolListenerThread;

    invoke-direct {v9, p0}, Landroid/media/AudioService$SoundPoolListenerThread;-><init>(Landroid/media/AudioService;)V

    iput-object v9, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 839
    iget-object v9, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    invoke-virtual {v9}, Landroid/media/AudioService$SoundPoolListenerThread;->start()V

    .line 841
    iget-object v9, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 846
    :goto_1
    :try_start_2
    iget-object v9, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    if-nez v9, :cond_4

    .line 847
    const-string v9, "AudioService"

    const-string v10, "loadSoundEffects() could not create SoundPool listener or thread"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v9, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    if-eqz v9, :cond_3

    .line 849
    iget-object v9, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    invoke-virtual {v9}, Landroid/os/Looper;->quit()V

    .line 850
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 852
    :cond_3
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 853
    iget-object v9, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v9}, Landroid/media/SoundPool;->release()V

    .line 854
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 855
    const/4 v9, 0x0

    monitor-exit v8

    move v8, v9

    goto :goto_0

    .line 842
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 843
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v9, "AudioService"

    const-string v10, "Interrupted while waiting sound pool listener thread."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 929
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 863
    :cond_4
    :try_start_3
    sget-object v9, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v9, v9

    new-array v5, v9, [I

    .line 864
    .local v5, poolId:[I
    const/4 v2, 0x0

    .local v2, fileIdx:I
    :goto_2
    sget-object v9, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v9, v9

    if-ge v2, v9, :cond_5

    .line 865
    const/4 v9, -0x1

    aput v9, v5, v2

    .line 864
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 873
    :cond_5
    const/4 v4, 0x0

    .line 874
    .local v4, lastSample:I
    const/4 v1, 0x0

    .local v1, effect:I
    :goto_3
    const/16 v9, 0x9

    if-ge v1, v9, :cond_9

    .line 876
    iget-object v9, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v9, v9, v1

    const/4 v10, 0x1

    aget v9, v9, v10

    if-nez v9, :cond_6

    .line 874
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 879
    :cond_6
    iget-object v9, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v9, v9, v1

    const/4 v10, 0x0

    aget v9, v9, v10

    aget v9, v5, v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_8

    .line 880
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/media/audio/ui/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 883
    .local v3, filePath:Ljava/lang/String;
    iget-object v9, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    .line 884
    .local v6, sampleId:I
    if-gtz v6, :cond_7

    .line 885
    const-string v9, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Soundpool could not load file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 887
    :cond_7
    iget-object v9, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v9, v9, v1

    const/4 v10, 0x1

    aput v6, v9, v10

    .line 888
    iget-object v9, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v9, v9, v1

    const/4 v10, 0x0

    aget v9, v9, v10

    aput v6, v5, v9

    .line 889
    move v4, v6

    goto :goto_4

    .line 892
    .end local v3           #filePath:Ljava/lang/String;
    .end local v6           #sampleId:I
    :cond_8
    iget-object v9, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v9, v9, v1

    const/4 v10, 0x1

    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    aget v11, v5, v11

    aput v11, v9, v10

    goto :goto_4

    .line 896
    :cond_9
    if-eqz v4, :cond_c

    .line 897
    iget-object v9, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v9, v4}, Landroid/media/AudioService$SoundPoolCallback;->setLastSample(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 900
    :try_start_4
    iget-object v9, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V

    .line 901
    iget-object v9, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v9}, Landroid/media/AudioService$SoundPoolCallback;->status()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v7

    .line 910
    .local v7, status:I
    :goto_5
    :try_start_5
    iget-object v9, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    if-eqz v9, :cond_a

    .line 911
    iget-object v9, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    invoke-virtual {v9}, Landroid/os/Looper;->quit()V

    .line 912
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 914
    :cond_a
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 915
    if-eqz v7, :cond_f

    .line 916
    const-string v9, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadSoundEffects(), Error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v4, :cond_d

    iget-object v11, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v11}, Landroid/media/AudioService$SoundPoolCallback;->status()I

    move-result v11

    :goto_6
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " while loading samples"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v1, 0x0

    :goto_7
    const/16 v9, 0x9

    if-ge v1, v9, :cond_e

    .line 921
    iget-object v9, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v9, v9, v1

    const/4 v10, 0x1

    aget v9, v9, v10

    if-lez v9, :cond_b

    .line 922
    iget-object v9, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v9, v9, v1

    const/4 v10, 0x1

    const/4 v11, -0x1

    aput v11, v9, v10

    .line 920
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 902
    .end local v7           #status:I
    :catch_1
    move-exception v9

    move-object v0, v9

    .line 903
    .restart local v0       #e:Ljava/lang/InterruptedException;
    const-string v9, "AudioService"

    const-string v10, "Interrupted while waiting sound pool callback."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/4 v7, -0x1

    .line 905
    .restart local v7       #status:I
    goto :goto_5

    .line 907
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v7           #status:I
    :cond_c
    const/4 v7, -0x1

    .restart local v7       #status:I
    goto :goto_5

    .line 916
    :cond_d
    const/4 v11, -0x1

    goto :goto_6

    .line 926
    :cond_e
    iget-object v9, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v9}, Landroid/media/SoundPool;->release()V

    .line 927
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 929
    :cond_f
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 930
    if-nez v7, :cond_10

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 8
    .parameter "effectType"

    .prologue
    const/4 v2, -0x1

    .line 803
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v5, v2

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 805
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 8
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 809
    invoke-virtual {p0}, Landroid/media/AudioService;->loadSoundEffects()Z

    .line 810
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/high16 v4, 0x447a

    mul-float/2addr v4, p2

    float-to-int v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 812
    return-void
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "eventReceiver"

    .prologue
    .line 2684
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonEventReceiver() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v0

    .line 2687
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/AudioService;->pushMediaButtonReceiver(Landroid/content/ComponentName;)V

    .line 2688
    monitor-exit v0

    .line 2689
    return-void

    .line 2688
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reloadAudioSettings()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1018
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 1021
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    .line 1022
    .local v3, numStreamTypes:I
    const/4 v7, 0x0

    .local v7, streamType:I
    :goto_0
    if-ge v7, v3, :cond_5

    .line 1023
    iget-object v8, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v8, v7

    .line 1025
    .local v6, streamState:Landroid/media/AudioService$VolumeStreamState;
    sget-object v8, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v7

    aget-object v4, v8, v9

    .line 1026
    .local v4, settingName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_last_audible"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1027
    .local v2, lastAudibleSettingName:Ljava/lang/String;
    iget-object v8, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v9, v9, v7

    invoke-static {v8, v4, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1030
    .local v1, index:I
    iget-object v8, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v8, v8, v7

    if-eq v8, v7, :cond_0

    .line 1031
    mul-int/lit8 v8, v1, 0xa

    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v7

    invoke-direct {p0, v8, v9, v7}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 1035
    :goto_1
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v6, v1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v8

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v6, v8}, Landroid/media/AudioService$VolumeStreamState;->access$602(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1037
    add-int/lit8 v8, v1, 0x5

    div-int/lit8 v1, v8, 0xa

    .line 1038
    iget-object v8, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    if-lez v1, :cond_1

    move v9, v1

    :goto_2
    invoke-static {v8, v2, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1041
    iget-object v8, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v8, v8, v7

    if-eq v8, v7, :cond_2

    .line 1042
    mul-int/lit8 v8, v1, 0xa

    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v7

    invoke-direct {p0, v8, v9, v7}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 1046
    :goto_3
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v6, v1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v8

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v6, v8}, Landroid/media/AudioService$VolumeStreamState;->access$802(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1049
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0, v7}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1050
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$1700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1051
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v5, :cond_3

    .line 1052
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$1700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v9, 0x1

    #setter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v8, v9}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1802(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 1053
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$1700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-virtual {v8, v10}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    .line 1051
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1033
    .end local v0           #i:I
    .end local v5           #size:I
    :cond_0
    mul-int/lit8 v1, v1, 0xa

    goto :goto_1

    .line 1038
    :cond_1
    sget-object v9, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v9, v9, v7

    goto :goto_2

    .line 1044
    :cond_2
    mul-int/lit8 v1, v1, 0xa

    goto :goto_3

    .line 1057
    :cond_3
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    if-nez v8, :cond_4

    .line 1058
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 1022
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1063
    .end local v1           #index:I
    .end local v2           #lastAudibleSettingName:Ljava/lang/String;
    .end local v4           #settingName:Ljava/lang/String;
    .end local v6           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_5
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v8

    invoke-direct {p0, v8, v10}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1064
    return-void
.end method

.method public requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .locals 15
    .parameter "mainStreamType"
    .parameter "focusChangeHint"
    .parameter "cb"
    .parameter "fd"
    .parameter "clientId"

    .prologue
    .line 2432
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    const-string v3, "AudioFocus_For_Phone_Ring_And_Calls"

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2439
    :cond_0
    const-string v3, "AudioService"

    const-string v4, " AudioFocus  DOA client for requestAudioFocus(), exiting"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    const/4 v3, 0x0

    .line 2512
    :goto_0
    return v3

    .line 2443
    :cond_1
    sget-object v10, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2444
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2445
    const/4 v3, 0x0

    monitor-exit v10

    goto :goto_0

    .line 2477
    :catchall_0
    move-exception v3

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2448
    :cond_2
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2451
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget v3, v3, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    move v0, v3

    move/from16 v1, p2

    if-ne v0, v1, :cond_3

    .line 2452
    const/4 v3, 0x1

    monitor-exit v10

    goto :goto_0

    .line 2456
    :cond_3
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2460
    :cond_4
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_5

    .line 2462
    :try_start_2
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v4, v3, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    mul-int/lit8 v5, p2, -0x1

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2472
    :cond_5
    :goto_1
    const/4 v3, 0x0

    :try_start_3
    move-object v0, p0

    move-object/from16 v1, p5

    move v2, v3

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 2475
    iget-object v11, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    new-instance v3, Landroid/media/AudioService$FocusStackEntry;

    const/4 v6, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioService$FocusStackEntry;-><init>(IIZLandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2477
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2482
    const-string v3, "AudioFocus_For_Phone_Ring_And_Calls"

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2484
    const/4 v14, 0x0

    .line 2485
    .local v14, size:I
    const/4 v13, 0x0

    .line 2486
    .local v13, i:I
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2487
    :try_start_4
    iget-object v4, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2488
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_6

    .line 2489
    iget-object v4, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioService$AudioFocusDeathHandler;

    .line 2491
    .local v11, afdhandler:Landroid/media/AudioService$AudioFocusDeathHandler;
    invoke-virtual {v11}, Landroid/media/AudioService$AudioFocusDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_8

    .line 2495
    .end local v11           #afdhandler:Landroid/media/AudioService$AudioFocusDeathHandler;
    :cond_6
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2497
    if-ne v13, v14, :cond_7

    .line 2498
    new-instance v10, Landroid/media/AudioService$AudioFocusDeathHandler;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioFocusDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    .line 2501
    .local v10, afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    const/4 v3, 0x0

    :try_start_5
    move-object/from16 v0, p3

    move-object v1, v10

    move v2, v3

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2502
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2503
    :try_start_6
    iget-object v4, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2504
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2512
    .end local v10           #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    .end local v13           #i:I
    .end local v14           #size:I
    :cond_7
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2465
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 2466
    .local v12, e:Landroid/os/RemoteException;
    :try_start_7
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Failure to signal loss of focus due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 2488
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v11       #afdhandler:Landroid/media/AudioService$AudioFocusDeathHandler;
    .restart local v13       #i:I
    .restart local v14       #size:I
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2495
    .end local v11           #afdhandler:Landroid/media/AudioService$AudioFocusDeathHandler;
    :catchall_1
    move-exception v4

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v4

    .line 2504
    .restart local v10       #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    :catchall_2
    move-exception v4

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v4
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    .line 2505
    :catch_1
    move-exception v3

    move-object v12, v3

    .line 2507
    .restart local v12       #e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " binder death"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setBluetoothScoOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 1091
    const-string v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1103
    :goto_0
    return-void

    .line 1094
    :cond_0
    if-eqz p1, :cond_1

    .line 1095
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1096
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1097
    iput v2, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_0

    .line 1099
    :cond_1
    invoke-static {v1, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1100
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1101
    iput v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_0
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .locals 12
    .parameter "mode"
    .parameter "cb"

    .prologue
    const/4 v8, -0x1

    .line 738
    const-string/jumbo v7, "setMode()"

    invoke-virtual {p0, v7}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    if-lt p1, v8, :cond_0

    const/4 v7, 0x4

    if-ge p1, v7, :cond_0

    .line 746
    iget-object v7, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 747
    if-ne p1, v8, :cond_2

    .line 748
    :try_start_0
    iget p1, p0, Landroid/media/AudioService;->mMode:I

    .line 750
    :cond_2
    iget v8, p0, Landroid/media/AudioService;->mMode:I

    if-eq p1, v8, :cond_5

    .line 751
    invoke-static {p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v8

    if-nez v8, :cond_5

    .line 752
    iput p1, p0, Landroid/media/AudioService;->mMode:I

    .line 754
    iget-object v8, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    const/4 v2, 0x0

    .line 756
    .local v2, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :try_start_1
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 757
    .local v5, iter:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 758
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$SetModeDeathHandler;

    .line 759
    .local v1, h:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v1}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v9

    if-ne v9, p2, :cond_3

    .line 760
    move-object v2, v1

    .line 762
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v2

    .line 766
    .end local v1           #h:Landroid/media/AudioService$SetModeDeathHandler;
    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .local v3, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :goto_1
    if-nez v3, :cond_6

    .line 767
    :try_start_2
    new-instance v2, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-direct {v2, p0, p2}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 769
    .end local v3           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    if-eqz p2, :cond_4

    .line 772
    const/4 v9, 0x0

    :try_start_3
    invoke-interface {p2, v2, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 781
    :cond_4
    :goto_2
    :try_start_4
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 782
    invoke-virtual {v2, p1}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    .line 783
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 785
    if-eqz p1, :cond_5

    .line 786
    :try_start_5
    invoke-virtual {p0}, Landroid/media/AudioService;->clearAllScoClients()V

    .line 790
    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .end local v5           #iter:Ljava/util/Iterator;
    :cond_5
    const/high16 v8, -0x8000

    invoke-direct {p0, v8}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v6

    .line 791
    .local v6, streamType:I
    iget-object v8, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v6

    aget-object v8, v8, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v8}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    .line 792
    .local v4, index:I
    iget-object v8, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v8, v8, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v8, v4, v9, v10}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 793
    monitor-exit v7

    goto :goto_0

    .end local v4           #index:I
    .end local v6           #streamType:I
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    .line 773
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v5       #iter:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 775
    .local v0, e:Landroid/os/RemoteException;
    :try_start_6
    const-string v9, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setMode() could not link to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " binder death"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 783
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v5           #iter:Ljava/util/Iterator;
    :catchall_1
    move-exception v9

    :goto_3
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v3       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v5       #iter:Ljava/util/Iterator;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    goto :goto_3

    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v3       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_6
    move-object v2, v3

    .end local v3           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    goto :goto_2

    :cond_7
    move-object v3, v2

    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v3       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    goto :goto_1
.end method

.method public setRingerMode(I)V
    .locals 2
    .parameter "ringerMode"

    .prologue
    .line 595
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 596
    :try_start_0
    iget v1, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq p1, v1, :cond_0

    .line 597
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 599
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastRingerMode()V

    .line 601
    :cond_0
    monitor-exit v0

    .line 602
    return-void

    .line 601
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 3
    .parameter "on"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1068
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    :goto_0
    return-void

    .line 1071
    :cond_0
    if-eqz p1, :cond_1

    .line 1072
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1073
    iput v2, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_0

    .line 1075
    :cond_1
    invoke-static {v1, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1076
    iput v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_0
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .locals 1
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 571
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 574
    :cond_0
    return-void
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .locals 2
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 562
    const/4 v0, 0x0

    .local v0, stream:I
    :goto_0
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 563
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, p1, :cond_1

    .line 562
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 567
    :cond_2
    return-void
.end method

.method public setStreamVolume(III)V
    .locals 8
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 488
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 489
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v4, v4, p1

    aget-object v2, v3, v4

    .line 491
    .local v2, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    if-eqz v3, :cond_0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    move v1, v3

    .line 493
    .local v1, oldIndex:I
    :goto_0
    mul-int/lit8 v3, p2, 0xa

    iget-object v4, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v4, v4, p1

    invoke-direct {p0, v3, p1, v4}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 500
    iget-object v3, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "notifications_use_ring_volume"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 502
    .local v0, NotificationsUseRingVolume:I
    if-ne v0, v5, :cond_1

    if-ne v7, p1, :cond_1

    .line 503
    invoke-direct {p0, v7, p2, v6, v5}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 508
    :goto_1
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    if-eqz v3, :cond_2

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    move p2, v3

    .line 511
    :goto_2
    iget-object v3, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v3, p1, p3}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 513
    invoke-direct {p0, p1, v1, p2}, Landroid/media/AudioService;->sendVolumeUpdate(III)V

    .line 514
    return-void

    .line 491
    .end local v0           #NotificationsUseRingVolume:I
    .end local v1           #oldIndex:I
    :cond_0
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    move v1, v3

    goto :goto_0

    .line 505
    .restart local v0       #NotificationsUseRingVolume:I
    .restart local v1       #oldIndex:I
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v3, v3, p1

    invoke-direct {p0, v3, p2, v6, v5}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    goto :goto_1

    .line 508
    :cond_2
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    move p2, v3

    goto :goto_2
.end method

.method public setVibrateSetting(II)V
    .locals 8
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    const/4 v4, 0x0

    .line 663
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 666
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 670
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    move v5, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 672
    return-void
.end method

.method public shouldVibrate(I)Z
    .locals 3
    .parameter "vibrateType"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 638
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 651
    :goto_0
    return v0

    .line 641
    :pswitch_0
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 644
    :pswitch_1
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 648
    goto :goto_0

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 1116
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1121
    :goto_0
    return-void

    .line 1119
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1120
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->incCount()V

    goto :goto_0
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 1125
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 1128
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1129
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->decCount()V

    goto :goto_0
.end method

.method public unloadSoundEffects()V
    .locals 8

    .prologue
    const/16 v7, 0x9

    .line 939
    iget-object v3, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 940
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v4, :cond_0

    .line 941
    monitor-exit v3

    .line 965
    :goto_0
    return-void

    .line 944
    :cond_0
    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 945
    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 947
    sget-object v4, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v4, v4

    new-array v2, v4, [I

    .line 948
    .local v2, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_1
    sget-object v4, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 949
    const/4 v4, 0x0

    aput v4, v2, v1

    .line 948
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 952
    :cond_1
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_2
    if-ge v0, v7, :cond_4

    .line 953
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gtz v4, :cond_3

    .line 952
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 956
    :cond_3
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    aget v4, v2, v4

    if-nez v4, :cond_2

    .line 957
    iget-object v4, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 958
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 959
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, -0x1

    aput v5, v2, v4

    goto :goto_3

    .line 964
    .end local v0           #effect:I
    .end local v1           #fileIdx:I
    .end local v2           #poolId:[I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 962
    .restart local v0       #effect:I
    .restart local v1       #fileIdx:I
    .restart local v2       #poolId:[I
    :cond_4
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v4}, Landroid/media/SoundPool;->release()V

    .line 963
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 964
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .parameter "clientId"
    .parameter "cb"

    .prologue
    .line 2552
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2553
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1, v4}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 2555
    const-string v4, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2557
    iget-object v4, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2559
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2561
    iget-object v4, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$AudioFocusDeathHandler;

    .line 2563
    .local v0, afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    invoke-virtual {v0}, Landroid/media/AudioService$AudioFocusDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne p2, v4, :cond_1

    .line 2564
    const/4 v4, 0x0

    invoke-interface {p2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2565
    iget-object v4, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2570
    .end local v0           #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_0
    monitor-exit v3

    .line 2571
    return-void

    .line 2559
    .restart local v0       #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    .restart local v1       #i:I
    .restart local v2       #size:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2570
    .end local v0           #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "eventReceiver"

    .prologue
    .line 2693
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   unregisterMediaButtonEventReceiver() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v0

    .line 2696
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiver(Landroid/content/ComponentName;)V

    .line 2697
    monitor-exit v0

    .line 2698
    return-void

    .line 2697
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
