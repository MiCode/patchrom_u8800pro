.class final Landroid/widget/NumberPicker$1;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString(I)Ljava/lang/String;
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v1, mBuilder:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 74
    .local v2, mFmt:Ljava/util/Formatter;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    .line 75
    .local v0, mArgs:[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 77
    const-string v3, "%02d"

    invoke-virtual {v2, v3, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 78
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
