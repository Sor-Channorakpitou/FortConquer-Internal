.class public Lcom/droidhen/fortconquer/units/Fort;
.super Lcom/droidhen/fortconquer/units/UnitPart;
.source "Fort.java"


# instance fields
.field protected mFortMoveModifier1:Lorg/anddev/andengine/entity/modifier/MoveByModifier;

.field protected mFortMoveModifier2:Lorg/anddev/andengine/entity/modifier/MoveByModifier;

.field protected mFortShakeModifier:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

.field protected mFortSlashSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

.field private mHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

.field protected mHealthNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field protected mHealthTotalNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field protected mHurtModifier:Lorg/anddev/andengine/entity/modifier/ColorModifier;

.field protected mStringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;IZ)V
    .locals 10
    .param p1, "pGameScene"    # Lcom/droidhen/fortconquer/scenes/GameScene;
    .param p2, "pLevel"    # I
    .param p3, "bLeftSide"    # Z

    .prologue
    const v7, 0x3e99999a    # 0.3f

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/16 v0, 0x64

    const/high16 v8, 0x3f800000    # 1.0f

    .line 51
    invoke-direct {p0, v0, v0, p3}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZ)V

    .line 52
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Fort;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 54
    new-instance v1, Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-static {v0, v0, p3}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->getUnitTextureRegion(IIZ)Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v1, v0, v6, v6}, Lcom/droidhen/fortconquer/component/TripleBarEntity;-><init>(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;II)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    .line 55
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    if-eqz p3, :cond_1

    const/16 v0, 0x4c

    :goto_0
    int-to-float v0, v0

    const/high16 v2, 0x41980000    # 19.0f

    invoke-virtual {v1, v0, v2}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPosition(FF)V

    .line 56
    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    if-eqz p3, :cond_2

    const/16 v0, 0x96

    :goto_1
    int-to-float v0, v0

    const/high16 v2, 0x41800000    # 16.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mFortSlashTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v1, v0, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mFortSlashSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 57
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    if-eqz p3, :cond_3

    const/16 v1, 0x58

    :goto_2
    int-to-float v1, v1

    const/high16 v2, 0x41880000    # 17.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mMainUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v4, "health_number.png"

    const/4 v5, 0x6

    invoke-direct/range {v0 .. v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mHealthNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 58
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    if-eqz p3, :cond_4

    const/16 v1, 0xa0

    :goto_3
    int-to-float v1, v1

    const/high16 v2, 0x41880000    # 17.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mMainUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v4, "health_number.png"

    const/4 v5, 0x6

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mHealthTotalNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 59
    new-instance v0, Lorg/anddev/andengine/entity/modifier/ColorModifier;

    const v1, 0x3e4ccccd    # 0.2f

    move v2, v8

    move v3, v8

    move v4, v7

    move v5, v8

    move v6, v7

    move v7, v8

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/modifier/ColorModifier;-><init>(FFFFFFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mHurtModifier:Lorg/anddev/andengine/entity/modifier/ColorModifier;

    .line 60
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Fort;->createFortShakeModifier()V

    .line 61
    iput p2, p0, Lcom/droidhen/fortconquer/units/Fort;->mLevel:I

    .line 62
    iget v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mLevel:I

    if-ge v0, v9, :cond_0

    iput v9, p0, Lcom/droidhen/fortconquer/units/Fort;->mLevel:I

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mStringBuffer:Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Fort;->reset()V

    .line 66
    return-void

    .line 55
    :cond_1
    const/16 v0, 0x22e

    goto :goto_0

    .line 56
    :cond_2
    const/16 v0, 0x280

    goto :goto_1

    .line 57
    :cond_3
    const/16 v1, 0x242

    goto :goto_2

    .line 58
    :cond_4
    const/16 v1, 0x28a

    goto :goto_3
.end method


# virtual methods
.method public attachSprites(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V
    .locals 1
    .param p1, "pLayer"    # Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 123
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mFortSlashSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 124
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mHealthNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0, p1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->attachToLayer(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 125
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mHealthTotalNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0, p1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->attachToLayer(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V

    .line 126
    return-void
.end method

.method protected beAttacked(F)F
    .locals 4
    .param p1, "pDamage"    # F

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Fort;->showHurtEffect()V

    .line 87
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    const/high16 v2, 0x42c80000    # 100.0f

    iget v3, p0, Lcom/droidhen/fortconquer/units/Fort;->mHealth:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/droidhen/fortconquer/units/Fort;->mInitHealth:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPercent(F)V

    .line 88
    iget v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mBeAttackedNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mBeAttackedNum:I

    .line 89
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/units/UnitPart;->beAttacked(F)F

    move-result v0

    .line 90
    .local v0, "finalDamage":F
    iget v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mHealth:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Fort;->updateHealthText()V

    .line 93
    return v0
.end method

.method protected createFortShakeModifier()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x3d4ccccd    # 0.05f

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 139
    new-instance v1, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v1, v5, v2, v4}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mFortMoveModifier1:Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    .line 140
    new-instance v1, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v2, v4}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mFortMoveModifier2:Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "shakeModifier":Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    iget-boolean v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mbLeftSide:Z

    if-eqz v1, :cond_0

    .line 144
    new-instance v0, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    .end local v0    # "shakeModifier":Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    new-array v1, v3, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Fort;->mFortMoveModifier1:Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Fort;->mFortMoveModifier2:Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 148
    .restart local v0    # "shakeModifier":Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    :goto_0
    new-instance v1, Lcom/droidhen/fortconquer/units/Fort$1;

    invoke-direct {v1, p0, v0, v3}, Lcom/droidhen/fortconquer/units/Fort$1;-><init>(Lcom/droidhen/fortconquer/units/Fort;Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mFortShakeModifier:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    .line 155
    return-void

    .line 146
    :cond_0
    new-instance v0, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    .end local v0    # "shakeModifier":Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    new-array v1, v3, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Fort;->mFortMoveModifier2:Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Fort;->mFortMoveModifier1:Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .restart local v0    # "shakeModifier":Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    goto :goto_0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mbLeftSide:Z

    if-eqz v0, :cond_0

    .line 132
    const/high16 v0, 0x42a00000    # 80.0f

    .line 134
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x448c0000    # 1120.0f

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const v1, 0x47c34f80    # 99999.0f

    .line 70
    iget v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mLevel:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x1f4

    add-int/lit16 v0, v0, 0xbb8

    int-to-float v0, v0

    iput v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mHealth:F

    .line 71
    iget v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mHealth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 72
    iput v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mHealth:F

    .line 73
    :cond_0
    iget v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mHealth:F

    iput v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mInitHealth:F

    .line 74
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mHealthNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mHealth:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 75
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mHealthTotalNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mInitHealth:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 76
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mHPBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPercentDirect(F)V

    .line 77
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Fort;->updateHealthText()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 79
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 80
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mbLeftSide:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mPosCol:I

    .line 81
    return-void

    .line 80
    :cond_1
    const/16 v0, 0x64

    goto :goto_0
.end method

.method protected showHurtEffect()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 99
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 101
    iget-boolean v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mbLeftSide:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 103
    .local v0, "fortSprite":Lcom/droidhen/andplugin/ComposedAnimatedSprite;
    :goto_0
    invoke-virtual {v0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getBlue()F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 104
    invoke-virtual {v0, v6, v6, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setColor(FFF)V

    .line 105
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mHurtModifier:Lorg/anddev/andengine/entity/modifier/ColorModifier;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/modifier/ColorModifier;->reset()V

    .line 106
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mHurtModifier:Lorg/anddev/andengine/entity/modifier/ColorModifier;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mFortShakeModifier:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mFortShakeModifier:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;->getSecondsElapsed()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mFortShakeModifier:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;->reset()V

    .line 110
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mFortShakeModifier:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z

    .line 111
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mFortShakeModifier:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 114
    .end local v0    # "fortSprite":Lcom/droidhen/andplugin/ComposedAnimatedSprite;
    :cond_2
    return-void

    .line 101
    :cond_3
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Fort;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/4 v2, 0x3

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method protected updateHealthText()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Fort;->mHealthNumberSprite:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Fort;->getHealth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 118
    return-void
.end method
