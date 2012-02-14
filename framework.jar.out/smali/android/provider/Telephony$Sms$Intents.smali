.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final CB_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CB_SMS_RECEIVED"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final EMERGENCY_CDMA_MESSAGE_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, -0x1

    .line 690
    const-string v8, "pdus"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 691
    .local v3, messages:[Ljava/lang/Object;
    array-length v8, v3

    new-array v6, v8, [[B

    .line 693
    .local v6, pduObjs:[[B
    const-string v8, "encoding"

    invoke-virtual {p0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 695
    .local v1, encoding:I
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_0
    array-length v8, v3

    if-ge v2, v8, :cond_0

    .line 696
    aget-object p0, v3, v2

    check-cast p0, [B

    check-cast p0, [B

    aput-object p0, v6, v2

    .line 695
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 698
    :cond_0
    array-length v8, v6

    new-array v7, v8, [[B

    .line 699
    .local v7, pdus:[[B
    array-length v5, v7

    .line 700
    .local v5, pduCount:I
    new-array v4, v5, [Landroid/telephony/SmsMessage;

    .line 701
    .local v4, msgs:[Landroid/telephony/SmsMessage;
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    .line 702
    aget-object v8, v6, v2

    aput-object v8, v7, v2

    .line 703
    if-eq v9, v1, :cond_1

    .line 704
    aget-object v8, v7, v2

    invoke-static {v8, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v8

    aput-object v8, v4, v2

    .line 701
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 706
    :cond_1
    aget-object v8, v7, v2

    invoke-static {v8}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v8

    aput-object v8, v4, v2

    goto :goto_2

    .line 709
    :cond_2
    return-object v4
.end method
