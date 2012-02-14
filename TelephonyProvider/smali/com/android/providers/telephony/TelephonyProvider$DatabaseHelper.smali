.class Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 122
    const-string v0, "telephony.db"

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getVersion(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 123
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private getNumMatchRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 20
    .parameter "parser"

    .prologue
    .line 449
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 450
    .local v10, prof_type:Ljava/lang/String;
    const-string v17, "numMatch"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 451
    const/16 v17, 0x0

    .line 504
    :goto_0
    return-object v17

    .line 453
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 455
    .local v3, map:Landroid/content/ContentValues;
    const/16 v17, 0x0

    const-string v18, "mcc"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, mcc:Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "mnc"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 457
    .local v5, mnc:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 458
    .local v9, numeric:Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 459
    .local v6, name:Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "num_match"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 460
    .local v13, temp_num:Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "num_match_short"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 463
    .local v14, temp_num_short:Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "sms_7bit_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 464
    .local v15, temp_sms_7bit_enabled:Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "sms_coding_national"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 465
    .local v16, temp_sms_coding_national:Ljava/lang/String;
    const/4 v7, 0x0

    .line 466
    .local v7, num_match:I
    const/4 v8, 0x0

    .line 467
    .local v8, num_match_short:I
    const/4 v11, 0x0

    .line 468
    .local v11, sms_7bit_enabled:I
    const/4 v12, 0x0

    .line 472
    .local v12, sms_coding_national:I
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 477
    :goto_1
    :try_start_1
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 482
    :goto_2
    :try_start_2
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v11

    .line 487
    :goto_3
    :try_start_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v12

    .line 491
    :goto_4
    const-string v17, "TelephonyProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "create numMatchs table: numeric = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",num_match = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",num_match_short = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",sms_7bit_enabled = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",sms_coding_national = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v17, "numeric"

    move-object v0, v3

    move-object/from16 v1, v17

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v17, "mcc"

    move-object v0, v3

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v17, "mnc"

    move-object v0, v3

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v17, "name"

    move-object v0, v3

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v17, "num_match"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v3

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const-string v17, "num_match_short"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v3

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 500
    const-string v17, "sms_7bit_enabled"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v3

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    const-string v17, "sms_coding_national"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v3

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v17, v3

    .line 504
    goto/16 :goto_0

    .line 473
    :catch_0
    move-exception v17

    goto/16 :goto_1

    .line 478
    :catch_1
    move-exception v17

    goto/16 :goto_2

    .line 483
    :catch_2
    move-exception v17

    goto/16 :goto_3

    .line 488
    :catch_3
    move-exception v17

    goto/16 :goto_4
.end method

.method private getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 27
    .parameter "parser"

    .prologue
    .line 318
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 319
    .local v19, prof_type:Ljava/lang/String;
    const-string v24, "apn"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 320
    const/16 v24, 0x0

    .line 437
    :goto_0
    return-object v24

    .line 323
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 325
    .local v9, map:Landroid/content/ContentValues;
    const/16 v24, 0x0

    const-string v25, "mcc"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 326
    .local v10, mcc:Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, "mnc"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 327
    .local v13, mnc:Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 329
    .local v14, numeric:Ljava/lang/String;
    const-string v24, "numeric"

    move-object v0, v9

    move-object/from16 v1, v24

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v24, "mcc"

    move-object v0, v9

    move-object/from16 v1, v24

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v24, "mnc"

    move-object v0, v9

    move-object/from16 v1, v24

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v24, "name"

    const/16 v25, 0x0

    const-string v26, "carrier"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/16 v24, 0x1

    const-string v25, "ro.config.hw_getPassFromNv"

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    .line 338
    const-string v24, "ro.cdma.home.operator.numeric"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object v0, v14

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 340
    const/16 v24, 0x7f

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 341
    .local v18, pppUser:[B
    invoke-static/range {v18 .. v18}, Lcom/huawei/android/hwnv/HWNVFuncation;->getPPPUser([B)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move v7, v0

    .line 342
    .local v7, iUserLength:I
    const/16 v24, -0x1

    move/from16 v0, v24

    move v1, v7

    if-eq v0, v1, :cond_b

    .line 343
    new-instance v23, Ljava/lang/String;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move/from16 v2, v24

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 344
    .local v23, user:Ljava/lang/String;
    const-string v24, "TelephonyProvider"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ppp username is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-eqz v23, :cond_a

    .line 346
    const-string v24, "user"

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .end local v23           #user:Ljava/lang/String;
    :goto_1
    const/16 v24, 0x7f

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 356
    .local v17, pppPassword:[B
    invoke-static/range {v17 .. v17}, Lcom/huawei/android/hwnv/HWNVFuncation;->getPPPPassword([B)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move v6, v0

    .line 357
    .local v6, iPasswordLength:I
    const/16 v24, -0x1

    move/from16 v0, v24

    move v1, v6

    if-eq v0, v1, :cond_d

    .line 358
    new-instance v15, Ljava/lang/String;

    const/16 v24, 0x0

    move-object v0, v15

    move-object/from16 v1, v17

    move/from16 v2, v24

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 359
    .local v15, password:Ljava/lang/String;
    const-string v24, "TelephonyProvider"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ppp password is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    if-eqz v15, :cond_c

    .line 361
    const-string v24, "password"

    move-object v0, v9

    move-object/from16 v1, v24

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .end local v6           #iPasswordLength:I
    .end local v7           #iUserLength:I
    .end local v15           #password:Ljava/lang/String;
    .end local v17           #pppPassword:[B
    .end local v18           #pppUser:[B
    :goto_2
    const/16 v24, 0x0

    const-string v25, "proxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 382
    .local v20, proxy:Ljava/lang/String;
    if-eqz v20, :cond_1

    .line 383
    const-string v24, "proxy"

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_1
    const/16 v24, 0x0

    const-string v25, "port"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 386
    .local v16, port:Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 387
    const-string v24, "port"

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_2
    const/16 v24, 0x0

    const-string v25, "mmsproxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 390
    .local v12, mmsproxy:Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 391
    const-string v24, "mmsproxy"

    move-object v0, v9

    move-object/from16 v1, v24

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_3
    const/16 v24, 0x0

    const-string v25, "mmsport"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 394
    .local v11, mmsport:Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 395
    const-string v24, "mmsport"

    move-object v0, v9

    move-object/from16 v1, v24

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_4
    const-string v24, "mmsc"

    const/16 v25, 0x0

    const-string v26, "mmsc"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const/16 v24, 0x0

    const-string v25, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 399
    .local v22, type:Ljava/lang/String;
    if-eqz v22, :cond_5

    .line 400
    const-string v24, "type"

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_5
    const/16 v24, 0x0

    const-string v25, "authtype"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 404
    .local v5, auth:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 405
    const-string v24, "authtype"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 408
    :cond_6
    const/16 v24, 0x0

    const-string v25, "apn"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, apn:Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 410
    const-string v24, "apn"

    move-object v0, v9

    move-object/from16 v1, v24

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_7
    const/16 v24, 0x0

    const-string v25, "server"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 414
    .local v21, server:Ljava/lang/String;
    if-eqz v21, :cond_8

    .line 415
    const-string v24, "server"

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_8
    const/16 v24, 0x0

    const-string v25, "ipversion"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 419
    .local v8, ipver:Ljava/lang/String;
    if-eqz v8, :cond_9

    .line 420
    const-string v24, "ipversion"

    move-object v0, v9

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_9
    const-string v24, "visible"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v24, v9

    .line 437
    goto/16 :goto_0

    .line 348
    .end local v4           #apn:Ljava/lang/String;
    .end local v5           #auth:Ljava/lang/String;
    .end local v8           #ipver:Ljava/lang/String;
    .end local v11           #mmsport:Ljava/lang/String;
    .end local v12           #mmsproxy:Ljava/lang/String;
    .end local v16           #port:Ljava/lang/String;
    .end local v20           #proxy:Ljava/lang/String;
    .end local v21           #server:Ljava/lang/String;
    .end local v22           #type:Ljava/lang/String;
    .restart local v7       #iUserLength:I
    .restart local v18       #pppUser:[B
    .restart local v23       #user:Ljava/lang/String;
    :cond_a
    const-string v24, "user"

    const-string v25, " "

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 351
    .end local v23           #user:Ljava/lang/String;
    :cond_b
    const-string v24, "user"

    const-string v25, " "

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 363
    .restart local v6       #iPasswordLength:I
    .restart local v15       #password:Ljava/lang/String;
    .restart local v17       #pppPassword:[B
    :cond_c
    const-string v24, "password"

    const-string v25, " "

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 366
    .end local v15           #password:Ljava/lang/String;
    :cond_d
    const-string v24, "password"

    const-string v25, " "

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 370
    .end local v6           #iPasswordLength:I
    .end local v7           #iUserLength:I
    .end local v17           #pppPassword:[B
    .end local v18           #pppUser:[B
    :cond_e
    const-string v24, "user"

    const/16 v25, 0x0

    const-string v26, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v24, "password"

    const/16 v25, 0x0

    const-string v26, "password"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 375
    :cond_f
    const-string v24, "user"

    const/16 v25, 0x0

    const-string v26, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v24, "password"

    const/16 v25, 0x0

    const-string v26, "password"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static getVersion(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const/high16 v6, 0x6

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 129
    .local v3, r:Landroid/content/res/Resources;
    const/high16 v4, 0x605

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 131
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v4, "apns"

    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 132
    const/4 v4, 0x0

    const-string v5, "version"

    invoke-interface {v1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 133
    .local v2, publicversion:I
    or-int v4, v6, v2

    .line 138
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .end local v2           #publicversion:I
    :goto_0
    return v4

    .line 134
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 135
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "TelephonyProvider"

    const-string v5, "Can\'t get version of APN database"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    move v4, v6

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v4
.end method

.method private initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    const-string v10, "version"

    const-string v10, "apns"

    const-string v10, "TelephonyProvider"

    .line 225
    iget-object v10, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 226
    .local v9, r:Landroid/content/res/Resources;
    const/high16 v10, 0x605

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 227
    .local v7, parser:Landroid/content/res/XmlResourceParser;
    const/4 v8, -0x1

    .line 229
    .local v8, publicversion:I
    :try_start_0
    const-string v10, "apns"

    invoke-static {v7, v10}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 230
    const/4 v10, 0x0

    const-string v11, "version"

    invoke-interface {v7, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 231
    invoke-direct {p0, p1, v7}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadProfiles(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 235
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 239
    :goto_0
    const/4 v2, 0x0

    .line 242
    .local v2, confparser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v0, 0x0

    .line 243
    .local v0, confFile:Ljava/io/File;
    const/4 v1, 0x0

    .line 244
    .local v1, confFileCust:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1           #confFileCust:Ljava/io/File;
    const-string v10, "/data/cust/"

    const-string v11, "xml/apns-conf.xml"

    invoke-direct {v1, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .restart local v1       #confFileCust:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 246
    move-object v0, v1

    .line 251
    :goto_1
    const/4 v3, 0x0

    .line 253
    .local v3, confreader:Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 254
    .end local v3           #confreader:Ljava/io/FileReader;
    .local v4, confreader:Ljava/io/FileReader;
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 255
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 256
    const-string v10, "apns"

    invoke-static {v2, v10}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 259
    const/4 v10, 0x0

    const-string v11, "version"

    invoke-interface {v2, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 260
    .local v5, confversion:I
    if-eq v8, v5, :cond_2

    .line 261
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Internal APNS file version doesn\'t match "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 266
    .end local v5           #confversion:I
    :catch_0
    move-exception v10

    move-object v3, v4

    .line 272
    .end local v4           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :goto_2
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 274
    :cond_0
    :goto_3
    return-void

    .line 232
    .end local v0           #confFile:Ljava/io/File;
    .end local v1           #confFileCust:Ljava/io/File;
    .end local v2           #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v3           #confreader:Ljava/io/FileReader;
    :catch_1
    move-exception v10

    move-object v6, v10

    .line 233
    .local v6, e:Ljava/lang/Exception;
    :try_start_4
    const-string v10, "TelephonyProvider"

    const-string v11, "Got exception while loading APN database."

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 235
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    throw v10

    .line 248
    .restart local v0       #confFile:Ljava/io/File;
    .restart local v1       #confFileCust:Ljava/io/File;
    .restart local v2       #confparser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0           #confFile:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    const-string v11, "etc/apns-conf.xml"

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0       #confFile:Ljava/io/File;
    goto :goto_1

    .line 265
    .restart local v4       #confreader:Ljava/io/FileReader;
    .restart local v5       #confversion:I
    :cond_2
    :try_start_5
    invoke-direct {p0, p1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadProfiles(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 272
    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    move-object v3, v4

    .end local v4           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    goto :goto_3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v4       #confreader:Ljava/io/FileReader;
    :catch_2
    move-exception v10

    move-object v3, v4

    .line 273
    .end local v4           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    goto :goto_3

    .line 269
    .end local v5           #confversion:I
    :catch_3
    move-exception v10

    move-object v6, v10

    .line 270
    .restart local v6       #e:Ljava/lang/Exception;
    :goto_4
    :try_start_7
    const-string v10, "TelephonyProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception while parsing \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 272
    if-eqz v3, :cond_0

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    :catch_4
    move-exception v10

    goto :goto_3

    .end local v6           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    :goto_5
    if-eqz v3, :cond_4

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_6
    throw v10

    :catch_5
    move-exception v10

    goto :goto_3

    :catch_6
    move-exception v11

    goto :goto_6

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v4       #confreader:Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v3, v4

    .end local v4           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    goto :goto_5

    .line 269
    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v4       #confreader:Ljava/io/FileReader;
    :catch_7
    move-exception v10

    move-object v6, v10

    move-object v3, v4

    .end local v4           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    goto :goto_4

    .line 266
    :catch_8
    move-exception v10

    goto :goto_2
.end method

.method private initNumDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 197
    .local v1, confparser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "etc/numMatchs-conf.xml"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    .local v0, confFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 202
    .local v2, confreader:Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 203
    .end local v2           #confreader:Ljava/io/FileReader;
    .local v3, confreader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 204
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 205
    const-string v5, "numMatchs"

    invoke-static {v1, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, p1, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadNumMatchProfiles(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 214
    if-eqz v3, :cond_0

    .line 215
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 220
    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    :cond_1
    :goto_0
    return-void

    .line 216
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_0
    move-exception v5

    move-object v2, v3

    .line 219
    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_0

    .line 207
    :catch_1
    move-exception v5

    .line 214
    :goto_1
    if-eqz v2, :cond_1

    .line 215
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 216
    :catch_2
    move-exception v5

    goto :goto_0

    .line 210
    :catch_3
    move-exception v5

    move-object v4, v5

    .line 211
    .local v4, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v5, "TelephonyProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while parsing \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    if-eqz v2, :cond_1

    .line 215
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 216
    :catch_4
    move-exception v5

    goto :goto_0

    .line 213
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 214
    :goto_3
    if-eqz v2, :cond_2

    .line 215
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 218
    :cond_2
    :goto_4
    throw v5

    .line 216
    :catch_5
    move-exception v6

    goto :goto_4

    .line 213
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_3

    .line 210
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_6
    move-exception v5

    move-object v4, v5

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_2

    .line 207
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_7
    move-exception v5

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_1
.end method

.method private insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "db"
    .parameter "table"
    .parameter "row"

    .prologue
    const-string v1, "authtype"

    .line 568
    const-string v0, "authtype"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    const-string v0, "authtype"

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 579
    :cond_0
    const-string v0, "carriers"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 580
    return-void
.end method

.method private insertAddingNumDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "db"
    .parameter "table"
    .parameter "row"

    .prologue
    .line 535
    const-string v0, "numMatchs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 536
    return-void
.end method

.method private loadNumMatchProfiles(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .parameter "db"
    .parameter "parser"

    .prologue
    const-string v4, "TelephonyProvider"

    const-string v3, "Got execption while getting perferred time zone."

    .line 515
    if-eqz p2, :cond_0

    .line 518
    :goto_0
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 519
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getNumMatchRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v1

    .line 520
    .local v1, row:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 521
    const-string v2, "numMatchs"

    invoke-direct {p0, p1, v2, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->insertAddingNumDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 526
    .end local v1           #row:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 527
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "TelephonyProvider"

    const-string v2, "Got execption while getting perferred time zone."

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_0
    :goto_1
    return-void

    .line 528
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 529
    .local v0, e:Ljava/io/IOException;
    const-string v2, "TelephonyProvider"

    const-string v2, "Got execption while getting perferred time zone."

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private loadProfiles(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .parameter "db"
    .parameter "parser"

    .prologue
    const-string v4, "TelephonyProvider"

    const-string v3, "Got execption while getting perferred time zone."

    .line 547
    if-eqz p2, :cond_0

    .line 550
    :goto_0
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 551
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v1

    .line 552
    .local v1, row:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 553
    const-string v2, "carriers"

    invoke-direct {p0, p1, v2, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 558
    .end local v1           #row:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 559
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "TelephonyProvider"

    const-string v2, "Got execption while getting perferred time zone."

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_0
    :goto_1
    return-void

    .line 560
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 561
    .local v0, e:Ljava/io/IOException;
    const-string v2, "TelephonyProvider"

    const-string v2, "Got execption while getting perferred time zone."

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 146
    const-string v0, "CREATE TABLE carriers(_id INTEGER PRIMARY KEY,name TEXT,numeric TEXT,mcc TEXT,mnc TEXT,apn TEXT,user TEXT,server TEXT,password TEXT,proxy TEXT,port TEXT,mmsproxy TEXT,mmsport TEXT,mmsc TEXT,authtype INTEGER,type TEXT,ipversion TEXT,current INTEGER,protocol TEXT,roaming_protocol TEXT,visible INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 171
    const-string v0, "CREATE TABLE numMatchs(_id INTEGER PRIMARY KEY,name TEXT,mcc TEXT,mnc TEXT,numeric TEXT,num_match INTEGER,num_match_short INTEGER,sms_7bit_enabled INTEGER,sms_coding_national INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initNumDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 188
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 278
    const v0, 0x50006

    if-ge p2, v0, :cond_0

    .line 294
    const-string v0, "ALTER TABLE carriers ADD COLUMN authtype INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 296
    const-string v0, "ALTER TABLE carriers ADD COLUMN ipversion TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 298
    const p2, 0x50006

    .line 300
    :cond_0
    const v0, 0x60006

    if-ge p2, v0, :cond_1

    .line 302
    const-string v0, "ALTER TABLE carriers ADD COLUMN protocol TEXT DEFAULT IP;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    const-string v0, "ALTER TABLE carriers ADD COLUMN roaming_protocol TEXT DEFAULT IP;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 306
    const p2, 0x60006

    .line 308
    :cond_1
    return-void
.end method
