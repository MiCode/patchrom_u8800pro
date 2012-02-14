.class Landroid/webkit/BrowserFrame;
.super Landroid/os/Handler;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/BrowserFrame$ConfigCallback;
    }
.end annotation


# static fields
.field private static final DRAWABLEDIR:I = 0x3

.field private static final FILE_UPLOAD_LABEL:I = 0x4

.field static final FRAME_COMPLETED:I = 0x3e9

.field static final FRAME_LOADTYPE_BACK:I = 0x1

.field static final FRAME_LOADTYPE_FORWARD:I = 0x2

.field static final FRAME_LOADTYPE_INDEXEDBACKFORWARD:I = 0x3

.field static final FRAME_LOADTYPE_REDIRECT:I = 0x7

.field static final FRAME_LOADTYPE_RELOAD:I = 0x4

.field static final FRAME_LOADTYPE_RELOADALLOWINGSTALEDATA:I = 0x5

.field static final FRAME_LOADTYPE_REPLACE:I = 0x8

.field static final FRAME_LOADTYPE_SAME:I = 0x6

.field static final FRAME_LOADTYPE_STANDARD:I = 0x0

.field private static final LOADERROR:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MAX_OUTSTANDING_REQUESTS:I = 0x12c

.field private static final NODOMAIN:I = 0x1

.field static final ORIENTATION_CHANGED:I = 0x3ea

.field static final POLICY_FUNCTION:I = 0x3eb

.field static final POLICY_IGNORE:I = 0x2

.field static final POLICY_USE:I = 0x0

.field private static final RESET_LABEL:I = 0x5

.field private static final SUBMIT_LABEL:I = 0x6

.field private static final TRANSITION_SWITCH_THRESHOLD:I = 0x4b

.field static sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

.field static sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;


# instance fields
.field private mBlockMessages:Z

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCommitted:Z

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/webkit/WebViewDatabase;

.field private mFirstLayoutDone:Z

.field private mIsMainFrame:Z

.field private mJSInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mLoadInitFromJava:Z

.field private mLoadType:I

.field mNativeFrame:I

.field private mOrientation:I

.field private final mSettings:Landroid/webkit/WebSettings;

.field private final mTcpPreConnectionManager:Landroid/webkit/PreConnectionManager;

