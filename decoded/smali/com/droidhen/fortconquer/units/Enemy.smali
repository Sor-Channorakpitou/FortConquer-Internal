.class public Lcom/droidhen/fortconquer/units/Enemy;
.super Ljava/lang/Object;
.source "Enemy.java"


# static fields
.field protected static sFort:Lcom/droidhen/fortconquer/units/Fort;

.field protected static sRaceLevels:[I


# instance fields
.field protected mDiffer:F

.field protected mDragonChoNum:I

.field protected mDragonChosen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Unit;",
            ">;"
        }
    .end annotation
.end field

.field protected mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

.field protected mLastLaneIndex:I

.field protected mLastTeamNum:I

.field protected mStageData:Lcom/droidhen/fortconquer/stages/StageData;

.field protected mTeamSent:I

.field protected mTowerNum:I

.field protected mUnitChoNum:I

.field protected mUnitChosen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Unit;",
            ">;"
        }
    .end annotation
.end field

.field protected mUnitCreated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mUnitSent:I

.field protected mWaveSent:I


# direct methods
.method public constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;Lcom/droidhen/fortconquer/stages/StageData;)V
    .locals 4
    .param p1, "pScene"    # Lcom/droidhen/fortconquer/scenes/GameScene;
    .param p2, "pStageData"    # Lcom/droidhen/fortconquer/stages/StageData;

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    .line 53
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 54
    iput v3, p0, Lcom/droidhen/fortconquer/units/Enemy;->mWaveSent:I

    .line 55
    iput v3, p0, Lcom/droidhen/fortconquer/units/Enemy;->mTeamSent:I

    .line 56
    iput v3, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitSent:I

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDiffer:F

    .line 59
    new-instance v1, Lcom/droidhen/fortconquer/units/Fort;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v2, v2, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, p1, v2, v3}, Lcom/droidhen/fortconquer/units/Fort;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;IZ)V

    sput-object v1, Lcom/droidhen/fortconquer/units/Enemy;->sFort:Lcom/droidhen/fortconquer/units/Fort;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitCreated:Ljava/util/ArrayList;

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 67
    invoke-virtual {p0, p2}, Lcom/droidhen/fortconquer/units/Enemy;->initUnitChosen(Lcom/droidhen/fortconquer/stages/StageData;)V

    .line 68
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitCreated:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public attachUnits()V
    .locals 0

    .prologue
    .line 380
    return-void
.end method

