.class Landroid/webkit/UrlHistory;
.super Ljava/lang/Object;
.source "UrlHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/UrlHistory$SubhostComparator;
    }
.end annotation


# static fields
.field private static final MAX_USE_COUNT:I = 0x7fffffff

.field private static final SUBHOSTS_MAX:I = 0x28

.field private static final SUBHOSTS_TO_CONNECT_MAX:I = 0xf

.field private static final SUBHOSTS_TO_REMOVE:I = 0x4


# instance fields
.field private mMainHost:Ljava/lang/String;

.field private mSubhosts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/webkit/Subhost;",
            ">;"
        }
    .end annotation
.end field

.field private mSubhostsToConnect:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/Subhost;",
            ">;"
        }
    .end annotation
.end field

.field private mUseCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "mainHost"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/UrlHistory;->mUseCount:I

    .line 70
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/webkit/UrlHistory;->mMainHost:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/UrlHistory;->mSubhostsToConnect:Ljava/util/LinkedList;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x29

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    .line 73
    return-void
.end method

.method private removeLowWeightSubhosts()V
    .locals 4

    .prologue
    .line 208
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 209
    .local v1, subhosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    new-instance v2, Landroid/webkit/UrlHistory$SubhostComparator;

    invoke-direct {v2, p0}, Landroid/webkit/UrlHistory$SubhostComparator;-><init>(Landroid/webkit/UrlHistory;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, removedSubhost:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 213
    add-int/lit8 v0, v0, 0x1

    .line 214
    iget-object v3, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/Subhost;

    invoke-virtual {v2}, Landroid/webkit/Subhost;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 218
    :cond_0
    return-void
.end method


# virtual methods
.method public addSubhost(Landroid/webkit/Subhost;)V
    .locals 2
    .parameter "subHost"

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/webkit/Subhost;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/webkit/Subhost;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    return-void
.end method

.method public addSubhost(Ljava/lang/String;)V
    .locals 3
    .parameter "subHost"

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 109
    iget-object v1, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/Subhost;

    invoke-virtual {v1}, Landroid/webkit/Subhost;->incrementNumberOfReferences()V

    .line 111
    iget-object v1, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/Subhost;

    invoke-virtual {p0}, Landroid/webkit/Subhost;->incrementWeight()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 115
    .restart local p0
    :cond_1
    const/16 v1, 0x28

    iget-object v2, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 116
    invoke-direct {p0}, Landroid/webkit/UrlHistory;->removeLowWeightSubhosts()V

    .line 119
    :cond_2
    new-instance v0, Landroid/webkit/Subhost;

    invoke-direct {v0, p1}, Landroid/webkit/Subhost;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, newSubHost:Landroid/webkit/Subhost;
    iget-object v1, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getMainHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/webkit/UrlHistory;->mMainHost:Ljava/lang/String;

    return-object v0
.end method

.method public getSubhosts()Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/Subhost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 141
    .local v0, subhosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    return-object v0
.end method

.method public getSubhostsToConnect()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/Subhost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Landroid/webkit/UrlHistory;->mSubhostsToConnect:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getUseCount()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Landroid/webkit/UrlHistory;->mUseCount:I

    return v0
.end method

.method public incrementUseCount()V
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Landroid/webkit/UrlHistory;->mUseCount:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    .line 99
    iget v0, p0, Landroid/webkit/UrlHistory;->mUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/UrlHistory;->mUseCount:I

    .line 102
    :cond_0
    return-void
.end method

.method public resetSubhostsWeight()V
    .locals 5

    .prologue
    .line 152
    iget-object v3, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 153
    .local v2, keys:Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 155
    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    iget-object v4, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/Subhost;

    .line 157
    .local v0, curSubHost:Landroid/webkit/Subhost;
    invoke-virtual {v0}, Landroid/webkit/Subhost;->decrementWeight()V

    .line 158
    invoke-virtual {v0}, Landroid/webkit/Subhost;->resetNumberOfReferences()V

    goto :goto_0

    .line 161
    .end local v0           #curSubHost:Landroid/webkit/Subhost;
    :cond_0
    return-void
.end method

.method public setUseCount(I)V
    .locals 1
    .parameter "useCount"

    .prologue
    .line 87
    if-ltz p1, :cond_0

    .line 88
    iput p1, p0, Landroid/webkit/UrlHistory;->mUseCount:I

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/UrlHistory;->mUseCount:I

    goto :goto_0
.end method

.method public updateSubhostsReferences()V
    .locals 5

    .prologue
    .line 167
    iget-object v3, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 168
    .local v2, keys:Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 170
    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    iget-object v4, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/Subhost;

    .line 172
    .local v0, curSubHost:Landroid/webkit/Subhost;
    invoke-virtual {v0}, Landroid/webkit/Subhost;->updateNumberOfReferences()V

    goto :goto_0

    .line 175
    .end local v0           #curSubHost:Landroid/webkit/Subhost;
    :cond_0
    return-void
.end method

.method public updateSubhostsToConnect()V
    .locals 10

    .prologue
    .line 180
    iget-object v6, p0, Landroid/webkit/UrlHistory;->mSubhostsToConnect:Ljava/util/LinkedList;

    if-eqz v6, :cond_0

    .line 181
    iget-object v6, p0, Landroid/webkit/UrlHistory;->mSubhostsToConnect:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    .line 186
    :goto_0
    iget-object v6, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 187
    .local v2, keys:Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 189
    .local v1, iter:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 191
    .local v5, url:Ljava/lang/String;
    new-instance v3, Landroid/webkit/Subhost;

    iget-object v6, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/webkit/Subhost;

    invoke-virtual {v6}, Landroid/webkit/Subhost;->getNumberOfReferences()I

    move-result v7

    iget-object v6, p0, Landroid/webkit/UrlHistory;->mSubhosts:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/webkit/Subhost;

    invoke-virtual {v6}, Landroid/webkit/Subhost;->getWeight()D

    move-result-wide v8

    invoke-direct {v3, v5, v7, v8, v9}, Landroid/webkit/Subhost;-><init>(Ljava/lang/String;ID)V

    .line 192
    .local v3, newSubHost:Landroid/webkit/Subhost;
    iget-object v6, p0, Landroid/webkit/UrlHistory;->mSubhostsToConnect:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 183
    .end local v1           #iter:Ljava/util/Iterator;
    .end local v2           #keys:Ljava/util/Set;
    .end local v3           #newSubHost:Landroid/webkit/Subhost;
    .end local v5           #url:Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Landroid/webkit/UrlHistory;->mSubhostsToConnect:Ljava/util/LinkedList;

    goto :goto_0

    .line 195
    .restart local v1       #iter:Ljava/util/Iterator;
    .restart local v2       #keys:Ljava/util/Set;
    :cond_1
    iget-object v6, p0, Landroid/webkit/UrlHistory;->mSubhostsToConnect:Ljava/util/LinkedList;

    new-instance v7, Landroid/webkit/UrlHistory$SubhostComparator;

    invoke-direct {v7, p0}, Landroid/webkit/UrlHistory$SubhostComparator;-><init>(Landroid/webkit/UrlHistory;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 197
    iget-object v6, p0, Landroid/webkit/UrlHistory;->mSubhostsToConnect:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/16 v7, 0xf

    sub-int v4, v6, v7

    .line 198
    .local v4, subhostsToRemove:I
    :goto_2
    if-lez v4, :cond_2

    .line 199
    add-int/lit8 v4, v4, -0x1

    .line 200
    iget-object v6, p0, Landroid/webkit/UrlHistory;->mSubhostsToConnect:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_2

    .line 203
    :cond_2
    return-void
.end method
