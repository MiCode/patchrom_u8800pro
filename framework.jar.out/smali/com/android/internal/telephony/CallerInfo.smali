.class public Lcom/android/internal/telephony/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# static fields
.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field private static final TAG:Ljava/lang/String; = "CallerInfo"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field private static final VDBG:Z


# instance fields
.field public cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public cnapName:Ljava/lang/String;

.field public contactExists:Z

.field public contactRefUri:Landroid/net/Uri;

.field public contactRingtoneUri:Landroid/net/Uri;

.field public isCachedPhotoCurrent:Z

.field private mIsEmergency:Z

.field private mIsVoiceMail:Z

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public needUpdate:Z

.field public numberLabel:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:I

.field public person_id:J

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoResource:I

.field public shouldSendToVoicemail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "CallerInfo"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 118
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 119
    return-void
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .parameter "context"
    .parameter "number"
    .parameter "previousResult"

    .prologue
    .line 418
    iget-boolean v1, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, username:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object p2

    .line 427
    .end local v0           #username:Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public static getCallerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    .line 447
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 448
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    const/4 v0, 0x0

    .line 450
    .local v0, callerID:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 451
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 453
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 454
    move-object v0, v2

    .line 460
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 456
    .restart local v2       #name:Ljava/lang/String;
    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;
    .locals 6
    .parameter "context"
    .parameter "contactRef"

    .prologue
    const/4 v2, 0x0

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    .locals 11
    .parameter "context"
    .parameter "contactRef"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-string v10, "CallerInfo"

    .line 130
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 131
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    iput v7, v1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 132
    iput-object v8, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 133
    iput v7, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 134
    iput-object v8, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 135
    iput-object v8, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 136
    iput-boolean v7, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 137
    iput-boolean v7, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 142
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "CallerInfo"

    const-string v3, "construct callerInfo from cursor"

    invoke-static {v10, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    if-eqz p2, :cond_6

    .line 145
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 153
    const-string v3, "display_name"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, columnIndex:I
    if-eq v0, v6, :cond_1

    .line 155
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 159
    :cond_1
    const-string v3, "number"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 160
    if-eq v0, v6, :cond_2

    .line 161
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 165
    :cond_2
    const-string v3, "label"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 166
    if-eq v0, v6, :cond_3

    .line 167
    const-string/jumbo v3, "type"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 168
    .local v2, typeColumnIndex:I
    if-eq v2, v6, :cond_3

    .line 169
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 170
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 171
    iget v3, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 178
    .end local v2           #typeColumnIndex:I
    :cond_3
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v0

    .line 179
    if-eq v0, v6, :cond_7

    .line 180
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 181
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_4

    const-string v3, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> got info.person_id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_4
    :goto_0
    const-string v3, "custom_ringtone"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 193
    if-eq v0, v6, :cond_8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 194
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 201
    :goto_1
    const-string v3, "send_to_voicemail"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 202
    if-eq v0, v6, :cond_9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v9, :cond_9

    move v3, v9

    :goto_2
    iput-boolean v3, v1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 204
    iput-boolean v9, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 206
    .end local v0           #columnIndex:I
    :cond_5
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_6
    iput-boolean v7, v1, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 210
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 211
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 213
    return-object v1

    .line 184
    .restart local v0       #columnIndex:I
    :cond_7
    const-string v3, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find person_id column for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_8
    iput-object v8, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_1

    :cond_9
    move v3, v7

    .line 202
    goto :goto_2
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .parameter "context"
    .parameter "contactRef"
    .parameter "cursor"
    .parameter "compNum"

    .prologue
    .line 227
    const/4 v0, -0x1

    .line 228
    .local v0, fixedIndex:I
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 230
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 231
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 232
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 233
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 234
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 235
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 236
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 237
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 242
    const-string v2, "CallerInfo"

    const-string v3, "construct callerInfo from cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :try_start_0
    const-string v2, "android.telephony.CallerInfoHW"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 247
    .local v2, mCallerInfoHW:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mCallerInfoHW:Ljava/lang/Class;
    check-cast v2, Landroid/telephony/TelephonyInterfacesHW;

    .line 250
    .local v2, mTelephonyInterfacesHW:Landroid/telephony/TelephonyInterfacesHW;
    invoke-interface {v2, p2, p3}, Landroid/telephony/TelephonyInterfacesHW;->getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 258
    .end local v0           #fixedIndex:I
    .end local v2           #mTelephonyInterfacesHW:Landroid/telephony/TelephonyInterfacesHW;
    .local p3, fixedIndex:I
    :goto_0
    const/4 v0, -0x1

    if-ne v0, p3, :cond_1

    .line 260
    if-eqz p2, :cond_0

    .line 261
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .end local p0
    .end local p1
    :goto_1
    move-object p0, v1

    .line 350
    .end local v1           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local p3           #fixedIndex:I
    .local p0, info:Lcom/android/internal/telephony/CallerInfo;
    :goto_2
    return-object p0

    .line 253
    .restart local v0       #fixedIndex:I
    .restart local v1       #info:Lcom/android/internal/telephony/CallerInfo;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .local p3, compNum:Ljava/lang/String;
    :catch_0
    move-exception p3

    .line 255
    .local p3, e:Ljava/lang/Exception;
    const-string p3, "CallerInfo"

    .end local p3           #e:Ljava/lang/Exception;
    const-string v2, "can\'t get class CallerInfoHW!"

    invoke-static {p3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p3, v0

    .end local v0           #fixedIndex:I
    .local p3, fixedIndex:I
    goto :goto_0

    .line 263
    :cond_0
    const-string p0, "CallerInfo"

    .end local p0           #context:Landroid/content/Context;
    const-string p1, "cursor is  null"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 268
    .restart local p0       #context:Landroid/content/Context;
    .restart local p1
    :cond_1
    invoke-interface {p2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p3

    .end local p3           #fixedIndex:I
    if-eqz p3, :cond_6

    .line 273
    const-string p3, "display_name"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    .line 274
    .local p3, columnIndex:I
    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    .line 275
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .end local p3           #columnIndex:I
    iput-object p3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 276
    const-string p3, "CallerInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info.name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_2
    const-string p3, "number"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    .line 281
    .restart local p3       #columnIndex:I
    const/4 v0, -0x1

    if-eq p3, v0, :cond_3

    .line 282
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .end local p3           #columnIndex:I
    iput-object p3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 283
    const-string p3, "CallerInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info.phoneNumber: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_3
    const-string p3, "label"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    .line 288
    .restart local p3       #columnIndex:I
    const/4 v0, -0x1

    if-eq p3, v0, :cond_4

    .line 289
    const-string/jumbo v0, "type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 290
    .local v0, typeColumnIndex:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 291
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .end local v0           #typeColumnIndex:I
    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 292
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .end local p3           #columnIndex:I
    iput-object p3, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 293
    iget p3, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, p3, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 308
    :cond_4
    const/4 p0, -0x1

    .line 309
    .local p0, columnIndex:I
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    .line 310
    .local p3, url:Ljava/lang/String;
    const-string v0, "content://com.android.contacts/data/phones"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 311
    sget-boolean p0, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    .end local p0           #columnIndex:I
    if-eqz p0, :cond_5

    const-string p0, "CallerInfo"

    const-string p3, "URL path starts with \'data/phones\' using RawContacts.CONTACT_ID"

    .end local p3           #url:Ljava/lang/String;
    invoke-static {p0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_5
    const-string p0, "contact_id"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 322
    .restart local p0       #columnIndex:I
    :goto_3
    const/4 p3, -0x1

    if-eq p0, p3, :cond_a

    .line 323
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 330
    .end local p0           #columnIndex:I
    :goto_4
    const-string p0, "custom_ringtone"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 331
    .restart local p0       #columnIndex:I
    const/4 p3, -0x1

    if-eq p0, p3, :cond_b

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 332
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0           #columnIndex:I
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 339
    :goto_5
    const-string p0, "send_to_voicemail"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 340
    .restart local p0       #columnIndex:I
    const/4 p3, -0x1

    if-eq p0, p3, :cond_c

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .end local p0           #columnIndex:I
    const/4 p3, 0x1

    if-ne p0, p3, :cond_c

    const/4 p0, 0x1

    :goto_6
    iput-boolean p0, v1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 342
    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 344
    :cond_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 346
    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 347
    iget-object p0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/telephony/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 348
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    move-object p0, v1

    .line 350
    .end local v1           #info:Lcom/android/internal/telephony/CallerInfo;
    .local p0, info:Lcom/android/internal/telephony/CallerInfo;
    goto/16 :goto_2

    .line 314
    .restart local v1       #info:Lcom/android/internal/telephony/CallerInfo;
    .local p0, columnIndex:I
    .restart local p3       #url:Ljava/lang/String;
    :cond_7
    const-string v0, "content://com.android.contacts/phone_lookup"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 315
    sget-boolean p0, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    .end local p0           #columnIndex:I
    if-eqz p0, :cond_8

    const-string p0, "CallerInfo"

    const-string p3, "URL path starts with \'phone_lookup\' using PhoneLookup._ID"

    .end local p3           #url:Ljava/lang/String;
    invoke-static {p0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_8
    const-string p0, "_id"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .restart local p0       #columnIndex:I
    goto :goto_3

    .line 319
    .restart local p3       #url:Ljava/lang/String;
    :cond_9
    const-string v0, "CallerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad contact URL \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3           #url:Ljava/lang/String;
    const-string v2, "\'"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 325
    :cond_a
    const-string p0, "CallerInfo"

    .end local p0           #columnIndex:I
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "person_id column missing for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 334
    .restart local p0       #columnIndex:I
    :cond_b
    const/4 p0, 0x0

    iput-object p0, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_5

    .line 340
    .end local p0           #columnIndex:I
    :cond_c
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    .line 379
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    const/4 v2, 0x0

    .line 403
    :goto_0
    return-object v2

    .line 386
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    goto :goto_0

    .line 388
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    goto :goto_0

    .line 392
    :cond_2
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 394
    .local v0, contactUri:Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 395
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 399
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 400
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :cond_3
    move-object v2, v1

    .line 403
    goto :goto_0
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 6
    .parameter "contactRef"
    .parameter "cursor"

    .prologue
    const-string v5, "CallerInfo"

    .line 581
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, url:Ljava/lang/String;
    const/4 v1, 0x0

    .line 589
    .local v1, columnName:Ljava/lang/String;
    const-string v3, "content://com.android.contacts/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 592
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_1

    const-string v3, "CallerInfo"

    const-string v3, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_1
    const-string v1, "contact_id"

    .line 609
    :goto_0
    if-eqz v1, :cond_8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 610
    .local v0, columnIndex:I
    :goto_1
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_2

    const-string v3, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Using column \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' (columnIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for person_id lookup..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_2
    return v0

    .line 594
    .end local v0           #columnIndex:I
    :cond_3
    const-string v3, "content://com.android.contacts/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 597
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_4

    const-string v3, "CallerInfo"

    const-string v3, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_4
    const-string v1, "contact_id"

    goto :goto_0

    .line 600
    :cond_5
    const-string v3, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 604
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_6

    const-string v3, "CallerInfo"

    const-string v3, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_6
    const-string v1, "_id"

    goto :goto_0

    .line 607
    :cond_7
    const-string v3, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected prefix for contactRef \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 609
    :cond_8
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 531
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 534
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isEmergencyNumber()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public isVoiceMailNumber()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    return v0
.end method

.method markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .parameter "context"

    .prologue
    .line 492
    const v0, 0x104028a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 494
    const v0, 0x1080240

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 496
    return-object p0
.end method

.method markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;
    .locals 4

    .prologue
    .line 510
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 513
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, voiceMailLabel:Ljava/lang/String;
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v1           #voiceMailLabel:Ljava/lang/String;
    :goto_0
    return-object p0

    .line 516
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 522
    .local v0, se:Ljava/lang/SecurityException;
    const-string v2, "CallerInfo"

    const-string v3, "Cannot access VoiceMail."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, "null"

    const-string v4, "non-null"

    .line 621
    const/4 v0, 0x0

    .line 647
    .local v0, VERBOSE_DEBUG:Z
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CallerInfo { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "null"

    move-object v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", phoneNumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, "null"

    move-object v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v3, "non-null"

    move-object v3, v4

    goto :goto_0

    :cond_1
    const-string v3, "non-null"

    move-object v3, v4

    goto :goto_1
.end method
