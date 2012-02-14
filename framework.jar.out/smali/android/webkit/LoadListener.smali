.class Landroid/webkit/LoadListener;
.super Landroid/os/Handler;
.source "LoadListener.java"

# interfaces
.implements Landroid/net/http/EventHandler;


# static fields
.field private static final CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HTTP_AUTH:I = 0x191

.field private static final HTTP_FOUND:I = 0x12e

.field private static final HTTP_MOVED_PERMANENTLY:I = 0x12d

.field private static final HTTP_NOT_FOUND:I = 0x194

.field private static final HTTP_NOT_MODIFIED:I = 0x130

.field private static final HTTP_OK:I = 0xc8

.field private static final HTTP_PARTIAL_CONTENT:I = 0xce

.field private static final HTTP_PROXY_AUTH:I = 0x197

.field private static final HTTP_SEE_OTHER:I = 0x12f

.field private static final HTTP_TEMPORARY_REDIRECT:I = 0x133

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MAX_WAITROTIME:I = 0x19

.field private static final MIN_WAITROTIME:I = 0x0

.field private static final MSG_CONTENT_DATA:I = 0x6e

.field private static final MSG_CONTENT_ERROR:I = 0x82

.field private static final MSG_CONTENT_FINISHED:I = 0x78

.field private static final MSG_CONTENT_HEADERS:I = 0x64

.field private static final MSG_LOCATION_CHANGED:I = 0x8c

.field private static final MSG_LOCATION_CHANGED_REQUEST:I = 0x96

.field private static final MSG_SSL_CERTIFICATE:I = 0xaa

.field private static final MSG_SSL_ERROR:I = 0xb4

.field private static final MSG_STATUS:I = 0xa0

.field private static final XML_MIME_TYPE:Ljava/lang/String; = "^[\\w_\\-+~!$\\^{}|.%\'`#&*]+/[\\w_\\-+~!$\\^{}|.%\'`#&*]+\\+xml$"

.field private static sCertificateTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNativeLoaderCount:I


# instance fields
.field private mAuthFailed:Z

.field private mAuthHeader:Landroid/net/http/HttpAuthHeader;

.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private mCacheLoader:Landroid/webkit/CacheLoader;

.field private mCacheRedirectCount:I

.field private mCancelled:Z

.field private mCommit:Z

.field public mContentLength:J

.field private mContext:Landroid/content/Context;

.field private final mDataBuilder:Landroid/webkit/ByteArrayBuilder;

.field private mEncoding:Ljava/lang/String;

.field private mErrorDescription:Ljava/lang/String;

.field private mErrorID:I

.field private mFromCache:Z

.field private mHeaders:Landroid/net/http/Headers;

.field private mIsMainPageLoader:Z

.field private final mIsMainResourceLoader:Z

.field private mMessageQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mNativeLoader:I

.field private mOriginalUrl:Ljava/lang/String;

.field private final mPassword:Ljava/lang/String;

.field private mPermanent:Z

