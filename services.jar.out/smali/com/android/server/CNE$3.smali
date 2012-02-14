.class synthetic Lcom/android/server/CNE$3;
.super Ljava/lang/Object;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$net$LinkProvider$LinkRequirement:[I

.field static final synthetic $SwitchMap$android$net$NetworkInfo$State:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$Phone$DataState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2164
    invoke-static {}, Landroid/net/LinkProvider$LinkRequirement;->values()[Landroid/net/LinkProvider$LinkRequirement;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/CNE$3;->$SwitchMap$android$net$LinkProvider$LinkRequirement:[I

    :try_start_0
    sget-object v0, Lcom/android/server/CNE$3;->$SwitchMap$android$net$LinkProvider$LinkRequirement:[I

    sget-object v1, Landroid/net/LinkProvider$LinkRequirement;->FW_LINK_BW:Landroid/net/LinkProvider$LinkRequirement;

    invoke-virtual {v1}, Landroid/net/LinkProvider$LinkRequirement;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/server/CNE$3;->$SwitchMap$android$net$LinkProvider$LinkRequirement:[I

    sget-object v1, Landroid/net/LinkProvider$LinkRequirement;->REV_LINK_BW:Landroid/net/LinkProvider$LinkRequirement;

    invoke-virtual {v1}, Landroid/net/LinkProvider$LinkRequirement;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    .line 1338
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/Phone$DataState;->values()[Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/CNE$3;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    :try_start_2
    sget-object v0, Lcom/android/server/CNE$3;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/server/CNE$3;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/server/CNE$3;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/server/CNE$3;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    .line 1272
    :goto_5
    invoke-static {}, Landroid/net/NetworkInfo$State;->values()[Landroid/net/NetworkInfo$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/CNE$3;->$SwitchMap$android$net$NetworkInfo$State:[I

    :try_start_6
    sget-object v0, Lcom/android/server/CNE$3;->$SwitchMap$android$net$NetworkInfo$State:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/server/CNE$3;->$SwitchMap$android$net$NetworkInfo$State:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v0, Lcom/android/server/CNE$3;->$SwitchMap$android$net$NetworkInfo$State:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v0, Lcom/android/server/CNE$3;->$SwitchMap$android$net$NetworkInfo$State:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v0, Lcom/android/server/CNE$3;->$SwitchMap$android$net$NetworkInfo$State:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v0, Lcom/android/server/CNE$3;->$SwitchMap$android$net$NetworkInfo$State:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    return-void

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    .line 1338
    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto :goto_2

    .line 2164
    :catch_a
    move-exception v0

    goto/16 :goto_1

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method
