.class Lcom/android/server/PowerManagerService$SamplingRateAdjuster$CPUFreqDirFileFilter;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService$SamplingRateAdjuster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CPUFreqDirFileFilter"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "cpu"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1785
    invoke-direct {p0}, Lcom/android/server/PowerManagerService$SamplingRateAdjuster$CPUFreqDirFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 7
    .parameter "file"

    .prologue
    const/4 v6, 0x0

    const-string v5, "cpu"

    .line 1790
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1792
    .local v0, filename:Ljava/lang/String;
    const-string v3, "cpu"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "cpu"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 1793
    const-string v3, "cpu"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1796
    .local v2, suffix:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1802
    const/4 v3, 0x1

    .line 1804
    .end local v2           #suffix:Ljava/lang/String;
    :goto_0
    return v3

    .line 1797
    .restart local v2       #suffix:Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, numberFormatException:Ljava/lang/NumberFormatException;
    move v3, v6

    .line 1798
    goto :goto_0

    .end local v1           #numberFormatException:Ljava/lang/NumberFormatException;
    .end local v2           #suffix:Ljava/lang/String;
    :cond_0
    move v3, v6

    .line 1804
    goto :goto_0
.end method