.field private mPostData:[B

.field private mPostIdentifier:J

.field private mPriority:I

.field private mRequestHandle:Landroid/net/http/RequestHandle;

.field private mRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSslError:Landroid/net/http/SslError;

.field private mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

.field private mStatusCode:I

.field private mStatusText:Ljava/lang/String;

.field private mSynchronous:Z

.field private mTransferEncoding:Ljava/lang/String;

.field private mUri:Landroid/net/WebAddress;

.field private mUrl:Ljava/lang/String;

.field private final mUserGesture:Z

.field private final mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string v3, "CERT"

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    .line 85
    sget-object v0, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    const-string v1, "application/x-x509-ca-cert"

    const-string v2, "CERT"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    const-string v1, "application/x-x509-user-cert"

    const-string v2, "CERT"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    const-string v1, "application/x-pkcs12"

    const-string v2, "PKCS12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    const-string v0, "^((?:[xX]-)?[a-zA-Z\\*]+/[\\w\\+\\*-]+[\\.[\\w\\+-]+]*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/LoadListener;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "frame"
    .parameter "url"
    .parameter "nativeLoader"
    .parameter "synchronous"
    .parameter "isMainPageLoader"
    .parameter "isMainResource"
    .parameter "userGesture"
    .parameter "postIdentifier"
    .parameter "username"
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 92
    new-instance v0, Landroid/webkit/ByteArrayBuilder;

    invoke-direct {v0}, Landroid/webkit/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    .line 110
    iput-boolean v1, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 112
    iput v1, p0, Landroid/webkit/LoadListener;->mErrorID:I

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/LoadListener;->mPriority:I

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mCommit:Z

    .line 175
    iput-object p1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 177
    invoke-virtual {p0, p3}, Landroid/webkit/LoadListener;->setUrl(Ljava/lang/String;)V

    .line 178
    iput p4, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    .line 179
    iput-boolean p5, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    .line 180
    if-eqz p5, :cond_0

    .line 181
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    .line 183
    :cond_0
    iput-boolean p6, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    .line 184
    iput-boolean p7, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    .line 185
    iput-boolean p8, p0, Landroid/webkit/LoadListener;->mUserGesture:Z

    .line 186
    iput-wide p9, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    .line 187
    iput-object p11, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    .line 188
    iput-object p12, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    .line 189
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/LoadListener;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/LoadListener;->nativeSetResponseHeader(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearNativeLoader()V
    .locals 2

    .prologue
    .line 196
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    .line 198
    return-void
.end method

.method private commitHeaders()V
    .locals 3

    .prologue
    .line 1159
    iget-boolean v1, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    iget-object v1, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v1, :cond_0

    .line 1173
    invoke-direct {p0}, Landroid/webkit/LoadListener;->createNativeResponse()I

    move-result v0

    .line 1175
    .local v0, nativeResponse:I
    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->nativeReceivedResponse(I)V

    goto :goto_0
.end method

.method private commitHeadersCheckRedirect()V
    .locals 2

    .prologue
    .line 1141
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12d

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12f

    if-le v0, v1, :cond_0

    :cond_2
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-nez v0, :cond_0

    .line 1154
    :cond_3
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitHeaders()V

    goto :goto_0
.end method

.method private commitLoad()V
    .locals 10

    .prologue
    .line 1209
    iget-boolean v6, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v6, :cond_1

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    iget-boolean v6, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v6, :cond_4

    .line 1212
    sget-object v6, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1213
    .local v5, type:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 1216
    iget-object v6, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v6

    .line 1220
    :try_start_0
    iget-object v7, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v7}, Landroid/webkit/ByteArrayBuilder;->getByteSize()I

    move-result v7

    new-array v1, v7, [B

    .line 1221
    .local v1, cert:[B
    const/4 v4, 0x0

    .line 1223
    .local v4, offset:I
    :goto_1
    iget-object v7, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v7}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 1224
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-nez v0, :cond_2

    .line 1232
    iget-object v7, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, v1}, Landroid/webkit/CertTool;->addCertificate(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 1233
    iget-object v7, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v7}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 1234
    monitor-exit v6

    goto :goto_0

    .line 1235
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v1           #cert:[B
    .end local v4           #offset:I
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1226
    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .restart local v1       #cert:[B
    .restart local v4       #offset:I
    :cond_2
    :try_start_1
    iget v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v7, :cond_3

    .line 1227
    iget-object v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v8, 0x0

    iget v9, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-static {v7, v8, v1, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1228
    iget v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    add-int/2addr v4, v7

    .line 1230
    :cond_3
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1242
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v1           #cert:[B
    .end local v4           #offset:I
    .end local v5           #type:Ljava/lang/String;
    :cond_4
    new-instance v2, Landroid/webkit/PerfChecker;

    invoke-direct {v2}, Landroid/webkit/PerfChecker;-><init>()V

    .line 1245
    .local v2, checker:Landroid/webkit/PerfChecker;
    :goto_2
    iget-object v6, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v6}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 1246
    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_0

    .line 1248
    iget v6, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v6, :cond_5

    .line 1249
    iget-object v6, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-direct {p0, v6, v7}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    .line 1250
    new-instance v3, Landroid/webkit/WebViewWorker$CacheData;

    invoke-direct {v3}, Landroid/webkit/WebViewWorker$CacheData;-><init>()V

    .line 1251
    .local v3, data:Landroid/webkit/WebViewWorker$CacheData;
    iput-object p0, v3, Landroid/webkit/WebViewWorker$CacheData;->mListener:Landroid/webkit/LoadListener;

    .line 1252
    iput-object v0, v3, Landroid/webkit/WebViewWorker$CacheData;->mChunk:Landroid/webkit/ByteArrayBuilder$Chunk;

    .line 1253
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v6

    const/16 v7, 0x69

    invoke-virtual {v6, v7, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1258
    .end local v3           #data:Landroid/webkit/WebViewWorker$CacheData;
    :goto_3
    const-string v6, "res nativeAddData"

    invoke-virtual {v2, v6}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    goto :goto_2

    .line 1256
    :cond_5
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V

    goto :goto_3
.end method

.method private createNativeResponse()I
    .locals 9

    .prologue
    .line 1188
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    move v2, v0

    .line 1191
    .local v2, statusCode:I
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->originalUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-wide v5, p0, Landroid/webkit/LoadListener;->mContentLength:J

    iget-object v7, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/webkit/LoadListener;->nativeCreateResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I

    move-result v8

    .line 1194
    .local v8, nativeResponse:I
    iget-object v0, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    new-instance v1, Landroid/webkit/LoadListener$2;

    invoke-direct {v1, p0, v8}, Landroid/webkit/LoadListener$2;-><init>(Landroid/webkit/LoadListener;I)V

    invoke-virtual {v0, v1}, Landroid/net/http/Headers;->getHeaders(Landroid/net/http/Headers$HeaderCallback;)V

    .line 1201
    :cond_0
    return v8

    .line 1188
    .end local v2           #statusCode:I
    .end local v8           #nativeResponse:I
    :cond_1
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    move v2, v0

    goto :goto_0
.end method

.method private doRedirect()V
    .locals 14

    .prologue
    const v12, 0x1040007

    const/16 v11, -0xc

    const-string/jumbo v13, "webkit"

    .line 1382
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v7, :cond_1

    .line 1500
    :cond_0
    :goto_0
    return-void

    .line 1388
    :cond_1
    iget v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_2

    .line 1389
    const/16 v7, -0x9

    iget-object v8, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v9, 0x1040108

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto :goto_0

    .line 1394
    :cond_2
    iget-object v7, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v7}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 1395
    .local v5, redirectTo:Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 1396
    invoke-direct {p0}, Landroid/webkit/LoadListener;->createNativeResponse()I

    move-result v3

    .line 1397
    .local v3, nativeResponse:I
    iget-object v7, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v7, v5, v3}, Landroid/webkit/LoadListener;->nativeRedirectedToUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1401
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v7, :cond_0

    .line 1404
    if-nez v5, :cond_3

    .line 1405
    const-string/jumbo v7, "webkit"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Redirection failed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v8}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    goto :goto_0

    .line 1409
    :cond_3
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1410
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v9, 0x10402cb

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1413
    .local v6, text:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    .line 1414
    invoke-direct {p0}, Landroid/webkit/LoadListener;->nativeFinished()V

    .line 1415
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    goto/16 :goto_0

    .line 1421
    .end local v6           #text:Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v7

    if-nez v7, :cond_8

    .line 1422
    new-instance v0, Landroid/webkit/WebViewWorker$CacheSaveData;

    invoke-direct {v0}, Landroid/webkit/WebViewWorker$CacheSaveData;-><init>()V

    .line 1423
    .local v0, data:Landroid/webkit/WebViewWorker$CacheSaveData;
    iput-object p0, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    .line 1424
    iget-object v7, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iput-object v7, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mUrl:Ljava/lang/String;

    .line 1425
    iget-wide v7, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-wide v7, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mPostId:J

    .line 1426
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v7

    const/16 v8, 0x6a

    invoke-virtual {v7, v8, v0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1434
    .end local v0           #data:Landroid/webkit/WebViewWorker$CacheSaveData;
    :goto_1
    iput-object v5, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    .line 1436
    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->setUrl(Ljava/lang/String;)V

    .line 1439
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    if-nez v7, :cond_5

    .line 1440
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    .line 1442
    :cond_5
    const/4 v2, 0x0

    .line 1443
    .local v2, fromCache:Z
    iget-object v7, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v7, :cond_6

    .line 1446
    iget v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    .line 1447
    const/4 v2, 0x1

    .line 1449
    :cond_6
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {p0, v7}, Landroid/webkit/LoadListener;->checkCache(Ljava/util/Map;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1452
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v7, :cond_9

    .line 1454
    :try_start_0
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iget-object v8, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iget v9, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    iget-object v10, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/http/RequestHandle;->setupRedirect(Ljava/lang/String;ILjava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1478
    :cond_7
    if-eqz v2, :cond_0

    .line 1482
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iget v8, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    invoke-virtual {v7, v8}, Landroid/net/http/RequestHandle;->setRedirectCount(I)V

    goto/16 :goto_0

    .line 1429
    .end local v2           #fromCache:Z
    :cond_8
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v7

    const/16 v8, 0x6b

    invoke-virtual {v7, v8, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1456
    .restart local v2       #fromCache:Z
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1457
    .local v1, e:Ljava/lang/RuntimeException;
    const-string/jumbo v7, "webkit"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object v7, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1468
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_9
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v4

    .line 1469
    .local v4, network:Landroid/webkit/Network;
    iget-object v7, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    iget-object v8, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    iget-object v9, p0, Landroid/webkit/LoadListener;->mPostData:[B

    invoke-virtual {v4, v7, v8, v9, p0}, Landroid/webkit/Network;->requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1473
    iget-object v7, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1484
    .end local v4           #network:Landroid/webkit/Network;
    :cond_a
    if-nez v2, :cond_0

    .line 1488
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v7}, Landroid/net/http/RequestHandle;->getRedirectCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    goto/16 :goto_0

    .line 1491
    .end local v2           #fromCache:Z
    .end local v3           #nativeResponse:I
    :cond_b
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitHeaders()V

    .line 1492
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    .line 1493
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto/16 :goto_0
.end method

.method private getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Landroid/webkit/LoadListener;->mErrorDescription:Ljava/lang/String;

    return-object v0
.end method

.method private getErrorID()I
    .locals 1

    .prologue
    .line 1291
    iget v0, p0, Landroid/webkit/LoadListener;->mErrorID:I

    return v0
.end method

.method public static getLoadListener(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)Landroid/webkit/LoadListener;
    .locals 13
    .parameter "context"
    .parameter "frame"
    .parameter "url"
    .parameter "nativeLoader"
    .parameter "synchronous"
    .parameter "isMainPageLoader"
    .parameter "isMainResource"
    .parameter "userGesture"
    .parameter "postIdentifier"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 158
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    .line 159
    new-instance v0, Landroid/webkit/LoadListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Landroid/webkit/LoadListener;-><init>(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getNativeLoaderCount()I
    .locals 1

    .prologue
    .line 165
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    return v0
.end method

.method private guessMimeType()V
    .locals 4

    .prologue
    .line 1680
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1681
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    .line 1682
    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v3, 0x1040007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1683
    .local v1, text:Ljava/lang/String;
    const/16 v2, -0xc

    invoke-direct {p0, v2, v1}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    .line 1694
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1688
    :cond_1
    const-string/jumbo v2, "text/html"

    iput-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1689
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1690
    .local v0, newMimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1691
    iput-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method private guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 1705
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .parameter "certificate"

    .prologue
    .line 637
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1}, Landroid/webkit/BrowserFrame;->certificate(Landroid/net/http/SslCertificate;)V

    .line 641
    :cond_0
    return-void
.end method

.method private handleEndData()V
    .locals 7

    .prologue
    const/16 v5, 0x96

    const/16 v3, 0x8c

    const/4 v4, 0x1

    const-string v6, "POST"

    .line 719
    iget-boolean v1, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v1, :cond_0

    .line 797
    :goto_0
    return-void

    .line 721
    :cond_0
    iget v1, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    sparse-switch v1, :sswitch_data_0

    .line 795
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->detachRequestHandle()V

    .line 796
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto :goto_0

    .line 724
    :sswitch_0
    iput-boolean v4, p0, Landroid/webkit/LoadListener;->mPermanent:Z

    .line 729
    :sswitch_1
    iget v1, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v2, 0x133

    if-ne v1, v2, :cond_4

    .line 730
    iget-object v1, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v1}, Landroid/net/http/RequestHandle;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 732
    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_0

    .line 734
    :cond_2
    iget-object v1, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 735
    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_0

    .line 738
    :cond_3
    invoke-virtual {p0, v3}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_0

    .line 741
    :cond_4
    invoke-virtual {p0, v3}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_0

    .line 750
    :sswitch_2
    iget-object v1, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v1}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    if-nez v1, :cond_1

    .line 755
    :cond_5
    iget-boolean v1, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 756
    iget-object v1, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v1}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/Network;->getProxyHostname()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 759
    .local v0, host:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v1}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/webkit/HttpAuthHandler;->onReceivedCredentials(Landroid/webkit/LoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v1, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/webkit/LoadListener;->makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 756
    .end local v0           #host:Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    iget-object v1, v1, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    move-object v0, v1

    goto :goto_1

    .line 763
    :cond_7
    iget-object v1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/Network;->handleAuthRequest(Landroid/webkit/LoadListener;)V

    goto/16 :goto_0

    .line 773
    :sswitch_3
    iget-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v1, :cond_1

    .line 774
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 775
    iget-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v1}, Landroid/webkit/CacheLoader;->load()V

    .line 782
    :goto_2
    iput-boolean v4, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    goto/16 :goto_0

    .line 778
    :cond_8
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x65

    iget-object v3, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 721
    nop

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x12e -> :sswitch_1
        0x12f -> :sswitch_1
        0x130 -> :sswitch_3
        0x133 -> :sswitch_1
        0x191 -> :sswitch_2
        0x197 -> :sswitch_2
    .end sparse-switch
