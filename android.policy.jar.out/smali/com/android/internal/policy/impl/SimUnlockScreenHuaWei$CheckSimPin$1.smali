.class Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin$1;
.super Ljava/lang/Object;
.source "SimUnlockScreenHuaWei.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->mresult:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->onSimLockChangedResponse(Z)V

    .line 516
    return-void
.end method
