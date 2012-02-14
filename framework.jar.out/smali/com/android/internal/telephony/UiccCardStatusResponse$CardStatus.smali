.class Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;
.super Ljava/lang/Object;
.source "UiccCardStatusResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccCardStatusResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CardStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;
    }
.end annotation


# instance fields
.field applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

.field card_state:Lcom/android/internal/telephony/UiccConstants$CardState;

.field subscription_3gpp2_app_index:[I

.field subscription_3gpp_app_index:[I

.field final synthetic this$0:Lcom/android/internal/telephony/UiccCardStatusResponse;

.field universal_pin_state:Lcom/android/internal/telephony/UiccConstants$PinState;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCardStatusResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->this$0:Lcom/android/internal/telephony/UiccCardStatusResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method
