.class Lcom/droidhen/fortconquer/scenes/UnitSelectScene$8;
.super Ljava/lang/Object;
.source "UnitSelectScene.java"

# interfaces
.implements Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/UnitSelectScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$8;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(I)Z
    .locals 2
    .param p1, "signal"    # I

    .prologue
    const/4 v0, 0x0

    .line 179
    if-nez p1, :cond_0

    .line 180
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->getUnlockPackMoney()I

    move-result v1

    neg-int v1, v1

    invoke-static {v1}, Lcom/droidhen/fortconquer/units/Player;->changeCoins(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->upgradeBagNumber()V

    .line 182
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateSlots()V

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$8;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iput-boolean v0, v1, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->bIsShowingDialog:Z

    .line 190
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 184
    :cond_1
    invoke-static {}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->close()V

    .line 185
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mCoinStoreScene:Lcom/droidhen/fortconquer/scenes/CoinStoreScene;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->setupScene()V

    goto :goto_0
.end method
