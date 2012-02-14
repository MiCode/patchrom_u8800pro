.class public Lcom/android/internal/policy/impl/TLockScreenFactory;
.super Ljava/lang/Object;
.source "TLockScreenFactory.java"


# static fields
.field public static final DBG:Z = true

.field public static final LOCKSCREEN_LAYOUT:Ljava/lang/String; = "lock_screen"

.field public static final LOCKSCREEN_LAYOUT_LAND:Ljava/lang/String; = "lock_screen_land"

.field public static final LOCKSCRREN_ACTION:Ljava/lang/String; = "com.huawei.intent.action.LOCKSCREEN_SET"

.field public static final LOCKSCRREN_CATEGORY:Ljava/lang/String; = "com.huawei.intent.category.LOCKSCREEN"

.field public static final TAG:Ljava/lang/String; = "TLockScreenFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createContextWithPkg(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    const-string v5, "TLockScreenFactory"

    .line 150
    const-string v2, "TLockScreenFactory"

    const-string v2, "start to createContext with package"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-eqz p1, :cond_1

    .line 155
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 157
    .local v0, c:Landroid/content/Context;
    const-string v2, "TLockScreenFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package name is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v2, "TLockScreenFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Context gotten is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_0

    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_1
    const-string v2, "TLockScreenFactory"

    const-string v2, "end createContext, "

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-object v0

    .line 158
    :cond_0
    :try_start_1
    const-string v4, "not null"
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 160
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 161
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "TLockScreenFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "can not be found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v2, "TLockScreenFactory"

    const-string v2, "Context is set to the outer one."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    .line 165
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_1

    .line 167
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_1
.end method

