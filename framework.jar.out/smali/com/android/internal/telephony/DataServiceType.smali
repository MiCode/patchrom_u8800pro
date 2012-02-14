.class final enum Lcom/android/internal/telephony/DataServiceType;
.super Ljava/lang/Enum;
.source "DataServiceType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataServiceType$1;,
        Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataServiceType; = null

.field private static final DEFAULT_SERVICE_TYPE_PRIORITIES:Ljava/lang/String; = "0=10;1=20;2=30;3=50;4=400;"

.field private static final LOG_TAG:Ljava/lang/String; = "DST"

.field public static final enum SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

.field public static final enum SERVICE_TYPE_DUN:Lcom/android/internal/telephony/DataServiceType;

.field public static final enum SERVICE_TYPE_HIPRI:Lcom/android/internal/telephony/DataServiceType;

.field public static final enum SERVICE_TYPE_MMS:Lcom/android/internal/telephony/DataServiceType;

.field public static final enum SERVICE_TYPE_SUPL:Lcom/android/internal/telephony/DataServiceType;

.field private static final servComp:Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;


# instance fields
.field index:I

.field priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/android/internal/telephony/DataServiceType;

    const-string v1, "SERVICE_TYPE_DEFAULT"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/DataServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/DataServiceType;

    const-string v1, "SERVICE_TYPE_MMS"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/telephony/DataServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MMS:Lcom/android/internal/telephony/DataServiceType;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/DataServiceType;

    const-string v1, "SERVICE_TYPE_SUPL"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/DataServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_SUPL:Lcom/android/internal/telephony/DataServiceType;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/DataServiceType;

    const-string v1, "SERVICE_TYPE_DUN"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/DataServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DUN:Lcom/android/internal/telephony/DataServiceType;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/DataServiceType;

    const-string v1, "SERVICE_TYPE_HIPRI"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/telephony/DataServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_HIPRI:Lcom/android/internal/telephony/DataServiceType;

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/DataServiceType;

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MMS:Lcom/android/internal/telephony/DataServiceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_SUPL:Lcom/android/internal/telephony/DataServiceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DUN:Lcom/android/internal/telephony/DataServiceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_HIPRI:Lcom/android/internal/telephony/DataServiceType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->$VALUES:[Lcom/android/internal/telephony/DataServiceType;

    .line 171
    new-instance v0, Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;-><init>(Lcom/android/internal/telephony/DataServiceType$1;)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->servComp:Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/android/internal/telephony/DataServiceType;->index:I

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/DataServiceType;->priority:I

    .line 57
    return-void
.end method

.method public static apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;
    .locals 1
    .parameter "type"

    .prologue
    .line 180
    if-nez p0, :cond_0

    .line 181
    :goto_0
    const-string v0, "default"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    .line 192
    :goto_1
    return-object v0

    .line 180
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    goto :goto_0

    .line 183
    :cond_1
    const-string v0, "mms"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MMS:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_1

    .line 185
    :cond_2
    const-string/jumbo v0, "supl"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_SUPL:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_1

    .line 187
    :cond_3
    const-string v0, "dun"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DUN:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_1

    .line 189
    :cond_4
    const-string v0, "hipri"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_HIPRI:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_1

    .line 192
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getPrioritySortedValues()[Lcom/android/internal/telephony/DataServiceType;
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    invoke-virtual {v1}, [Lcom/android/internal/telephony/DataServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataServiceType;

    .line 175
    .local v0, ret:[Lcom/android/internal/telephony/DataServiceType;
    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->servComp:Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 176
    return-object v0
.end method

.method private static parseServicePriorityString(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 121
    if-nez p0, :cond_0

    move-object v8, v11

    .line 139
    :goto_0
    return-object v8

    .line 125
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v2, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_0
    const-string v8, ";"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, t1:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 129
    .local v6, t2:Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, value:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 132
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #t1:[Ljava/lang/String;
    .end local v6           #t2:Ljava/lang/String;
    .end local v7           #value:[Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 133
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "DST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing service priority string, ignoring "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v11

    .line 134
    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #t1:[Ljava/lang/String;
    :cond_1
    move-object v8, v2

    .line 139
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;
    .locals 1
    .parameter "name"

    .prologue
    .line 35
    const-class v0, Lcom/android/internal/telephony/DataServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataServiceType;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/DataServiceType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->$VALUES:[Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataServiceType;

    return-object v0
.end method


# virtual methods
.method public getServicePriorityFromProperty()I
    .locals 3

    .prologue
    .line 144
    const-string v2, "persist.telephony.ds.priorities"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, priorities:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/DataServiceType;->parseServicePriorityString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 148
    .local v0, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 149
    const-string v2, "0=10;1=20;2=30;3=50;4=400;"

    invoke-static {v2}, Lcom/android/internal/telephony/DataServiceType;->parseServicePriorityString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 153
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/DataServiceType;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public getid()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/telephony/DataServiceType;->index:I

    return v0
.end method

.method public isEqualDefaultPriority(Lcom/android/internal/telephony/DataServiceType;)Z
    .locals 2
    .parameter "ds"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqualPriority(Lcom/android/internal/telephony/DataServiceType;)Z
    .locals 2
    .parameter "ds"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/telephony/DataServiceType;->priority:I

    iget v1, p1, Lcom/android/internal/telephony/DataServiceType;->priority:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHigherDefaultPriorityThan(Lcom/android/internal/telephony/DataServiceType;)Z
    .locals 2
    .parameter "ds"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHigherPriorityThan(Lcom/android/internal/telephony/DataServiceType;)Z
    .locals 4
    .parameter "ds"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataServiceType;->isEqualPriority(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v1

    if-le v0, v1, :cond_0

    move v0, v3

    .line 87
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 85
    goto :goto_0

    .line 87
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/DataServiceType;->priority:I

    iget v1, p1, Lcom/android/internal/telephony/DataServiceType;->priority:I

    if-le v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public isLowerDefaultPriorityThan(Lcom/android/internal/telephony/DataServiceType;)Z
    .locals 2
    .parameter "ds"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLowerPriorityThan(Lcom/android/internal/telephony/DataServiceType;)Z
    .locals 4
    .parameter "ds"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataServiceType;->isEqualPriority(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v0, v3

    .line 105
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 103
    goto :goto_0

    .line 105
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/DataServiceType;->priority:I

    iget v1, p1, Lcom/android/internal/telephony/DataServiceType;->priority:I

    if-ge v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/telephony/DataServiceType;->priority:I

    .line 117
    return-void
.end method

.method protected toApnTypeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/android/internal/telephony/DataServiceType$1;->$SwitchMap$com$android$internal$telephony$DataServiceType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 209
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 199
    :pswitch_0
    const-string v0, "default"

    goto :goto_0

    .line 201
    :pswitch_1
    const-string v0, "mms"

    goto :goto_0

    .line 203
    :pswitch_2
    const-string/jumbo v0, "supl"

    goto :goto_0

    .line 205
    :pswitch_3
    const-string v0, "dun"

    goto :goto_0

    .line 207
    :pswitch_4
    const-string v0, "hipri"

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
