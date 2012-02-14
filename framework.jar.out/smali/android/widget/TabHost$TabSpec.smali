.class public Landroid/widget/TabHost$TabSpec;
.super Ljava/lang/Object;
.source "TabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentStrategy:Landroid/widget/TabHost$ContentStrategy;

.field private mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "tag"

    .prologue
    .line 430
    iput-object p1, p0, Landroid/widget/TabHost$TabSpec;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p2, p0, Landroid/widget/TabHost$TabSpec;->mTag:Ljava/lang/String;

    .line 432
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/widget/TabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 423
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost$TabSpec;-><init>(Landroid/widget/TabHost;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 423
    iget-object v0, p0, Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 423
    iget-object v0, p0, Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Landroid/widget/TabHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(I)Landroid/widget/TabHost$TabSpec;
    .locals 3
    .parameter "viewId"

    .prologue
    .line 463
    new-instance v0, Landroid/widget/TabHost$ViewIdContentStrategy;

    iget-object v1, p0, Landroid/widget/TabHost$TabSpec;->this$0:Landroid/widget/TabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/widget/TabHost$ViewIdContentStrategy;-><init>(Landroid/widget/TabHost;ILandroid/widget/TabHost$1;)V

    iput-object v0, p0, Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;

    .line 464
    return-object p0
.end method

.method public setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;
    .locals 4
    .parameter "intent"

    .prologue
    .line 480
    new-instance v0, Landroid/widget/TabHost$IntentContentStrategy;

    iget-object v1, p0, Landroid/widget/TabHost$TabSpec;->this$0:Landroid/widget/TabHost;

    iget-object v2, p0, Landroid/widget/TabHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/widget/TabHost$IntentContentStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/content/Intent;Landroid/widget/TabHost$1;)V

    iput-object v0, p0, Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;

    .line 481
    return-object p0
.end method

.method public setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;
    .locals 3
    .parameter "contentFactory"

    .prologue
    .line 472
    new-instance v0, Landroid/widget/TabHost$FactoryContentStrategy;

    iget-object v1, p0, Landroid/widget/TabHost$TabSpec;->this$0:Landroid/widget/TabHost;

    iget-object v2, p0, Landroid/widget/TabHost$TabSpec;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/TabHost$FactoryContentStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/widget/TabHost$TabContentFactory;)V

    iput-object v0, p0, Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;

    .line 473
    return-object p0
.end method

.method public setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
    .locals 3
    .parameter "view"

    .prologue
    .line 454
    new-instance v0, Landroid/widget/TabHost$ViewIndicatorStrategy;

    iget-object v1, p0, Landroid/widget/TabHost$TabSpec;->this$0:Landroid/widget/TabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/widget/TabHost$ViewIndicatorStrategy;-><init>(Landroid/widget/TabHost;Landroid/view/View;Landroid/widget/TabHost$1;)V

    iput-object v0, p0, Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;

    .line 455
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;
    .locals 3
    .parameter "label"

    .prologue
    .line 438
    new-instance v0, Landroid/widget/TabHost$LabelIndicatorStrategy;

    iget-object v1, p0, Landroid/widget/TabHost$TabSpec;->this$0:Landroid/widget/TabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/widget/TabHost$LabelIndicatorStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/widget/TabHost$1;)V

    iput-object v0, p0, Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;

    .line 439
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;
    .locals 3
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 446
    new-instance v0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;

    iget-object v1, p0, Landroid/widget/TabHost$TabSpec;->this$0:Landroid/widget/TabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/widget/TabHost$1;)V

    iput-object v0, p0, Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;

    .line 447
    return-object p0
.end method