.method public static createLockScreenWidthPkg(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Configuration;)Landroid/view/View;
    .locals 12
    .parameter "context"
    .parameter "packageName"
    .parameter "config"

    .prologue
    const/4 v9, 0x0

    const-string v11, "null"

    const-string v10, "not null"

    const-string v8, "TLockScreenFactory"

    .line 113
    const-string v6, "TLockScreenFactory"

    const-string v6, "start to create lock screen"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/TLockScreenFactory;->createContextWithPkg(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 116
    .local v2, layoutContext:Landroid/content/Context;
    if-nez v2, :cond_0

    move-object v6, v9

    .line 145
    :goto_0
    return-object v6

    .line 120
    :cond_0
    const-string v6, "TLockScreenFactory"

    const-string v6, "start to create layout inflater for the context."

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 122
    .local v1, inflater:Landroid/view/LayoutInflater;
    const-string v6, "TLockScreenFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "end create layout inflater for the context. inflater is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v1, :cond_1

    const-string v7, "null"

    move-object v7, v11

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :try_start_0
    const-string v6, "TLockScreenFactory"

    const-string v7, "start to set factory."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v6, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;

    invoke-direct {v6, p1}, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 129
    const-string v6, "TLockScreenFactory"

    const-string v7, "end set factory."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    :goto_2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 137
    .local v4, resources:Landroid/content/res/Resources;
    invoke-static {p2, p1}, Lcom/android/internal/policy/impl/TLockScreenFactory;->genLayoutResNameWithPkg(Landroid/content/res/Configuration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v9, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 140
    .local v3, layoutResId:I
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 142
    .local v5, v:Landroid/view/View;
    const-string v6, "TLockScreenFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "end create lock screen. v is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v5, :cond_2

    const-string v7, "null"

    move-object v7, v11

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 145
    goto :goto_0

    .line 122
    .end local v3           #layoutResId:I
    .end local v4           #resources:Landroid/content/res/Resources;
    .end local v5           #v:Landroid/view/View;
    :cond_1
    const-string v7, "not null"

    move-object v7, v10

    goto :goto_1

    .line 130
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 131
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 132
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 133
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 142
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v3       #layoutResId:I
    .restart local v4       #resources:Landroid/content/res/Resources;
    .restart local v5       #v:Landroid/view/View;
    :cond_2
    const-string v7, "not null"

    move-object v7, v10

    goto :goto_3
.end method

.method public static createUserDefinedLockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)Landroid/view/View;
    .locals 7
    .parameter "c"
    .parameter "config"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "keyguardScreenCallback"

    .prologue
    const-string v6, "TLockScreenFactory"

    .line 40
    const/4 v4, 0x0

    .line 45
    .local v4, v:Landroid/view/View;
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/policy/impl/TLockScreenFactory;->getRecentLockScreenPkg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, strPkg:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 47
    invoke-static {p0, v2, p1}, Lcom/android/internal/policy/impl/TLockScreenFactory;->createLockScreenWidthPkg(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Configuration;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 56
    .end local v2           #strPkg:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    instance-of v5, v4, Lcom/android/internal/policy/impl/KeyguardScreen;

    if-nez v5, :cond_1

    .line 57
    const-string v5, "TLockScreenFactory"

    const-string v5, "The root view has not implements KeyguardScreen"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v4, 0x0

    .line 62
    :cond_1
    if-eqz v4, :cond_2

    .line 63
    instance-of v5, v4, Lcom/android/internal/policy/impl/TLockScreenConfig;

    if-eqz v5, :cond_3

    .line 64
    move-object v0, v4

    check-cast v0, Lcom/android/internal/policy/impl/TLockScreenConfig;

    move-object v3, v0

    .line 65
    .local v3, tConfig:Lcom/android/internal/policy/impl/TLockScreenConfig;
    invoke-interface {v3}, Lcom/android/internal/policy/impl/TLockScreenConfig;->startConfig()V

    .line 66
    invoke-interface {v3, p1}, Lcom/android/internal/policy/impl/TLockScreenConfig;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 67
    invoke-interface {v3, p2}, Lcom/android/internal/policy/impl/TLockScreenConfig;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 68
    invoke-interface {v3, p3}, Lcom/android/internal/policy/impl/TLockScreenConfig;->setUpdateMonitor(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 69
    invoke-interface {v3, p4}, Lcom/android/internal/policy/impl/TLockScreenConfig;->setCallback(Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 70
    invoke-interface {v3}, Lcom/android/internal/policy/impl/TLockScreenConfig;->finishConfig()V

    .line 76
    .end local v3           #tConfig:Lcom/android/internal/policy/impl/TLockScreenConfig;
    :cond_2
    :goto_1
    return-object v4

    .line 49
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 50
    .local v1, e:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v1           #e:Ljava/lang/Throwable;
    :cond_3
    const-string v5, "TLockScreenFactory"

    const-string v5, "The root view has not implements TLockScreenConfig"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static genLayoutResNameWithPkg(Landroid/content/res/Configuration;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "config"
    .parameter "packageName"

    .prologue
    const-string v3, ":layout/"

    .line 178
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":layout/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lock_screen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, strRes:Ljava/lang/String;
    :goto_0
    const-string v1, "TLockScreenFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Layout resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-object v0

    .line 181
    .end local v0           #strRes:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":layout/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lock_screen_land"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #strRes:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getRecentLockScreenPkg(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "c"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    const-string v6, "TLockScreenFactory"

    .line 80
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.huawei.intent.action.LOCKSCREEN_SET"

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 81
    .local v2, lsIntent:Landroid/content/Intent;
    const-string v4, "com.huawei.intent.category.LOCKSCREEN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 84
    .local v1, installedLockScreens:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    move v3, v7

    .line 86
    .local v3, size:I
    :goto_0
    if-ge v3, v8, :cond_1

    .line 87
    const-string v4, "TLockScreenFactory"

    const-string v4, "none user-defined lock screen package can be gotten for none such package is installed."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 105
    :goto_1
    return-object v4

    .line 84
    .end local v3           #size:I
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 96
    .restart local v3       #size:I
    :cond_1
    sub-int v4, v3, v8

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 97
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_2

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 101
    :cond_2
    const-string v4, "TLockScreenFactory"

    const-string v4, "none correct user-defined lock screen package can be gotten for the resolveInfo gotten is null."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 102
    goto :goto_1

    .line 104
    :cond_3
    const-string v4, "TLockScreenFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user-defined lockscreen package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1
.end method
