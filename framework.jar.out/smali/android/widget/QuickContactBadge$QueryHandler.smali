.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 245
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 246
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 247
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 16
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 251
    const/4 v11, 0x0

    .line 252
    .local v11, lookupUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 253
    .local v7, createUri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 256
    .local v12, trigger:Z
    packed-switch p1, :pswitch_data_0

    .line 307
    .end local p2
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 308
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 312
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object v13, v0

    #setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v13, v11}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object v13, v0

    #calls: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static {v13}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    .line 315
    if-eqz v12, :cond_4

    if-eqz v11, :cond_4

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object v13, v0

    #calls: Landroid/widget/QuickContactBadge;->trigger(Landroid/net/Uri;)V
    invoke-static {v13, v11}, Landroid/widget/QuickContactBadge;->access$200(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)V

    .line 323
    :cond_2
    :goto_1
    return-void

    .line 258
    .restart local p2
    :pswitch_0
    const/4 v12, 0x1

    .line 259
    :try_start_0
    const-string/jumbo v14, "tel"

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    const/4 v15, 0x0

    invoke-static {v14, v13, v15}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 263
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 265
    new-instance v4, Landroid/telephony/CallerInfoHW;

    invoke-direct {v4}, Landroid/telephony/CallerInfoHW;-><init>()V

    .line 268
    .local v4, callerInfoHW:Landroid/telephony/CallerInfoHW;
    check-cast p2, Ljava/lang/String;

    .end local p2
    const-string v13, "number"

    move-object v0, v4

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/CallerInfoHW;->getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 271
    .local v8, fixedIndex:I
    const/4 v13, -0x1

    if-eq v8, v13, :cond_0

    move-object/from16 v0, p3

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 272
    const/4 v13, 0x0

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 273
    .local v5, contactId:J
    const/4 v13, 0x1

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 274
    .local v10, lookupKey:Ljava/lang/String;
    invoke-static {v5, v6, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    goto :goto_0

    .line 282
    .end local v4           #callerInfoHW:Landroid/telephony/CallerInfoHW;
    .end local v5           #contactId:J
    .end local v8           #fixedIndex:I
    .end local v10           #lookupKey:Ljava/lang/String;
    .restart local p2
    :pswitch_2
    const/4 v12, 0x1

    .line 283
    const-string v13, "mailto"

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v14, 0x0

    move-object v0, v13

    move-object/from16 v1, p2

    move-object v2, v14

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 287
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 288
    const/4 v13, 0x0

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 289
    .restart local v5       #contactId:J
    const/4 v13, 0x1

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 290
    .restart local v10       #lookupKey:Ljava/lang/String;
    invoke-static {v5, v6, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 291
    goto/16 :goto_0

    .line 296
    .end local v5           #contactId:J
    .end local v10           #lookupKey:Ljava/lang/String;
    .restart local p2
    :pswitch_4
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 297
    const/4 v13, 0x0

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 298
    .restart local v5       #contactId:J
    const/4 v13, 0x1

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 299
    .restart local v10       #lookupKey:Ljava/lang/String;
    invoke-static {v5, v6, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 300
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 307
    .end local v5           #contactId:J
    .end local v10           #lookupKey:Ljava/lang/String;
    .end local p2
    :catchall_0
    move-exception v13

    if-eqz p3, :cond_3

    .line 308
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 307
    :cond_3
    throw v13

    .line 318
    :cond_4
    if-eqz v7, :cond_2

    .line 320
    new-instance v9, Landroid/content/Intent;

    const-string v13, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v9, v13, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 321
    .local v9, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
