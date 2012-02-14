.class synthetic Lcom/android/internal/telephony/DataConnectionFailCause$1;
.super Ljava/lang/Object;
.source "DataConnectionFailCause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionFailCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$DataConnectionFailCause:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    invoke-static {}, Lcom/android/internal/telephony/DataConnectionFailCause;->values()[Lcom/android/internal/telephony/DataConnectionFailCause;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause$1;->$SwitchMap$com$android$internal$telephony$DataConnectionFailCause:[I

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause$1;->$SwitchMap$com$android$internal$telephony$DataConnectionFailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnectionFailCause;->TETHERED_MODE_CALL_ON:Lcom/android/internal/telephony/DataConnectionFailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionFailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
