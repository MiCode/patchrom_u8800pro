.class Landroid/net/http/SSLConnectionClosedByUserException;
.super Ljavax/net/ssl/SSLException;
.source "HttpsConnection.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 440
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 441
    return-void
.end method
