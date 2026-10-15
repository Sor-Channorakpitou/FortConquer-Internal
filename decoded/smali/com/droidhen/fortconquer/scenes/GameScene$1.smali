.class Lcom/droidhen/fortconquer/scenes/GameScene$1;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/GameScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/GameScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_PAUSE:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-eq v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mAnimalLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->clearEntityModifiers()V

    .line 167
    :cond_0
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Enemy;->lost()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageCompleteDlg:Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->isNewCardPoped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageCompleteDlg:Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->popNewCard(Lcom/droidhen/fortconquer/scenes/SmartScene;)V

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_1
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->pauseBGMusic()V

    .line 172
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->setupUnitSelectScene()V

    goto :goto_0
.end method
