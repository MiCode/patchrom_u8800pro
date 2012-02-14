.class public Landroid/widget/MbdvTvLang;
.super Ljava/lang/Object;
.source "MbdvTvLang.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MbdvTvLang$CachedStatus;
    }
.end annotation


# static fields
.field static final MAX_WORD_LENGTH:I = 0x32

.field static final TAG:Ljava/lang/String; = "MbdvTvLang"


# instance fields
.field private context:Landroid/content/Context;

.field private mTextView:Landroid/widget/TextView;

.field private mbTranslateStatus:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 1
    .parameter "tv"
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/widget/MbdvTvLang;->mTextView:Landroid/widget/TextView;

    .line 43
    iput-object p2, p0, Landroid/widget/MbdvTvLang;->context:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Landroid/widget/MbdvTvLang;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/widget/MbdvTvLang;->initService(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private menuChild()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 138
    iget-object v1, p0, Landroid/widget/MbdvTvLang;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 139
    .local v0, vParent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_3

    .line 140
    instance-of v1, v0, Lcom/android/internal/view/menu/ListMenuItemView;

    if-eqz v1, :cond_0

    move v1, v2

    .line 154
    :goto_1
    return v1

    .line 143
    :cond_0
    instance-of v1, v0, Lcom/android/internal/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_1

    move v1, v2

    .line 144
    goto :goto_1

    .line 146
    :cond_1
    if-eqz v0, :cond_2

    .line 152
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getText(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8
    .parameter "text"

    .prologue
    const/4 v4, 0x1

    const-string v7, "_"

    const-string v6, " "

    const-string v5, ""

    .line 67
    if-eqz p1, :cond_0

    const-string v3, ""

    if-ne p1, v5, :cond_1

    .line 70
    :cond_0
    const-string v3, ""

    move-object v3, v5

    .line 130
    :goto_0
    return-object v3

    .line 73
    :cond_1
    sget-boolean v0, Landroid/widget/MbdvTvSettings;->mbOthers:Z

    .line 75
    .local v0, bTranslate:Z
    iget-boolean v3, p0, Landroid/widget/MbdvTvLang;->mbTranslateStatus:Z

    if-eq v4, v3, :cond_2

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 85
    :cond_2
    iget-object v3, p0, Landroid/widget/MbdvTvLang;->mTextView:Landroid/widget/TextView;

    instance-of v3, v3, Landroid/widget/EditText;

    if-eqz v3, :cond_5

    .line 86
    const/4 v0, 0x0

    .line 115
    :cond_3
    :goto_1
    if-ne v4, v0, :cond_4

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v4, "_"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, tText:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x32

    if-ge v3, v4, :cond_4

    .line 118
    iget-object v3, p0, Landroid/widget/MbdvTvLang;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Landroid/util/MBGlossaryManager;->translate(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, tmp:Ljava/lang/String;
    const-string v3, "_"

    const-string v3, " "

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    .end local v1           #tText:Ljava/lang/String;
    .end local v2           #tmp:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 89
    :cond_5
    iget-object v3, p0, Landroid/widget/MbdvTvLang;->mTextView:Landroid/widget/TextView;

    instance-of v3, v3, Landroid/widget/Checkable;

    if-eqz v3, :cond_7

    .line 90
    sget-boolean v3, Landroid/widget/MbdvTvSettings;->mbCheckable:Z

    if-ne v4, v3, :cond_6

    .line 91
    const/4 v0, 0x1

    goto :goto_1

    .line 93
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 95
    :cond_7
    iget-object v3, p0, Landroid/widget/MbdvTvLang;->mTextView:Landroid/widget/TextView;

    instance-of v3, v3, Landroid/widget/Button;

    if-eqz v3, :cond_9

    .line 96
    sget-boolean v3, Landroid/widget/MbdvTvSettings;->mbButton:Z

    if-ne v4, v3, :cond_8

    .line 97
    const/4 v0, 0x1

    goto :goto_1

    .line 99
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 101
    :cond_9
    iget-object v3, p0, Landroid/widget/MbdvTvLang;->mTextView:Landroid/widget/TextView;

    instance-of v3, v3, Lcom/android/internal/widget/DialogTitle;

    if-eqz v3, :cond_b

    .line 102
    sget-boolean v3, Landroid/widget/MbdvTvSettings;->mbButton:Z

    if-ne v4, v3, :cond_a

    .line 103
    const/4 v0, 0x1

    goto :goto_1

    .line 105
    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    .line 107
    :cond_b
    iget-object v3, p0, Landroid/widget/MbdvTvLang;->mTextView:Landroid/widget/TextView;

    instance-of v3, v3, Lcom/android/internal/view/menu/IconMenuItemView;

    if-nez v3, :cond_c

    iget-object v3, p0, Landroid/widget/MbdvTvLang;->mTextView:Landroid/widget/TextView;

    instance-of v3, v3, Landroid/view/MenuItem;

    if-nez v3, :cond_c

    iget-object v3, p0, Landroid/widget/MbdvTvLang;->mTextView:Landroid/widget/TextView;

    instance-of v3, v3, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-nez v3, :cond_c

    invoke-direct {p0}, Landroid/widget/MbdvTvLang;->menuChild()Z

    move-result v3

    if-ne v4, v3, :cond_3

    .line 110
    :cond_c
    sget-boolean v3, Landroid/widget/MbdvTvSettings;->mbMenu:Z

    if-ne v4, v3, :cond_d

    .line 111
    const/4 v0, 0x1

    goto :goto_1

    .line 113
    :cond_d
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public initService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/MbdvTvLang;->mbTranslateStatus:Z

    .line 52
    invoke-static {p1}, Landroid/util/MBGlossaryManager;->loadLib(Landroid/content/Context;)Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 53
    invoke-static {p1}, Landroid/widget/MbdvTvSettings;->readSettings(Landroid/content/Context;)Z

    .line 54
    sget-boolean v0, Landroid/widget/MbdvTvSettings;->mbServiceStatus:Z

    if-ne v1, v0, :cond_0

    invoke-static {p1}, Landroid/widget/MbdvTvSettings;->isIncludedApp(Landroid/content/Context;)Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 56
    iput-boolean v1, p0, Landroid/widget/MbdvTvLang;->mbTranslateStatus:Z

    .line 62
    :cond_0
    return-void
.end method
