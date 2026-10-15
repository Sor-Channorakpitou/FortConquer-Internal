.class Lcom/droidhen/fortconquer/scenes/StatusScene$3;
.super Ljava/lang/Object;
.source "StatusScene.java"

# interfaces
.implements Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/StatusScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/StatusScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(I)Z
    .locals 2
    .param p1, "signal"    # I

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 151
    sget v0, Lcom/droidhen/fortconquer/units/Player;->mArenaUseCrystalShowed:I

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getCrystals()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mCoinStoreScene:Lcom/droidhen/fortconquer/scenes/CoinStoreScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->setupScene()V

    .line 160
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 156
    :cond_1
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->payArenaCrystal()V

    goto :goto_0
.end method
