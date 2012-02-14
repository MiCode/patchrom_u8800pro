.class public final Lcom/android/internal/telephony/EcnDataProcessor$Ecn;
.super Ljava/lang/Object;
.source "EcnDataProcessor.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/EcnDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ecn"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DIGITS:Ljava/lang/String; = "digits"

.field public static final HEXCODE:Ljava/lang/String; = "hexcode"

.field public static final OPERATOR:Ljava/lang/String; = "operator"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final USSDCODE:Ljava/lang/String; = "ussdcode"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-string v0, "content://ecn/ecn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/EcnDataProcessor$Ecn;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
