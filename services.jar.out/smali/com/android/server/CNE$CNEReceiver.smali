.class Lcom/android/server/CNE$CNEReceiver;
.super Ljava/lang/Object;
.source "CNE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CNEReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/server/CNE;


# direct methods
.method constructor <init>(Lcom/android/server/CNE;)V
    .locals 1
    .parameter

    .prologue
    .line 988
    iput-object p1, p0, Lcom/android/server/CNE$CNEReceiver;->this$0:Lcom/android/server/CNE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/CNE$CNEReceiver;->buffer:[B

    .line 990
    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 993
    const/4 v11, 0x0

    .line 997
    .local v11, retryCount:I
    :goto_0
    const/4 v13, 0x0

    .line 1002
    .local v13, s:Landroid/net/LocalSocket;
    :try_start_0
    new-instance v14, Landroid/net/LocalSocket;

    invoke-direct {v14}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8

    .line 1003
    .end local v13           #s:Landroid/net/LocalSocket;
    .local v14, s:Landroid/net/LocalSocket;
    :try_start_1
    new-instance v8, Landroid/net/LocalSocketAddress;

    const-string v17, "cnd"

    sget-object v18, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object v0, v8

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 1005
    .local v8, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v14, v8}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 1036
    const/4 v11, 0x0

    .line 1037
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$CNEReceiver;->this$0:Lcom/android/server/CNE;

    move-object/from16 v17, v0

    move-object v0, v14

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/CNE;->mSocket:Landroid/net/LocalSocket;

    .line 1039
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/server/CNE;->isCndUp:Z

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$CNEReceiver;->this$0:Lcom/android/server/CNE;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/CNE;->sendInitReq()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/CNE;->access$1400(Lcom/android/server/CNE;)Z

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$CNEReceiver;->this$0:Lcom/android/server/CNE;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/CNE;->mService:Lcom/android/server/ConnectivityService;
    invoke-static/range {v17 .. v17}, Lcom/android/server/CNE;->access$1500(Lcom/android/server/CNE;)Lcom/android/server/ConnectivityService;

    move-result-object v17

    monitor-enter v17
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1046
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$CNEReceiver;->this$0:Lcom/android/server/CNE;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$CNEReceiver;->this$0:Lcom/android/server/CNE;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/CNE;->mNetworkPreference:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/CNE;->access$1600(Lcom/android/server/CNE;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/CNE;->sendDefaultNwPref(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1050
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$CNEReceiver;->this$0:Lcom/android/server/CNE;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/CNE;->mDefaultConn:Lcom/android/server/CNE$DefaultConnection;
    invoke-static/range {v18 .. v18}, Lcom/android/server/CNE;->access$1700(Lcom/android/server/CNE;)Lcom/android/server/CNE$DefaultConnection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/CNE$DefaultConnection;->startConnection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1054
    :goto_1
    :try_start_5
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1055
    const/4 v9, 0x0

    .line 1057
    .local v9, length:I
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$CNEReceiver;->this$0:Lcom/android/server/CNE;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/CNE;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 1062
    .local v7, is:Ljava/io/InputStream;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$CNEReceiver;->buffer:[B

    move-object/from16 v17, v0

    move-object v0, v7

    move-object/from16 v1, v17

    #calls: Lcom/android/server/CNE;->readCneMessage(Ljava/io/InputStream;[B)I
    invoke-static {v0, v1}, Lcom/android/server/CNE;->access$1800(Ljava/io/InputStream;[B)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    move-result v9

    .line 1064
    if-gez v9, :cond_3

    .line 1089
    .end local v7           #is:Ljava/io/InputStream;
    :goto_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$CNEReceiver;->this$0:Lcom/android/server/CNE;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/CNE;->mDefaultConn:Lcom/android/server/CNE$DefaultConnection;
    invoke-static/range {v17 .. v17}, Lcom/android/server/CNE;->access$1700(Lcom/android/server/CNE;)Lcom/android/server/CNE$DefaultConnection;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/CNE$DefaultConnection;->endConnection()V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 1093
    :goto_4
    const/16 v17, 0x0

    :try_start_8
    sput-boolean v17, Lcom/android/server/CNE;->isCndUp:Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 1095
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$CNEReceiver;->this$0:Lcom/android/server/CNE;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/CNE;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 1099
    :goto_5
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$CNEReceiver;->this$0:Lcom/android/server/CNE;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/CNE;->mSocket:Landroid/net/LocalSocket;

    .line 1100
    invoke-static {}, Lcom/android/server/CNERequest;->resetSerial()V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$CNEReceiver;->this$0:Lcom/android/server/CNE;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/CNE;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    .line 1104
    const/4 v6, 0x0

    .local v6, i:I
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$CNEReceiver;->this$0:Lcom/android/server/CNE;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/CNE;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, sz:I
    :goto_6
    if-ge v6, v15, :cond_4

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$CNEReceiver;->this$0:Lcom/android/server/CNE;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/CNE;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/CNERequest;

    .line 1107
    .local v12, rr:Lcom/android/server/CNERequest;
    invoke-virtual {v12}, Lcom/android/server/CNERequest;->release()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1104
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1006
    .end local v6           #i:I
    .end local v8           #l:Landroid/net/LocalSocketAddress;
    .end local v9           #length:I
    .end local v12           #rr:Lcom/android/server/CNERequest;
    .end local v14           #s:Landroid/net/LocalSocket;
    .end local v15           #sz:I
    .restart local v13       #s:Landroid/net/LocalSocket;
    :catch_0
    move-exception v17

    move-object/from16 v5, v17

    .line 1008
    .local v5, ex:Ljava/io/IOException;
    :goto_7
    if-eqz v13, :cond_0

    .line 1009
    :try_start_c
    invoke-virtual {v13}, Landroid/net/LocalSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8

    .line 1018
    :cond_0
    :goto_8
    const/16 v17, 0x8

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 1019
    :try_start_d
    const-string v17, "CNE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Couldn\'t find \'cnd\' socket after "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " times, continuing to retry silently"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    .line 1029
    :cond_1
    :goto_9
    const-wide/16 v17, 0xfa0

    :try_start_e
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    .line 1033
    :goto_a
    add-int/lit8 v11, v11, 0x1

    .line 1034
    goto/16 :goto_0

    .line 1021
    :cond_2
    if-lez v11, :cond_1

    const/16 v17, 0x8

    move v0, v11

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    goto :goto_9

    .line 1051
    .end local v5           #ex:Ljava/io/IOException;
    .end local v13           #s:Landroid/net/LocalSocket;
    .restart local v8       #l:Landroid/net/LocalSocketAddress;
    .restart local v14       #s:Landroid/net/LocalSocket;
    :catch_1
    move-exception v18

    move-object/from16 v4, v18

    .line 1052
    .local v4, e:Ljava/lang/NullPointerException;
    :try_start_f
    const-string v18, "CNE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception mDefaultConn is null"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1054
    .end local v4           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v18

    monitor-exit v17
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    throw v18
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2

    .line 1113
    .end local v8           #l:Landroid/net/LocalSocketAddress;
    :catch_2
    move-exception v17

    move-object/from16 v16, v17

    move-object v13, v14

    .line 1114
    .end local v14           #s:Landroid/net/LocalSocket;
    .restart local v13       #s:Landroid/net/LocalSocket;
    .local v16, tr:Ljava/lang/Throwable;
    :goto_b
    const-string v17, "CNE"

    const-string v18, "Uncaught exception"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1116
    return-void

    .line 1068
    .end local v13           #s:Landroid/net/LocalSocket;
    .end local v16           #tr:Ljava/lang/Throwable;
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #l:Landroid/net/LocalSocketAddress;
    .restart local v9       #length:I
    .restart local v14       #s:Landroid/net/LocalSocket;
    :cond_3
    :try_start_11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 1069
    .local v10, p:Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$CNEReceiver;->buffer:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v10

    move-object/from16 v1, v17

    move/from16 v2, v18

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1070
    const/16 v17, 0x0

    move-object v0, v10

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$CNEReceiver;->this$0:Lcom/android/server/CNE;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    #calls: Lcom/android/server/CNE;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v0, v1}, Lcom/android/server/CNE;->access$1900(Lcom/android/server/CNE;Landroid/os/Parcel;)V

    .line 1073
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4

    goto/16 :goto_2

    .line 1075
    .end local v7           #is:Ljava/io/InputStream;
    .end local v10           #p:Landroid/os/Parcel;
    :catch_3
    move-exception v17

    goto/16 :goto_3

    .line 1077
    :catch_4
    move-exception v17

    move-object/from16 v16, v17

    .line 1078
    .restart local v16       #tr:Ljava/lang/Throwable;
    :try_start_12
    const-string v17, "CNE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Uncaught exception read length="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "Exception:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1090
    .end local v16           #tr:Ljava/lang/Throwable;
    :catch_5
    move-exception v17

    move-object/from16 v4, v17

    .line 1091
    .restart local v4       #e:Ljava/lang/NullPointerException;
    const-string v17, "CNE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception mDefaultConn is null"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_4

    .line 1110
    .end local v4           #e:Ljava/lang/NullPointerException;
    .restart local v6       #i:I
    .restart local v15       #sz:I
    :cond_4
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$CNEReceiver;->this$0:Lcom/android/server/CNE;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/CNE;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 1111
    monitor-exit v17

    goto/16 :goto_0

    .end local v15           #sz:I
    :catchall_1
    move-exception v18

    monitor-exit v17
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    throw v18
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_2

    .line 1011
    .end local v6           #i:I
    .end local v8           #l:Landroid/net/LocalSocketAddress;
    .end local v9           #length:I
    .end local v14           #s:Landroid/net/LocalSocket;
    .restart local v5       #ex:Ljava/io/IOException;
    .restart local v13       #s:Landroid/net/LocalSocket;
    :catch_6
    move-exception v17

    goto/16 :goto_8

    .line 1030
    :catch_7
    move-exception v17

    goto/16 :goto_a

    .line 1113
    .end local v5           #ex:Ljava/io/IOException;
    :catch_8
    move-exception v17

    move-object/from16 v16, v17

    goto/16 :goto_b

    .line 1096
    .end local v13           #s:Landroid/net/LocalSocket;
    .restart local v8       #l:Landroid/net/LocalSocketAddress;
    .restart local v9       #length:I
    .restart local v14       #s:Landroid/net/LocalSocket;
    :catch_9
    move-exception v17

    goto/16 :goto_5

    .line 1006
    .end local v8           #l:Landroid/net/LocalSocketAddress;
    .end local v9           #length:I
    :catch_a
    move-exception v17

    move-object/from16 v5, v17

    move-object v13, v14

    .end local v14           #s:Landroid/net/LocalSocket;
    .restart local v13       #s:Landroid/net/LocalSocket;
    goto/16 :goto_7
.end method
