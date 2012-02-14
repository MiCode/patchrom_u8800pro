.class Lcom/android/server/CNE$CNESender;
.super Landroid/os/Handler;
.source "CNE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CNESender"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/android/server/CNE;


# direct methods
.method public constructor <init>(Lcom/android/server/CNE;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 841
    iput-object p1, p0, Lcom/android/server/CNE$CNESender;->this$0:Lcom/android/server/CNE;

    .line 842
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 846
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/CNE$CNESender;->dataLength:[B

    .line 843
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .parameter "msg"

    .prologue
    const/4 v13, 0x1

    const-string v14, "CNE"

    .line 855
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/server/CNERequest;

    move-object v0, v8

    check-cast v0, Lcom/android/server/CNERequest;

    move-object v6, v0

    .line 856
    .local v6, rr:Lcom/android/server/CNERequest;
    const/4 v5, 0x0

    .line 858
    .local v5, req:Lcom/android/server/CNERequest;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v8, v0

    packed-switch v8, :pswitch_data_0

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 866
    :pswitch_0
    const/4 v1, 0x0

    .line 869
    .local v1, alreadySubtracted:Z
    :try_start_0
    iget-object v8, p0, Lcom/android/server/CNE$CNESender;->this$0:Lcom/android/server/CNE;

    iget-object v7, v8, Lcom/android/server/CNE;->mSocket:Landroid/net/LocalSocket;

    .line 870
    .local v7, s:Landroid/net/LocalSocket;
    if-nez v7, :cond_1

    .line 871
    invoke-virtual {v6}, Lcom/android/server/CNERequest;->release()V

    .line 872
    iget-object v8, p0, Lcom/android/server/CNE$CNESender;->this$0:Lcom/android/server/CNE;

    iget v9, v8, Lcom/android/server/CNE;->mRequestMessagesPending:I

    sub-int/2addr v9, v13

    iput v9, v8, Lcom/android/server/CNE;->mRequestMessagesPending:I

    .line 873
    const/4 v1, 0x1

    goto :goto_0

    .line 876
    :cond_1
    iget-object v8, p0, Lcom/android/server/CNE$CNESender;->this$0:Lcom/android/server/CNE;

    iget-object v8, v8, Lcom/android/server/CNE;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 877
    :try_start_1
    iget-object v9, p0, Lcom/android/server/CNE$CNESender;->this$0:Lcom/android/server/CNE;

    iget-object v9, v9, Lcom/android/server/CNE;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 879
    :try_start_2
    iget-object v8, p0, Lcom/android/server/CNE$CNESender;->this$0:Lcom/android/server/CNE;

    iget v9, v8, Lcom/android/server/CNE;->mRequestMessagesPending:I

    sub-int/2addr v9, v13

    iput v9, v8, Lcom/android/server/CNE;->mRequestMessagesPending:I

    .line 880
    const/4 v1, 0x1

    .line 882
    iget-object v8, v6, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 883
    .local v2, data:[B
    iget-object v8, v6, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 884
    const/4 v8, 0x0

    iput-object v8, v6, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    .line 885
    array-length v8, v2

    const/16 v9, 0x2000

    if-le v8, v9, :cond_5

    .line 886
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parcel larger than max bytes allowed! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 897
    .end local v2           #data:[B
    .end local v7           #s:Landroid/net/LocalSocket;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 898
    .local v3, ex:Ljava/io/IOException;
    const-string v8, "CNE"

    const-string v8, "IOException"

    invoke-static {v14, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    iget-object v8, p0, Lcom/android/server/CNE$CNESender;->this$0:Lcom/android/server/CNE;

    iget v9, v6, Lcom/android/server/CNERequest;->mSerial:I

    #calls: Lcom/android/server/CNE;->findAndRemoveRequestFromList(I)Lcom/android/server/CNERequest;
    invoke-static {v8, v9}, Lcom/android/server/CNE;->access$1300(Lcom/android/server/CNE;I)Lcom/android/server/CNERequest;

    move-result-object v5

    .line 902
    if-nez v5, :cond_2

    if-nez v1, :cond_3

    .line 903
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/CNERequest;->release()V

    .line 916
    .end local v3           #ex:Ljava/io/IOException;
    :cond_3
    :goto_1
    if-nez v1, :cond_0

    .line 917
    iget-object v8, p0, Lcom/android/server/CNE$CNESender;->this$0:Lcom/android/server/CNE;

    iget v9, v8, Lcom/android/server/CNE;->mRequestMessagesPending:I

    sub-int/2addr v9, v13

    iput v9, v8, Lcom/android/server/CNE;->mRequestMessagesPending:I

    goto :goto_0

    .line 878
    .restart local v7       #s:Landroid/net/LocalSocket;
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 905
    .end local v7           #s:Landroid/net/LocalSocket;
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 906
    .local v4, exc:Ljava/lang/RuntimeException;
    const-string v8, "CNE"

    const-string v8, "Uncaught exception "

    invoke-static {v14, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    iget-object v8, p0, Lcom/android/server/CNE$CNESender;->this$0:Lcom/android/server/CNE;

    iget v9, v6, Lcom/android/server/CNERequest;->mSerial:I

    #calls: Lcom/android/server/CNE;->findAndRemoveRequestFromList(I)Lcom/android/server/CNERequest;
    invoke-static {v8, v9}, Lcom/android/server/CNE;->access$1300(Lcom/android/server/CNE;I)Lcom/android/server/CNERequest;

    move-result-object v5

    .line 910
    if-nez v5, :cond_4

    if-nez v1, :cond_3

    .line 912
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/CNERequest;->release()V

    goto :goto_1

    .line 891
    .end local v4           #exc:Ljava/lang/RuntimeException;
    .restart local v2       #data:[B
    .restart local v7       #s:Landroid/net/LocalSocket;
    :cond_5
    :try_start_5
    iget-object v8, p0, Lcom/android/server/CNE$CNESender;->dataLength:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/CNE$CNESender;->dataLength:[B

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-byte v12, v10, v11

    aput-byte v12, v8, v9

    .line 892
    iget-object v8, p0, Lcom/android/server/CNE$CNESender;->dataLength:[B

    const/4 v9, 0x2

    array-length v10, v2

    shr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 893
    iget-object v8, p0, Lcom/android/server/CNE$CNESender;->dataLength:[B

    const/4 v9, 0x3

    array-length v10, v2

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 895
    invoke-virtual {v7}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/CNE$CNESender;->dataLength:[B

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    .line 896
    invoke-virtual {v7}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 858
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 851
    return-void
.end method
