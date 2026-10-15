.class Lcom/droidhen/fortconquer/scenes/GameScene$2;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_PAUSE:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sput-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    .line 182
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->clearTouchAreas()V

    .line 184
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGamePauseDlg:Lcom/droidhen/fortconquer/scenes/GamePauseDlg;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/GamePauseDlg;->setupGamePauseMenu()V

    .line 185
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->CheckAndShowAD()V

    .line 186
    invoke-static {}, Lcom/game/featured/FeaturedHelper;->getInstance()Lcom/game/featured/FeaturedHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/game/featured/FeaturedHelper;->showFeaturedDialogAtUIThread(I)V

    .line 188
    :cond_0
    return-void
.end method
