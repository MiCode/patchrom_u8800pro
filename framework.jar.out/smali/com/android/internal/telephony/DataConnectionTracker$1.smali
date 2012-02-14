.class Lcom/android/internal/telephony/DataConnectionTracker$1;
.super Ljava/lang/Thread;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/DataConnectionTracker;->setNTPTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0xa

    const-string v8, "Ntp Server = "

    const-string v8, " timeReference="

    const-string v8, "DATA"

    .line 630
    invoke-static {}, Lcom/android/internal/telephony/DataConnectionTracker;->access$000()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 631
    const/4 v3, 0x1

    .line 633
    .local v3, requestCountisMAX:Z
    :try_start_0
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 634
    .local v0, client:Landroid/net/SntpClient;
    const-string v9, "net.ntp.server"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, mNtpServer:Ljava/lang/String;
    const-string v9, "net.ntp.server2"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, mNtpServer2:Ljava/lang/String;
    const-string v9, "DATA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ntp Server = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v9, "DATA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ntp Server = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    if-nez v1, :cond_0

    if-eqz v2, :cond_2

    .line 639
    :cond_0
    :goto_0
    sget v9, Lcom/android/internal/telephony/DataConnectionTracker;->requestCount:I

    if-ge v9, v12, :cond_1

    .line 640
    const/16 v9, 0x1388

    invoke-virtual {v0, v1, v9}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 641
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    .line 642
    .local v4, time:J
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    .line 643
    .local v6, timeReference:J
    const-string v9, "DATA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "time="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " timeReference="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v9, "net.ntp.time"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v9, "net.ntp.timereference"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/4 v3, 0x0

    .line 676
    .end local v4           #time:J
    .end local v6           #timeReference:J
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 678
    const/4 v9, 0x0

    sput v9, Lcom/android/internal/telephony/DataConnectionTracker;->requestCount:I

    .line 683
    :cond_2
    monitor-exit v8

    .line 685
    return-void

    .line 651
    :cond_3
    const/16 v9, 0x1388

    invoke-virtual {v0, v2, v9}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 652
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    .line 653
    .restart local v4       #time:J
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    .line 654
    .restart local v6       #timeReference:J
    const-string v9, "DATA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "time="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " timeReference="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v9, "net.ntp.time"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v9, "net.ntp.timereference"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const/4 v3, 0x0

    .line 660
    goto :goto_1

    .line 663
    .end local v4           #time:J
    .end local v6           #timeReference:J
    :cond_4
    const-string v9, "DATA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "require time error,requestCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/internal/telephony/DataConnectionTracker;->requestCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    sget v9, Lcom/android/internal/telephony/DataConnectionTracker;->requestCount:I

    if-gt v9, v12, :cond_1

    .line 667
    sget v9, Lcom/android/internal/telephony/DataConnectionTracker;->requestCount:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/android/internal/telephony/DataConnectionTracker;->requestCount:I

    .line 668
    const-wide/16 v9, 0x7d0

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 670
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 683
    .end local v0           #client:Landroid/net/SntpClient;
    .end local v1           #mNtpServer:Ljava/lang/String;
    .end local v2           #mNtpServer2:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method
