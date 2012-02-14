.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN:I = 0x1

.field private static final DBG:Z = false

.field private static final FDN:I = 0x2

.field private static final SDN:I = 0x3

.field private static final STR_EFID:Ljava/lang/String; = "efid"

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_INDEX:Ljava/lang/String; = "index"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mSimulator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v3, "icc"

    .line 191
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "emails"

    aput-object v1, v0, v5

    const-string v1, "efid"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 213
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 217
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v1, "adn"

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v1, "fdn"

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v1, "sdn"

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    const-string v1, ""

    .line 708
    const/4 v7, 0x0

    .line 716
    .local v7, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 718
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 719
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 728
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 724
    :catch_0
    move-exception v1

    goto :goto_0

    .line 722
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    const-string v1, ""

    .line 828
    const/4 v7, 0x0

    .line 831
    .local v7, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 833
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 834
    const-string v4, ""

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 843
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 839
    :catch_0
    move-exception v1

    goto :goto_0

    .line 837
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEfByIndex(II[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "efType"
    .parameter "index"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    const-string v1, ""

    .line 804
    const/4 v6, 0x0

    .line 807
    .local v6, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 809
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 810
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 819
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v6

    .line 815
    :catch_0
    move-exception v1

    goto :goto_0

    .line 813
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private loadFromEf(I)Ljava/util/ArrayList;
    .locals 7
    .parameter "efType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v4, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v1, 0x0

    .line 633
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_0
    const-string/jumbo v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 635
    .local v3, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_0

    .line 636
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 643
    .end local v3           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 646
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 648
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 649
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V

    .line 648
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 653
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_1
    const-string v5, "IccProvider"

    const-string v6, "Cannot load ADN records"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 657
    :cond_2
    return-object v4

    .line 640
    :catch_0
    move-exception v5

    goto :goto_0

    .line 638
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadFromEf(ILcom/android/internal/telephony/AdnRecord;)Ljava/util/ArrayList;
    .locals 7
    .parameter "efType"
    .parameter "searchAdn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/AdnRecord;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v6, "IccProvider"

    .line 662
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v4, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v1, 0x0

    .line 668
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_0
    const-string/jumbo v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 670
    .local v3, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_0

    .line 671
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 678
    .end local v3           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 681
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 683
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 686
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/AdnRecord;->equalAdn(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 688
    const-string v5, "IccProvider"

    const-string v5, "have one by efid and index"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V

    .line 699
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_1
    :goto_2
    return-object v4

    .line 683
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 695
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_3
    const-string v5, "IccProvider"

    const-string v5, "Cannot load ADN records"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 675
    :catch_0
    move-exception v5

    goto :goto_0

    .line 673
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V
    .locals 12
    .parameter "record"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/AdnRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 854
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 855
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .local v2, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, alphaTag:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v10

    .line 858
    .local v10, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    .line 860
    .local v6, emails:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEfid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 861
    .local v3, efid:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 865
    .local v8, index:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 869
    .local v5, emailString:Ljava/lang/StringBuilder;
    if-eqz v6, :cond_2

    .line 870
    move-object v1, v6

    .local v1, arr$:[Ljava/lang/String;
    array-length v9, v1

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v4, v1, v7

    .line 872
    .local v4, email:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 875
    .end local v4           #email:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    .end local v0           #alphaTag:Ljava/lang/String;
    .end local v2           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #efid:Ljava/lang/String;
    .end local v5           #emailString:Ljava/lang/StringBuilder;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v8           #index:Ljava/lang/String;
    .end local v10           #number:Ljava/lang/String;
    :cond_1
    return-void

    .line 877
    .restart local v0       #alphaTag:Ljava/lang/String;
    .restart local v2       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #efid:Ljava/lang/String;
    .restart local v5       #emailString:Ljava/lang/StringBuilder;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v8       #index:Ljava/lang/String;
    .restart local v10       #number:Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 890
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inVal"

    .prologue
    const/16 v4, 0x27

    const/4 v3, 0x1

    .line 441
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 442
    .local v0, len:I
    move-object v1, p1

    .line 444
    .local v1, retVal:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    sub-int v2, v0, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    .line 445
    sub-int v2, v0, v3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 448
    :cond_0
    return-object v1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"

    .prologue
    .line 737
    const/4 v7, 0x0

    .line 740
    .local v7, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 742
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 743
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 752
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 748
    :catch_0
    move-exception v1

    goto :goto_0

    .line 746
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "efType"
    .parameter "index"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"

    .prologue
    .line 772
    const/4 v6, 0x0

    .line 775
    .local v6, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 777
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p2

    move-object v5, p5

    .line 778
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 787
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v6

    .line 783
    :catch_0
    move-exception v1

    goto :goto_0

    .line 781
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 22
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 457
    sget-object v5, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 458
    .local v13, match:I
    packed-switch v13, :pswitch_data_0

    .line 468
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot insert into URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 460
    :pswitch_0
    const/16 v6, 0x6f3a

    .line 473
    .local v6, efType:I
    :goto_0
    const/4 v7, 0x0

    .line 474
    .local v7, tag:Ljava/lang/String;
    const/4 v8, 0x0

    .line 475
    .local v8, number:Ljava/lang/String;
    const/4 v9, 0x0

    .line 476
    .local v9, emails:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 478
    .local v10, pin2:Ljava/lang/String;
    const/16 v17, 0x0

    .line 479
    .local v17, sEfid:Ljava/lang/String;
    const/16 v18, 0x0

    .line 480
    .local v18, sIndex:Ljava/lang/String;
    const/4 v11, 0x0

    .line 481
    .local v11, index:I
    const/16 v19, 0x0

    .line 484
    .local v19, success:Z
    const-string v5, "AND"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 485
    .local v20, tokens:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move v14, v0

    .line 487
    .end local v13           #match:I
    .local v14, n:I
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_7

    .line 488
    aget-object v16, v20, v14

    .line 491
    .local v16, param:Ljava/lang/String;
    const-string v5, "="

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 493
    .local v15, pair:[Ljava/lang/String;
    array-length v5, v15

    const/4 v12, 0x2

    if-eq v5, v12, :cond_1

    .line 494
    const-string v5, "IccProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "resolve: bad whereClause parameter: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 464
    .end local v6           #efType:I
    .end local v7           #tag:Ljava/lang/String;
    .end local v8           #number:Ljava/lang/String;
    .end local v9           #emails:[Ljava/lang/String;
    .end local v10           #pin2:Ljava/lang/String;
    .end local v11           #index:I
    .end local v14           #n:I
    .end local v15           #pair:[Ljava/lang/String;
    .end local v16           #param:Ljava/lang/String;
    .end local v17           #sEfid:Ljava/lang/String;
    .end local v18           #sIndex:Ljava/lang/String;
    .end local v19           #success:Z
    .end local v20           #tokens:[Ljava/lang/String;
    .restart local v13       #match:I
    :pswitch_1
    const/16 v6, 0x6f3b

    .line 465
    .restart local v6       #efType:I
    goto :goto_0

    .line 498
    .end local v13           #match:I
    .restart local v7       #tag:Ljava/lang/String;
    .restart local v8       #number:Ljava/lang/String;
    .restart local v9       #emails:[Ljava/lang/String;
    .restart local v10       #pin2:Ljava/lang/String;
    .restart local v11       #index:I
    .restart local v14       #n:I
    .restart local v15       #pair:[Ljava/lang/String;
    .restart local v16       #param:Ljava/lang/String;
    .restart local v17       #sEfid:Ljava/lang/String;
    .restart local v18       #sIndex:Ljava/lang/String;
    .restart local v19       #success:Z
    .restart local v20       #tokens:[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v15, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 499
    .local v12, key:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v15, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 501
    .local v21, val:Ljava/lang/String;
    const-string/jumbo v5, "tag"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 502
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 503
    :cond_2
    const-string v5, "number"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 504
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 505
    :cond_3
    const-string v5, "emails"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 507
    const/4 v9, 0x0

    goto :goto_1

    .line 508
    :cond_4
    const-string v5, "pin2"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 509
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 512
    :cond_5
    const-string v5, "efid"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 513
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 515
    :cond_6
    const-string v5, "index"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 516
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 528
    .end local v12           #key:Ljava/lang/String;
    .end local v15           #pair:[Ljava/lang/String;
    .end local v16           #param:Ljava/lang/String;
    .end local v21           #val:Ljava/lang/String;
    :cond_7
    const/16 v5, 0x6f3b

    if-ne v6, v5, :cond_8

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 529
    const/4 v5, 0x0

    .line 554
    :goto_2
    return v5

    .line 533
    :cond_8
    if-eqz v17, :cond_9

    const-string v5, ""

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_9
    if-eqz v18, :cond_a

    const-string v5, ""

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_a
    move-object/from16 v5, p0

    .line 536
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    .line 550
    :cond_b
    :goto_3
    if-nez v19, :cond_d

    .line 551
    const/4 v5, 0x0

    goto :goto_2

    .line 538
    :cond_c
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 539
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 540
    if-lez v11, :cond_b

    .line 542
    move-object/from16 v0, p0

    move v1, v6

    move v2, v11

    move-object v3, v9

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEfByIndex(II[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    goto :goto_3

    .line 554
    :cond_d
    const/4 v5, 0x1

    goto :goto_2

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 354
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const/4 v4, 0x0

    .line 369
    const/4 v5, 0x0

    .line 373
    .local v5, pin2:Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 374
    .local v7, match:I
    packed-switch v7, :pswitch_data_0

    .line 385
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot insert into URL: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :pswitch_0
    const/16 v1, 0x6f3a

    .line 389
    .local v1, efType:I
    :goto_0
    const-string/jumbo v0, "tag"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, tag:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 392
    const-string v2, ""

    .line 395
    :cond_0
    const-string v0, "number"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, number:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 398
    const-string v3, ""

    :cond_1
    move-object v0, p0

    .line 402
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 404
    .local v9, success:Z
    if-nez v9, :cond_2

    move-object v0, v4

    .line 437
    :goto_1
    return-object v0

    .line 380
    .end local v1           #efType:I
    .end local v2           #tag:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    .end local v9           #success:Z
    :pswitch_1
    const/16 v1, 0x6f3b

    .line 381
    .restart local v1       #efType:I
    const-string v0, "pin2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 382
    goto :goto_0

    .line 408
    .restart local v2       #tag:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    .restart local v9       #success:Z
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "content://icc/"

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .local v6, buf:Ljava/lang/StringBuilder;
    packed-switch v7, :pswitch_data_1

    .line 424
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/internal/telephony/AdnRecordCache;->s_index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    sget v0, Lcom/android/internal/telephony/AdnRecordCache;->s_efid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .local v8, resultUri:Landroid/net/Uri;
    move-object v0, v8

    .line 437
    goto :goto_1

    .line 411
    .end local v8           #resultUri:Landroid/net/Uri;
    :pswitch_2
    const-string v0, "adn/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 415
    :pswitch_3
    const-string v0, "fdn/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 374
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 409
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 227
    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, device:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    .line 235
    :goto_0
    return v2

    .line 232
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 26
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 243
    const/4 v9, 0x0

    .line 244
    .local v9, isQuerybyindex:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    move/from16 v23, v0

    if-nez v23, :cond_b

    .line 245
    new-instance v19, Lcom/android/internal/telephony/AdnRecord;

    const-string v23, ""

    const-string v24, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .local v19, searchAdn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v6, 0x0

    .line 247
    .local v6, efid:I
    const/4 v8, 0x0

    .line 248
    .local v8, index:I
    if-eqz p3, :cond_9

    .line 249
    const-string v20, ""

    .line 250
    .local v20, tag:Ljava/lang/String;
    const-string v12, ""

    .line 251
    .local v12, number:Ljava/lang/String;
    const/4 v7, 0x0

    .line 252
    .local v7, emails:[Ljava/lang/String;
    const/4 v15, 0x0

    .line 253
    .local v15, pin2:Ljava/lang/String;
    const/16 v17, 0x0

    .line 254
    .local v17, sEfid:Ljava/lang/String;
    const/16 v18, 0x0

    .line 256
    .local v18, sIndex:Ljava/lang/String;
    const-string v23, "AND"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 257
    .local v21, tokens:[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v0, v0

    move v11, v0

    .line 259
    .local v11, n:I
    :cond_0
    :goto_0
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_7

    .line 260
    aget-object v14, v21, v11

    .line 263
    .local v14, param:Ljava/lang/String;
    const-string v23, "="

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 265
    .local v13, pair:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 266
    const-string v23, "IccProvider"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "resolve: bad whereClause parameter: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_1
    const/16 v23, 0x0

    aget-object v23, v13, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 271
    .local v10, key:Ljava/lang/String;
    const/16 v23, 0x1

    aget-object v23, v13, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 273
    .local v22, val:Ljava/lang/String;
    const-string/jumbo v23, "tag"

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto :goto_0

    .line 275
    :cond_2
    const-string v23, "number"

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 277
    :cond_3
    const-string v23, "emails"

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 279
    const/4 v7, 0x0

    goto :goto_0

    .line 280
    :cond_4
    const-string v23, "pin2"

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 281
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 283
    :cond_5
    const-string v23, "efid"

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 286
    :cond_6
    const-string v23, "index"

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0

    .line 291
    .end local v10           #key:Ljava/lang/String;
    .end local v13           #pair:[Ljava/lang/String;
    .end local v14           #param:Ljava/lang/String;
    .end local v22           #val:Ljava/lang/String;
    :cond_7
    if-eqz v17, :cond_8

    if-eqz v18, :cond_8

    .line 292
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 293
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 294
    const/4 v9, 0x1

    .line 296
    :cond_8
    new-instance v19, Lcom/android/internal/telephony/AdnRecord;

    .end local v19           #searchAdn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v19

    move v1, v6

    move v2, v8

    move-object/from16 v3, v20

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 297
    .restart local v19       #searchAdn:Lcom/android/internal/telephony/AdnRecord;
    const-string v23, "SimProvider"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "query tag="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ",number = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ,efid = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ,index = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v7           #emails:[Ljava/lang/String;
    .end local v11           #n:I
    .end local v12           #number:Ljava/lang/String;
    .end local v15           #pin2:Ljava/lang/String;
    .end local v17           #sEfid:Ljava/lang/String;
    .end local v18           #sIndex:Ljava/lang/String;
    .end local v20           #tag:Ljava/lang/String;
    .end local v21           #tokens:[Ljava/lang/String;
    :cond_9
    sget-object v23, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v23

    packed-switch v23, :pswitch_data_0

    .line 320
    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unknown URL "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 303
    :pswitch_0
    if-eqz v9, :cond_a

    .line 304
    const/16 v23, 0x6f3a

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(ILcom/android/internal/telephony/AdnRecord;)Ljava/util/ArrayList;

    move-result-object v16

    .line 348
    .end local v6           #efid:I
    .end local v8           #index:I
    .end local v19           #searchAdn:Lcom/android/internal/telephony/AdnRecord;
    .local v16, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :goto_1
    new-instance v23, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v24, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v23

    .line 307
    .end local v16           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    .restart local v6       #efid:I
    .restart local v8       #index:I
    .restart local v19       #searchAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_a
    const/16 v23, 0x6f3a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Ljava/util/ArrayList;

    move-result-object v16

    .line 309
    .restart local v16       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_1

    .line 312
    .end local v16           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_1
    const/16 v23, 0x6f3b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Ljava/util/ArrayList;

    move-result-object v16

    .line 313
    .restart local v16       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_1

    .line 316
    .end local v16           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_2
    const/16 v23, 0x6f49

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Ljava/util/ArrayList;

    move-result-object v16

    .line 317
    .restart local v16       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_1

    .line 324
    .end local v6           #efid:I
    .end local v8           #index:I
    .end local v16           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    .end local v19           #searchAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_b
    new-instance v16, Ljava/util/ArrayList;

    const/16 v23, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    .restart local v16       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v5, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v23, "Ron Stevens/H"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const-string v23, "512-555-5038"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .restart local v5       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v23, "Ron Stevens/M"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    const-string v23, "512-555-8305"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .restart local v5       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v23, "Melissa Owens"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    const-string v23, "512-555-8305"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .restart local v5       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v23, "Directory Assistence"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    const-string v23, "411"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 21
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 560
    const/4 v8, 0x0

    .line 564
    .local v8, pin2:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 565
    .local v17, match:I
    packed-switch v17, :pswitch_data_0

    .line 576
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot insert into URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 567
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 580
    .local v3, efType:I
    :goto_0
    const-string/jumbo v2, "tag"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 581
    .local v4, tag:Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 582
    .local v5, number:Ljava/lang/String;
    const/16 v16, 0x0

    .line 583
    .local v16, emails:[Ljava/lang/String;
    const-string v2, "newTag"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 585
    .local v6, newTag:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 586
    const-string v6, ""

    .line 589
    :cond_0
    const-string v2, "newNumber"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 591
    .local v7, newNumber:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 592
    const-string v7, ""

    .line 595
    :cond_1
    const/16 v18, 0x0

    .line 597
    .local v18, newEmails:[Ljava/lang/String;
    const-string v2, "efid"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 598
    .local v15, Efid:Ljava/lang/String;
    const-string v2, "index"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 599
    .local v19, sIndex:Ljava/lang/String;
    const/4 v11, 0x0

    .line 600
    .local v11, index:I
    const/16 v20, 0x0

    .line 603
    .local v20, success:Z
    if-eqz v15, :cond_2

    const-string v2, ""

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    if-eqz v19, :cond_3

    const-string v2, ""

    move-object/from16 v0, v19

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    move-object/from16 v2, p0

    .line 606
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    .line 619
    :cond_4
    :goto_1
    if-nez v20, :cond_6

    .line 620
    const/4 v2, 0x0

    .line 623
    :goto_2
    return v2

    .line 571
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #newTag:Ljava/lang/String;
    .end local v7           #newNumber:Ljava/lang/String;
    .end local v11           #index:I
    .end local v15           #Efid:Ljava/lang/String;
    .end local v16           #emails:[Ljava/lang/String;
    .end local v18           #newEmails:[Ljava/lang/String;
    .end local v19           #sIndex:Ljava/lang/String;
    .end local v20           #success:Z
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 572
    .restart local v3       #efType:I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 573
    goto :goto_0

    .line 608
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #newTag:Ljava/lang/String;
    .restart local v7       #newNumber:Ljava/lang/String;
    .restart local v11       #index:I
    .restart local v15       #Efid:Ljava/lang/String;
    .restart local v16       #emails:[Ljava/lang/String;
    .restart local v18       #newEmails:[Ljava/lang/String;
    .restart local v19       #sIndex:Ljava/lang/String;
    .restart local v20       #success:Z
    :cond_5
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 609
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 610
    if-lez v11, :cond_4

    move-object/from16 v9, p0

    move v10, v3

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    .line 612
    invoke-direct/range {v9 .. v14}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    goto :goto_1

    .line 623
    :cond_6
    const/4 v2, 0x1

    goto :goto_2

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
