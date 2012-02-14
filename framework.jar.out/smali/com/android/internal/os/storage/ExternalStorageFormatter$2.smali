.class Lcom/android/internal/os/storage/ExternalStorageFormatter$2;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

.field final synthetic val$extStoragePath:Ljava/lang/String;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iput-object p2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    iput-object p3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$extStoragePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const-string v6, "android.intent.action.MASTER_CLEAR"

    const-string v5, "ExternalStorageFormatter"

    .line 212
    const/4 v1, 0x0

    .line 215
    .local v1, success:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mOnlyInnerSD:Z
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    const-string v2, "ExternalStorageFormatter"

    const-string v3, "format /HWUserData "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    const-string v3, "/HWUserData"

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    const/4 v1, 0x1

    .line 235
    :goto_1
    if-eqz v1, :cond_2

    .line 236
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 259
    :goto_2
    return-void

    .line 219
    :cond_0
    :try_start_1
    const-string v2, "ExternalStorageFormatter"

    const-string v3, "format /mnt/sdcard "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 226
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mOnlyInnerSD:Z
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v3, 0x2020025

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v3, 0x1040385

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 245
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 246
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 258
    :goto_3
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_2

    .line 251
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const/4 v3, 0x1

    #setter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMaybeRemountState:Z
    invoke-static {v2, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$002(Lcom/android/internal/os/storage/ExternalStorageFormatter;Z)Z

    .line 253
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 254
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 255
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ExternalStorageFormatter"

    const-string v2, "Failed talking with mount service"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
