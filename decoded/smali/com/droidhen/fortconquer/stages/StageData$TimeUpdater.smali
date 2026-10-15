.class Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;
.super Ljava/util/TimerTask;
.source "StageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/stages/StageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/stages/StageData;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/stages/StageData;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;->this$0:Lcom/droidhen/fortconquer/stages/StageData;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;->this$0:Lcom/droidhen/fortconquer/stages/StageData;

    iget-object v0, v0, Lcom/droidhen/fortconquer/stages/StageData;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_PASS:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_FAIL:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-ne v0, v1, :cond_2

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;->cancel()Z

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-ne v0, v1, :cond_1

    .line 66
    sget v0, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTimeSlot:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTimeSlot:I

    .line 67
    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;->this$0:Lcom/droidhen/fortconquer/stages/StageData;

    iget-object v0, v0, Lcom/droidhen/fortconquer/stages/StageData;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    sget v1, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTimeSlot:I

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/GameScene;->updateGameScene(I)V

    .line 68
    sget v0, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTimeSlot:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    .line 70
    sget v0, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTimeSlot:I

    div-int/lit8 v0, v0, 0xa

    sput v0, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTime:I

    .line 71
    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;->this$0:Lcom/droidhen/fortconquer/stages/StageData;

    iget v0, v0, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget v0, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTime:I

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;->this$0:Lcom/droidhen/fortconquer/stages/StageData;

    sget v1, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTime:I

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/stages/StageData;->enemyWaveCheck(I)V

    .line 74
    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;->this$0:Lcom/droidhen/fortconquer/stages/StageData;

    sget v1, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTime:I

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/stages/StageData;->enemyTeamCheck(I)V

    .line 75
    sget v0, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTime:I

    if-lez v0, :cond_1

    sget v0, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;->this$0:Lcom/droidhen/fortconquer/stages/StageData;

    iget-object v0, v0, Lcom/droidhen/fortconquer/stages/StageData;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;->this$0:Lcom/droidhen/fortconquer/stages/StageData;

    iget-object v1, v1, Lcom/droidhen/fortconquer/stages/StageData;->mSendUnitTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
