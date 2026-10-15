.class Lcom/droidhen/fortconquer/scenes/StatusScene$4;
.super Ljava/lang/Object;
.source "StatusScene.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 167
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 171
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->hide()V

    .line 172
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->saveProgress()V

    .line 174
    :cond_1
    sget v0, Lcom/droidhen/fortconquer/AppContext;->GAME_MODE_ARENA:I

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->setGameMode(I)V

    .line 175
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getStamCost()I

    move-result v0

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerStamina()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 177
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    invoke-static {v2}, Lcom/droidhen/fortconquer/scenes/StatusScene;->access$0(Lcom/droidhen/fortconquer/scenes/StatusScene;)Lorg/anddev/andengine/entity/sprite/Sprite;

    move-result-object v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/StatusScene;->access$1(Lcom/droidhen/fortconquer/scenes/StatusScene;)Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->showDialog(Lcom/droidhen/fortconquer/scenes/SmartScene;ILorg/anddev/andengine/entity/Entity;Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->setupScene()V

    goto :goto_0
.end method
