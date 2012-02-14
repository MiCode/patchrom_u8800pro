.class public Lcom/android/server/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final LOG_SIZE:I = 0x10000

.field private static final OLD_UPDATER_CLASS:Ljava/lang/String; = "com.google.android.systemupdater.SystemUpdateReceiver"

.field private static final OLD_UPDATER_PACKAGE:Ljava/lang/String; = "com.google.android.systemupdater"

.field private static final RAW_DATA_SIZE:I = 0x48

.field private static final TAG:Ljava/lang/String; = "BootReceiver"

.field private static final TOMBSTONE_DIR:Ljava/io/File;

.field private static isApanic:Z

.field private static isTombstone:Z

.field private static mIntent:Landroid/content/Intent;

.field private static sTombstoneObserver:Landroid/os/FileObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    .line 67
    sput-boolean v2, Lcom/android/server/BootReceiver;->isApanic:Z

    .line 68
    sput-boolean v2, Lcom/android/server/BootReceiver;->isTombstone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->removeOldUpdatePackages(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Ljava/io/File;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static/range {p0 .. p5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .parameter "db"
    .parameter "prefs"
    .parameter "headers"
    .parameter "filename"
    .parameter "maxSize"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 248
    if-eqz p0, :cond_0

    invoke-virtual {p0, p5}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 252
    .local v1, fileTime:J
    cmp-long v6, v1, v8

    if-lez v6, :cond_0

    .line 254
    if-eqz p1, :cond_2

    .line 255
    invoke-interface {p1, p3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 256
    .local v3, lastTime:J
    cmp-long v6, v3, v1

    if-eqz v6, :cond_0

    .line 259
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, p3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 263
    .end local v3           #lastTime:J
    :cond_2
    const-string v6, "[[TRUNCATED]]\n"

    invoke-static {v0, p4, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, textContent:Ljava/lang/String;
    sget-boolean v6, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    if-eqz v6, :cond_4

    .line 266
    const-string v6, "/data/dontpanic/apanic_console"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 268
    sput-boolean v7, Lcom/android/server/BootReceiver;->isApanic:Z

    .line 269
    invoke-static {v5}, Lcom/android/server/BootReceiver;->getRawData(Ljava/lang/String;)V

    .line 271
    :cond_3
    const-string v6, "SYSTEM_TOMBSTONE"

    invoke-virtual {p5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 273
    sput-boolean v7, Lcom/android/server/BootReceiver;->isTombstone:Z

    .line 277
    :cond_4
    const-string v6, "BootReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Copying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to DropBox ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p5, v6}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getRawData(Ljava/lang/String;)V
    .locals 10
    .parameter "textContent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x48

    const-string v9, ": "

    .line 203
    new-array v0, v8, [B

    .line 205
    .local v0, bin:[B
    const/4 v1, 0x0

    .line 206
    .local v1, char_num:I
    const/4 v3, 0x0

    .line 208
    .local v3, i:I
    const-string v6, "Stack: (0x"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 209
    .local v5, start:I
    if-gez v5, :cond_0

    .line 211
    const-string v6, "BootReceiver"

    const-string v7, "Can\'t find raw data."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v6, ": "

    add-int/lit8 v6, v5, 0x9

    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 217
    .local v4, index:I
    :cond_1
    if-ge v1, v8, :cond_4

    .line 220
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2

    .line 222
    const-string v6, ": "

    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 225
    :cond_2
    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_3

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 232
    :cond_3
    add-int/lit8 v6, v4, 0x8

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 234
    .local v2, hexdump:[B
    add-int/lit8 v4, v4, 0x8

    .line 236
    const/4 v3, 0x0

    :goto_2
    const/4 v6, 0x4

    if-ge v3, v6, :cond_1

    .line 238
    aget-byte v6, v2, v3

    aput-byte v6, v0, v1

    .line 239
    add-int/lit8 v1, v1, 0x1

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 242
    .end local v2           #hexdump:[B
    :cond_4
    sget-object v6, Lcom/android/server/BootReceiver;->mIntent:Landroid/content/Intent;

    const-string v7, "raw_data"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0
.end method

.method private logBootEvents(Landroid/content/Context;)V
    .locals 14
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const-string v3, "dropbox"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 112
    .local v0, db:Landroid/os/DropBoxManager;
    const-string v3, "log_files"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 113
    .local v1, prefs:Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x200

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Build: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Hardware: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Bootloader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Radio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->RADIO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Kernel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/version"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x400

    const-string v6, "...\n"

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, headers:Ljava/lang/String;
    sget-boolean v3, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    if-eqz v3, :cond_0

    .line 124
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.carrieriq.iqagent.service.action.ACTION_EXCEPTION_RESET"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/android/server/BootReceiver;->mIntent:Landroid/content/Intent;

    .line 127
    :cond_0
    invoke-static {}, Landroid/os/RecoverySystem;->handleAftermath()Ljava/lang/String;

    move-result-object v12

    .line 128
    .local v12, recovery:Ljava/lang/String;
    if-eqz v12, :cond_1

    if-eqz v0, :cond_1

    .line 129
    const-string v3, "SYSTEM_RECOVERY_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-boolean v3, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    if-eqz v3, :cond_1

    .line 133
    const-string v3, "BootReceiver"

    const-string v4, "submit HW12 & HW13 for FACTORY_DATA_RESET"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v3, Lcom/android/server/BootReceiver;->mIntent:Landroid/content/Intent;

    const-string v4, "reset_cause"

    const/16 v5, 0x19

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 135
    sget-object v3, Lcom/android/server/BootReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 140
    :cond_1
    const-string v3, "ro.runtime.firstboot"

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 142
    .local v11, now:Ljava/lang/String;
    const-string v3, "ro.runtime.firstboot"

    invoke-static {v3, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    if-eqz v0, :cond_2

    const-string v3, "SYSTEM_BOOT"

    invoke-virtual {v0, v3, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_2
    const-string v3, "/proc/last_kmsg"

    const/high16 v4, -0x1

    const-string v5, "SYSTEM_LAST_KMSG"

    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    const-string v3, "/cache/recovery/log"

    const/high16 v4, -0x1

    const-string v5, "SYSTEM_RECOVERY_LOG"

    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 150
    const-string v3, "/data/dontpanic/apanic_console"

    const/high16 v4, -0x1

    const-string v5, "APANIC_CONSOLE"

    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 152
    const-string v3, "/data/dontpanic/apanic_threads"

    const/high16 v4, -0x1

    const-string v5, "APANIC_THREADS"

    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 155
    sget-boolean v3, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    sget-boolean v4, Lcom/android/server/BootReceiver;->isApanic:Z

    if-ne v3, v4, :cond_3

    .line 157
    const-string v3, "BootReceiver"

    const-string v4, "submit HW12 & HW13 for APANIC"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v3, Lcom/android/server/BootReceiver;->mIntent:Landroid/content/Intent;

    const-string v4, "reset_cause"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 159
    sget-object v3, Lcom/android/server/BootReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 167
    .end local v11           #now:Ljava/lang/String;
    :cond_3
    :goto_0
    sget-object v3, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 168
    .local v13, tombstoneFiles:[Ljava/io/File;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-eqz v13, :cond_5

    array-length v3, v13

    if-ge v10, v3, :cond_5

    .line 169
    aget-object v3, v13, v10

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x1

    const-string v5, "SYSTEM_TOMBSTONE"

    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 163
    .end local v10           #i:I
    .end local v13           #tombstoneFiles:[Ljava/io/File;
    :cond_4
    if-eqz v0, :cond_3

    const-string v3, "SYSTEM_RESTART"

    invoke-virtual {v0, v3, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    .restart local v10       #i:I
    .restart local v13       #tombstoneFiles:[Ljava/io/File;
    :cond_5
    sget-boolean v3, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    if-eqz v3, :cond_6

    .line 175
    const/4 v3, 0x1

    sget-boolean v4, Lcom/android/server/BootReceiver;->isTombstone:Z

    if-ne v3, v4, :cond_6

    .line 177
    const-string v3, "BootReceiver"

    const-string v4, "submit HW12 & HW13 for SYSTEM_TOMBSTONE"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v3, Lcom/android/server/BootReceiver;->mIntent:Landroid/content/Intent;

    const-string v4, "reset_cause"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 179
    sget-object v3, Lcom/android/server/BootReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 185
    :cond_6
    new-instance v3, Lcom/android/server/BootReceiver$2;

    sget-object v4, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    move-object v4, p0

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/BootReceiver$2;-><init>(Lcom/android/server/BootReceiver;Ljava/lang/String;ILandroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    sput-object v3, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    .line 197
    sget-object v3, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->startWatching()V

    .line 198
    return-void
.end method

.method private removeOldUpdatePackages(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 106
    const-string v0, "com.google.android.systemupdater"

    const-string v1, "com.google.android.systemupdater.SystemUpdateReceiver"

    invoke-static {p1, v0, v1}, Landroid/net/Downloads$ByUri;->removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 78
    .local v2, res:Landroid/content/ContentResolver;
    const-string v3, "show_processes"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/server/LoadAverageService;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v1, loadavg:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1           #loadavg:Landroid/content/Intent;
    .end local v2           #res:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    new-instance v3, Lcom/android/server/BootReceiver$1;

    invoke-direct {v3, p0, p1}, Lcom/android/server/BootReceiver$1;-><init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/server/BootReceiver$1;->start()V

    .line 103
    return-void

    .line 82
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 83
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "BootReceiver"

    const-string v4, "Can\'t start load average service"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
