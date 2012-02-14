.class public Lcom/carrieriq/iqagent/client/android/ApplicationTypeMapper;
.super Ljava/lang/Object;
.source "ApplicationTypeMapper.java"


# static fields
.field public static final ANDROID_STD_PKG_ALARMCLOCK:Ljava/lang/String; = "com.android.alarmclock"

.field public static final ANDROID_STD_PKG_BROWSER:Ljava/lang/String; = "com.android.browser"

.field public static final ANDROID_STD_PKG_CALCULATOR:Ljava/lang/String; = "com.android.calculator2"

.field public static final ANDROID_STD_PKG_CALENDAR:Ljava/lang/String; = "com.android.calendar"

.field public static final ANDROID_STD_PKG_CAMERA:Ljava/lang/String; = "com.android.camera"

.field public static final ANDROID_STD_PKG_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field public static final ANDROID_STD_PKG_EMAIL:Ljava/lang/String; = "com.android.email"

.field public static final ANDROID_STD_PKG_GOOGLESEARCH:Ljava/lang/String; = "com.android.googlesearch"

.field public static final ANDROID_STD_PKG_HTMLVIEWER:Ljava/lang/String; = "com.android.htmlviewer"

.field public static final ANDROID_STD_PKG_IM:Ljava/lang/String; = "com.android.im"

.field public static final ANDROID_STD_PKG_LAUNCHER:Ljava/lang/String; = "com.android.launcher"

.field public static final ANDROID_STD_PKG_MMS:Ljava/lang/String; = "com.android.mms"

.field public static final ANDROID_STD_PKG_MUSIC:Ljava/lang/String; = "com.android.music"

.field public static final ANDROID_STD_PKG_PACKAGEINSTALLER:Ljava/lang/String; = "com.android.packageinstaller"

.field public static final ANDROID_STD_PKG_PHONE:Ljava/lang/String; = "com.android.phone"

.field public static final ANDROID_STD_PKG_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field public static final ANDROID_STD_PKG_SOUNDRECORDER:Ljava/lang/String; = "com.android.soundrecorder"

.field public static final ANDROID_STD_PKG_VOICEDIALER:Ljava/lang/String; = "com.android.voicedialer"

.field private static map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/carrieriq/iqagent/client/android/ApplicationTypeMapper;->map:Ljava/util/HashMap;

    .line 30
    sget-object v0, Lcom/carrieriq/iqagent/client/android/ApplicationTypeMapper;->map:Ljava/util/HashMap;

    const-string v1, "com.android.alarmclock"

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/carrieriq/iqagent/client/android/ApplicationTypeMapper;->map:Ljava/util/HashMap;

    const-string v1, "com.android.browser"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/carrieriq/iqagent/client/android/ApplicationTypeMapper;->map:Ljava/util/HashMap;

    const-string v1, "com.android.calculator2"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/carrieriq/iqagent/client/android/ApplicationTypeMapper;->map:Ljava/util/HashMap;

    const-string v1, "com.android.calendar"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/carrieriq/iqagent/client/android/ApplicationTypeMapper;->map:Ljava/util/HashMap;

    const-string v1, "com.android.camera"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/carrieriq/iqagent/client/android/ApplicationTypeMapper;->map:Ljava/util/HashMap;

    const-string v1, "com.android.contacts"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/carrieriq/iqagent/client/android/ApplicationTypeMapper;->map:Ljava/util/HashMap;

    const-string v1, "com.android.email"

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/carrieriq/iqagent/client/android/ApplicationTypeMapper;->map:Ljava/util/HashMap;

    const-string v1, "com.android.mms"

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/carrieriq/iqagent/client/android/ApplicationTypeMapper;->map:Ljava/util/HashMap;

    const-string v1, "com.android.music"

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/carrieriq/iqagent/client/android/ApplicationTypeMapper;->map:Ljava/util/HashMap;

    const-string v1, "com.android.phone"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/carrieriq/iqagent/client/android/ApplicationTypeMapper;->map:Ljava/util/HashMap;

    const-string v1, "com.android.settings"

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/carrieriq/iqagent/client/android/ApplicationTypeMapper;->map:Ljava/util/HashMap;

    const-string v1, "com.android.soundrecorder"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeForPackage(Ljava/lang/String;)B
    .locals 2
    .parameter "pkg"

    .prologue
    .line 45
    if-nez p0, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    .line 46
    .end local p0
    .local v0, b:Ljava/lang/Byte;
    :goto_0
    if-nez v0, :cond_1

    const/16 v1, 0x16

    .line 47
    :goto_1
    return v1

    .line 45
    .end local v0           #b:Ljava/lang/Byte;
    .restart local p0
    :cond_0
    sget-object v1, Lcom/carrieriq/iqagent/client/android/ApplicationTypeMapper;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Byte;

    move-object v0, p0

    goto :goto_0

    .line 47
    .restart local v0       #b:Ljava/lang/Byte;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_1
.end method
