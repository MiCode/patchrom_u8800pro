.class public Landroid/widget/MbdvTvSettings;
.super Ljava/lang/Object;
.source "MbdvTvSettings.java"


# static fields
.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final KEY_ALL_APPS:Ljava/lang/String; = "OUIT.allApps"

.field public static final KEY_APPLICATIONS:Ljava/lang/String; = "OUIT.Applications"

.field public static final KEY_BUTTON:Ljava/lang/String; = "OUIT.Button"

.field public static final KEY_CHECKABLE:Ljava/lang/String; = "OUIT.Checkable"

.field public static final KEY_CONTROLS:Ljava/lang/String; = "OUIT.Controls"

.field public static final KEY_CUST_APPS:Ljava/lang/String; = "OUIT.custApps"

.field public static final KEY_MENU:Ljava/lang/String; = "OUIT.Menu"

.field public static final KEY_OTHERS:Ljava/lang/String; = "OUIT.Others"

.field public static final KEY_STATUS:Ljava/lang/String; = "OUIT.Status"

.field static final TAG:Ljava/lang/String; = "MbdvTvSettings"

.field public static final TRUE:Ljava/lang/String; = "true"

.field public static mIncApps:Ljava/util/HashMap;
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

.field public static mbAllAps:Z

.field public static mbButton:Z

.field public static mbCheckable:Z

.field public static mbMenu:Z

.field public static mbOthers:Z

.field public static mbServiceStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Landroid/widget/MbdvTvSettings;->mbAllAps:Z

    .line 31
    sput-boolean v0, Landroid/widget/MbdvTvSettings;->mbServiceStatus:Z

    .line 32
    sput-boolean v0, Landroid/widget/MbdvTvSettings;->mbMenu:Z

    .line 33
    sput-boolean v0, Landroid/widget/MbdvTvSettings;->mbOthers:Z

    .line 34
    sput-boolean v0, Landroid/widget/MbdvTvSettings;->mbButton:Z

    .line 35
    sput-boolean v0, Landroid/widget/MbdvTvSettings;->mbCheckable:Z

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/MbdvTvSettings;->mIncApps:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static isIncludedApp(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "true"

    .line 96
    sget-boolean v2, Landroid/widget/MbdvTvSettings;->mbAllAps:Z

    if-ne v2, v5, :cond_0

    move v2, v5

    .line 120
    :goto_0
    return v2

    .line 98
    :cond_0
    sget-object v2, Landroid/widget/MbdvTvSettings;->mIncApps:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, status:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, settings:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 108
    sget-object v2, Landroid/widget/MbdvTvSettings;->mIncApps:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v5

    .line 109
    goto :goto_0

    .line 113
    :cond_1
    sget-object v2, Landroid/widget/MbdvTvSettings;->mIncApps:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v7

    .line 114
    goto :goto_0

    .line 120
    .end local v0           #settings:Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    move v2, v5

    goto :goto_0

    :cond_3
    move v2, v7

    goto :goto_0
.end method

.method public static readSettings(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v5, "true"

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "OUIT.Status"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 49
    sput-boolean v3, Landroid/widget/MbdvTvSettings;->mbServiceStatus:Z

    .line 55
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "OUIT.Menu"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 57
    sput-boolean v3, Landroid/widget/MbdvTvSettings;->mbMenu:Z

    .line 61
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "OUIT.Button"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_2

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 63
    sput-boolean v3, Landroid/widget/MbdvTvSettings;->mbButton:Z

    .line 67
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "OUIT.Checkable"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_3

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 69
    sput-boolean v3, Landroid/widget/MbdvTvSettings;->mbCheckable:Z

    .line 73
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "OUIT.Others"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_4

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 75
    sput-boolean v3, Landroid/widget/MbdvTvSettings;->mbOthers:Z

    .line 79
    :goto_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "OUIT.allApps"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_5

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 81
    sput-boolean v3, Landroid/widget/MbdvTvSettings;->mbAllAps:Z

    .line 86
    :goto_5
    sget-object v1, Landroid/widget/MbdvTvSettings;->mIncApps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 89
    return v3

    .line 52
    :cond_0
    sput-boolean v4, Landroid/widget/MbdvTvSettings;->mbServiceStatus:Z

    goto :goto_0

    .line 59
    :cond_1
    sput-boolean v4, Landroid/widget/MbdvTvSettings;->mbMenu:Z

    goto :goto_1

    .line 65
    :cond_2
    sput-boolean v4, Landroid/widget/MbdvTvSettings;->mbButton:Z

    goto :goto_2

    .line 71
    :cond_3
    sput-boolean v4, Landroid/widget/MbdvTvSettings;->mbCheckable:Z

    goto :goto_3

    .line 77
    :cond_4
    sput-boolean v4, Landroid/widget/MbdvTvSettings;->mbOthers:Z

    goto :goto_4

    .line 83
    :cond_5
    sput-boolean v4, Landroid/widget/MbdvTvSettings;->mbAllAps:Z

    goto :goto_5
.end method
