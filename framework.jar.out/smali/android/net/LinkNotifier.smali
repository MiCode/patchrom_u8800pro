.class public interface abstract Landroid/net/LinkNotifier;
.super Ljava/lang/Object;
.source "LinkNotifier.java"


# static fields
.field public static final FAILURE_GENERAL:I = -0x1

.field public static final FAILURE_NO_LINKS:I = -0x2


# virtual methods
.method public abstract onBetterLinkAvail(Landroid/net/LinkInfo;)V
.end method

.method public abstract onGetLinkFailure(I)V
.end method

.method public abstract onLinkAvail(Landroid/net/LinkInfo;)V
.end method

.method public abstract onLinkLost(Landroid/net/LinkInfo;)V
.end method
