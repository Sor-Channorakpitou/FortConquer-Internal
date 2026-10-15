.class Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/GameScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "gameSceneUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/GameScene;


# direct methods
.method private constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V
    .locals 0

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;)V
    .locals 0

    .prologue
    .line 1090
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 20
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 1098
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v17, 0x5

    move/from16 v0, v17

    if-lt v7, v0, :cond_1

    .line 1106
    sget-object v17, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v18, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 1247
    :cond_0
    return-void

    .line 1099
    :cond_1
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->isHide()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/units/Lane;->hasUnit()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/droidhen/fortconquer/scenes/GameScene;->playDragGuide(I)V

    .line 1103
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/units/Lane;->onUpdata()V

    .line 1098
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1111
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/droidhen/fortconquer/scenes/GameScene;->access$2(Lcom/droidhen/fortconquer/scenes/GameScene;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mRadarViewSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v18

    const/high16 v19, 0x43c80000    # 400.0f

    sub-float v18, v18, v19

    const/high16 v19, 0x40a00000    # 5.0f

    div-float v18, v18, v19

    const/high16 v19, 0x438a0000    # 276.0f

    add-float v18, v18, v19

    const/high16 v19, 0x40800000    # 4.0f

    invoke-virtual/range {v17 .. v19}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 1116
    :cond_4
    invoke-static {}, Lcom/droidhen/fortconquer/stages/StageData;->getTotalTime()I

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/units/Enemy;->lost()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1117
    sget v17, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/droidhen/fortconquer/UMengHelper;->endLevel(IZ)V

    .line 1118
    sget-object v17, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->pauseBGMusic()V

    .line 1119
    sget-object v17, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 1120
    sget-object v17, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 1121
    sget-object v17, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_PASS:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sput-object v17, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/scenes/GameScene;->clearTouchAreas()V

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/scenes/GameScene;->clearUserUnit()V

    .line 1125
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getLastStageCoins()I

    move-result v8

    .line 1126
    .local v8, "killBonus":I
    sget-object v17, Lcom/droidhen/fortconquer/units/Player;->sLastStageReward:[I

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 1127
    const/high16 v17, 0x42a00000    # 80.0f

    .line 1128
    sget v18, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    invoke-static/range {v18 .. v18}, Lcom/droidhen/fortconquer/stages/StageDataConstants;->getCoinIncrSpeed(I)F

    move-result v18

    .line 1127
    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v9, v0

    .line 1129
    .local v9, "levelBonus":I
    sget-object v17, Lcom/droidhen/fortconquer/units/Player;->sLastStageReward:[I

    const/16 v18, 0x2

    aput v9, v17, v18

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/units/Player;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v3

    .line 1131
    .local v3, "fort":Lcom/droidhen/fortconquer/units/Fort;
    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Fort;->getHealth()F

    move-result v17

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Fort;->getInitHealth()F

    move-result v18

    div-float v6, v17, v18

    .line 1132
    .local v6, "healthRemain":F
    int-to-float v0, v9

    move/from16 v17, v0

    mul-float v17, v17, v6

    move/from16 v0, v17

    float-to-int v12, v0

    .line 1133
    .local v12, "lifeBonus":I
    sget-object v17, Lcom/droidhen/fortconquer/units/Player;->sLastStageReward:[I

    const/16 v18, 0x1

    aput v12, v17, v18

    .line 1135
    add-int v4, v9, v12

    .line 1137
    .local v4, "gainCoins":I
    invoke-static {v4}, Lcom/droidhen/fortconquer/units/Player;->updateLastStageCoins(I)V

    .line 1138
    add-int v17, v8, v4

    invoke-static/range {v17 .. v17}, Lcom/droidhen/fortconquer/units/Player;->changeCoins(I)Z

    .line 1139
    sget-object v17, Lcom/droidhen/fortconquer/units/Player;->sLastStageReward:[I

    const/16 v18, 0x3

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getLastStageCoins()I

    move-result v19

    aput v19, v17, v18

    .line 1143
    sget v17, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    invoke-static/range {v17 .. v17}, Lcom/droidhen/fortconquer/scenes/GameScene;->getBaseCrystal(I)I

    move-result v2

    .line 1144
    .local v2, "baseCrystals":I
    move v5, v2

    .line 1153
    .local v5, "gainCrystals":I
    sget-object v17, Lcom/droidhen/fortconquer/units/Player;->sLastStageReward:[I

    const/16 v18, 0x5

    aput v5, v17, v18

    .line 1154
    const/high16 v17, 0x3f000000    # 0.5f

    cmpl-float v17, v6, v17

    if-ltz v17, :cond_5

    .line 1155
    const/high16 v17, 0x3f000000    # 0.5f

    sub-float v17, v6, v17

    const/high16 v18, 0x3f000000    # 0.5f

    div-float v17, v17, v18

    int-to-float v0, v2

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int/lit8 v13, v17, 0x1

    .line 1156
    .local v13, "lifeCrystal":I
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1157
    sget-object v17, Lcom/droidhen/fortconquer/units/Player;->sLastStageReward:[I

    const/16 v18, 0x4

    aput v13, v17, v18

    .line 1158
    add-int/2addr v5, v13

    .line 1160
    .end local v13    # "lifeCrystal":I
    :cond_5
    invoke-static {v5}, Lcom/droidhen/fortconquer/units/Player;->setLastStageCrystals(I)V

    .line 1161
    invoke-static {v5}, Lcom/droidhen/fortconquer/units/Player;->changeCrystals(I)Z

    .line 1162
    sget-object v17, Lcom/droidhen/fortconquer/units/Player;->sLastStageReward:[I

    const/16 v18, 0x6

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getLastStageCrystals()I

    move-result v19

    aput v19, v17, v18

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget v19, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    invoke-static/range {v17 .. v19}, Lcom/droidhen/fortconquer/CCPrefs;->setLevelPassed(Landroid/content/Context;II)V

    .line 1165
    sget v17, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit8 v17, v17, 0x1

    sput v17, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    .line 1166
    const/16 v17, 0x5

    invoke-static/range {v17 .. v17}, Lcom/droidhen/fortconquer/units/Player;->updatePlayerExp(I)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    rem-int/lit8 v17, v17, 0xa

    if-nez v17, :cond_6

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mShopScene:Lcom/droidhen/fortconquer/scenes/ShopScene;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/scenes/ShopScene;->clearGoods()V

    .line 1170
    sget v17, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/droidhen/fortconquer/CCPrefs;->setNewChecked(Landroid/content/Context;Z)V

    .line 1174
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/droidhen/fortconquer/scenes/GameScene;->playDialog(Z)V

    .line 1226
    .end local v2    # "baseCrystals":I
    .end local v3    # "fort":Lcom/droidhen/fortconquer/units/Fort;
    .end local v4    # "gainCoins":I
    .end local v5    # "gainCrystals":I
    .end local v6    # "healthRemain":F
    .end local v8    # "killBonus":I
    .end local v9    # "levelBonus":I
    .end local v12    # "lifeBonus":I
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/units/Enemy;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/units/Fort;->getHealth()F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/droidhen/fortconquer/units/Enemy;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/droidhen/fortconquer/units/Fort;->getInitHealth()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    mul-float v18, v18, v19

    cmpg-float v17, v17, v18

    if-gez v17, :cond_8

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget-object v17, v17, v18

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mSmogSprites:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->hasParent()Z

    move-result v17

    if-nez v17, :cond_8

    .line 1230
    const/4 v7, 0x0

    :goto_2
    const/16 v17, 0x4

    move/from16 v0, v17

    if-lt v7, v0, :cond_10

    .line 1237
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/units/Player;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/units/Fort;->getHealth()F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/droidhen/fortconquer/units/Player;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/droidhen/fortconquer/units/Fort;->getInitHealth()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    mul-float v18, v18, v19

    cmpg-float v17, v17, v18

    if-gez v17, :cond_0

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mSmogSprites:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->hasParent()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1241
    const/4 v7, 0x0

    :goto_3
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v7, v0, :cond_0

    .line 1242
    sget-object v17, Lcom/droidhen/fortconquer/scenes/GameScene;->mEffectLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mSmogSprites:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    invoke-virtual/range {v17 .. v18}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mSmogSprites:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    mul-int/lit8 v18, v7, 0xa

    add-int/lit8 v18, v18, 0x28

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 1241
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1175
    :cond_9
    invoke-static {}, Lcom/droidhen/fortconquer/stages/StageData;->getTotalTime()I

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/units/Player;->lost()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1176
    sget v17, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/droidhen/fortconquer/UMengHelper;->endLevel(IZ)V

    .line 1177
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getLastStageCoins()I

    move-result v8

    .line 1178
    .restart local v8    # "killBonus":I
    const/high16 v17, 0x42a00000    # 80.0f

    .line 1179
    sget v18, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    invoke-static/range {v18 .. v18}, Lcom/droidhen/fortconquer/stages/StageDataConstants;->getCoinIncrSpeed(I)F

    move-result v18

    .line 1178
    mul-float v17, v17, v18

    .line 1179
    const/high16 v18, 0x40000000    # 2.0f

    .line 1178
    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v10, v0

    .line 1180
    .local v10, "levelBonusHalf":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/units/Enemy;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v3

    .line 1181
    .restart local v3    # "fort":Lcom/droidhen/fortconquer/units/Fort;
    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Fort;->getHealth()F

    move-result v18

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Fort;->getInitHealth()F

    move-result v19

    div-float v18, v18, v19

    sub-float v11, v17, v18

    .line 1182
    .local v11, "life":F
    int-to-float v0, v10

    move/from16 v17, v0

    mul-float v17, v17, v11

    move/from16 v0, v17

    float-to-int v12, v0

    .line 1183
    .restart local v12    # "lifeBonus":I
    move v4, v12

    .line 1185
    .restart local v4    # "gainCoins":I
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getLastStageKill()I

    move-result v17

    if-lez v17, :cond_b

    .line 1187
    invoke-static {}, Lcom/droidhen/fortconquer/stages/StageData;->getTotalTime()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x43160000    # 150.0f

    div-float v15, v17, v18

    .line 1188
    .local v15, "rate":F
    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v17, v15, v17

    if-lez v17, :cond_a

    .line 1189
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1191
    :cond_a
    int-to-float v0, v10

    move/from16 v17, v0

    mul-float v17, v17, v15

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v4, v4, v17

    .line 1193
    .end local v15    # "rate":F
    :cond_b
    invoke-static {v4}, Lcom/droidhen/fortconquer/units/Player;->updateLastStageCoins(I)V

    .line 1194
    add-int v17, v8, v4

    invoke-static/range {v17 .. v17}, Lcom/droidhen/fortconquer/units/Player;->changeCoins(I)Z

    .line 1196
    sget v17, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    invoke-static/range {v17 .. v17}, Lcom/droidhen/fortconquer/scenes/GameScene;->getBaseCrystal(I)I

    move-result v2

    .line 1197
    .restart local v2    # "baseCrystals":I
    const/4 v5, 0x0

    .line 1198
    .restart local v5    # "gainCrystals":I
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getLastStageKill()I

    move-result v17

    if-lez v17, :cond_c

    .line 1200
    invoke-static {}, Lcom/droidhen/fortconquer/stages/StageData;->getTotalTime()I

    move-result v17

    add-int/lit8 v17, v17, -0x3c

    const/16 v18, 0x78

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1201
    .local v16, "time":I
    const/16 v17, 0x0

    const/16 v18, 0x4b0

    invoke-static/range {v17 .. v18}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v14

    .line 1202
    .local v14, "rand":I
    move/from16 v0, v16

    if-ge v14, v0, :cond_d

    .line 1203
    move v5, v2

    .line 1210
    .end local v14    # "rand":I
    .end local v16    # "time":I
    :cond_c
    :goto_4
    if-lez v5, :cond_f

    .line 1211
    invoke-static {v5}, Lcom/droidhen/fortconquer/units/Player;->setLastStageCrystals(I)V

    .line 1212
    invoke-static {v5}, Lcom/droidhen/fortconquer/units/Player;->changeCrystals(I)Z

    .line 1217
    :goto_5
    sget-object v17, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->pauseBGMusic()V

    .line 1218
    sget-object v17, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 1219
    sget-object v17, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 1220
    sget-object v17, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_FAIL:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sput-object v17, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/scenes/GameScene;->clearTouchAreas()V

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/fortconquer/scenes/GameScene;->clearUserUnit()V

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/droidhen/fortconquer/scenes/GameScene;->playDialog(Z)V

    goto/16 :goto_1

    .line 1204
    .restart local v14    # "rand":I
    .restart local v16    # "time":I
    :cond_d
    mul-int/lit8 v17, v16, 0x3

    move/from16 v0, v17

    if-ge v14, v0, :cond_e

    .line 1205
    div-int/lit8 v17, v2, 0x2

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1206
    goto :goto_4

    :cond_e
    mul-int/lit8 v17, v16, 0x9

    move/from16 v0, v17

    if-ge v14, v0, :cond_c

    .line 1207
    div-int/lit8 v17, v2, 0x4

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_4

    .line 1214
    .end local v14    # "rand":I
    .end local v16    # "time":I
    :cond_f
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/droidhen/fortconquer/units/Player;->setLastStageCrystals(I)V

    goto :goto_5

    .line 1231
    .end local v2    # "baseCrystals":I
    .end local v3    # "fort":Lcom/droidhen/fortconquer/units/Fort;
    .end local v4    # "gainCoins":I
    .end local v5    # "gainCrystals":I
    .end local v8    # "killBonus":I
    .end local v10    # "levelBonusHalf":I
    .end local v11    # "life":F
    .end local v12    # "lifeBonus":I
    :cond_10
    sget-object v17, Lcom/droidhen/fortconquer/scenes/GameScene;->mEffectLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mSmogSprites:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-object/from16 v18, v0

    add-int/lit8 v19, v7, 0x4

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene$gameSceneUpdateHandler;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mSmogSprites:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-object/from16 v17, v0

    add-int/lit8 v18, v7, 0x4

    aget-object v17, v17, v18

    mul-int/lit8 v18, v7, 0xa

    add-int/lit8 v18, v18, 0x28

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 1230
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 1094
    return-void
.end method
