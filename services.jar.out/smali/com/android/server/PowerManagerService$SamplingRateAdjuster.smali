.class Lcom/android/server/PowerManagerService$SamplingRateAdjuster;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SamplingRateAdjuster"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerManagerService$SamplingRateAdjuster$CPUFreqDirFileFilter;
    }
.end annotation


# static fields
.field private static final CPU_DIR_PATH:Ljava/lang/String; = "/sys/devices/system/cpu"

.field private static final DEFAULT_RAMP_UP_SAMPLING_RATE:Ljava/lang/String; = "500000"

.field private static final REL_SAMPLING_RATE_PATH:Ljava/lang/String; = "cpufreq/ondemand/sampling_rate"


# instance fields
.field private mPrintWriterTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Ljava/io/PrintWriter;",
            ">;"
        }
    .end annotation
.end field

.field private mSamplingRateTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1619
    iput-object v0, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mSamplingRateTable:Ljava/util/HashMap;

    .line 1620
    iput-object v0, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mPrintWriterTable:Ljava/util/HashMap;

    .line 1785
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1615
    invoke-direct {p0}, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;-><init>()V

    return-void
.end method

.method private checkSamplingRateTableValidity()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1626
    iget-object v3, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mSamplingRateTable:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1628
    .local v2, samplingRateFileIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1630
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1632
    .local v1, samplingRateFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    move v3, v4

    .line 1640
    .end local v1           #samplingRateFile:Ljava/io/File;
    :goto_0
    return v3

    .line 1635
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, exception:Ljava/lang/Exception;
    move v3, v4

    .line 1636
    goto :goto_0

    .line 1640
    .end local v0           #exception:Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private populateSamplingRateTable()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-string v8, "PowerManagerService"

    .line 1719
    new-instance v0, Ljava/io/File;

    const-string v6, "/sys/devices/system/cpu"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1721
    .local v0, dirCPU:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1722
    const-string v6, "PowerManagerService"

    const-string v6, "populateSamplingRateTable failed.. doesn\'t exist."

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :cond_0
    :goto_0
    return-void

    .line 1726
    :cond_1
    new-instance v6, Lcom/android/server/PowerManagerService$SamplingRateAdjuster$CPUFreqDirFileFilter;

    invoke-direct {v6, v9}, Lcom/android/server/PowerManagerService$SamplingRateAdjuster$CPUFreqDirFileFilter;-><init>(Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v0, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1728
    .local v1, dirCPUCores:[Ljava/io/File;
    array-length v6, v1

    if-nez v6, :cond_2

    .line 1729
    const-string v6, "PowerManagerService"

    const-string v6, "No CPUFreq directories found."

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1737
    :cond_2
    const/4 v2, 0x0

    .local v2, dirCPUCoresOffset:I
    :goto_1
    :try_start_0
    array-length v6, v1

    if-ge v2, v6, :cond_0

    .line 1738
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cpufreq/ondemand/sampling_rate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1740
    .local v4, fileSamplingRate:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1741
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1743
    .local v5, samplingRateReader:Ljava/io/BufferedReader;
    iget-object v6, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mSamplingRateTable:Ljava/util/HashMap;

    if-nez v6, :cond_3

    .line 1744
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mSamplingRateTable:Ljava/util/HashMap;

    .line 1745
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mPrintWriterTable:Ljava/util/HashMap;

    .line 1748
    :cond_3
    iget-object v6, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mSamplingRateTable:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    iget-object v6, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mPrintWriterTable:Ljava/util/HashMap;

    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1737
    .end local v5           #samplingRateReader:Ljava/io/BufferedReader;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1753
    .end local v4           #fileSamplingRate:Ljava/io/File;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 1755
    .local v3, exception:Ljava/lang/Exception;
    const-string v6, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get current sampling rates. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    iput-object v9, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mSamplingRateTable:Ljava/util/HashMap;

    goto/16 :goto_0
.end method


# virtual methods
.method public decreaseSamplingRate()V
    .locals 8

    .prologue
    const-string v7, "PowerManagerService"

    .line 1685
    const-string v5, "dev.pm.dyn_samplingrate"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    .line 1712
    :cond_0
    :goto_0
    return-void

    .line 1689
    :cond_1
    iget-object v5, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mSamplingRateTable:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    .line 1690
    invoke-direct {p0}, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->checkSamplingRateTableValidity()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1691
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mSamplingRateTable:Ljava/util/HashMap;

    goto :goto_0

    .line 1696
    :cond_2
    iget-object v5, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mSamplingRateTable:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1698
    .local v4, samplingRateFileIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/io/File;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1700
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 1701
    .local v3, samplingRateFile:Ljava/io/File;
    iget-object v5, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mSamplingRateTable:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1702
    .local v2, samplingRate:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mPrintWriterTable:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/PrintWriter;

    .line 1704
    .local v1, printWriter:Ljava/io/PrintWriter;
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1705
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1706
    const-string v5, "PowerManagerService"

    const-string v6, "Decreasing sampling rate."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1707
    .end local v1           #printWriter:Ljava/io/PrintWriter;
    .end local v2           #samplingRate:Ljava/lang/String;
    .end local v3           #samplingRateFile:Ljava/io/File;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1708
    .local v0, exception:Ljava/lang/Exception;
    const-string v5, "PowerManagerService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1768
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mSamplingRateTable:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 1769
    iget-object v4, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mSamplingRateTable:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1771
    .local v3, samplingRateFileIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/io/File;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1772
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 1773
    .local v2, samplingRateFile:Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mPrintWriterTable:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/PrintWriter;

    .line 1775
    .local v1, printWriter:Ljava/io/PrintWriter;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1778
    .end local v1           #printWriter:Ljava/io/PrintWriter;
    .end local v2           #samplingRateFile:Ljava/io/File;
    .end local v3           #samplingRateFileIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/io/File;>;"
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1779
    .local v0, exception:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "PowerManagerService"

    const-string v5, "Error occurred while closing files."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1781
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1783
    .end local v0           #exception:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1781
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v4
.end method

.method public increaseSamplingRate()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v7, "PowerManagerService"

    .line 1647
    const-string v4, "dev.pm.dyn_samplingrate"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 1679
    :cond_0
    :goto_0
    return-void

    .line 1651
    :cond_1
    iget-object v4, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mSamplingRateTable:Ljava/util/HashMap;

    if-nez v4, :cond_2

    .line 1652
    invoke-direct {p0}, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->populateSamplingRateTable()V

    .line 1655
    :cond_2
    iget-object v4, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mSamplingRateTable:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 1656
    invoke-direct {p0}, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->checkSamplingRateTableValidity()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1657
    iput-object v6, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mSamplingRateTable:Ljava/util/HashMap;

    goto :goto_0

    .line 1662
    :cond_3
    iget-object v4, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mSamplingRateTable:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1664
    .local v3, samplingRateFileIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/io/File;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1666
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 1667
    .local v2, samplingRateFile:Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mPrintWriterTable:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/PrintWriter;

    .line 1669
    .local v1, printWriter:Ljava/io/PrintWriter;
    const-string v4, "500000"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1670
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1671
    const-string v4, "PowerManagerService"

    const-string v5, "Increasing sampling rate."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1672
    .end local v1           #printWriter:Ljava/io/PrintWriter;
    .end local v2           #samplingRateFile:Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1673
    .local v0, exception:Ljava/lang/Exception;
    const-string v4, "PowerManagerService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    iput-object v6, p0, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->mSamplingRateTable:Ljava/util/HashMap;

    goto :goto_1
.end method
