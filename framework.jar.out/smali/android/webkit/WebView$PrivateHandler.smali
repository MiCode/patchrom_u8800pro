.class Landroid/webkit/WebView$PrivateHandler;
.super Landroid/os/Handler;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 6880
    iput-object p1, p0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 44
    .parameter "msg"

    .prologue
    .line 6897
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    if-nez v5, :cond_1

    .line 7443
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 6901
    .restart local p0
    .restart local p1
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    sparse-switch v5, :sswitch_data_0

    .line 7440
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 6903
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v5}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "host"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "username"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "password"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6907
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 6911
    .restart local p0
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v5}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "host"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6913
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 6919
    .restart local p0
    :sswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 6923
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)F

    move-result v7

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v8}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v8}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v9, v0

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v9}, Landroid/webkit/WebView;->access$4100(Landroid/webkit/WebView;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v7

    const/4 v8, 0x1

    #calls: Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$4200(Landroid/webkit/WebView;IIZ)V

    goto/16 :goto_0

    .line 6931
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 6932
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    .line 6933
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x4

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    .line 6934
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->updateSelection()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$4300(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 6938
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x5

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 6940
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    .line 6941
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 6946
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4400(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 6947
    :cond_6
    new-instance v32, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v32 .. v32}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 6948
    .local v32, ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/16 v5, 0x100

    move v0, v5

    move-object/from16 v1, v32

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 6949
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$4600(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v32

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 6950
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$4700(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v32

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 6955
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v32

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 6956
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 6957
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6958
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v5}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)F

    move-result v5

    move v0, v5

    move-object/from16 v1, v32

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 6959
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v5}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)F

    move-result v5

    move v0, v5

    move-object/from16 v1, v32

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 6961
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6962
    .end local v32           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 6963
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    .line 6964
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->performLongClick()Z

    .line 6965
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_0

    .line 6970
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->doShortPress()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$4800(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 6974
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    #calls: Landroid/webkit/WebView;->setContentScrollBy(IIZ)Z
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$4900(Landroid/webkit/WebView;IIZ)Z

    goto/16 :goto_0

    .line 6977
    .restart local p0
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mUserScroll:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$5000(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 6980
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mUserScroll:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5002(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_0

    .line 6985
    :cond_9
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebView;->setContentScrollTo(II)Z
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$5100(Landroid/webkit/WebView;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6989
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mUserScroll:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5002(Landroid/webkit/WebView;Z)Z

    .line 6990
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    const/16 v6, 0x83

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto/16 :goto_0

    .line 6995
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebView;->spawnContentScrollTo(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;II)V

    goto/16 :goto_0

    .line 6998
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebViewCore$RestoreState;

    .line 7001
    .local v28, restoreState:Landroid/webkit/WebViewCore$RestoreState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mScrollX:I

    move v7, v0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v28

    move v2, v6

    move v3, v7

    move v4, v8

    #calls: Landroid/webkit/WebView;->updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$RestoreState;IIZ)V

    goto/16 :goto_0

    .line 7008
    .end local v28           #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$5400(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 7009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5402(Landroid/webkit/WebView;Z)Z

    .line 7010
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->nativeSetRootLayer(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5500(Landroid/webkit/WebView;I)V

    .line 7012
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v30

    .line 7014
    .local v30, settings:Landroid/webkit/WebSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v40

    .line 7015
    .local v40, viewWidth:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/webkit/WebViewCore$DrawData;

    .line 7017
    .local v16, draw:Landroid/webkit/WebViewCore$DrawData;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mViewPoint:Landroid/graphics/Point;

    move-object/from16 v39, v0

    .line 7018
    .local v39, viewSize:Landroid/graphics/Point;
    invoke-virtual/range {v30 .. v30}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v36

    .line 7019
    .local v36, useWideViewport:Z
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    move-object/from16 v28, v0

    .line 7020
    .restart local v28       #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    if-eqz v28, :cond_11

    const/4 v5, 0x1

    move/from16 v18, v5

    .line 7021
    .local v18, hasRestoreState:Z
    :goto_1
    if-eqz v18, :cond_b

    .line 7022
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    move v7, v0

    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, v28

    move v2, v6

    move v3, v7

    move v4, v8

    #calls: Landroid/webkit/WebView;->updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$RestoreState;IIZ)V

    .line 7024
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDrawHistory:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 7025
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 7027
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mInitialScaleInPercent:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;)I

    move-result v5

    if-lez v5, :cond_13

    .line 7028
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mInitialScaleInPercent:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mInitialScaleInPercent:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    iget v8, v8, Landroid/webkit/WebView;->mTextWrapScale:F

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_12

    const/4 v7, 0x1

    :goto_2
    const/4 v8, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZ)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;FZZ)V

    .line 7049
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mScrollX:I

    move v6, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mScrollY:I

    move v7, v0

    #calls: Landroid/webkit/WebView;->setContentScrollTo(II)Z
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$5100(Landroid/webkit/WebView;II)Z

    .line 7055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->clearTextEntry(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5800(Landroid/webkit/WebView;Z)V

    .line 7057
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 7058
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->updateZoomButtonsEnabled()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$100(Landroid/webkit/WebView;)V

    .line 7066
    :cond_b
    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v5, v6, :cond_18

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mLastHeightSent:I

    if-ne v5, v6, :cond_18

    const/4 v5, 0x1

    move/from16 v35, v5

    .line 7068
    .local v35, updateLayout:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mFindIsUp:Z
    invoke-static {v8}, Landroid/webkit/WebView;->access$5900(Landroid/webkit/WebView;)Z

    move-result v8

    if-eqz v8, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mFindHeight:I
    invoke-static {v8}, Landroid/webkit/WebView;->access$6000(Landroid/webkit/WebView;)I

    move-result v8

    :goto_5
    add-int/2addr v7, v8

    move-object v0, v5

    move v1, v6

    move v2, v7

    move/from16 v3, v35

    #calls: Landroid/webkit/WebView;->recordNewContentSize(IIZ)V
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;IIZ)V

    .line 7076
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    #calls: Landroid/webkit/WebView;->invalidateContentRect(Landroid/graphics/Rect;)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$6200(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 7077
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;
    invoke-static {v5}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 7078
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;
    invoke-static {v5}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    .line 7080
    :cond_c
    if-eqz v36, :cond_d

    .line 7085
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    sget v6, Landroid/webkit/WebView;->sMaxViewportWidth:I

    move/from16 v0, v40

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mDefaultScale:F
    invoke-static {v8}, Landroid/webkit/WebView;->access$6400(Landroid/webkit/WebView;)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, v16

    iget v0, v0, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    move v8, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mViewPoint:Landroid/graphics/Point;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    .line 7090
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mMinZoomScaleFixed:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$6500(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 7091
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    iget v7, v7, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    #setter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$2702(Landroid/webkit/WebView;F)F

    .line 7093
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDrawHistory:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-eqz v5, :cond_f

    .line 7096
    move/from16 v0, v40

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mInvActualScale:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$6600(Landroid/webkit/WebView;)F

    move-result v6

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-lez v5, :cond_f

    .line 7098
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    iget v7, v7, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    iget v8, v8, Landroid/webkit/WebView;->mTextWrapScale:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {}, Landroid/webkit/WebView;->access$2800()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1a

    const/4 v7, 0x1

    :goto_6
    const/4 v8, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZ)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;FZZ)V

    .line 7104
    :cond_f
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$DrawData;->mFocusSizeChanged:Z

    move v5, v0

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 7105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/webkit/WebView;->mFocusSizeChanged:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$6702(Landroid/webkit/WebView;Z)Z

    .line 7107
    :cond_10
    if-eqz v18, :cond_0

    .line 7108
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v5}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    goto/16 :goto_0

    .line 7020
    .end local v18           #hasRestoreState:Z
    .end local v35           #updateLayout:Z
    :cond_11
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_1

    .line 7028
    .restart local v18       #hasRestoreState:Z
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 7031
    :cond_13
    move-object/from16 v0, v28

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    move v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_14

    .line 7032
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    move v6, v0

    iput v6, v5, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 7033
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    move v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZ)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;FZZ)V

    goto/16 :goto_3

    .line 7036
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    if-eqz v36, :cond_15

    invoke-virtual/range {v30 .. v30}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v6, 0x1

    :goto_7
    iput-boolean v6, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 7039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-eqz v5, :cond_16

    .line 7040
    move/from16 v0, v40

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x4448

    div-float v29, v5, v6

    .line 7045
    .local v29, scale:F
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mTextWrapScale:F

    sub-float v6, v29, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {}, Landroid/webkit/WebView;->access$2800()F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_17

    const/4 v6, 0x1

    :goto_9
    const/4 v7, 0x0

    move-object v0, v5

    move/from16 v1, v29

    move v2, v6

    move v3, v7

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZ)V
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;FZZ)V

    goto/16 :goto_3

    .line 7036
    .end local v29           #scale:F
    :cond_15
    const/4 v6, 0x0

    goto :goto_7

    .line 7043
    :cond_16
    move-object/from16 v0, v28

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    move/from16 v29, v0

    .restart local v29       #scale:F
    goto :goto_8

    .line 7045
    :cond_17
    const/4 v6, 0x0

    goto :goto_9

    .line 7066
    .end local v29           #scale:F
    :cond_18
    const/4 v5, 0x0

    move/from16 v35, v5

    goto/16 :goto_4

    .line 7068
    .restart local v35       #updateLayout:Z
    :cond_19
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 7098
    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 7114
    .end local v16           #draw:Landroid/webkit/WebViewCore$DrawData;
    .end local v18           #hasRestoreState:Z
    .end local v28           #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    .end local v30           #settings:Landroid/webkit/WebSettings;
    .end local v35           #updateLayout:Z
    .end local v36           #useWideViewport:Z
    .end local v39           #viewSize:Landroid/graphics/Point;
    .end local v40           #viewWidth:I
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebView;->nativeCreate(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$6800(Landroid/webkit/WebView;I)V

    goto/16 :goto_0

    .line 7119
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7121
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "password"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 7122
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v33

    .line 7123
    .local v33, text:Landroid/text/Spannable;
    invoke-static/range {v33 .. v33}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v31

    .line 7124
    .local v31, start:I
    invoke-static/range {v33 .. v33}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v17

    .line 7125
    .local v17, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 7128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v26

    .line 7130
    .local v26, pword:Landroid/text/Spannable;
    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_0

    .line 7133
    .end local v17           #end:I
    .end local v26           #pword:Landroid/text/Spannable;
    .end local v31           #start:I
    .end local v33           #text:Landroid/text/Spannable;
    :cond_1b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mTextGeneration:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$6900(Landroid/webkit/WebView;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 7134
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7140
    .restart local p0
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7000(Landroid/webkit/WebView;Z)V

    .line 7141
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/webkit/WebViewCore$TextSelectionData;

    move-object v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p0

    #calls: Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$7100(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_0

    .line 7148
    .restart local p0
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 7149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/webkit/WebViewCore$TextSelectionData;

    move-object v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p0

    #calls: Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$7100(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_0

    .line 7153
    .restart local p0
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 7156
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v21

    .line 7161
    .local v21, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7162
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto/16 :goto_0

    .line 7167
    .end local v21           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local p1
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    #calls: Landroid/webkit/WebView;->navHandledKey(IIZJ)Z
    invoke-static/range {v5 .. v10}, Landroid/webkit/WebView;->access$7200(Landroid/webkit/WebView;IIZJ)Z

    goto/16 :goto_0

    .line 7172
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->selectionDone()V

    .line 7173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->nativeCursorIsTextInput()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$7300(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7174
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->bringIntoView()V

    .line 7175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_0

    .line 7179
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->clearTextEntry(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5800(Landroid/webkit/WebView;Z)V

    goto/16 :goto_0

    .line 7182
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/graphics/Rect;

    .line 7183
    .local v27, r:Landroid/graphics/Rect;
    if-nez v27, :cond_1c

    .line 7184
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 7188
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    #calls: Landroid/webkit/WebView;->viewInvalidate(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebView;->access$7400(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_0

    .line 7193
    .end local v27           #r:Landroid/graphics/Rect;
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 7197
    :sswitch_16
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_1d

    .line 7201
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5402(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_0

    .line 7203
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5402(Landroid/webkit/WebView;Z)Z

    .line 7204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebView;->nativeSetRootLayer(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5500(Landroid/webkit/WebView;I)V

    .line 7205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 7210
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/webkit/WebTextView$AutoCompleteAdapter;

    .line 7211
    .local v12, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto/16 :goto_0

    .line 7216
    .end local v12           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :sswitch_18
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7217
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 7223
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mGotCenterDown:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7502(Landroid/webkit/WebView;Z)Z

    .line 7224
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mTrackballDown:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7602(Landroid/webkit/WebView;Z)Z

    .line 7225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_0

    .line 7229
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    if-eqz v6, :cond_1e

    const/4 v6, 0x1

    :goto_a
    #setter for: Landroid/webkit/WebView;->mForwardTouchEvents:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7702(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_0

    :cond_1e
    const/4 v6, 0x0

    goto :goto_a

    .line 7233
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4400(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7236
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-nez v5, :cond_22

    .line 7237
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 7242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1f

    const/4 v6, 0x3

    :goto_b
    #setter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3702(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    :cond_1f
    const/4 v6, 0x2

    goto :goto_b

    .line 7244
    :cond_20
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 7249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_21

    const/4 v6, 0x3

    :goto_c
    #setter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3702(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    :cond_21
    const/4 v6, 0x0

    goto :goto_c

    .line 7252
    :cond_22
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    if-nez v5, :cond_0

    .line 7255
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/webkit/WebViewCore$TouchEventData;

    .line 7256
    .restart local v32       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move v5, v0

    sparse-switch v5, :sswitch_data_1

    goto/16 :goto_0

    .line 7258
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7802(Landroid/webkit/WebView;F)F

    .line 7259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7902(Landroid/webkit/WebView;F)F

    .line 7260
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8002(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 7264
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$8000(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_23

    .line 7265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x3

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8002(Landroid/webkit/WebView;I)I

    .line 7266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7802(Landroid/webkit/WebView;F)F

    .line 7267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7902(Landroid/webkit/WebView;F)F

    .line 7268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->startDrag()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$8100(Landroid/webkit/WebView;)V

    .line 7270
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$8200(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$7800(Landroid/webkit/WebView;)F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v7, v0

    sub-float/2addr v6, v7

    float-to-int v6, v6

    #calls: Landroid/webkit/WebView;->pinLocX(I)I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8300(Landroid/webkit/WebView;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$8400(Landroid/webkit/WebView;)I

    move-result v6

    sub-int v14, v5, v6

    .line 7273
    .local v14, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$8500(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$7900(Landroid/webkit/WebView;)F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v7, v0

    sub-float/2addr v6, v7

    float-to-int v6, v6

    #calls: Landroid/webkit/WebView;->pinLocY(I)I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8600(Landroid/webkit/WebView;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$8700(Landroid/webkit/WebView;)I

    move-result v6

    sub-int v15, v5, v6

    .line 7276
    .local v15, deltaY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->doDrag(II)V
    invoke-static {v5, v14, v15}, Landroid/webkit/WebView;->access$8800(Landroid/webkit/WebView;II)V

    .line 7277
    if-eqz v14, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7802(Landroid/webkit/WebView;F)F

    .line 7278
    :cond_24
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7902(Landroid/webkit/WebView;F)F

    goto/16 :goto_0

    .line 7283
    .end local v14           #deltaX:I
    .end local v15           #deltaY:I
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$8000(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_25

    .line 7285
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v5}, Landroid/webkit/WebView;->access$9300(Landroid/webkit/WebView;)Landroid/widget/OverScroller;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$8900(Landroid/webkit/WebView;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$9000(Landroid/webkit/WebView;)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v9, v0

    #calls: Landroid/webkit/WebView;->computeMaxScrollX()I
    invoke-static {v9}, Landroid/webkit/WebView;->access$9100(Landroid/webkit/WebView;)I

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v11, v0

    #calls: Landroid/webkit/WebView;->computeMaxScrollY()I
    invoke-static {v11}, Landroid/webkit/WebView;->access$9200(Landroid/webkit/WebView;)I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 7288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    .line 7289
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7290
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7292
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8002(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 7296
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3802(Landroid/webkit/WebView;F)F

    .line 7297
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$4002(Landroid/webkit/WebView;F)F

    .line 7298
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->doDoubleTap()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$9400(Landroid/webkit/WebView;)V

    .line 7299
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8002(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 7302
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v20

    .line 7303
    .local v20, hitTest:Landroid/webkit/WebView$HitTestResult;
    if-eqz v20, :cond_26

    #getter for: Landroid/webkit/WebView$HitTestResult;->mType:I
    invoke-static/range {v20 .. v20}, Landroid/webkit/WebView$HitTestResult;->access$9500(Landroid/webkit/WebView$HitTestResult;)I

    move-result v5

    if-eqz v5, :cond_26

    .line 7305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->performLongClick()Z

    .line 7306
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 7308
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8002(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 7315
    .end local v20           #hitTest:Landroid/webkit/WebView$HitTestResult;
    .end local v32           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :sswitch_21
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_27

    .line 7316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->hideSoftKeyboard()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$9600(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 7318
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7000(Landroid/webkit/WebView;Z)V

    goto/16 :goto_0

    .line 7324
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mFindIsUp:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$5900(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;
    invoke-static {v6}, Landroid/webkit/WebView;->access$9700(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7330
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x2

    #setter for: Landroid/webkit/WebView;->mHeldMotionless:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9802(Landroid/webkit/WebView;I)I

    .line 7331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    .line 7335
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mHeldMotionless:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$9800(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 7337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    const/4 v7, 0x0

    #calls: Landroid/webkit/WebView;->awakenScrollBars(IZ)Z
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$9900(Landroid/webkit/WebView;IZ)Z

    .line 7339
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 7346
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebView;->doMotionUp(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$10000(Landroid/webkit/WebView;II)V

    goto/16 :goto_0

    .line 7350
    :sswitch_26
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/view/View;

    .line 7351
    .local v37, view:Landroid/view/View;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 7353
    .local v25, npp:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v5, :cond_28

    .line 7354
    const-string/jumbo v5, "webview"

    const-string v6, "Should not have another full screen."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7355
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v5}, Landroid/webkit/PluginFullScreenHolder;->dismiss()V

    .line 7357
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    new-instance v6, Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/webkit/PluginFullScreenHolder;-><init>(Landroid/webkit/WebView;I)V

    iput-object v6, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    .line 7358
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    move-object v0, v5

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/webkit/PluginFullScreenHolder;->setContentView(Landroid/view/View;)V

    .line 7359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/PluginFullScreenHolder;->setCancelable(Z)V

    .line 7360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/PluginFullScreenHolder;->setCanceledOnTouchOutside(Z)V

    .line 7361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v5}, Landroid/webkit/PluginFullScreenHolder;->show()V

    goto/16 :goto_0

    .line 7366
    .end local v25           #npp:I
    .end local v37           #view:Landroid/view/View;
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4400(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v5}, Landroid/webkit/PluginFullScreenHolder;->dismiss()V

    .line 7368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    goto/16 :goto_0

    .line 7373
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 7375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_0

    .line 7380
    :sswitch_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/webkit/WebViewCore$ShowRectData;

    .line 7381
    .local v13, data:Landroid/webkit/WebViewCore$ShowRectData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$10100(Landroid/webkit/WebView;)I

    move-result v42

    .line 7382
    .local v42, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v6, v13, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v22

    .line 7383
    .local v22, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v6, v13, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v41

    .line 7384
    .local v41, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v6, v13, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v24

    .line 7385
    .local v24, maxWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v40

    .line 7386
    .restart local v40       #viewWidth:I
    move/from16 v0, v41

    move/from16 v1, v40

    if-ge v0, v1, :cond_29

    .line 7388
    div-int/lit8 v5, v41, 0x2

    add-int v5, v5, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$10200(Landroid/webkit/WebView;)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v6, v40, 0x2

    sub-int/2addr v5, v6

    add-int v42, v42, v5

    .line 7402
    :goto_d
    const/4 v5, 0x0

    add-int v6, v42, v40

    move/from16 v0, v24

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v6, v6, v40

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 7404
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v6, v13, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v34

    .line 7405
    .local v34, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v6, v13, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v19

    .line 7406
    .local v19, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v6, v13, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v23

    .line 7407
    .local v23, maxHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v38

    .line 7408
    .local v38, viewHeight:I
    move/from16 v0, v34

    int-to-float v0, v0

    move v5, v0

    iget v6, v13, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    move/from16 v0, v19

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, v13, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    move/from16 v0, v38

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v43, v0

    .line 7419
    .local v43, y:I
    const/4 v5, 0x0

    add-int v6, v43, v38

    move/from16 v0, v23

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v6, v6, v38

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 7423
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #calls: Landroid/webkit/WebView;->getVisibleTitleHeight()I
    invoke-static {v6}, Landroid/webkit/WebView;->access$1500(Landroid/webkit/WebView;)I

    move-result v6

    sub-int v6, v43, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 7424
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto/16 :goto_0

    .line 7390
    .end local v19           #height:I
    .end local v23           #maxHeight:I
    .end local v34           #top:I
    .end local v38           #viewHeight:I
    .end local v43           #y:I
    :cond_29
    move/from16 v0, v22

    int-to-float v0, v0

    move v5, v0

    iget v6, v13, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    move/from16 v0, v41

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$10300(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, v13, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    move/from16 v0, v40

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    add-int v42, v42, v5

    goto/16 :goto_d

    .line 7429
    .end local v13           #data:Landroid/webkit/WebViewCore$ShowRectData;
    .end local v22           #left:I
    .end local v24           #maxWidth:I
    .end local v40           #viewWidth:I
    .end local v41           #width:I
    .end local v42           #x:I
    :sswitch_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/graphics/Rect;

    .line 7430
    .restart local v27       #r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 7431
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v9

    #calls: Landroid/webkit/WebView;->centerFitRect(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebView;->access$10400(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_0

    .line 7435
    .end local v27           #r:Landroid/graphics/Rect;
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mHorizontalScrollBarMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$10502(Landroid/webkit/WebView;I)I

    .line 7436
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mVerticalScrollBarMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$10602(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 6901
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_17
        0x7 -> :sswitch_18
        0x8 -> :sswitch_23
        0x9 -> :sswitch_24
        0xa -> :sswitch_2
        0x65 -> :sswitch_8
        0x66 -> :sswitch_6
        0x67 -> :sswitch_9
        0x68 -> :sswitch_7
        0x69 -> :sswitch_b
        0x6a -> :sswitch_12
        0x6b -> :sswitch_c
        0x6c -> :sswitch_d
        0x6d -> :sswitch_a
        0x6e -> :sswitch_11
        0x6f -> :sswitch_13
        0x70 -> :sswitch_f
        0x71 -> :sswitch_29
        0x72 -> :sswitch_19
        0x73 -> :sswitch_1b
        0x74 -> :sswitch_1a
        0x75 -> :sswitch_14
        0x76 -> :sswitch_21
        0x77 -> :sswitch_25
        0x78 -> :sswitch_26
        0x79 -> :sswitch_27
        0x7a -> :sswitch_28
        0x7b -> :sswitch_15
        0x7c -> :sswitch_16
        0x7d -> :sswitch_10
        0x7e -> :sswitch_22
        0x7f -> :sswitch_2a
        0x80 -> :sswitch_e
        0x81 -> :sswitch_2b
    .end sparse-switch

    .line 7256
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1c
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_1e
        0x100 -> :sswitch_20
        0x200 -> :sswitch_1f
    .end sparse-switch
.end method