.method public createATeam(ILjava/util/ArrayList;)V
    .locals 12
    .param p1, "unitNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p2, "selUnits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Unit;>;"
    const/4 v7, 0x0

    .line 271
    .local v7, "unitIndex":I
    if-nez p1, :cond_2

    .line 273
    const/4 v5, 0x3

    .line 274
    .local v5, "teamMax":I
    const/4 v6, 0x1

    .line 275
    .local v6, "teamMin":I
    iget-object v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v8, v8, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    const/16 v9, 0x23

    if-gt v8, v9, :cond_3

    .line 277
    const/4 v6, 0x1

    .line 278
    const/4 v5, 0x2

    .line 279
    iget v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mTeamSent:I

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v8, v8, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    const/16 v9, 0xa

    if-gt v8, v9, :cond_0

    .line 280
    const/4 v5, 0x1

    .line 289
    :cond_0
    :goto_0
    iget v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mLastTeamNum:I

    const/4 v9, 0x3

    if-lt v8, v9, :cond_1

    .line 290
    const/4 v5, 0x2

    .line 291
    :cond_1
    invoke-static {v6, v5}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result p1

    .line 292
    iget-object p2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitChosen:Ljava/util/ArrayList;

    .line 294
    iget v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDiffer:F

    int-to-float v9, p1

    add-int/lit8 v10, v5, 0x1

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDiffer:F

    .line 295
    iget v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDiffer:F

    const/high16 v9, 0x40000000    # 2.0f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_4

    .line 296
    add-int/lit8 p1, p1, -0x1

    .line 297
    const/4 v8, 0x0

    iput v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDiffer:F

    .line 305
    .end local v5    # "teamMax":I
    .end local v6    # "teamMin":I
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 306
    .local v2, "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, p1, :cond_5

    .line 340
    iput p1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mLastTeamNum:I

    .line 341
    iget v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mTeamSent:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mTeamSent:I

    .line 342
    return-void

    .line 282
    .end local v0    # "i":I
    .end local v2    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    .restart local v5    # "teamMax":I
    .restart local v6    # "teamMin":I
    :cond_3
    iget-object v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v8, v8, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    const/16 v9, 0x64

    if-gt v8, v9, :cond_0

    .line 284
    const/4 v6, 0x1

    .line 285
    iget v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mTeamSent:I

    if-nez v8, :cond_0

    .line 286
    const/4 v5, 0x2

    goto :goto_0

    .line 299
    :cond_4
    iget v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDiffer:F

    const/high16 v9, -0x40000000    # -2.0f

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_2

    .line 301
    add-int/lit8 p1, p1, 0x1

    .line 302
    const/4 v8, 0x0

    iput v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDiffer:F

    goto :goto_1

    .line 308
    .end local v5    # "teamMax":I
    .end local v6    # "teamMin":I
    .restart local v0    # "i":I
    .restart local v2    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v7

    .line 309
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v8}, Lcom/droidhen/fortconquer/units/Unit;->deepCopy()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    .line 312
    iget v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitSent:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitSent:I

    .line 314
    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v1

    .line 315
    .local v1, "laneIndex":I
    iget v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mLastLaneIndex:I

    if-ne v1, v8, :cond_6

    .line 316
    iget v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mLastLaneIndex:I

    add-int/lit8 v8, v8, 0x1

    rem-int/lit8 v1, v8, 0x5

    .line 319
    :cond_6
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Enemy;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v8

    iget-object v4, v8, Lcom/droidhen/fortconquer/units/Fort;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 320
    .local v4, "pFortEnemy":Lcom/droidhen/fortconquer/units/UnitPart;
    if-eqz v4, :cond_7

    iget-object v8, v4, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v9, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-eq v8, v9, :cond_7

    .line 321
    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    .line 322
    iget v1, v4, Lcom/droidhen/fortconquer/units/UnitPart;->mPosLane:I

    .line 324
    iget v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mLastLaneIndex:I

    if-ne v1, v8, :cond_7

    iget-object v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitCreated:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    .line 326
    iget-object v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget v9, p0, Lcom/droidhen/fortconquer/units/Enemy;->mLastLaneIndex:I

    invoke-virtual {v8, v9}, Lcom/droidhen/fortconquer/scenes/GameScene;->findNextFortEnemy(I)I

    move-result v3

    .line 328
    .local v3, "nextLane":I
    if-ltz v3, :cond_8

    const/4 v8, 0x5

    if-ge v3, v8, :cond_8

    .line 329
    move v1, v3

    .line 334
    .end local v3    # "nextLane":I
    :cond_7
    :goto_3
    const/16 v8, 0x63

    iget-object v9, p0, Lcom/droidhen/fortconquer/units/Enemy;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v9, v9, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v9, v9, v1

    invoke-virtual {v2, v8, v1, v9}, Lcom/droidhen/fortconquer/units/Unit;->setPos(IILcom/droidhen/fortconquer/units/Lane;)V

    .line 336
    iput v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mLastLaneIndex:I

    .line 337
    iget-object v8, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitCreated:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 331
    .restart local v3    # "nextLane":I
    :cond_8
    const/4 v8, 0x1

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v8

    add-int/2addr v8, v1

    rem-int/lit8 v1, v8, 0x5

    goto :goto_3
.end method

.method public createAWave()V
    .locals 8

    .prologue
    const/16 v6, 0x13

    const/4 v4, 0x1

    const/high16 v5, 0x3fa00000    # 1.25f

    .line 228
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v2, v2, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    int-to-float v2, v2

    const/high16 v3, 0x41c80000    # 25.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float v1, v2, v3

    .line 229
    .local v1, "waveNum":F
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v2, v2, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    const/16 v3, 0x3c

    if-le v2, v3, :cond_0

    .line 231
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v2, v2, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    int-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x42b40000    # 90.0f

    div-float/2addr v2, v3

    const v3, 0x40533333    # 3.3f

    add-float v1, v2, v3

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v2, v2, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    const/16 v3, 0xa0

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v2, v2, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_1

    .line 235
    const v1, 0x408ccccd    # 4.4f

    .line 237
    :cond_1
    const/high16 v2, 0x41000000    # 8.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 238
    const/high16 v1, 0x41000000    # 8.0f

    .line 239
    :cond_2
    const/4 v0, 0x0

    .line 240
    .local v0, "unitNum":I
    iget v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mWaveSent:I

    rem-int/lit8 v2, v2, 0x3

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChosen:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChosen:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 242
    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v2, v6, v4}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(II)V

    .line 244
    iget v0, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChoNum:I

    .line 245
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChosen:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Lcom/droidhen/fortconquer/units/Enemy;->createATeam(ILjava/util/ArrayList;)V

    .line 247
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-float v3, v1, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v2

    iget v3, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChoNum:I

    int-to-double v4, v3

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    mul-double/2addr v4, v6

    double-to-int v3, v4

    sub-int v0, v2, v3

    .line 248
    if-ltz v0, :cond_3

    sget v2, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_3

    .line 249
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitChosen:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Lcom/droidhen/fortconquer/units/Enemy;->createATeam(ILjava/util/ArrayList;)V

    .line 252
    :cond_3
    sget v2, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 253
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChosen:Ljava/util/ArrayList;

    .line 265
    :cond_4
    :goto_0
    iget v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mWaveSent:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mWaveSent:I

    .line 266
    return-void

    .line 257
    :cond_5
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-float v3, v1, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v0

    .line 258
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitChosen:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Lcom/droidhen/fortconquer/units/Enemy;->createATeam(ILjava/util/ArrayList;)V

    .line 259
    const/4 v2, 0x2

    if-lt v0, v2, :cond_6

    .line 260
    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v2, v6, v4}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(II)V

    .line 262
    :cond_6
    iget v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDiffer:F

    int-to-float v3, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDiffer:F

    goto :goto_0
