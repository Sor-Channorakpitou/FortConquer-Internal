.class public Lcom/droidhen/fortconquer/stages/StageData;
.super Ljava/lang/Object;
.source "StageData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;
    }
.end annotation


# static fields
.field protected static mNextWaveTime:I

.field protected static mTotalTime:I

.field public static mTotalTimeSlot:I


# instance fields
.field protected mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

.field protected mNextTeamTime:I

.field final mSendUnitTask:Ljava/lang/Runnable;

.field public mStage:I

.field protected mStageTimer:Ljava/util/Timer;

.field protected mTeamsSent:I

.field protected mTimeUpdater:Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;

.field protected mWavesSent:I


# direct methods
.method public constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;I)V
    .locals 1
    .param p1, "pGameScene"    # Lcom/droidhen/fortconquer/scenes/GameScene;
    .param p2, "stage"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/droidhen/fortconquer/stages/StageData$1;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/stages/StageData$1;-><init>(Lcom/droidhen/fortconquer/stages/StageData;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mSendUnitTask:Ljava/lang/Runnable;

    .line 28
    iput-object p1, p0, Lcom/droidhen/fortconquer/stages/StageData;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 29
    iput p2, p0, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    .line 30
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mStageTimer:Ljava/util/Timer;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mWavesSent:I

    .line 33
    return-void
.end method

.method public static getTotalTime()I
    .locals 1

    .prologue
    .line 100
    sget v0, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTime:I

    return v0
.end method


# virtual methods
.method public enemyTeamCheck(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    const/16 v3, 0x3c

    .line 123
    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mNextTeamTime:I

    if-ne p1, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/units/Enemy;->createATeam(ILjava/util/ArrayList;)V

    .line 126
    iget v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mTeamsSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mTeamsSent:I

    .line 127
    iget v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mNextTeamTime:I

    const/16 v1, 0xe

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mNextTeamTime:I

    .line 128
    iget v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    const/16 v1, 0x23

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    if-gt v0, v3, :cond_1

    .line 129
    iget v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mNextTeamTime:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mNextTeamTime:I

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    if-le v0, v3, :cond_0

    iget v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 131
    iget v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mNextTeamTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mNextTeamTime:I

    goto :goto_0
.end method

.method public enemyWaveCheck(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    if-eqz v0, :cond_0

    sget v0, Lcom/droidhen/fortconquer/stages/StageData;->mNextWaveTime:I

    if-ne p1, v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Enemy;->createAWave()V

    .line 116
    iget v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mWavesSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mWavesSent:I

    .line 117
    sget v0, Lcom/droidhen/fortconquer/stages/StageData;->mNextWaveTime:I

    iget v1, p0, Lcom/droidhen/fortconquer/stages/StageData;->mWavesSent:I

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x14

    add-int/2addr v0, v1

    sput v0, Lcom/droidhen/fortconquer/stages/StageData;->mNextWaveTime:I

    .line 119
    :cond_0
    return-void
.end method

.method protected resetStageTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x64

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mWavesSent:I

    .line 43
    sput v0, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTime:I

    .line 44
    sput v0, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTimeSlot:I

    .line 45
    const/16 v0, 0x1e

    sput v0, Lcom/droidhen/fortconquer/stages/StageData;->mNextWaveTime:I

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mNextTeamTime:I

    .line 47
    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mTimeUpdater:Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mTimeUpdater:Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;->cancel()Z

    .line 49
    :cond_0
    new-instance v0, Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;-><init>(Lcom/droidhen/fortconquer/stages/StageData;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mTimeUpdater:Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;

    .line 50
    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mStageTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/droidhen/fortconquer/stages/StageData;->mTimeUpdater:Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 51
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    sput v0, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTimeSlot:I

    .line 94
    sput v0, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTime:I

    .line 95
    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mTimeUpdater:Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/droidhen/fortconquer/stages/StageData;->mTimeUpdater:Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/stages/StageData$TimeUpdater;->cancel()Z

    .line 97
    :cond_0
    return-void
.end method

.method public updateStage()V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/stages/StageData;->resetStageTimer()V

    .line 38
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playBGMusic()V

    .line 39
    return-void
.end method
