.class Lcom/droidhen/fortconquer/scenes/UpgradeScene$1$1;
.super Ljava/lang/Object;
.source "UpgradeScene.java"

# interfaces
.implements Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/UpgradeScene$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/droidhen/fortconquer/scenes/UpgradeScene$1;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/UpgradeScene$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene$1$1;->this$1:Lcom/droidhen/fortconquer/scenes/UpgradeScene$1;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(I)Z
    .locals 2
    .param p1, "signal"    # I

    .prologue
    const/4 v0, 0x0

    .line 67
    if-nez p1, :cond_0

    .line 68
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    .line 69
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->getFortUpgradeMoney()I

    move-result v1

    neg-int v1, v1

    invoke-static {v1}, Lcom/droidhen/fortconquer/units/Player;->changeCoins(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->upgradeFort()V

    .line 71
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene$1$1;->this$1:Lcom/droidhen/fortconquer/scenes/UpgradeScene$1;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene$1;->access$0(Lcom/droidhen/fortconquer/scenes/UpgradeScene$1;)Lcom/droidhen/fortconquer/scenes/UpgradeScene;

    move-result-object v1

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->access$1(Lcom/droidhen/fortconquer/scenes/UpgradeScene;)V

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene$1$1;->this$1:Lcom/droidhen/fortconquer/scenes/UpgradeScene$1;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene$1;->access$0(Lcom/droidhen/fortconquer/scenes/UpgradeScene$1;)Lcom/droidhen/fortconquer/scenes/UpgradeScene;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->access$0(Lcom/droidhen/fortconquer/scenes/UpgradeScene;Z)V

    .line 80
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 73
    :cond_1
    invoke-static {}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->close()V

    .line 74
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene$1$1;->this$1:Lcom/droidhen/fortconquer/scenes/UpgradeScene$1;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene$1;->access$0(Lcom/droidhen/fortconquer/scenes/UpgradeScene$1;)Lcom/droidhen/fortconquer/scenes/UpgradeScene;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->access$0(Lcom/droidhen/fortconquer/scenes/UpgradeScene;Z)V

    .line 75
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mCoinStoreScene:Lcom/droidhen/fortconquer/scenes/CoinStoreScene;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->setupScene()V

    goto :goto_0
.end method
