.class public Lcom/android/providers/telephony/MmsSmsProvider;
.super Landroid/content/ContentProvider;
.source "MmsSmsProvider.java"


# static fields
.field private static final CANONICAL_ADDRESSES_COLUMNS_1:[Ljava/lang/String;

.field private static final CANONICAL_ADDRESSES_COLUMNS_2:[Ljava/lang/String;

.field private static final CANONICAL_ADDRESSES_COLUMNS_3:[Ljava/lang/String;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final MMS_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MMS_ONLY_COLUMNS:[Ljava/lang/String;

.field private static final MMS_SMS_COLUMNS:[Ljava/lang/String;

.field private static final SMS_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_ONLY_COLUMNS:[Ljava/lang/String;

.field private static final THREADS_COLUMNS:[Ljava/lang/String;

.field private static final UNION_COLUMNS:[Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mUseStrictPhoneNumberComparation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "mms-sms"

    .line 79
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 125
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "read"

    aput-object v1, v0, v6

    const-string v1, "thread_id"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "locked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    .line 130
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ct_cls"

    aput-object v1, v0, v4

    const-string v1, "ct_l"

    aput-object v1, v0, v5

    const-string v1, "ct_t"

    aput-object v1, v0, v6

    const-string v1, "d_rpt"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "m_cls"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "m_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "read_status"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "resp_st"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "resp_txt"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "retr_st"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "retr_txt_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "rpt_a"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "tr_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "v"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    .line 141
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "body"

    aput-object v1, v0, v5

    const-string v1, "person"

    aput-object v1, v0, v6

    const-string v1, "reply_path_present"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "service_center"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "error_code"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "recipient_ids"

    aput-object v1, v0, v6

    const-string v1, "message_count"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->THREADS_COLUMNS:[Ljava/lang/String;

    .line 153
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_1:[Ljava/lang/String;

    .line 156
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_2:[Ljava/lang/String;

    .line 160
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "recent"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_3:[Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    .line 183
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->ID_PROJECTION:[Ljava/lang/String;

    .line 186
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 200
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "conversations"

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 201
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "complete-conversations"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "conversations/#"

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "conversations/#/recipients"

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "conversations/#/subject"

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "conversations/obsolete"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "messages/byphone/*"

    invoke-virtual {v0, v3, v1, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 224
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "threadID"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "canonical-address/#"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 230
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "canonical-addresses"

    const/16 v2, 0xd

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 234
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "canonical-recentor/"

    const/16 v2, 0x13

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "canonical-recentores/"

    const/16 v2, 0x12

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "search"

    const/16 v2, 0xe

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 239
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "searchSuggest"

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "pending"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "undelivered"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 257
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "notifications"

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 259
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "draft"

    const/16 v2, 0xc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 261
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "locked"

    const/16 v2, 0x10

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "locked/#"

    const/16 v2, 0x11

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 265
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->initializeColumnSets()V

    .line 266
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1185
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1187
    .local v5, mmsProjection:[Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1188
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v15, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v15}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1190
    .local v15, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1191
    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1192
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1193
    const-string v6, "sms"

    invoke-virtual {v15, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1195
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1196
    .local v18, smsColumns:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1197
    .local p0, mmsColumns:[Ljava/lang/String;
    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    .end local v5           #mmsProjection:[Ljava/lang/String;
    move-result-object v6

    .line 1198
    .local v6, innerMmsProjection:[Ljava/lang/String;
    const/16 p0, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    .end local p0           #mmsColumns:[Ljava/lang/String;
    move-result-object p0

    .line 1200
    .local p0, innerSmsProjection:[Ljava/lang/String;
    new-instance v7, Ljava/util/HashSet;

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1201
    .local v7, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "pdu._id"

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1202
    const-string v5, "err_type"

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1204
    const-string v5, "msg_box != 3"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1206
    .local v10, mmsSelection:Ljava/lang/String;
    const-string v5, "transport_type"

    const/4 v8, 0x0

    const-string v9, "mms"

    const-string v11, "(msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    invoke-static {v10, v11}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .end local v10           #mmsSelection:Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p2

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1211
    .local v4, mmsSubQuery:Ljava/lang/String;
    const-string v9, "transport_type"

    sget-object v11, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v12, 0x0

    const-string v13, "sms"

    const-string v5, "(type != 3)"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v15

    move-object/from16 v10, p0

    move-object/from16 v15, p2

    invoke-virtual/range {v8 .. v17}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v15           #smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    move-result-object p0

    .line 1215
    .local p0, smsSubQuery:Ljava/lang/String;
    new-instance p1, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local p1
    invoke-direct/range {p1 .. p1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1217
    .local p1, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/16 p2, 0x1

    invoke-virtual/range {p1 .. p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1219
    .end local p2
    const/16 p2, 0x2

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p2, v0

    const/4 v5, 0x0

    aput-object p0, p2, v5

    const/16 p0, 0x1

    aput-object v4, p2, p0

    .end local p0           #smsSubQuery:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullSortOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v4           #mmsSubQuery:Ljava/lang/String;
    move-result-object p0

    .line 1223
    .local p0, unionQuery:Ljava/lang/String;
    new-instance v8, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1225
    .local v8, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "("

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #unionQuery:Ljava/lang/String;
    const-string p1, ")"

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1227
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, v18

    move-object/from16 v14, p3

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "selection1"
    .parameter "selection2"

    .prologue
    .line 744
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 749
    :goto_0
    return-object v0

    .line 746
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 747
    goto :goto_0

    .line 749
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "old"

    .prologue
    .line 1105
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 1106
    .local v1, newProjection:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1107
    aget-object v2, p0, v0

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1108
    const-string v2, "pdu._id"

    aput-object v2, v1, v0

    .line 1106
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1110
    :cond_0
    aget-object v2, p0, v0

    aput-object v2, v1, v0

    goto :goto_1

    .line 1113
    :cond_1
    return-object v1
.end method

.method private deleteConversation(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1291
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 1293
    .local v2, threadId:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1294
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1295
    .local v1, finalSelection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1, p3, p1}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I

    move-result v3

    const-string v4, "sms"

    invoke-virtual {v0, v4, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    return v3
.end method

.method private getAddressIds(Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 622
    .local p1, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 624
    .local v4, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 625
    .local v0, address:Ljava/lang/String;
    const-string v5, "insert-address-token"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 626
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->getSingleAddressId(Ljava/lang/String;)J

    move-result-wide v2

    .line 627
    .local v2, id:J
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-eqz v5, :cond_1

    .line 628
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 630
    :cond_1
    const-string v5, "MmsSmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAddressIds: address ID not found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 634
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #id:J
    :cond_2
    return-object v4
.end method

.method private getCallerInfoHW()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 607
    :try_start_0
    const-string v3, "android.telephony.CallerInfoHW"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 608
    .local v0, c:Ljava/lang/Class;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 609
    .local v1, constructor:Ljava/lang/reflect/Constructor;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 614
    .end local v0           #c:Ljava/lang/Class;
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v3

    .line 610
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 611
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "MmsSmsProvider"

    const-string v4, "Occur an exception when construct CallerInfoHW "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getCompleteConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 964
    invoke-static {p1, p2, p3, p4}, Lcom/android/providers/telephony/MmsSmsProvider;->buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, unionQuery:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "threadIdString"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v6, 0x0

    .line 1081
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1088
    .local v9, extraSelection:Ljava/lang/String;
    invoke-static {p3, v9}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1089
    .local v3, finalSelection:Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1090
    .local v0, queryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-static {p2}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullThreadsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1092
    .local v2, columns:[Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1093
    const-string v1, "threads"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1094
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .end local v0           #queryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #finalSelection:Ljava/lang/String;
    .end local v9           #extraSelection:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1082
    :catch_0
    move-exception v8

    .line 1083
    .local v8, exception:Ljava/lang/NumberFormatException;
    const-string v1, "MmsSmsProvider"

    const-string v4, "Thread ID must be a Long."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 1084
    goto :goto_0
.end method

.method private getConversationMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "threadIdString"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 996
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1004
    .local v1, finalSelection:Ljava/lang/String;
    invoke-static {p2, v1, p4, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1007
    .local v2, unionQuery:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .end local v1           #finalSelection:Ljava/lang/String;
    .end local v2           #unionQuery:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 997
    :catch_0
    move-exception v0

    .line 998
    .local v0, exception:Ljava/lang/NumberFormatException;
    const-string v3, "MmsSmsProvider"

    const-string v4, "Thread ID must be a Long."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 25
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 869
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 870
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v21, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 872
    .local v21, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v5, "pdu"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 873
    const-string v5, "sms"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 875
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 876
    .local v17, columns:[Ljava/lang/String;
    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    const/16 v6, 0x3e8

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 878
    .local v6, innerMmsProjection:[Ljava/lang/String;
    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v18

    .line 880
    .local v18, innerSmsProjection:[Ljava/lang/String;
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x1

    const-string v9, "mms"

    const-string v10, "(msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "thread_id"

    const-string v13, "date = MAX(date)"

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 885
    .local v19, mmsSubQuery:Ljava/lang/String;
    const-string v8, "transport_type"

    sget-object v10, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v11, 0x1

    const-string v12, "sms"

    const-string v5, "(type != 3)"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "thread_id"

    const-string v16, "date = MAX(date)"

    move-object/from16 v7, v21

    move-object/from16 v9, v18

    move-object/from16 v14, p3

    invoke-virtual/range {v7 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 890
    .local v22, smsSubQuery:Ljava/lang/String;
    new-instance v24, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v24 .. v24}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 892
    .local v24, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    move-object/from16 v0, v24

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 894
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    .end local v6           #innerMmsProjection:[Ljava/lang/String;
    const/4 v6, 0x1

    aput-object v22, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 897
    .local v23, unionQuery:Ljava/lang/String;
    new-instance v7, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 899
    .local v7, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 901
    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "tid"

    const-string v12, "normalized_date = MAX(normalized_date)"

    const/4 v14, 0x0

    move-object/from16 v8, v17

    move-object/from16 v13, p4

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 905
    .local v20, outerQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v20

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5
.end method

.method private getDraftThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 23
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 809
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v5

    const/4 v5, 0x1

    const-string v7, "thread_id"

    aput-object v7, v6, v5

    .line 810
    .local v6, innerProjection:[Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 811
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v19, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 813
    .local v19, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v5, "pdu"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 814
    const-string v5, "sms"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 816
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x1

    const-string v9, "mms"

    const-string v10, "msg_box=3"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 821
    .local v17, mmsSubQuery:Ljava/lang/String;
    const-string v8, "transport_type"

    sget-object v10, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v11, 0x1

    const-string v12, "sms"

    const-string v5, "type=3"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v7, v19

    move-object v9, v6

    move-object/from16 v14, p3

    invoke-virtual/range {v7 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 826
    .local v20, smsSubQuery:Ljava/lang/String;
    new-instance v22, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v22 .. v22}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 828
    .local v22, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 830
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v17, v5, v6

    .end local v6           #innerProjection:[Ljava/lang/String;
    const/4 v6, 0x1

    aput-object v20, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 833
    .local v21, unionQuery:Ljava/lang/String;
    new-instance v7, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 835
    .local v7, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 837
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p1

    move-object/from16 v13, p4

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 840
    .local v18, outerQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5
.end method

.method private getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 23
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 922
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 923
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v19, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 925
    .local v19, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v5, "pdu"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 926
    const-string v5, "sms"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 928
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v5

    .line 930
    .local v6, idColumn:[Ljava/lang/String;
    const-string v5, "transport_type"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "mms"

    const-string v12, "_id"

    const-string v13, "locked=1"

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 936
    .local v18, mmsSubQuery:Ljava/lang/String;
    const-string v8, "transport_type"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "sms"

    const-string v15, "_id"

    const-string v16, "locked=1"

    move-object/from16 v7, v19

    move-object v9, v6

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual/range {v7 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 942
    .local v20, smsSubQuery:Ljava/lang/String;
    new-instance v22, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v22 .. v22}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 944
    .local v22, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 946
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v18, v5, v6

    .end local v6           #idColumn:[Ljava/lang/String;
    const/4 v6, 0x1

    aput-object v20, v5, v6

    const/4 v6, 0x0

    const-string v7, "1"

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 949
    .local v21, unionQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v21

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 955
    .local v17, cursor:Landroid/database/Cursor;
    return-object v17
.end method

.method private getMessagesByPhoneNumber(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 27
    .parameter "phoneNumber"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1031
    invoke-static/range {p1 .. p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1032
    .local v21, escapedPhoneNumber:Ljava/lang/String;
    const-string v5, "pdu._id = matching_addresses.address_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1036
    .local v10, finalMmsSelection:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(address="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR PHONE_NUMBERS_EQUAL(address, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    move v6, v0

    if-eqz v6, :cond_0

    const-string v6, ", 1))"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1042
    .local v17, finalSmsSelection:Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1043
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v23, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v23 .. v23}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1045
    .local v23, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1046
    const/4 v5, 0x1

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1047
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pdu, (SELECT _id AS address_id FROM addr WHERE (address="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR PHONE_NUMBERS_EQUAL(addr.address, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    move v6, v0

    if-eqz v6, :cond_1

    const-string v6, ", 1))) "

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AS matching_addresses"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1055
    const-string v5, "sms"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1057
    invoke-static/range {p2 .. p2}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1058
    .local v6, columns:[Ljava/lang/String;
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x0

    const-string v9, "mms"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p4

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1061
    .local v22, mmsSubQuery:Ljava/lang/String;
    const-string v12, "transport_type"

    sget-object v14, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v15, 0x0

    const-string v16, "sms"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, v23

    move-object v13, v6

    move-object/from16 v18, p4

    invoke-virtual/range {v11 .. v20}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1064
    .local v24, smsSubQuery:Ljava/lang/String;
    new-instance v26, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v26 .. v26}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1066
    .local v26, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1068
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v22, v5, v6

    .end local v6           #columns:[Ljava/lang/String;
    const/4 v6, 0x1

    aput-object v24, v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, v26

    move-object v1, v5

    move-object/from16 v2, p5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1071
    .local v25, unionQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v25

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5

    .line 1036
    .end local v4           #mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v17           #finalSmsSelection:Ljava/lang/String;
    .end local v22           #mmsSubQuery:Ljava/lang/String;
    .end local v23           #smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v24           #smsSubQuery:Ljava/lang/String;
    .end local v25           #unionQuery:Ljava/lang/String;
    .end local v26           #unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_0
    const-string v6, ", 0))"

    goto/16 :goto_0

    .line 1047
    .restart local v4       #mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v17       #finalSmsSelection:Ljava/lang/String;
    .restart local v23       #smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_1
    const-string v6, ", 0))) "

    goto :goto_1
.end method

.method private getSimpleConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 785
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "threads"

    if-nez p4, :cond_0

    const-string v2, "date DESC"

    move-object v7, v2

    :goto_0
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v7, p4

    goto :goto_0
.end method

.method private getSingleAddressId(Ljava/lang/String;)J
    .locals 13
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "address"

    .line 521
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v8

    .line 523
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    .line 528
    if-eqz v8, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 530
    :goto_0
    const-string v1, "address=?"

    .line 532
    const-wide/16 v10, -0x1

    .line 534
    if-nez v0, :cond_2

    .line 535
    new-array v0, v4, [Ljava/lang/String;

    aput-object v9, v0, v5

    move-object v4, v0

    move-object v3, v1

    .line 545
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 546
    const-string v1, "canonical_addresses"

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 550
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 551
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 552
    const-string v2, "address"

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v2, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 555
    const-string v3, "canonical_addresses"

    const-string v4, "address"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 558
    const-string v0, "MmsSmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSingleAddressId: insert new canonical_address for xxxxxx, _id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 596
    if-eqz v1, :cond_0

    .line 597
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-wide v0, v2

    .line 601
    :goto_2
    return-wide v0

    :cond_1
    move-object v9, p1

    .line 528
    goto :goto_0

    .line 537
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PHONE_NUMBERS_EQUAL(address, ?, %d)"

    new-array v2, v4, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    new-array v1, v6, [Ljava/lang/String;

    aput-object v9, v1, v5

    aput-object v9, v1, v4

    move-object v4, v1

    move-object v3, v0

    goto/16 :goto_1

    :cond_3
    move v3, v5

    .line 537
    goto :goto_3

    .line 565
    :cond_4
    if-eqz v8, :cond_6

    .line 566
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 567
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v2

    .line 596
    if-eqz v1, :cond_5

    .line 597
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-wide v0, v2

    goto :goto_2

    .line 570
    :cond_6
    :try_start_3
    invoke-direct {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getCallerInfoHW()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 571
    if-eqz v0, :cond_9

    .line 573
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getCallerIndex"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/database/Cursor;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 575
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 577
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, "address"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 578
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 579
    const/4 v2, -0x1

    if-eq v2, v0, :cond_8

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 580
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v2

    .line 596
    :goto_4
    if-eqz v1, :cond_7

    .line 597
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move-wide v0, v2

    .line 601
    goto/16 :goto_2

    .line 582
    :cond_8
    :try_start_5
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 583
    const-string v2, "address"

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v2, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 586
    const-string v3, "canonical_addresses"

    const-string v4, "address"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-wide v2

    goto :goto_4

    .line 589
    :catch_0
    move-exception v0

    .line 590
    :try_start_6
    const-string v2, "MmsSmsProvider"

    const-string v3, "Occur an exception when invoke CallerInfoHW.getCallerIndex "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_9
    move-wide v2, v10

    goto :goto_4

    .line 596
    :catchall_0
    move-exception v0

    move-object v1, v12

    :goto_5
    if-eqz v1, :cond_a

    .line 597
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    .line 596
    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method private getSortedSet(Ljava/util/Set;)[J
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 641
    .local p1, numbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    .line 642
    .local v5, size:I
    new-array v4, v5, [J

    .line 643
    .local v4, result:[J
    const/4 v0, 0x0

    .line 645
    .local v0, i:I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 646
    .local v3, number:Ljava/lang/Long;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 649
    .end local v3           #number:Ljava/lang/Long;
    :cond_0
    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 650
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 653
    :cond_1
    return-object v4
.end method

.method private getSpaceSeparatedNumbers([J)Ljava/lang/String;
    .locals 5
    .parameter "numbers"

    .prologue
    .line 661
    array-length v2, p1

    .line 662
    .local v2, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 665
    if-eqz v1, :cond_0

    .line 666
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 668
    :cond_0
    aget-wide v3, p1, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 670
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private declared-synchronized getThreadId(Ljava/util/List;)Landroid/database/Cursor;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p1, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const-string v7, "SELECT _id FROM threads WHERE recipient_ids=?"

    const-string v7, "MmsSmsProvider"

    .line 704
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsProvider;->getAddressIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    .line 705
    .local v1, addressIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v5, ""

    .line 708
    .local v5, recipientIds:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 709
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 710
    .local v0, addressId:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 713
    .end local v0           #addressId:Ljava/lang/Long;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getSortedSet(Ljava/util/Set;)[J

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->getSpaceSeparatedNumbers([J)Ljava/lang/String;

    move-result-object v5

    .line 716
    :cond_1
    const-string v7, "MmsSmsProvider"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 717
    const-string v7, "MmsSmsProvider"

    const-string v8, "getThreadId: recipientIds (selectionArgs) =xxxxxxx"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_2
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 722
    .local v6, selectionArgs:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 723
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "SELECT _id FROM threads WHERE recipient_ids=?"

    invoke-virtual {v3, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 725
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_3

    .line 726
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 728
    const-string v7, "MmsSmsProvider"

    const-string v8, "getThreadId: create new thread_id for recipients xxxxxxxx"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, v5, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->insertThread(Ljava/lang/String;I)V

    .line 732
    iget-object v7, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 733
    const-string v7, "SELECT _id FROM threads WHERE recipient_ids=?"

    invoke-virtual {v3, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 736
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-le v7, v9, :cond_4

    .line 737
    const-string v7, "MmsSmsProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getThreadId: why is cursorCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    :cond_4
    monitor-exit p0

    return-object v2

    .line 704
    .end local v1           #addressIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #recipientIds:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private getUndeliveredMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 36
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1119
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 1121
    .local v28, mmsProjection:[Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1122
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v32, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v32 .. v32}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1124
    .local v32, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1125
    const-string v5, "sms"

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1127
    const-string v5, "msg_box = 4"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1129
    .local v10, finalMmsSelection:Ljava/lang/String;
    const-string v5, "(type = 4 OR type = 5 OR type = 6)"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1134
    .local v17, finalSmsSelection:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 1135
    .local v31, smsColumns:[Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1136
    .local v27, mmsColumns:[Ljava/lang/String;
    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 1138
    .local v6, innerMmsProjection:[Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v26

    .line 1141
    .local v26, innerSmsProjection:[Ljava/lang/String;
    new-instance v7, Ljava/util/HashSet;

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1142
    .local v7, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "pdu._id"

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1143
    const-string v5, "err_type"

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1144
    const-string v5, "transport_type"

    const/4 v8, 0x1

    const-string v9, "mms"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1148
    .local v29, mmsSubQuery:Ljava/lang/String;
    const-string v12, "transport_type"

    sget-object v14, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v15, 0x1

    const-string v16, "sms"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, v32

    move-object/from16 v13, v26

    move-object/from16 v18, p3

    invoke-virtual/range {v11 .. v20}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1152
    .local v33, smsSubQuery:Ljava/lang/String;
    new-instance v35, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v35 .. v35}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1154
    .local v35, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    move-object/from16 v0, v35

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1156
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v33, v5, v6

    .end local v6           #innerMmsProjection:[Ljava/lang/String;
    const/4 v6, 0x1

    aput-object v29, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v35

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v7           #columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-result-object v34

    .line 1159
    .local v34, unionQuery:Ljava/lang/String;
    new-instance v18, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v18 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1161
    .local v18, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1163
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v31

    move-object/from16 v24, p4

    invoke-virtual/range {v18 .. v25}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1166
    .local v30, outerQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v30

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5
.end method

.method private static handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "projection"

    .prologue
    .line 760
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static handleNullSortOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "sortOrder"

    .prologue
    .line 777
    if-nez p0, :cond_0

    const-string v0, "normalized_date ASC"

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static handleNullThreadsProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "projection"

    .prologue
    .line 769
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->THREADS_COLUMNS:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static initializeColumnSets()V
    .locals 10

    .prologue
    .line 1379
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    array-length v1, v8

    .line 1380
    .local v1, commonColumnCount:I
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v5, v8

    .line 1381
    .local v5, mmsOnlyColumnCount:I
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v6, v8

    .line 1382
    .local v6, smsOnlyColumnCount:I
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1384
    .local v7, unionColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1385
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1386
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1387
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1384
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1389
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 1390
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1391
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1389
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1393
    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_2

    .line 1394
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1395
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1393
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1398
    :cond_2
    const/4 v2, 0x0

    .line 1399
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1400
    .local v0, columnName:Ljava/lang/String;
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aput-object v0, v8, v2

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_3

    .line 1402
    .end local v0           #columnName:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private insertThread(Ljava/lang/String;I)V
    .locals 10
    .parameter "recipientIds"
    .parameter "numberOfRecipients"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 677
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 679
    .local v4, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 680
    .local v0, date:J
    const-string v5, "date"

    const-wide/16 v6, 0x3e8

    rem-long v6, v0, v6

    sub-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 681
    const-string v5, "recipient_ids"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    if-le p2, v8, :cond_0

    .line 683
    const-string v5, "type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 685
    :cond_0
    const-string v5, "message_count"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 687
    iget-object v5, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "threads"

    invoke-virtual {v5, v6, v9, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 688
    .local v2, result:J
    const-string v5, "MmsSmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertThread: created new thread_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for recipientIds "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "xxxxxxx"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 692
    return-void
.end method

.method private static joinPduAndPendingMsgTables()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1100
    const-string v0, "pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id"

    return-object v0
.end method

.method private makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6
    .parameter "projection"
    .parameter "dateMultiple"

    .prologue
    .line 978
    array-length v1, p1

    .line 979
    .local v1, projectionSize:I
    add-int/lit8 v3, v1, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 981
    .local v2, result:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "thread_id AS tid"

    aput-object v4, v2, v3

    .line 982
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date * "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS normalized_date"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 983
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 984
    add-int/lit8 v3, v0, 0x2

    aget-object v4, p1, v0

    aput-object v4, v2, v3

    .line 983
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 986
    :cond_0
    return-object v2
.end method

.method private static makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5
    .parameter "projection"
    .parameter "dateMultiple"

    .prologue
    const/4 v4, 0x0

    .line 1175
    array-length v0, p0

    .line 1176
    .local v0, projectionSize:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 1178
    .local v1, result:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS normalized_date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1179
    const/4 v2, 0x1

    invoke-static {p0, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1180
    return-object v1
.end method

.method private updateConversation(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "threadIdString"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1361
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    iget-object v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1368
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1369
    .local v2, finalSelection:Ljava/lang/String;
    const-string v3, "pdu"

    invoke-virtual {v0, v3, p2, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const-string v4, "sms"

    invoke-virtual {v0, v4, p2, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #finalSelection:Ljava/lang/String;
    :goto_0
    return v3

    .line 1362
    :catch_0
    move-exception v1

    .line 1363
    .local v1, exception:Ljava/lang/NumberFormatException;
    const-string v3, "MmsSmsProvider"

    const-string v4, "Thread ID must be a Long."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v8, 0x0

    .line 1239
    iget-object v6, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1240
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1241
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 1243
    .local v0, affectedRows:I
    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 1278
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1247
    :sswitch_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 1253
    .local v4, threadId:J
    invoke-static {v2, v4, v5}, Lcom/android/providers/telephony/Utils;->isOther(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1281
    .end local v4           #threadId:J
    :goto_0
    if-lez v0, :cond_0

    .line 1282
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1284
    :cond_0
    return v0

    .line 1248
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 1249
    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v6, "MmsSmsProvider"

    const-string v7, "Thread ID must be a long."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1257
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #threadId:J
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsProvider;->deleteConversation(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1258
    invoke-static {v2, v4, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0

    .line 1261
    .end local v4           #threadId:J
    :sswitch_1
    invoke-static {v1, v2, p2, p3, p1}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I

    move-result v6

    const-string v7, "sms"

    invoke-virtual {v2, v7, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int v0, v6, v7

    .line 1267
    invoke-static {v2, v8, v8}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1270
    :sswitch_2
    const-string v6, "threads"

    const-string v7, "_id NOT IN (SELECT DISTINCT thread_id FROM sms UNION SELECT DISTINCT channel_id FROM cbs_messages UNION SELECT DISTINCT thread_id FROM pdu)"

    invoke-virtual {v2, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1276
    goto :goto_0

    .line 1243
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 1233
    const-string v0, "vnd.android-dir/mms-sms"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 275
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 36
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 285
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v17, 0x0

    .line 287
    .local v17, cursor:Landroid/database/Cursor;
    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 506
    :pswitch_0
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized URI:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 289
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getCompleteConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 510
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local p1
    :goto_0
    if-eqz v17, :cond_0

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 514
    :cond_0
    return-object v17

    .line 293
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1
    :pswitch_2
    const-string v6, "simple"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 295
    .local v30, simple:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/providers/telephony/Utils;->filter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 297
    if-eqz v30, :cond_2

    const-string v6, "true"

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 298
    const-string v6, "thread_type"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 299
    .local v35, threadType:Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 300
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 303
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getSimpleConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 305
    goto :goto_0

    .line 306
    .end local v35           #threadType:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 309
    goto :goto_0

    .line 311
    .end local v30           #simple:Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v17

    .line 314
    goto/16 :goto_0

    .line 317
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_4
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/providers/telephony/Utils;->filter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v17

    .line 322
    goto/16 :goto_0

    .line 325
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_5
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/providers/telephony/Utils;->filter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v17

    .line 330
    goto/16 :goto_0

    .line 332
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/telephony/MmsSmsProvider;->getMessagesByPhoneNumber(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v17

    .line 335
    goto/16 :goto_0

    .line 337
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_7
    const-string v6, "recipient"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v28

    .line 339
    .local v28, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getThreadId(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v17

    .line 340
    goto/16 :goto_0

    .line 342
    .end local v28           #recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 343
    .local v20, extraSelection:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v8, v20

    .line 345
    .local v8, finalSelection:Ljava/lang/String;
    :goto_1
    const-string v6, "canonical_addresses"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_1:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 351
    goto/16 :goto_0

    .line 343
    .end local v8           #finalSelection:Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    goto :goto_1

    .line 354
    .end local v20           #extraSelection:Ljava/lang/String;
    .restart local p1
    :pswitch_9
    const-string v10, "canonical_addresses"

    sget-object v11, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_2:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v5

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v16, p5

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 360
    goto/16 :goto_0

    .line 365
    :pswitch_a
    :try_start_0
    const-string v10, "canonical_addresses"

    sget-object v11, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_3:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v5

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v16, p5

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    goto/16 :goto_0

    .line 371
    :catch_0
    move-exception v6

    move-object/from16 v18, v6

    .line 372
    .local v18, e:Ljava/lang/Exception;
    const-string v6, "MmsSmsProvider"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 377
    .end local v18           #e:Ljava/lang/Exception;
    :pswitch_b
    const-string v6, "pattern"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 378
    .local v29, searchString:Ljava/lang/String;
    const-string v6, "SELECT _id, index_text, source_id, table_to_use, offsets(words) FROM words WHERE words MATCH \'%s*\' LIMIT 50;"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v29, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 379
    .local v26, query:Ljava/lang/String;
    if-nez p5, :cond_4

    if-nez p3, :cond_4

    if-nez p4, :cond_4

    if-eqz p2, :cond_5

    .line 383
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "do not specify sortOrder, selection, selectionArgs, or projectionwith this query"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 388
    :cond_5
    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 389
    goto/16 :goto_0

    .line 392
    .end local v26           #query:Ljava/lang/String;
    .end local v29           #searchString:Ljava/lang/String;
    :pswitch_c
    if-nez p5, :cond_6

    if-nez p3, :cond_6

    if-nez p4, :cond_6

    if-eqz p2, :cond_7

    .line 396
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "do not specify sortOrder, selection, selectionArgs, or projectionwith this query"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 407
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pattern"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 409
    .restart local v29       #searchString:Ljava/lang/String;
    const-string v31, "sms._id as _id,thread_id,address,body,date,index_text,words._id"

    .line 411
    .local v31, smsProjection:Ljava/lang/String;
    const-string v21, "pdu._id,thread_id,addr.address,part.text as body,pdu.date,index_text,words._id"

    .line 415
    .local v21, mmsProjection:Ljava/lang/String;
    const-string v6, "SELECT %s FROM sms,words WHERE (words MATCH ?  AND sms._id=words.source_id AND words.table_to_use=1) "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v31, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 422
    .local v32, smsQuery:Ljava/lang/String;
    const-string v6, "SELECT %s FROM pdu,part,addr,words WHERE ((part.mid=pdu._id) AND (addr.msg_id=pdu._id) AND  (case when pdu.msg_box in (%d,%d,%d,%d,%d)  then addr.type = %d  when pdu.msg_box = %d  then addr.type = %d  end) AND (part.ct=\'text/plain\') AND (words MATCH ?) AND (part._id = words.source_id) AND (words.table_to_use=2))"

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v21, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const/16 v9, 0x97

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const/16 v9, 0x89

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 446
    .local v22, mmsQuery:Ljava/lang/String;
    const-string v6, "%s UNION %s GROUP BY %s ORDER BY %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v32, v7, v8

    const/4 v8, 0x1

    aput-object v22, v7, v8

    const/4 v8, 0x2

    const-string v9, "thread_id"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "thread_id ASC, date DESC"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 453
    .local v27, rawQuery:Ljava/lang/String;
    const/4 v6, 0x2

    :try_start_1
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v29, v6, v7

    const/4 v7, 0x1

    aput-object v29, v6, v7

    move-object v0, v5

    move-object/from16 v1, v27

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    goto/16 :goto_0

    .line 454
    :catch_1
    move-exception v6

    move-object/from16 v19, v6

    .line 455
    .local v19, ex:Ljava/lang/Exception;
    const-string v6, "MmsSmsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 460
    .end local v19           #ex:Ljava/lang/Exception;
    .end local v21           #mmsProjection:Ljava/lang/String;
    .end local v22           #mmsQuery:Ljava/lang/String;
    .end local v27           #rawQuery:Ljava/lang/String;
    .end local v29           #searchString:Ljava/lang/String;
    .end local v31           #smsProjection:Ljava/lang/String;
    .end local v32           #smsQuery:Ljava/lang/String;
    :pswitch_d
    const-string v6, "protocol"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 461
    .local v25, protoName:Ljava/lang/String;
    const-string v6, "message"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 462
    .local v23, msgId:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, -0x1

    move/from16 v24, v6

    .line 465
    .local v24, proto:I
    :goto_2
    const/4 v6, -0x1

    move/from16 v0, v24

    move v1, v6

    if-eq v0, v1, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "proto_type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v6

    .line 467
    .restart local v20       #extraSelection:Ljava/lang/String;
    :goto_3
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND msg_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 471
    :cond_8
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    move-object/from16 v8, v20

    .line 473
    .restart local v8       #finalSelection:Ljava/lang/String;
    :goto_4
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "due_time"

    move-object v12, v6

    .line 475
    .local v12, finalOrder:Ljava/lang/String;
    :goto_5
    const-string v6, "pending_msgs"

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 477
    goto/16 :goto_0

    .line 462
    .end local v8           #finalSelection:Ljava/lang/String;
    .end local v12           #finalOrder:Ljava/lang/String;
    .end local v20           #extraSelection:Ljava/lang/String;
    .end local v24           #proto:I
    :cond_9
    const-string v6, "sms"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    move/from16 v24, v6

    goto :goto_2

    :cond_a
    const/4 v6, 0x1

    move/from16 v24, v6

    goto :goto_2

    .line 465
    .restart local v24       #proto:I
    :cond_b
    const-string v6, " 0=0 "

    move-object/from16 v20, v6

    goto :goto_3

    .line 471
    .restart local v20       #extraSelection:Ljava/lang/String;
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    goto :goto_4

    .restart local v8       #finalSelection:Ljava/lang/String;
    :cond_d
    move-object/from16 v12, p5

    .line 473
    goto :goto_5

    .line 480
    .end local v8           #finalSelection:Ljava/lang/String;
    .end local v20           #extraSelection:Ljava/lang/String;
    .end local v23           #msgId:Ljava/lang/String;
    .end local v24           #proto:I
    .end local v25           #protoName:Ljava/lang/String;
    :pswitch_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getUndeliveredMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 482
    goto/16 :goto_0

    .line 485
    :pswitch_f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getDraftThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 486
    goto/16 :goto_0

    .line 491
    :pswitch_10
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v33

    .line 496
    .local v33, threadId:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thread_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v6

    move-object v3, v7

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 498
    goto/16 :goto_0

    .line 492
    .end local v33           #threadId:J
    :catch_2
    move-exception v6

    move-object/from16 v18, v6

    .line 493
    .local v18, e:Ljava/lang/NumberFormatException;
    const-string v6, "MmsSmsProvider"

    const-string v7, "Thread ID must be a long."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 501
    .end local v18           #e:Ljava/lang/NumberFormatException;
    :pswitch_11
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 503
    goto/16 :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_d
        :pswitch_1
        :pswitch_e
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_9
        :pswitch_c
        :pswitch_b
        :pswitch_11
        :pswitch_10
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "canonical_addresses"

    .line 1308
    iget-object v6, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1309
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 1310
    .local v0, affectedRows:I
    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 1346
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1312
    :sswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1314
    .local v5, threadIdString:Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/providers/telephony/Utils;->isOther(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1350
    .end local v5           #threadIdString:Ljava/lang/String;
    :goto_0
    if-lez v0, :cond_0

    .line 1351
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1354
    :cond_0
    return v0

    .line 1318
    .restart local v5       #threadIdString:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v5, p2, p3, p4}, Lcom/android/providers/telephony/MmsSmsProvider;->updateConversation(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1320
    goto :goto_0

    .line 1323
    .end local v5           #threadIdString:Ljava/lang/String;
    :sswitch_1
    const-string v6, "pending_msgs"

    invoke-virtual {v1, v6, p2, p3, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1324
    goto :goto_0

    .line 1327
    :sswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1328
    .local v3, extraSelection:Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v3

    .line 1331
    .local v4, finalSelection:Ljava/lang/String;
    :goto_1
    const-string v6, "canonical_addresses"

    invoke-virtual {v1, v10, p2, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1332
    goto :goto_0

    .line 1328
    .end local v4           #finalSelection:Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    goto :goto_1

    .line 1337
    .end local v3           #extraSelection:Ljava/lang/String;
    :sswitch_3
    :try_start_0
    const-string v6, "canonical_addresses"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, p2, p3, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1338
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 1339
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "MmsSmsProvider"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1310
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0x13 -> :sswitch_3
    .end sparse-switch
.end method