.end method

.method private handleError(ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "description"

    .prologue
    .line 664
    iput p1, p0, Landroid/webkit/LoadListener;->mErrorID:I

    .line 665
    iput-object p2, p0, Landroid/webkit/LoadListener;->mErrorDescription:Ljava/lang/String;

    .line 666
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->detachRequestHandle()V

    .line 667
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->notifyError()V

    .line 668
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    .line 669
    return-void
.end method

.method private handleHeaders(Landroid/net/http/Headers;)V
    .locals 22
    .parameter "headers"

    .prologue
    .line 361
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mCancelled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 562
    :goto_0
    return-void

    .line 366
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v18, v0

    const/16 v19, 0xce

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 368
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v18

    const/16 v19, 0x6b

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 373
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    .line 375
    const-string v18, "ro.config.hwdrm"

    const-string v19, "false"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "true"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 376
    .local v16, suportOmaDownload:Z
    if-eqz v16, :cond_2

    .line 377
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getContentType()Ljava/lang/String;

    move-result-object v12

    .line 378
    .local v12, mimeType:Ljava/lang/String;
    const-string v18, "application/vnd.oma.dd+xml"

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "application/vnd.oma.drm.message"

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "application/vnd.oma.drm.content"

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 383
    new-instance v18, Landroid/webkit/LoadListener$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/webkit/LoadListener$1;-><init>(Landroid/webkit/LoadListener;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/http/Headers;->getHeaders(Landroid/net/http/Headers$HeaderCallback;)V

    .line 408
    .end local v12           #mimeType:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getContentLength()J

    move-result-wide v5

    .line 409
    .local v5, contentLength:J
    const-wide/16 v18, -0x1

    cmp-long v18, v5, v18

    if-eqz v18, :cond_f

    .line 410
    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/LoadListener;->mContentLength:J

    .line 415
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getContentType()Ljava/lang/String;

    move-result-object v7

    .line 416
    .local v7, contentType:Ljava/lang/String;
    if-eqz v7, :cond_11

    .line 417
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/webkit/LoadListener;->parseContentTypeHeader(Ljava/lang/String;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "text/plain"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "application/octet-stream"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 426
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, contentDisposition:Ljava/lang/String;
    const/16 v17, 0x0

    .line 428
    .local v17, url:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 429
    invoke-static {v4}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 431
    :cond_4
    if-nez v17, :cond_5

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 434
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/LoadListener;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 435
    .local v15, newMimeType:Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 436
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 460
    .end local v4           #contentDisposition:Ljava/lang/String;
    .end local v15           #newMimeType:Ljava/lang/String;
    .end local v17           #url:Ljava/lang/String;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mUserGesture:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    const-string v18, "^[\\w_\\-+~!$\\^{}|.%\'`#&*]+/[\\w_\\-+~!$\\^{}|.%\'`#&*]+\\+xml$"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "application/xhtml+xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 463
    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .local v9, i:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const/high16 v19, 0x1

    move-object/from16 v0, v18

    move-object v1, v9

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 467
    .local v10, info:Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 472
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/BrowserFrame;->stopLoading()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 475
    :catch_0
    move-exception v18

    .line 482
    .end local v9           #i:Landroid/content/Intent;
    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v18, v0

    const/16 v19, 0x191

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v18, v0

    const/16 v19, 0x197

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    :cond_8
    const/16 v18, 0x1

    move/from16 v13, v18

    .line 485
    .local v13, mustAuthenticate:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v18, v0

    const/16 v19, 0x197

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    const/16 v18, 0x1

    move/from16 v11, v18

    .line 488
    .local v11, isProxyAuthRequest:Z
    :goto_4
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/LoadListener;->mAuthFailed:Z

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 494
    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v18

    move v0, v11

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    const/16 v18, 0x1

    :goto_5
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/LoadListener;->mAuthFailed:Z

    .line 499
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v14

    .line 502
    .local v14, network:Landroid/webkit/Network;
    invoke-virtual {v14}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 505
    monitor-enter v14

    .line 508
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/http/HttpAuthHeader;->getUsername()Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/Network;->setProxyUsername(Ljava/lang/String;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/http/HttpAuthHeader;->getPassword()Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/Network;->setProxyPassword(Ljava/lang/String;)V

    .line 510
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    .end local v14           #network:Landroid/webkit/Network;
    :cond_9
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 518
    if-eqz v13, :cond_a

    .line 519
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v18, v0

    const/16 v19, 0x191

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getWwwAuthenticate()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/webkit/LoadListener;->parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 534
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v18, v0

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v18, v0

    const/16 v19, 0x12e

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v18, v0

    const/16 v19, 0x12d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v18, v0

    const/16 v19, 0x133

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mNativeLoader:I

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 542
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mFromCache:Z

    move/from16 v18, v0

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/http/RequestHandle;->getMethod()Ljava/lang/String;

    move-result-object v18

    const-string v19, "POST"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_d

    .line 545
    :cond_c
    new-instance v8, Landroid/webkit/WebViewWorker$CacheCreateData;

    invoke-direct {v8}, Landroid/webkit/WebViewWorker$CacheCreateData;-><init>()V

    .line 546
    .local v8, data:Landroid/webkit/WebViewWorker$CacheCreateData;
    move-object/from16 v0, p0

    move-object v1, v8

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mListener:Landroid/webkit/LoadListener;

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v8

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mUrl:Ljava/lang/String;

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v8

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mMimeType:Ljava/lang/String;

    .line 549
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object v1, v8

    iput v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mStatusCode:I

    .line 550
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object v2, v8

    iput-wide v0, v2, Landroid/webkit/WebViewWorker$CacheCreateData;->mPostId:J

    .line 551
    move-object/from16 v0, p1

    move-object v1, v8

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mHeaders:Landroid/net/http/Headers;

    .line 552
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v18

    const/16 v19, 0x67

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    .line 555
    .end local v8           #data:Landroid/webkit/WebViewWorker$CacheCreateData;
    :cond_d
    new-instance v3, Landroid/webkit/WebViewWorker$CacheEncoding;

    invoke-direct {v3}, Landroid/webkit/WebViewWorker$CacheEncoding;-><init>()V

    .line 556
    .local v3, ce:Landroid/webkit/WebViewWorker$CacheEncoding;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v3

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheEncoding;->mEncoding:Ljava/lang/String;

    .line 557
    move-object/from16 v0, p0

    move-object v1, v3

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheEncoding;->mListener:Landroid/webkit/LoadListener;

    .line 558
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v18

    const/16 v19, 0x68

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    .line 561
    .end local v3           #ce:Landroid/webkit/WebViewWorker$CacheEncoding;
    :cond_e
    invoke-direct/range {p0 .. p0}, Landroid/webkit/LoadListener;->commitHeadersCheckRedirect()V

    goto/16 :goto_0

    .line 412
    .end local v7           #contentType:Ljava/lang/String;
    .end local v11           #isProxyAuthRequest:Z
    .end local v13           #mustAuthenticate:Z
    :cond_f
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/LoadListener;->mContentLength:J

    goto/16 :goto_1

    .line 438
    .restart local v7       #contentType:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "text/vnd.wap.wml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "application/vnd.wap.xhtml+xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 448
    const-string v18, "application/xhtml+xml"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 457
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/webkit/LoadListener;->guessMimeType()V

    goto/16 :goto_2

    .line 482
    :cond_12
    const/16 v18, 0x0

    move/from16 v13, v18

    goto/16 :goto_3

    .line 485
    .restart local v13       #mustAuthenticate:Z
    :cond_13
    const/16 v18, 0x0

    move/from16 v11, v18

    goto/16 :goto_4

    .line 494
    .restart local v11       #isProxyAuthRequest:Z
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 510
    .restart local v14       #network:Landroid/webkit/Network;
    :catchall_0
    move-exception v18

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v18

    .line 523
    .end local v14           #network:Landroid/webkit/Network;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getProxyAuthenticate()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/webkit/LoadListener;->parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/http/HttpAuthHeader;->setProxy()V

    goto/16 :goto_6
.end method

.method private handleSslError(Landroid/net/http/SslError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 893
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_1

    .line 894
    iput-object p1, p0, Landroid/webkit/LoadListener;->mSslError:Landroid/net/http/SslError;

    .line 895
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/Network;->handleSslErrorRequest(Landroid/webkit/LoadListener;)V

    .line 899
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    .line 900
    return-void

    .line 896
    :cond_1
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    goto :goto_0
.end method

.method private handleStatus(IIILjava/lang/String;)V
    .locals 1
    .parameter "major"
    .parameter "minor"
    .parameter "code"
    .parameter "reason"

    .prologue
    .line 605
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 614
    :goto_0
    return-void

    .line 607
    :cond_0
    const/16 v0, 0x190

    if-lt p3, v0, :cond_1

    const/16 v0, 0x258

    if-ge p3, v0, :cond_1

    .line 608
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-static {v0, p3, p4}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->error(Ljava/lang/Object;ILjava/lang/String;)V

    .line 611
    :cond_1
    iput p3, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    .line 612
    iput-object p4, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mPermanent:Z

    goto :goto_0
.end method

.method private ignoreCallbacks()Z
    .locals 2

    .prologue
    .line 1648
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x131

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeAddData([BI)V
.end method

.method private native nativeCreateResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
.end method

.method private native nativeError(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeFinished()V
.end method

.method private native nativeReceivedResponse(I)V
.end method

.method private native nativeRedirectedToUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native nativeSetResponseHeader(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;
    .locals 20
    .parameter "header"

    .prologue
    .line 1570
    if-eqz p1, :cond_a

    .line 1571
    const/16 v16, 0x100

    .line 1572
    .local v16, posMax:I
    const/4 v14, 0x0

    .line 1573
    .local v14, posLen:I
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v13, v0

    .line 1575
    .local v13, pos:[I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 1576
    .local v12, headerLen:I
    if-lez v12, :cond_4

    .line 1578
    const/16 v17, 0x0

    .line 1579
    .local v17, quoted:Z
    const/4 v5, 0x0

    .local v5, i:I
    move v15, v14

    .end local v14           #posLen:I
    .local v15, posLen:I
    :goto_0
    if-ge v5, v12, :cond_3

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 1580
    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    .line 1581
    if-nez v17, :cond_0

    const/4 v3, 0x1

    move/from16 v17, v3

    :goto_1
    move v14, v15

    .line 1579
    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v15, v14

    .end local v14           #posLen:I
    .restart local v15       #posLen:I
    goto :goto_0

    .line 1581
    :cond_0
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_1

    .line 1583
    :cond_1
    if-nez v17, :cond_b

    .line 1584
    const/4 v4, 0x1

    const-string v6, "Basic"

    const/4 v7, 0x0

    const-string v3, "Basic"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1587
    add-int/lit8 v14, v15, 0x1

    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    aput v5, v13, v15

    goto :goto_2

    .line 1591
    .end local v14           #posLen:I
    .restart local v15       #posLen:I
    :cond_2
    const/4 v4, 0x1

    const-string v6, "Digest"

    const/4 v7, 0x0

    const-string v3, "Digest"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1594
    add-int/lit8 v14, v15, 0x1

    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    aput v5, v13, v15

    goto :goto_2

    .end local v14           #posLen:I
    .restart local v15       #posLen:I
    :cond_3
    move v14, v15

    .line 1602
    .end local v5           #i:I
    .end local v15           #posLen:I
    .end local v17           #quoted:Z
    .restart local v14       #posLen:I
    :cond_4
    if-lez v14, :cond_a

    .line 1604
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    if-ge v5, v14, :cond_7

    .line 1605
    const/4 v7, 0x1

    aget v8, v13, v5

    const-string v9, "Digest"

    const/4 v10, 0x0

    const-string v3, "Digest"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1608
    aget v3, v13, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v14, :cond_5

    add-int/lit8 v4, v5, 0x1

    aget v4, v13, v4

    :goto_4
    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 1611
    .local v19, sub:Ljava/lang/String;
    new-instance v18, Landroid/net/http/HttpAuthHeader;

    invoke-direct/range {v18 .. v19}, Landroid/net/http/HttpAuthHeader;-><init>(Ljava/lang/String;)V

    .line 1612
    .local v18, rval:Landroid/net/http/HttpAuthHeader;
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/HttpAuthHeader;->isSupportedScheme()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v3, v18

    .line 1637
    .end local v5           #i:I
    .end local v12           #headerLen:I
    .end local v13           #pos:[I
    .end local v14           #posLen:I
    .end local v16           #posMax:I
    .end local v18           #rval:Landroid/net/http/HttpAuthHeader;
    .end local v19           #sub:Ljava/lang/String;
    :goto_5
    return-object v3

    .restart local v5       #i:I
    .restart local v12       #headerLen:I
    .restart local v13       #pos:[I
    .restart local v14       #posLen:I
    .restart local v16       #posMax:I
    :cond_5
    move v4, v12

    .line 1608
    goto :goto_4

    .line 1604
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1620
    :cond_7
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v14, :cond_a

    .line 1621
    const/4 v7, 0x1

    aget v8, v13, v5

    const-string v9, "Basic"

    const/4 v10, 0x0

    const-string v3, "Basic"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1624
    aget v3, v13, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v14, :cond_8

    add-int/lit8 v4, v5, 0x1

    aget v4, v13, v4

    :goto_7
    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 1627
    .restart local v19       #sub:Ljava/lang/String;
    new-instance v18, Landroid/net/http/HttpAuthHeader;

    invoke-direct/range {v18 .. v19}, Landroid/net/http/HttpAuthHeader;-><init>(Ljava/lang/String;)V

    .line 1628
    .restart local v18       #rval:Landroid/net/http/HttpAuthHeader;
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/HttpAuthHeader;->isSupportedScheme()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v3, v18

    .line 1630
    goto :goto_5

    .end local v18           #rval:Landroid/net/http/HttpAuthHeader;
    .end local v19           #sub:Ljava/lang/String;
    :cond_8
    move v4, v12

    .line 1624
    goto :goto_7

    .line 1620
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1637
    .end local v5           #i:I
    .end local v12           #headerLen:I
    .end local v13           #pos:[I
    .end local v14           #posLen:I
    .end local v16           #posMax:I
    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    .restart local v5       #i:I
    .restart local v12       #headerLen:I
    .restart local v13       #pos:[I
    .restart local v15       #posLen:I
    .restart local v16       #posMax:I
    .restart local v17       #quoted:Z
    :cond_b
    move v14, v15

    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    goto/16 :goto_2
.end method

.method private sendMessageInternal(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1714
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1719
    :goto_0
    return-void

    .line 1717
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/LoadListener;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static willLoadFromCache(Ljava/lang/String;J)Z
    .locals 2
    .parameter "url"
    .parameter "identifier"

    .prologue
    .line 1101
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 1107
    .local v0, inCache:Z
    :goto_0
    return v0

    .line 1101
    .end local v0           #inCache:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method attachRequestHandle(Landroid/net/http/RequestHandle;)V
    .locals 0
    .parameter "requestHandle"

    .prologue
    .line 1054
    iput-object p1, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 1055
    return-void
.end method

.method authCredentialsInvalid()Z
    .locals 1

    .prologue
    .line 920
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isDigest()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getStale()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 1357
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0}, Landroid/net/http/RequestHandle;->cancel()V

    .line 1359
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 1362
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1364
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    .line 1366
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    .line 1367
    return-void
.end method

.method public cancelled()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    return v0
.end method

.method public certificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .parameter "certificate"

    .prologue
    .line 631
    const/16 v0, 0xaa

    invoke-virtual {p0, v0, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 632
    return-void
.end method

.method checkCache(Ljava/util/Map;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 814
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    invoke-static {v1, v2, v3, p1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    .line 819
    .local v0, result:Landroid/webkit/CacheManager$CacheResult;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 821
    iput-boolean v4, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 823
    if-eqz v0, :cond_1

    .line 828
    new-instance v1, Landroid/webkit/CacheLoader;

    invoke-direct {v1, p0, v0}, Landroid/webkit/CacheLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/CacheManager$CacheResult;)V

    iput-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 832
    const-string v1, "if-none-match"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "if-modified-since"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 840
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 841
    iget-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v1}, Landroid/webkit/CacheLoader;->load()V

    .line 848
    :goto_0
    iput-boolean v5, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    move v1, v5

    .line 852
    :goto_1
    return v1

    .line 844
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x65

    iget-object v3, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    move v1, v4

    .line 852
    goto :goto_1
.end method

.method commitPriorities()V
    .locals 2

    .prologue
    .line 1338
    iget-object v1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v0

    .line 1339
    .local v0, net:Landroid/webkit/Network;
    invoke-virtual {v0}, Landroid/webkit/Network;->commitPriorities()V

    .line 1340
    return-void
.end method

.method contentLength()J
    .locals 2

    .prologue
    .line 1136
    iget-wide v0, p0, Landroid/webkit/LoadListener;->mContentLength:J

    return-wide v0
.end method

.method public data([BI)V
    .locals 4
    .parameter "data"
    .parameter "length"

    .prologue
    .line 686
    iget-object v1, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-static {v1, p2}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->data(Ljava/lang/Object;I)V

    .line 693
    const/4 v0, 0x0

    .line 694
    .local v0, sendMessage:Z
    iget-object v1, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v1

    .line 695
    :try_start_0
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v2}, Landroid/webkit/ByteArrayBuilder;->isEmpty()Z

    move-result v0

    .line 696
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Landroid/webkit/ByteArrayBuilder;->append([BII)V

    .line 697
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    if-eqz v0, :cond_0

    .line 700
    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 702
    :cond_0
    return-void

    .line 697
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method detachRequestHandle()V
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 1063
    return-void
.end method

.method downloadFile()V
    .locals 7

    .prologue
    .line 1078
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1082
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v3}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-wide v5, p0, Landroid/webkit/LoadListener;->mContentLength:J

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 1091
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    .line 1092
    return-void
.end method

.method downloadRoPush(I)V
    .locals 2
    .parameter "waitRoTime"

    .prologue
    .line 1066
    const-string/jumbo v0, "webkit"

    const-string v1, "downloadRoPush"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->OnDownloadRoPush(I)Z

    .line 1068
    return-void
.end method

.method public endData()V
    .locals 1

    .prologue
    .line 714
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 715
    return-void
.end method

.method public error(ILjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "description"

    .prologue
    .line 657
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-static {v0, p1, p2}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->error(Ljava/lang/Object;ILjava/lang/String;)V

    .line 659
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/webkit/LoadListener;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 660
    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFrame()Landroid/webkit/BrowserFrame;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method getWebAddress()Landroid/net/WebAddress;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    return-object v0
.end method

.method handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "username"
    .parameter "password"

    .prologue
    .line 956
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 957
    invoke-virtual {p0, p1, p2}, Landroid/webkit/LoadListener;->makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :goto_0
    return-void

    .line 960
    :cond_0
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    .line 961
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 221
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 228
    :sswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/http/Headers;

    invoke-direct {p0, v3}, Landroid/webkit/LoadListener;->handleHeaders(Landroid/net/http/Headers;)V

    goto :goto_0

    .line 237
    :sswitch_1
    iget v3, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/webkit/LoadListener;->ignoreCallbacks()Z

    move-result v3

    if-nez v3, :cond_0

    .line 238
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    goto :goto_0

    .line 249
    :sswitch_2
    invoke-direct {p0}, Landroid/webkit/LoadListener;->handleEndData()V

    goto :goto_0

    .line 257
    :sswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto :goto_0

    .line 266
    :sswitch_4
    invoke-direct {p0}, Landroid/webkit/LoadListener;->doRedirect()V

    goto :goto_0

    .line 277
    :sswitch_5
    const/16 v3, 0x8c

    invoke-virtual {p0, v3}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 278
    .local v0, contMsg:Landroid/os/Message;
    const/16 v3, 0x78

    invoke-virtual {p0, v3}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 279
    .local v2, stopMsg:Landroid/os/Message;
    iget-object v3, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/webkit/CallbackProxy;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0

    .line 288
    .end local v0           #contMsg:Landroid/os/Message;
    .end local v2           #stopMsg:Landroid/os/Message;
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 289
    .local v1, status:Ljava/util/HashMap;
    const-string v3, "major"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v3, "minor"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v3, "code"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v3, "reason"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6, v3}, Landroid/webkit/LoadListener;->handleStatus(IIILjava/lang/String;)V

    goto :goto_0

    .line 300
    .end local v1           #status:Ljava/util/HashMap;
    :sswitch_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/http/SslCertificate;

    invoke-direct {p0, v3}, Landroid/webkit/LoadListener;->handleCertificate(Landroid/net/http/SslCertificate;)V

    goto :goto_0

    .line 308
    :sswitch_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/http/SslError;

    invoke-direct {p0, v3}, Landroid/webkit/LoadListener;->handleSslError(Landroid/net/http/SslError;)V

    goto/16 :goto_0

    .line 221
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6e -> :sswitch_1
        0x78 -> :sswitch_2
        0x82 -> :sswitch_3
        0x8c -> :sswitch_4
        0x96 -> :sswitch_5
        0xa0 -> :sswitch_6
        0xaa -> :sswitch_7
        0xb4 -> :sswitch_8
    .end sparse-switch
.end method

.method public handleSslErrorRequest(Landroid/net/http/SslError;)Z
    .locals 3
    .parameter "error"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 870
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/webkit/Network;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 888
    :goto_0
    return v0

    .line 875
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, v2}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    move v0, v1

    .line 877
    goto :goto_0

    .line 879
    :cond_1
    const/16 v0, 0xb4

    invoke-virtual {p0, v0, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 885
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_2

    .line 886
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iput-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    .line 888
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method handleSslErrorResponse(Z)V
    .locals 1
    .parameter "proceed"

    .prologue
    .line 936
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    .line 939
    :cond_0
    if-nez p1, :cond_1

    .line 941
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    .line 942
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    .line 944
    :cond_1
    return-void
.end method

.method public headers(Landroid/net/http/Headers;)V
    .locals 5
    .parameter "headers"

    .prologue
    .line 344
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v2, :cond_0

    .line 350
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-virtual {p1}, Landroid/net/http/Headers;->getSetCookie()Ljava/util/ArrayList;

    move-result-object v0

    .line 346
    .local v0, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 347
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/webkit/CookieManager;->setCookie(Landroid/net/WebAddress;Ljava/lang/String;)V

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 349
    :cond_1
    const/16 v2, 0x64

    invoke-virtual {p0, v2, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_0
.end method

.method host()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    .line 1031
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSynchronous()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    return v0
.end method

.method loadSynchronousMessages()V
    .locals 2

    .prologue
    .line 1734
    :goto_0
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1735
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p0, v0}, Landroid/webkit/LoadListener;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1737
    :cond_0
    return-void
.end method

.method makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "username"
    .parameter "password"

    .prologue
    .line 966
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-nez v0, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0, p1}, Landroid/net/http/HttpAuthHeader;->setUsername(Ljava/lang/String;)V

    .line 971
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0, p2}, Landroid/net/http/HttpAuthHeader;->setPassword(Ljava/lang/String;)V

    .line 973
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getScheme()I

    move-result v9

    .line 974
    .local v9, scheme:I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_2

    .line 976
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    .line 978
    .local v1, isProxy:Z
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/http/RequestHandle;->setupBasicAuthResponse(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 979
    .end local v1           #isProxy:Z
    :cond_2
    const/4 v0, 0x2

    if-ne v9, v0, :cond_0

    .line 981
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    .line 983
    .restart local v1       #isProxy:Z
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v4

    .line 984
    .local v4, realm:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getNonce()Ljava/lang/String;

    move-result-object v5

    .line 985
    .local v5, nonce:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getQop()Ljava/lang/String;

    move-result-object v6

    .line 986
    .local v6, qop:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 987
    .local v7, algorithm:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getOpaque()Ljava/lang/String;

    move-result-object v8

    .line 989
    .local v8, opaque:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v8}, Landroid/net/http/RequestHandle;->setupDigestAuthResponse(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method notifyError()V
    .locals 3

    .prologue
    .line 1306
    iget v1, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v1, :cond_1

    .line 1307
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorDescription()Ljava/lang/String;

    move-result-object v0

    .line 1308
    .local v0, description:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 1309
    :cond_0
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Landroid/webkit/LoadListener;->nativeError(ILjava/lang/String;Ljava/lang/String;)V

    .line 1310
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    .line 1312
    .end local v0           #description:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method originalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    .line 1041
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method parseContentTypeHeader(Ljava/lang/String;)V
    .locals 7
    .parameter "contentType"

    .prologue
    const/16 v6, 0x3b

    const/4 v5, 0x1

    .line 1515
    if-eqz p1, :cond_2

    .line 1516
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1517
    .local v1, i:I
    if-ltz v1, :cond_4

    .line 1518
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1520
    const/16 v4, 0x3d

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1521
    .local v2, j:I
    if-lez v2, :cond_3

    .line 1522
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1523
    if-ge v1, v2, :cond_0

    .line 1524
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1526
    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 1531
    :goto_0
    iget-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 1533
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_1

    .line 1537
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    .line 1545
    .end local v2           #j:I
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1548
    :try_start_0
    sget-object v4, Landroid/webkit/LoadListener;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    iget-object v5, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1549
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1550
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1559
    .end local v1           #i:I
    .end local v3           #m:Ljava/util/regex/Matcher;
    :cond_2
    :goto_2
    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1560
    return-void

    .line 1528
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_3
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    goto :goto_0

    .line 1541
    .end local v2           #j:I
    :cond_4
    iput-object p1, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto :goto_1

    .line 1552
    .restart local v3       #m:Ljava/util/regex/Matcher;
    :cond_5
    :try_start_1
    invoke-direct {p0}, Landroid/webkit/LoadListener;->guessMimeType()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1554
    .end local v3           #m:Ljava/util/regex/Matcher;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1555
    .local v0, ex:Ljava/lang/IllegalStateException;
    invoke-direct {p0}, Landroid/webkit/LoadListener;->guessMimeType()V

    goto :goto_2
.end method

.method pauseLoad(Z)V
    .locals 1
    .parameter "pause"

    .prologue
    .line 1319
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestHandle;->pauseRequest(Z)V

    .line 1322
    :cond_0
    return-void
.end method

.method postIdentifier()J
    .locals 2

    .prologue
    .line 1046
    iget-wide v0, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    return-wide v0
.end method

.method public priority()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Landroid/webkit/LoadListener;->mPriority:I

    return v0
.end method

.method proxyAuthenticate()Z
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v0

    .line 572
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method realm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v0, :cond_0

    .line 907
    const/4 v0, 0x0

    .line 909
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method resetCancel()V
    .locals 1

    .prologue
    .line 1117
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    .line 1118
    return-void
.end method

.method setCacheLoader(Landroid/webkit/CacheLoader;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 802
    iput-object p1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 804
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "pri"

    .prologue
    .line 201
    iput p1, p0, Landroid/webkit/LoadListener;->mPriority:I

    .line 202
    return-void
.end method

.method setPriority(Ljava/lang/String;I)V
    .locals 2
    .parameter "url"
    .parameter "pri"

    .prologue
    .line 1329
    iget-object v1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v0

    .line 1330
    .local v0, net:Landroid/webkit/Network;
    invoke-virtual {v0, p1, p2}, Landroid/webkit/Network;->setPriority(Ljava/lang/String;I)Z

    .line 1331
    return-void
.end method

.method setRequestData(Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 0
    .parameter "method"
    .parameter
    .parameter "postData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 1004
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    .line 1005
    iput-object p2, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    .line 1006
    iput-object p3, p0, Landroid/webkit/LoadListener;->mPostData:[B

    .line 1007
    return-void
.end method

.method public setShouldCommit(Z)V
    .locals 0
    .parameter "commit"

    .prologue
    .line 209
    iput-boolean p1, p0, Landroid/webkit/LoadListener;->mCommit:Z

    .line 210
    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 1657
    if-eqz p1, :cond_0

    .line 1658
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    .line 1659
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1660
    invoke-static {p1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    .line 1662
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1663
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1664
    .local v0, e:Landroid/net/ParseException;
    invoke-virtual {v0}, Landroid/net/ParseException;->printStackTrace()V

    goto :goto_0

    .line 1667
    .end local v0           #e:Landroid/net/ParseException;
    :cond_1
    iput-object p1, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public shouldCommit()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCommit:Z

    return v0
.end method

.method sslError()Landroid/net/http/SslError;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslError:Landroid/net/http/SslError;

    return-object v0
.end method

.method public status(IIILjava/lang/String;)V
    .locals 4
    .parameter "majorVersion"
    .parameter "minorVersion"
    .parameter "code"
    .parameter "reasonPhrase"

    .prologue
    const-string v3, ""

    .line 590
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 591
    .local v0, status:Ljava/util/HashMap;
    const-string v1, "major"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string v1, "minor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string v1, "code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string v1, "reason"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    iget-object v1, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v1}, Landroid/webkit/ByteArrayBuilder;->clear()V

    .line 597
    const-string v1, ""

    iput-object v3, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 598
    const-string v1, ""

    iput-object v3, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 599
    const-string v1, ""

    iput-object v3, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    .line 600
    const/16 v1, 0xa0

    invoke-virtual {p0, v1, v0}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 601
    return-void
.end method

.method tearDown()V
    .locals 4

    .prologue
    .line 1267
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v2

    if-nez v2, :cond_1

    .line 1268
    new-instance v1, Landroid/webkit/WebViewWorker$CacheSaveData;

    invoke-direct {v1}, Landroid/webkit/WebViewWorker$CacheSaveData;-><init>()V

    .line 1269
    .local v1, data:Landroid/webkit/WebViewWorker$CacheSaveData;
    iput-object p0, v1, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    .line 1270
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iput-object v2, v1, Landroid/webkit/WebViewWorker$CacheSaveData;->mUrl:Ljava/lang/String;

    .line 1271
    iget-wide v2, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-wide v2, v1, Landroid/webkit/WebViewWorker$CacheSaveData;->mPostId:J

    .line 1272
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v3, 0x6a

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1278
    .end local v1           #data:Landroid/webkit/WebViewWorker$CacheSaveData;
    :goto_0
    iget v2, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v2, :cond_0

    .line 1279
    new-instance v0, Landroid/webkit/PerfChecker;

    invoke-direct {v0}, Landroid/webkit/PerfChecker;-><init>()V

    .line 1280
    .local v0, checker:Landroid/webkit/PerfChecker;
    invoke-direct {p0}, Landroid/webkit/LoadListener;->nativeFinished()V

    .line 1281
    const-string v2, "res nativeFinished"

    invoke-virtual {v0, v2}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    .line 1282
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    .line 1284
    .end local v0           #checker:Landroid/webkit/PerfChecker;
    :cond_0
    return-void

    .line 1275
    :cond_1
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v3, 0x6b

    invoke-virtual {v2, v3, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method transferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    return-object v0
.end method