.end method

.method public getFort()Lcom/droidhen/fortconquer/units/Fort;
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/droidhen/fortconquer/units/Enemy;->sFort:Lcom/droidhen/fortconquer/units/Fort;

    return-object v0
.end method

.method protected initUnitChosen(Lcom/droidhen/fortconquer/stages/StageData;)V
    .locals 12
    .param p1, "pStageData"    # Lcom/droidhen/fortconquer/stages/StageData;

    .prologue
    .line 71
    iget v1, p1, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitChoNum:I

    .line 72
    iget v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitChoNum:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 73
    const/16 v1, 0xa

    iput v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitChoNum:I

    .line 74
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitChosen:Ljava/util/ArrayList;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChosen:Ljava/util/ArrayList;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v11, 0x0

    .local v11, "randRace":I
    const/4 v9, 0x0

    .local v9, "randChest":I
    const/4 v10, 0x0

    .line 78
    .local v10, "randLimbs":I
    const/4 v6, 0x1

    .line 79
    .local v6, "eliteNum":I
    iget v1, p1, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitChoNum:I

    add-int/lit8 v6, v1, -0x3

    .line 80
    :cond_1
    iget v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitChoNum:I

    div-int/lit8 v1, v1, 0x2

    if-le v6, v1, :cond_2

    iget v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitChoNum:I

    div-int/lit8 v6, v1, 0x2

    .line 83
    :cond_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitChoNum:I

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    if-lt v8, v1, :cond_3

    .line 104
    const/4 v8, 0x0

    :goto_1
    iget v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitChoNum:I

    div-int/lit8 v1, v1, 0x2

    if-lt v8, v1, :cond_5

    .line 123
    const/4 v8, 0x0

    :goto_2
    if-lt v8, v6, :cond_7

    .line 139
    invoke-virtual {p0, p1}, Lcom/droidhen/fortconquer/units/Enemy;->initialDragonNum(Lcom/droidhen/fortconquer/stages/StageData;)V

    .line 140
    const/4 v8, 0x0

    :goto_3
    iget v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChoNum:I

    if-lt v8, v1, :cond_9

    .line 160
    return-void

    .line 87
    :cond_3
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v1, -0x1

    .line 88
    .local v7, "end":I
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_4

    .line 89
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sget v2, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x2

    add-int v7, v1, v2

    .line 91
    :cond_4
    const/4 v1, 0x0

    invoke-static {v1, v7}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v11

    .line 93
    new-instance v0, Lcom/droidhen/fortconquer/units/Unit;

    .end local v0    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v1, 0x0

    invoke-direct {v0, v11, v11, v11, v1}, Lcom/droidhen/fortconquer/units/Unit;-><init>(IIIZ)V

    .line 96
    .restart local v0    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/units/Enemy;->reduceNewbieDifficulty(Lcom/droidhen/fortconquer/units/Unit;Z)V

    .line 97
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Unit;->createModifiers()V

    .line 98
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitChosen:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 107
    .end local v7    # "end":I
    :cond_5
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v1, -0x1

    .line 108
    .restart local v7    # "end":I
    sget v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_6

    .line 109
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sget v2, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v7, v1, -0x1

    .line 111
    :cond_6
    const/16 v1, 0x8

    invoke-static {v1, v7}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v11

    .line 113
    new-instance v0, Lcom/droidhen/fortconquer/units/Unit;

    .end local v0    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v1, 0x0

    invoke-direct {v0, v11, v11, v11, v1}, Lcom/droidhen/fortconquer/units/Unit;-><init>(IIIZ)V

    .line 117
    .restart local v0    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/units/Enemy;->reduceNewbieDifficulty(Lcom/droidhen/fortconquer/units/Unit;Z)V

    .line 118
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Unit;->createModifiers()V

    .line 119
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitChosen:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 125
    .end local v7    # "end":I
    :cond_7
    iget v1, p1, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0xa

    add-int/lit8 v7, v1, 0x1

    .line 126
    .restart local v7    # "end":I
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitConstants;->ENEMY_FORMULA:[[I

    array-length v1, v1

    if-lt v7, v1, :cond_8

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitConstants;->ENEMY_FORMULA:[[I

    array-length v1, v1

    add-int/lit8 v7, v1, -0x1

    .line 127
    :cond_8
    const/4 v1, 0x0

    invoke-static {v1, v7}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v11

    .line 128
    new-instance v0, Lcom/droidhen/fortconquer/units/Unit;

    .end local v0    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitConstants;->ENEMY_FORMULA:[[I

    aget-object v1, v1, v11

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 129
    sget-object v2, Lcom/droidhen/fortconquer/units/UnitConstants;->ENEMY_FORMULA:[[I

    aget-object v2, v2, v11

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 130
    sget-object v3, Lcom/droidhen/fortconquer/units/UnitConstants;->ENEMY_FORMULA:[[I

    aget-object v3, v3, v11

    const/4 v4, 0x2

    aget v3, v3, v4

    const/4 v4, 0x0

    .line 128
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/fortconquer/units/Unit;-><init>(IIIZ)V

    .line 132
    .restart local v0    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual/range {v0 .. v5}, Lcom/droidhen/fortconquer/units/Unit;->setNewUnitProps(Lcom/droidhen/fortconquer/units/UnitPart;Lcom/droidhen/fortconquer/units/UnitPart;Lcom/droidhen/fortconquer/units/UnitPart;ZZ)V

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/droidhen/fortconquer/units/Unit;->bElite:Z

    .line 134
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/units/Enemy;->reduceNewbieDifficulty(Lcom/droidhen/fortconquer/units/Unit;Z)V

    .line 135
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Unit;->createModifiers()V

    .line 136
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitChosen:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 143
    .end local v7    # "end":I
    :cond_9
    const/16 v1, 0x10

    const/16 v2, 0x13

    invoke-static {v1, v2}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v11

    .line 144
    const/16 v1, 0x10

    const/16 v2, 0x13

    invoke-static {v1, v2}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v9

    .line 145
    const/16 v1, 0x10

    const/16 v2, 0x13

    invoke-static {v1, v2}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v10

    .line 147
    if-eqz v8, :cond_a

    add-int v1, v11, v9

    add-int/2addr v1, v10

    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_b

    .line 148
    :cond_a
    new-instance v0, Lcom/droidhen/fortconquer/units/Unit;

    .end local v0    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v1, 0x0

    invoke-direct {v0, v11, v11, v11, v1}, Lcom/droidhen/fortconquer/units/Unit;-><init>(IIIZ)V

    .line 152
    .restart local v0    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    :goto_4
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual/range {v0 .. v5}, Lcom/droidhen/fortconquer/units/Unit;->setNewUnitProps(Lcom/droidhen/fortconquer/units/UnitPart;Lcom/droidhen/fortconquer/units/UnitPart;Lcom/droidhen/fortconquer/units/UnitPart;ZZ)V

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/droidhen/fortconquer/units/Unit;->bElite:Z

    .line 154
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/units/Enemy;->reduceNewbieDifficulty(Lcom/droidhen/fortconquer/units/Unit;Z)V

    .line 155
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Unit;->createModifiers()V

    .line 156
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChosen:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 150
    :cond_b
    new-instance v0, Lcom/droidhen/fortconquer/units/Unit;

    .end local v0    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v1, 0x0

    invoke-direct {v0, v11, v9, v10, v1}, Lcom/droidhen/fortconquer/units/Unit;-><init>(IIIZ)V

    .restart local v0    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    goto :goto_4
.end method

.method protected initialDragonNum(Lcom/droidhen/fortconquer/stages/StageData;)V
    .locals 5
    .param p1, "pStageData"    # Lcom/droidhen/fortconquer/stages/StageData;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    iget v0, p1, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 184
    iput v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChoNum:I

    .line 224
    :goto_0
    return-void

    .line 185
    :cond_0
    iget v0, p1, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_2

    .line 187
    iget v0, p1, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_1

    .line 189
    iput v3, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChoNum:I

    goto :goto_0

    .line 193
    :cond_1
    iput v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChoNum:I

    goto :goto_0

    .line 196
    :cond_2
    iget v0, p1, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_5

    .line 197
    iget v0, p1, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_3

    .line 199
    iput v4, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChoNum:I

    goto :goto_0

    .line 201
    :cond_3
    iget v0, p1, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_4

    .line 203
    iput v3, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChoNum:I

    goto :goto_0

    .line 207
    :cond_4
    iput v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChoNum:I

    goto :goto_0

    .line 211
    :cond_5
    iget v0, p1, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_6

    .line 213
    const/4 v0, 0x3

    iput v0, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChoNum:I

    goto :goto_0

    .line 215
    :cond_6
    iget v0, p1, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_7

    .line 217
    iput v4, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChoNum:I

    goto :goto_0

    .line 221
    :cond_7
    iput v3, p0, Lcom/droidhen/fortconquer/units/Enemy;->mDragonChoNum:I

    goto :goto_0
.end method

.method public lost()Z
    .locals 2

    .prologue
    .line 374
    sget-object v0, Lcom/droidhen/fortconquer/units/Enemy;->sFort:Lcom/droidhen/fortconquer/units/Fort;

    iget v0, v0, Lcom/droidhen/fortconquer/units/Fort;->mHealth:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUpdate()V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method protected reduceNewbieDifficulty(Lcom/droidhen/fortconquer/units/Unit;Z)V
    .locals 5
    .param p1, "unit"    # Lcom/droidhen/fortconquer/units/Unit;
    .param p2, "isDragon"    # Z

    .prologue
    const/16 v4, 0x14

    const v2, 0x3f733333    # 0.95f

    const v3, 0x3f666666    # 0.9f

    .line 164
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Enemy;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v0, v0, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 165
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Unit;->getAttack()F

    move-result v1

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Unit;->getSpeed()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/droidhen/fortconquer/units/Unit;->setKeyValues(FFF)V

    .line 174
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 175
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Enemy;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v0, v0, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    if-gt v0, v4, :cond_1

    .line 176
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v0

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Unit;->getAttack()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Unit;->getSpeed()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/droidhen/fortconquer/units/Unit;->setKeyValues(FFF)V

    .line 179
    :cond_1
    return-void

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Enemy;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v0, v0, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_3

    .line 167
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v0

    mul-float/2addr v0, v3

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Unit;->getAttack()F

    move-result v1

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Unit;->getSpeed()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/droidhen/fortconquer/units/Unit;->setKeyValues(FFF)V

    goto :goto_0

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Enemy;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v0, v0, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_4

    .line 169
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Unit;->getAttack()F

    move-result v1

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Unit;->getSpeed()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/droidhen/fortconquer/units/Unit;->setKeyValues(FFF)V

    goto :goto_0

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Enemy;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v0, v0, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    if-gt v0, v4, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Unit;->getAttack()F

    move-result v1

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Unit;->getSpeed()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/droidhen/fortconquer/units/Unit;->setKeyValues(FFF)V

    goto :goto_0
.end method

.method public sendUnits()V
    .locals 4

    .prologue
    .line 346
    const/4 v1, 0x0

    .line 347
    .local v1, "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 364
    return-void

    .line 349
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitCreated:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 351
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mUnitCreated:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    check-cast v1, Lcom/droidhen/fortconquer/units/Unit;

    .line 352
    .restart local v1    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v2, v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v2, v2, v0

    iget v3, v1, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    invoke-virtual {v2, v1, v3}, Lcom/droidhen/fortconquer/units/Lane;->addUnit(Lcom/droidhen/fortconquer/units/Unit;I)Z

    .line 354
    iget-object v2, v1, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    const/4 v3, 0x7

    if-gt v2, v3, :cond_2

    .line 355
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v2, v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/Lane;->mBipedLayerRight:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/units/Unit;->attachToScene(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 359
    :goto_1
    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->updateRadarPosition()V

    .line 360
    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->flashRadarPoint()V

    .line 361
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-virtual {v2, v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->playDragGuide(I)V

    .line 347
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_2
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Enemy;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v2, v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mLanes:[Lcom/droidhen/fortconquer/units/Lane;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/Lane;->mQuadLayerRight:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/units/Unit;->attachToScene(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    goto :goto_1
.end method
