.class public Landroid/util/MBGlossaryManager;
.super Ljava/lang/Object;
.source "MBGlossaryManager.java"


# static fields
.field private static final KEY_GLOSSARY_PATH:Ljava/lang/String; = "OUIT.GLOSSARIES_PATH"

.field static final TAG:Ljava/lang/String; = "MBGlossaryManager"

.field private static mExtendedGlossary:Ljava/io/File;

.field private static mLocLang:Ljava/lang/String;

.field private static mLocs:[[Ljava/lang/String;

.field private static mTransCash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mUsingExtended:Z

.field private static mbLoadLibDone:Z

.field private static mbLoadSucceeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, ""

    .line 29
    sput-boolean v4, Landroid/util/MBGlossaryManager;->mbLoadSucceeded:Z

    .line 30
    sput-boolean v4, Landroid/util/MBGlossaryManager;->mbLoadLibDone:Z

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/util/MBGlossaryManager;->mTransCash:Ljava/util/HashMap;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Landroid/util/MBGlossaryManager;->mExtendedGlossary:Ljava/io/File;

    .line 37
    sput-boolean v5, Landroid/util/MBGlossaryManager;->mUsingExtended:Z

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ar"

    aput-object v2, v1, v4

    const-string v2, "AraEngRes"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "tr"

    aput-object v2, v1, v4

    const-string v2, "TurEngRes"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ru"

    aput-object v2, v1, v4

    const-string v2, "RusEngRes"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fa"

    aput-object v3, v2, v4

    const-string v3, "FarEngRes"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "he"

    aput-object v3, v2, v4

    const-string v3, "HebEngRes"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ur"

    aput-object v3, v2, v4

    const-string v3, "UrdEngRes"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ""

    aput-object v7, v2, v4

    const-string v3, ""

    aput-object v7, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Landroid/util/MBGlossaryManager;->mLocs:[[Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/MBGlossaryManager;->mLocLang:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native AddGlossary(Ljava/lang/String;I)Z
.end method

.method private static native GetResult()Ljava/lang/String;
.end method

.method private static native Initialize()Z
.end method

.method private static native RemoveGlossary(I)Z
.end method

.method private static native SearchWord(ILjava/lang/String;)Z
.end method

.method private static hasNoneEnChar(Ljava/lang/String;)Z
    .locals 3
    .parameter "word"

    .prologue
    .line 210
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 212
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    .line 215
    const/4 v1, 0x1

    .line 218
    :goto_1
    return v1

    .line 210
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isLibLoaded()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Landroid/util/MBGlossaryManager;->mbLoadSucceeded:Z

    return v0
.end method

.method private static loadGlossary(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v5, ".dat"

    const-string v10, "MBGlossaryManager"

    .line 110
    const/4 v1, 0x0

    .line 112
    .local v1, glsryFile:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, locLang:Ljava/lang/String;
    const-string v5, "MBGlossaryManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current Locale is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v5, Landroid/util/MBGlossaryManager;->mLocs:[[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_0

    .line 116
    sget-object v5, Landroid/util/MBGlossaryManager;->mLocs:[[Ljava/lang/String;

    aget-object v5, v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 118
    sget-object v5, Landroid/util/MBGlossaryManager;->mLocs:[[Ljava/lang/String;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    aget-object v1, v5, v6

    .line 122
    :cond_0
    if-nez v1, :cond_2

    .line 124
    const-string v5, "MBGlossaryManager"

    const-string v6, "Locale is not supported!!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 165
    .end local v3           #i:I
    .end local v4           #locLang:Ljava/lang/String;
    :goto_1
    return v5

    .line 114
    .restart local v3       #i:I
    .restart local v4       #locLang:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "OUIT.GLOSSARIES_PATH"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, glsryPath:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 133
    :cond_3
    const-string v2, "/system/data/"

    .line 134
    const/4 v5, 0x0

    sput-boolean v5, Landroid/util/MBGlossaryManager;->mUsingExtended:Z

    .line 135
    const-string v5, "MBGlossaryManager"

    const-string v6, "extended glossary not found, LSA not installed?"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_4
    :goto_2
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-ne v8, v5, :cond_5

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".idx"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eq v8, v5, :cond_7

    .line 147
    :cond_5
    const-string v5, "MBGlossaryManager"

    const-string v6, "Glossary file(s) not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 148
    goto :goto_1

    .line 137
    :cond_6
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eq v8, v5, :cond_4

    .line 139
    const-string v2, "/system/data/"

    .line 140
    const/4 v5, 0x0

    sput-boolean v5, Landroid/util/MBGlossaryManager;->mUsingExtended:Z

    .line 141
    const-string v5, "MBGlossaryManager"

    const-string v6, "extended glossary not found. trying default"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 162
    .end local v2           #glsryPath:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #locLang:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 164
    .local v0, ex:Ljava/lang/Exception;
    const-string v5, "MBGlossaryManager"

    const-string v5, "loadGlossary() failed."

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 165
    goto/16 :goto_1

    .line 153
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #glsryPath:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #locLang:Ljava/lang/String;
    :cond_7
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/util/MBGlossaryManager;->AddGlossary(Ljava/lang/String;I)Z

    move-result v5

    if-eq v8, v5, :cond_8

    .line 155
    const-string v5, "MBGlossaryManager"

    const-string v6, "AddGlossary() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 156
    goto/16 :goto_1

    .line 158
    :cond_8
    sget-boolean v5, Landroid/util/MBGlossaryManager;->mUsingExtended:Z

    if-ne v8, v5, :cond_9

    .line 159
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v5, Landroid/util/MBGlossaryManager;->mExtendedGlossary:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    move v5, v8

    .line 160
    goto/16 :goto_1
.end method

.method public static loadLib(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "MBGlossaryManager"

    .line 57
    sget-boolean v1, Landroid/util/MBGlossaryManager;->mbLoadLibDone:Z

    if-ne v3, v1, :cond_0

    sget-object v1, Landroid/util/MBGlossaryManager;->mLocLang:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v3, v1, :cond_0

    .line 61
    sget-boolean v1, Landroid/util/MBGlossaryManager;->mbLoadSucceeded:Z

    .line 86
    :goto_0
    return v1

    .line 63
    :cond_0
    sput-boolean v3, Landroid/util/MBGlossaryManager;->mbLoadLibDone:Z

    .line 64
    sput-boolean v4, Landroid/util/MBGlossaryManager;->mbLoadSucceeded:Z

    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/util/MBGlossaryManager;->mLocLang:Ljava/lang/String;

    .line 69
    :try_start_0
    const-string v1, "lib_glossary.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Landroid/util/MBGlossaryManager;->Initialize()Z

    move-result v1

    if-eq v3, v1, :cond_1

    .line 72
    const-string v1, "MBGlossaryManager"

    const-string v2, "Initialize() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-boolean v1, Landroid/util/MBGlossaryManager;->mbLoadSucceeded:Z

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {p0}, Landroid/util/MBGlossaryManager;->loadGlossary(Landroid/content/Context;)Z

    move-result v1

    if-eq v3, v1, :cond_2

    .line 78
    sget-boolean v1, Landroid/util/MBGlossaryManager;->mbLoadSucceeded:Z

    goto :goto_0

    .line 80
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Landroid/util/MBGlossaryManager;->mbLoadSucceeded:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    sget-boolean v1, Landroid/util/MBGlossaryManager;->mbLoadSucceeded:Z

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 83
    .local v0, th:Ljava/lang/Throwable;
    sput-boolean v4, Landroid/util/MBGlossaryManager;->mbLoadSucceeded:Z

    .line 84
    const-string v1, "MBGlossaryManager"

    const-string v1, "lib_glossary.so can\'t be loaded"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static reloadGlossary(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const-string v3, "MBGlossaryManager"

    .line 96
    :try_start_0
    sget-object v1, Landroid/util/MBGlossaryManager;->mTransCash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 97
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/util/MBGlossaryManager;->RemoveGlossary(I)Z

    move-result v1

    if-eq v2, v1, :cond_0

    .line 99
    const-string v1, "MBGlossaryManager"

    const-string v2, "RemoveGlossary() failed!!! trying relaod"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    invoke-static {p0}, Landroid/util/MBGlossaryManager;->loadGlossary(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 104
    :goto_0
    return v1

    .line 102
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 103
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MBGlossaryManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static translate(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "word"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 173
    :try_start_0
    invoke-static {p0}, Landroid/util/MBGlossaryManager;->hasNoneEnChar(Ljava/lang/String;)Z

    move-result v2

    if-ne v3, v2, :cond_1

    .line 175
    move-object v1, p0

    .line 206
    .local v1, translation:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 179
    .end local v1           #translation:Ljava/lang/String;
    :cond_1
    sget-object v2, Landroid/util/MBGlossaryManager;->mTransCash:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    .restart local v1       #translation:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 182
    sget-boolean v2, Landroid/util/MBGlossaryManager;->mUsingExtended:Z

    if-ne v3, v2, :cond_2

    sget-object v2, Landroid/util/MBGlossaryManager;->mExtendedGlossary:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 186
    invoke-static {p1}, Landroid/util/MBGlossaryManager;->reloadGlossary(Landroid/content/Context;)Z

    .line 188
    :cond_2
    const/4 v2, 0x1

    invoke-static {v2, p0}, Landroid/util/MBGlossaryManager;->SearchWord(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 190
    invoke-static {}, Landroid/util/MBGlossaryManager;->GetResult()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    sget-object v2, Landroid/util/MBGlossaryManager;->mTransCash:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    .end local v1           #translation:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 203
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "MBGlossaryManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object v1, p0

    .restart local v1       #translation:Ljava/lang/String;
    goto :goto_0

    .line 196
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    move-object v1, p0

    .line 197
    :try_start_1
    sget-object v2, Landroid/util/MBGlossaryManager;->mTransCash:Ljava/util/HashMap;

    invoke-virtual {v2, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
