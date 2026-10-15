.class Lcom/droidhen/fortconquer/scenes/GameScene$19;
.super Lorg/anddev/andengine/entity/sprite/Sprite;
.source "GameScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/GameScene;->createPauseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bClicked:Z

.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/GameScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 1
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$19;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 788
    invoke-direct {p0, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$19;->bClicked:Z

    return-void
.end method


# virtual methods
.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 4
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    const/4 v3, 0x1

    .line 794
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    iput-boolean v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene$19;->bClicked:Z

    .line 803
    :cond_0
    :goto_0
    return v3

    .line 796
    :cond_1
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$19;->bClicked:Z

    if-eqz v0, :cond_2

    .line 797
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTimeSlot:I

    if-lez v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$19;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$19;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 801
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$19;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$19;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->curX:F

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene$19;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget v2, v2, Lcom/droidhen/fortconquer/scenes/GameScene;->curY:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/droidhen/fortconquer/scenes/GameScene;->handleUnitDrag(Lorg/anddev/andengine/input/touch/TouchEvent;FF)V

    goto :goto_0
.end method