.field private final mWebViewCore:Landroid/webkit/WebViewCore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettings;Ljava/util/Map;)V
    .locals 5
    .parameter "context"
    .parameter "w"
    .parameter "proxy"
    .parameter "settings"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebViewCore;",
            "Landroid/webkit/CallbackProxy;",
            "Landroid/webkit/WebSettings;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x1

    .line 191
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 73
    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 77
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    .line 78
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 197
    .local v1, appContext:Landroid/content/Context;
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_0

    .line 198
    new-instance v2, Landroid/webkit/JWebCoreJavaBridge;

    invoke-direct {v2}, Landroid/webkit/JWebCoreJavaBridge;-><init>()V

    sput-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    .line 200
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 202
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_2

    .line 203
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const-string v3, "net.webkit.cache.size"

    const/high16 v4, 0x80

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/JWebCoreJavaBridge;->setCacheSize(I)V

    .line 209
    :goto_0
    invoke-static {v1}, Landroid/webkit/CacheManager;->init(Landroid/content/Context;)V

    .line 211
    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 213
    invoke-static {v1}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    .line 216
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_0
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    if-nez v2, :cond_1

    .line 217
    new-instance v3, Landroid/webkit/BrowserFrame$ConfigCallback;

    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-direct {v3, v2}, Landroid/webkit/BrowserFrame$ConfigCallback;-><init>(Landroid/view/WindowManager;)V

    sput-object v3, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    .line 220
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    invoke-static {v2}, Landroid/view/ViewRoot;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 222
    :cond_1
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    invoke-virtual {v2, p0}, Landroid/webkit/BrowserFrame$ConfigCallback;->addHandler(Landroid/os/Handler;)V

    .line 224
    iput-object p5, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    .line 226
    iput-object p4, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    .line 227
    iput-object p1, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    .line 228
    iput-object p3, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 229
    invoke-static {v1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    .line 230
    iput-object p2, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 232
    new-instance v2, Landroid/webkit/PreConnectionManager;

    invoke-direct {v2, v1}, Landroid/webkit/PreConnectionManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mTcpPreConnectionManager:Landroid/webkit/PreConnectionManager;

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 235
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-virtual {p3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    invoke-direct {p0, p2, v0, v2}, Landroid/webkit/BrowserFrame;->nativeCreateFrame(Landroid/webkit/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkit/WebBackForwardList;)V

    .line 240
    return-void

    .line 206
    .local v0, am:Landroid/app/ActivityManager;
    :cond_2
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const/high16 v3, 0x40

    invoke-virtual {v2, v3}, Landroid/webkit/JWebCoreJavaBridge;->setCacheSize(I)V

    goto :goto_0
.end method

.method private closeWindow(Landroid/webkit/WebViewCore;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 882
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {p1}, Landroid/webkit/WebViewCore;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 883
    return-void
.end method

.method private createWindow(ZZ)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "dialog"
    .parameter "userGesture"

    .prologue
    .line 863
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->createWindow(ZZ)Landroid/webkit/BrowserFrame;

    move-result-object v0

    return-object v0
.end method

.method private decidePolicyForFormResubmission(I)V
    .locals 4
    .parameter "policyFunction"

    .prologue
    const/16 v3, 0x3eb

    .line 890
    const/4 v2, 0x2

    invoke-virtual {p0, v3, p1, v2}, Landroid/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 892
    .local v0, dontResend:Landroid/os/Message;
    const/4 v2, 0x0

    invoke-virtual {p0, v3, p1, v2}, Landroid/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 894
    .local v1, resend:Landroid/os/Message;
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/CallbackProxy;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    .line 895
    return-void
.end method

.method private density()F
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private didReceiveIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 850
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedIcon(Landroid/graphics/Bitmap;)V

    .line 851
    return-void
.end method

.method private didReceiveTouchIconUrl(Ljava/lang/String;Z)V
    .locals 1
    .parameter "url"
    .parameter "precomposed"

    .prologue
    .line 855
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onReceivedTouchIconUrl(Ljava/lang/String;Z)V

    .line 856
    return-void
.end method

.method private native documentAsText()Ljava/lang/String;
.end method

.method private native externalRepresentation()Ljava/lang/String;
.end method

.method private getFile(Ljava/lang/String;[BII)I
    .locals 7
    .parameter "uri"
    .parameter "buffer"
    .parameter "offset"
    .parameter "expectedSize"

    .prologue
    const-string/jumbo v6, "webkit"

    .line 657
    const/4 v2, 0x0

    .line 659
    .local v2, size:I
    :try_start_0
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 661
    .local v3, stream:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 662
    if-gt v2, p4, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    sub-int/2addr v4, p3

    if-lt v4, v2, :cond_0

    .line 664
    invoke-virtual {v3, p2, p3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 668
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 676
    .end local v3           #stream:Ljava/io/InputStream;
    :goto_1
    return v2

    .line 666
    .restart local v3       #stream:Ljava/io/InputStream;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 669
    .end local v3           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 670
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v2, 0x0

    .line 675
    goto :goto_1

    .line 672
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 673
    .local v1, e2:Ljava/io/IOException;
    const-string/jumbo v4, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getFileSize(Ljava/lang/String;)I
    .locals 4
    .parameter "uri"

    .prologue
    .line 636
    const/4 v0, 0x0

    .line 638
    .local v0, size:I
    :try_start_0
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 640
    .local v1, stream:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 641
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .end local v1           #stream:Ljava/io/InputStream;
    :goto_0
    return v0

    .line 642
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private native getFormTextData()Ljava/util/HashMap;
.end method

.method private native getUsernamePassword()[Ljava/lang/String;
.end method

.method private native hasPasswordField()Z
.end method

.method private loadFinished(Ljava/lang/String;IZ)V
    .locals 1
    .parameter "url"
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    .line 459
    if-nez p3, :cond_0

    if-nez p2, :cond_1

    .line 462
    :cond_0
    invoke-static {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->loadFinished(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    if-eqz p3, :cond_1

    .line 465
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 466
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->switchOutDrawHistory()V

    .line 467
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onPageFinished(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mTcpPreConnectionManager:Landroid/webkit/PreConnectionManager;

    invoke-virtual {v0}, Landroid/webkit/PreConnectionManager;->onLoadFinished()V

    .line 472
    :cond_1
    return-void
.end method

.method private loadStarted(Ljava/lang/String;Landroid/graphics/Bitmap;IZ)V
    .locals 6
    .parameter "url"
    .parameter "favicon"
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    const/4 v5, 0x0

    .line 391
    iput-boolean p4, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    .line 393
    if-nez p4, :cond_0

    if-nez p3, :cond_3

    .line 396
    :cond_0
    invoke-static {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->loadStart(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    iput p3, p0, Landroid/webkit/BrowserFrame;->mLoadType:I

    .line 400
    if-eqz p4, :cond_2

    .line 403
    new-instance v2, Landroid/net/WebAddress;

    invoke-direct {v2, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 404
    .local v2, uri:Landroid/net/WebAddress;
    iget-object v3, v2, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 405
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mTcpPreConnectionManager:Landroid/webkit/PreConnectionManager;

    iget-object v4, v2, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/webkit/PreConnectionManager;->onLoadStarted(Ljava/lang/String;)V

    .line 409
    :cond_1
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3, p1, p2}, Landroid/webkit/CallbackProxy;->onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 412
    iput-boolean v5, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 413
    iput-boolean v5, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 416
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x82

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 420
    .end local v2           #uri:Landroid/net/WebAddress;
    :cond_2
    if-nez p3, :cond_3

    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 422
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v1

    .line 424
    .local v1, h:Landroid/webkit/WebHistoryItem;
    if-eqz v1, :cond_3

    .line 425
    invoke-virtual {v1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, currentUrl:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 427
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->getFormTextData()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/webkit/WebViewDatabase;->setFormData(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 432
    .end local v0           #currentUrl:Ljava/lang/String;
    .end local v1           #h:Landroid/webkit/WebHistoryItem;
    :cond_3
    return-void
.end method

.method private native nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;)V
.end method

.method private native nativeCallPolicyFunction(II)V
.end method

.method private native nativeCreateFrame(Landroid/webkit/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkit/WebBackForwardList;)V
.end method

.method private native nativeGetEmbeddedHostNames(I)Ljava/util/HashMap;
.end method

.method private native nativeGoBackOrForward(I)V
.end method

.method private native nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeOrientationChanged(I)V
.end method

.method private native nativePostUrl(Ljava/lang/String;[B)V
.end method

.method private native nativeStopLoading()V
.end method

.method private reportError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 349
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 350
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method private requestFocus()V
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onRequestFocus()V

    .line 876
    return-void
.end method

.method private resetLoadingStates()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 354
    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 355
    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 356
    return-void
.end method

.method private resolveDnsForHost(Ljava/lang/String;)V
    .locals 2
    .parameter "host"

    .prologue
    .line 867
    invoke-static {}, Landroid/webkit/DnsResolver;->getInstance()Landroid/webkit/DnsResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    invoke-static {}, Landroid/webkit/DnsResolver;->getInstance()Landroid/webkit/DnsResolver;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Landroid/webkit/DnsResolver;->resolveDnsForHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_0
    return-void
.end method

.method private native setCacheDisabled(Z)V
.end method

.method private setProgress(I)V
    .locals 3
    .parameter "newProgress"

    .prologue
    .line 833
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onProgressChanged(I)V

    .line 834
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 835
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/BrowserFrame;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 840
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4b

    if-le p1, v0, :cond_1

    .line 841
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->switchOutDrawHistory()V

    .line 843
    :cond_1
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 554
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedTitle(Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method private native setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private startLoadingResource(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BJIZZZLjava/lang/String;Ljava/lang/String;IZ)Landroid/webkit/LoadListener;
    .locals 25
    .parameter "loaderHandle"
    .parameter "url"
    .parameter "method"
    .parameter "headers"
    .parameter "postData"
    .parameter "postDataIdentifier"
    .parameter "cacheMode"
    .parameter "mainResource"
    .parameter "userGesture"
    .parameter "synchronous"
    .parameter "username"
    .parameter "password"
    .parameter "priority"
    .parameter "commit"

    .prologue
    .line 709
    new-instance v17, Landroid/webkit/PerfChecker;

    invoke-direct/range {v17 .. v17}, Landroid/webkit/PerfChecker;-><init>()V

    .line 711
    .local v17, checker:Landroid/webkit/PerfChecker;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result p8

    .line 715
    :cond_0
    const-string v5, "POST"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 718
    if-nez p8, :cond_1

    .line 719
    const/16 p8, 0x2

    .line 721
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getSavePassword()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/webkit/BrowserFrame;->hasPasswordField()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 727
    :try_start_0
    new-instance v24, Landroid/net/WebAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 729
    .local v24, uri:Landroid/net/WebAddress;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 730
    .local v23, schemePlusHost:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Landroid/webkit/BrowserFrame;->getUsernamePassword()[Ljava/lang/String;

    move-result-object v21

    .line 733
    .local v21, ret:[Ljava/lang/String;
    if-eqz v21, :cond_2

    if-eqz p5, :cond_2

    const/4 v5, 0x0

    aget-object v5, v21, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x1

    aget-object v5, v21, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 738
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 739
    .local v20, postString:Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v21, v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    aget-object v5, v21, v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewDatabase;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 743
    .local v22, saved:[Ljava/lang/String;
    if-eqz v22, :cond_4

    .line 746
    const/4 v5, 0x0

    aget-object v5, v22, v5

    if-eqz v5, :cond_2

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v6, v21, v6

    const/4 v7, 0x1

    aget-object v7, v21, v7

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    .end local v20           #postString:Ljava/lang/String;
    .end local v21           #ret:[Ljava/lang/String;
    .end local v22           #saved:[Ljava/lang/String;
    .end local v23           #schemePlusHost:Ljava/lang/String;
    .end local v24           #uri:Landroid/net/WebAddress;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    move v10, v0

    .line 771
    .local v10, isMainFramePage:Z
    if-nez p9, :cond_3

    .line 772
    new-instance v24, Landroid/net/WebAddress;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 773
    .restart local v24       #uri:Landroid/net/WebAddress;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mTcpPreConnectionManager:Landroid/webkit/PreConnectionManager;

    move-object v5, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/PreConnectionManager;->onResourceLoad(Ljava/lang/String;)V

    .line 790
    .end local v24           #uri:Landroid/net/WebAddress;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p1

    move/from16 v9, p11

    move/from16 v11, p9

    move/from16 v12, p10

    move-wide/from16 v13, p6

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    invoke-static/range {v5 .. v16}, Landroid/webkit/LoadListener;->getLoadListener(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)Landroid/webkit/LoadListener;

    move-result-object v18

    .line 793
    .local v18, loadListener:Landroid/webkit/LoadListener;
    move-object/from16 v0, v18

    move/from16 v1, p14

    invoke-virtual {v0, v1}, Landroid/webkit/LoadListener;->setPriority(I)V

    .line 794
    move-object/from16 v0, v18

    move/from16 v1, p15

    invoke-virtual {v0, v1}, Landroid/webkit/LoadListener;->setShouldCommit(Z)V

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->onLoadResource(Ljava/lang/String;)V

    .line 798
    invoke-static {}, Landroid/webkit/LoadListener;->getNativeLoaderCount()I

    move-result v5

    const/16 v6, 0x12c

    if-le v5, v6, :cond_6

    .line 803
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x104010c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move-object/from16 v5, v18

    .line 823
    :goto_2
    return-object v5

    .line 756
    .end local v10           #isMainFramePage:Z
    .end local v18           #loadListener:Landroid/webkit/LoadListener;
    .restart local v20       #postString:Ljava/lang/String;
    .restart local v21       #ret:[Ljava/lang/String;
    .restart local v22       #saved:[Ljava/lang/String;
    .restart local v23       #schemePlusHost:Ljava/lang/String;
    .restart local v24       #uri:Landroid/net/WebAddress;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v6, v21, v6

    const/4 v7, 0x1

    aget-object v7, v21, v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/CallbackProxy;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    :try_end_1
    .catch Landroid/net/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 761
    .end local v20           #postString:Ljava/lang/String;
    .end local v21           #ret:[Ljava/lang/String;
    .end local v22           #saved:[Ljava/lang/String;
    .end local v23           #schemePlusHost:Ljava/lang/String;
    .end local v24           #uri:Landroid/net/WebAddress;
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 776
    .restart local v10       #isMainFramePage:Z
    .restart local v24       #uri:Landroid/net/WebAddress;
    :cond_5
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    move-object v5, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mTcpPreConnectionManager:Landroid/webkit/PreConnectionManager;

    move-object v5, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/webkit/PreConnectionManager;->onResourceLoad(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 809
    .end local v24           #uri:Landroid/net/WebAddress;
    .restart local v18       #loadListener:Landroid/webkit/LoadListener;
    :cond_6
    new-instance v19, Landroid/webkit/FrameLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object v5, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object v2, v5

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/FrameLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;Ljava/lang/String;)V

    .line 810
    .local v19, loader:Landroid/webkit/FrameLoader;
    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/webkit/FrameLoader;->setHeaders(Ljava/util/HashMap;)V

    .line 811
    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/webkit/FrameLoader;->setPostData([B)V

    .line 814
    const-string v5, "If-Modified-Since"

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "If-None-Match"

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_7
    const/4 v5, 0x2

    :goto_3
    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/FrameLoader;->setCacheMode(I)V

    .line 818
    invoke-virtual/range {v19 .. v19}, Landroid/webkit/FrameLoader;->executeLoad()Z

    move-result v5

    if-nez v5, :cond_8

    .line 819
    const-string/jumbo v5, "startLoadingResource fail"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    .line 821
    :cond_8
    const-string/jumbo v5, "startLoadingResource succeed"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    .line 823
    if-nez p11, :cond_a

    move-object/from16 v5, v18

    goto/16 :goto_2

    :cond_9
    move/from16 v5, p8

    .line 814
    goto :goto_3

    .line 823
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_2
.end method

.method private transitionToCommitted(IZ)V
    .locals 1
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    .line 440
    if-eqz p2, :cond_0

    .line 443
    invoke-static {p0}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->transitionToCommitted(Ljava/lang/Object;)V

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 446
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->postResetStateAll()V

    .line 448
    :cond_0
    return-void
.end method

.method private updateVisitedHistory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "url"
    .parameter "isReload"

    .prologue
    .line 901
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->doUpdateVisitedHistory(Ljava/lang/String;Z)V

    .line 902
    return-void
.end method

.method private windowObjectCleared(I)V
    .locals 3
    .parameter "nativeFramePointer"

    .prologue
    .line 593
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 594
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 595
    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 597
    .local v0, interfaceName:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2, v0}, Landroid/webkit/BrowserFrame;->nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 601
    .end local v0           #interfaceName:Ljava/lang/String;
    .end local v1           #iter:Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "obj"
    .parameter "interfaceName"

    .prologue
    .line 621
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 622
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    .line 624
    :cond_0
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    :cond_1
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    return-void
.end method

.method public native cacheDisabled()Z
.end method

.method certificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .parameter "certificate"

    .prologue
    .line 480
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedCertificate(Landroid/net/http/SslCertificate;)V

    .line 485
    :cond_0
    return-void
.end method

.method public native clearCache()V
.end method

.method committed()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->nativeDestroyFrame()V

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    .line 493
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 495
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mTcpPreConnectionManager:Landroid/webkit/PreConnectionManager;

    invoke-virtual {v0}, Landroid/webkit/PreConnectionManager;->onDestroy()V

    .line 496
    return-void
.end method

.method didFirstLayout()V
    .locals 2

    .prologue
    .line 371
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    if-nez v0, :cond_0

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 375
    invoke-static {p0}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->didFirstLayout(Ljava/lang/Object;)V

    .line 380
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->contentDraw(Z)V

    .line 382
    :cond_0
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 578
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->documentAsText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 579
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 580
    return-void
.end method

.method public native documentHasImages()Z
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 563
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->externalRepresentation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 564
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 565
    return-void
.end method

.method firstLayoutDone()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    return v0
.end method

.method getCallbackProxy()Landroid/webkit/CallbackProxy;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method getRawResFilename(I)Ljava/lang/String;
    .locals 8
    .parameter "id"

    .prologue
    const-string/jumbo v7, "webkit"

    const-string v6, ""

    .line 928
    packed-switch p1, :pswitch_data_0

    .line 955
    const-string/jumbo v4, "webkit"

    const-string v4, "getRawResFilename got incompatible resource ID"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v4, ""

    move-object v4, v6

    .line 969
    :goto_0
    return-object v4

    .line 930
    :pswitch_0
    const v2, 0x10c0002

    .line 958
    .local v2, resid:I
    :goto_1
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 959
    .local v3, value:Landroid/util/TypedValue;
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 960
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 961
    iget-object v4, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 962
    .local v1, path:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 963
    .local v0, index:I
    if-gez v0, :cond_0

    .line 964
    const-string/jumbo v4, "webkit"

    const-string v4, "Can\'t find drawable directory."

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const-string v4, ""

    move-object v4, v6

    goto :goto_0

    .line 934
    .end local v0           #index:I
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #resid:I
    .end local v3           #value:Landroid/util/TypedValue;
    :pswitch_1
    const v2, 0x10c0001

    .line 935
    .restart local v2       #resid:I
    goto :goto_1

    .line 939
    .end local v2           #resid:I
    :pswitch_2
    const v2, 0x10800b8

    .line 940
    .restart local v2       #resid:I
    goto :goto_1

    .line 943
    .end local v2           #resid:I
    :pswitch_3
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040377

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 947
    :pswitch_4
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040378

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 951
    :pswitch_5
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040379

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 967
    .restart local v0       #index:I
    .restart local v1       #path:Ljava/lang/String;
    .restart local v2       #resid:I
    .restart local v3       #value:Landroid/util/TypedValue;
    :cond_0
    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 969
    .end local v0           #index:I
    .end local v1           #path:Ljava/lang/String;
    :cond_1
    iget-object v4, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 928
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBackOrForward(I)V
    .locals 1
    .parameter "steps"

    .prologue
    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 330
    invoke-static {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->goBackOrForward(Ljava/lang/Object;I)V

    .line 332
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeGoBackOrForward(I)V

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 334
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 504
    iget-boolean v4, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    if-eqz v4, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 509
    :pswitch_0
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getSavePassword()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->hasPasswordField()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 510
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 512
    .local v0, item:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_2

    .line 513
    new-instance v3, Landroid/net/WebAddress;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 514
    .local v3, uri:Landroid/net/WebAddress;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, schemePlusHost:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v1}, Landroid/webkit/WebViewDatabase;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, up:[Ljava/lang/String;
    if-eqz v2, :cond_2

    aget-object v4, v2, v6

    if-eqz v4, :cond_2

    .line 518
    aget-object v4, v2, v6

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {p0, v4, v5}, Landroid/webkit/BrowserFrame;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    .end local v0           #item:Landroid/webkit/WebHistoryItem;
    .end local v1           #schemePlusHost:Ljava/lang/String;
    .end local v2           #up:[Ljava/lang/String;
    .end local v3           #uri:Landroid/net/WebAddress;
    :cond_2
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v4

    const/16 v5, 0x6c

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 528
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v5}, Landroid/webkit/BrowserFrame;->nativeCallPolicyFunction(II)V

    goto :goto_0

    .line 533
    :pswitch_2
    iget v4, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eq v4, v5, :cond_0

    .line 534
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    .line 535
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4}, Landroid/webkit/BrowserFrame;->nativeOrientationChanged(I)V

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleUrl(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 608
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 616
    :goto_0
    return v0

    .line 611
    :cond_0
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    move v0, v2

    .line 614
    goto :goto_0

    :cond_1
    move v0, v1

    .line 616
    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 303
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 304
    :cond_0
    const-string p5, "about:blank"

    .line 306
    :cond_1
    if-nez p2, :cond_2

    .line 307
    const-string p2, ""

    .line 312
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 313
    :cond_3
    const-string p1, "about:blank"

    .line 315
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 316
    :cond_5
    const-string/jumbo p3, "text/html"

    .line 318
    :cond_6
    invoke-direct/range {p0 .. p5}, Landroid/webkit/BrowserFrame;->nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 320
    return-void
.end method

.method loadType()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Landroid/webkit/BrowserFrame;->mLoadType:I

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 269
    invoke-static {p1}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "javascript:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 277
    return-void

    .line 274
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public native nativeDestroyFrame()V
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .parameter "url"
    .parameter "data"

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 286
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativePostUrl(Ljava/lang/String;[B)V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 288
    return-void
.end method

.method public native reload(Z)V
.end method

.method public startDnsPrefetch()V
    .locals 3

    .prologue
    .line 247
    invoke-static {}, Landroid/webkit/DnsResolver;->getInstance()Landroid/webkit/DnsResolver;

    move-result-object v0

    .line 248
    .local v0, dnsResolver:Landroid/webkit/DnsResolver;
    if-nez v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/DnsResolver;->getMaxParallelDnsQueryPerPage()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/webkit/BrowserFrame;->nativeGetEmbeddedHostNames(I)Ljava/util/HashMap;

    move-result-object v1

    .line 252
    .local v1, hostsMap:Ljava/util/HashMap;
    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {v0, v1}, Landroid/webkit/DnsResolver;->resolveDnsForHostMap(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 1054
    invoke-static {p0}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->stopLoading(Ljava/lang/Object;)V

    .line 1056
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    if-eqz v0, :cond_0

    .line 1057
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 1059
    :cond_0
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->nativeStopLoading()V

    .line 1060
    return-void
.end method

.method public native stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;
.end method
