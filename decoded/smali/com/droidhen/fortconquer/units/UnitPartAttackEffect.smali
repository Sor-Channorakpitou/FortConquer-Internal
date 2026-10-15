.class public Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;
.super Lcom/droidhen/fortconquer/units/UnitPart;
.source "UnitPartAttackEffect.java"


# static fields
.field public static final sAttackDelay:[[I


# instance fields
.field detachRunnable:Ljava/lang/Runnable;

.field protected mAttackDelay:F

.field mAttackModifier3:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mDupSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

.field protected mDupSprite3:Lorg/anddev/andengine/entity/sprite/BaseSprite;

.field protected mTargetX:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    .line 49
    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 50
    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 51
    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    .line 52
    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    .line 48
    sput-object v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->sAttackDelay:[[I

    .line 53
    return-void

    .line 49
    :array_0
    .array-data 4
        0xd
        0x12
        0x19
    .end array-data

    .line 50
    :array_1
    .array-data 4
        0xe
        0xb
        0xf
    .end array-data

    .line 51
    :array_2
    .array-data 4
        0xf
        0x14
        0x14
    .end array-data

    .line 52
    :array_3
    .array-data 4
        0xd
        0x10
        0x10
    .end array-data
.end method

.method public constructor <init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V
    .locals 6
    .param p1, "unitRace"    # I
    .param p2, "partType"    # I
    .param p3, "bLeftSide"    # Z
    .param p4, "parent"    # Lcom/droidhen/fortconquer/units/UnitPart;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>(IIZLcom/droidhen/fortconquer/units/UnitPart;)V

    .line 38
    new-instance v1, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$1;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$1;-><init>(Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->detachRunnable:Ljava/lang/Runnable;

    .line 58
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mRace:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 59
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    .line 61
    :cond_0
    iget v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mRace:I

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    iget-boolean v3, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mbLeftSide:Z

    invoke-static {v1, v2, v3}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->getUnitTextureRegion(IIZ)Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v0

    .line 62
    .local v0, "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    iget-boolean v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mbLeftSide:Z

    if-nez v1, :cond_1

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->setFlippedHorizontal(Z)V

    .line 64
    :cond_1
    new-instance v2, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    move-object v1, v0

    check-cast v1, Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v2, v4, v4, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 65
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v5}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 66
    new-instance v1, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    check-cast v0, Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .end local v0    # "textureRegion":Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    invoke-direct {v1, v4, v4, v0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite3:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 67
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite3:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v5}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 69
    :cond_2
    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mRace:I

    aget-object v1, v1, v2

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackDistance:I

    .line 70
    return-void
.end method


# virtual methods
.method protected attack(I)V
    .locals 6
    .param p1, "modIndex"    # I

    .prologue
    const/16 v5, 0x11

    const/16 v4, 0x10

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 84
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 87
    :cond_0
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    .line 88
    :cond_1
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    if-ne v0, v4, :cond_2

    if-nez p1, :cond_2

    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mRace:I

    if-ne v0, v2, :cond_3

    .line 89
    :cond_2
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    if-ne v0, v5, :cond_4

    if-nez p1, :cond_4

    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mRace:I

    if-eq v0, v2, :cond_4

    .line 91
    :cond_3
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    goto :goto_0

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mRace:I

    if-ne v0, v2, :cond_6

    .line 96
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    if-eq v0, v4, :cond_5

    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    if-ne v0, v5, :cond_6

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 99
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 100
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v2

    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mbLeftSide:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x32

    :goto_1
    int-to-float v0, v0

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    .line 101
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getScaleX()F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setScale(F)V

    .line 102
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 104
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite3:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 105
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackModifier3:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 106
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite3:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v2

    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mbLeftSide:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x64

    :goto_2
    int-to-float v0, v0

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    .line 107
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite3:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getScaleX()F

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setScale(F)V

    .line 108
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite3:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackModifier3:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 111
    :cond_6
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 112
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/units/UnitPart;->attack(I)V

    goto/16 :goto_0

    .line 100
    :cond_7
    const/16 v0, -0x32

    goto :goto_1

    .line 106
    :cond_8
    const/16 v0, -0x64

    goto :goto_2
.end method

.method protected createAttackEffectModifiers([Lorg/anddev/andengine/entity/modifier/IEntityModifier;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 9
    .param p1, "attackEffectModifiers"    # [Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .param p2, "attackEffectModifiersRight"    # [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x3

    .line 150
    if-eqz p1, :cond_1

    array-length v4, p1

    if-eqz v4, :cond_1

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "delayFrames":F
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_2

    .line 154
    const v0, 0x3c23d70a    # 0.01f

    .line 162
    :goto_0
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDurationMakeup:F

    mul-float/2addr v4, v0

    const/high16 v5, 0x41c00000    # 24.0f

    div-float/2addr v4, v5

    iput v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackDelay:F

    .line 163
    new-instance v3, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackDelay:F

    new-instance v5, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$2;

    invoke-direct {v5, p0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$2;-><init>(Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;)V

    invoke-direct {v3, v4, v5}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 196
    .local v3, "tmpDelayModifier":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    array-length v4, p1

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 197
    .local v2, "tmpAttackEffectModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 198
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p1

    if-lt v1, v4, :cond_4

    .line 206
    new-instance v4, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;

    new-instance v5, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$3;

    invoke-direct {v5, p0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$3;-><init>(Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;)V

    .line 220
    invoke-direct {v4, p0, v5, v2}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;-><init>(Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 206
    iput-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 272
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iput-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 274
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mRace:I

    if-ne v4, v7, :cond_1

    .line 275
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    const/16 v5, 0x10

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_1

    .line 277
    :cond_0
    const/high16 v4, 0x40400000    # 3.0f

    add-float/2addr v4, v0

    invoke-virtual {p0, p1, p2, v4}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->createDupModifier([Lorg/anddev/andengine/entity/modifier/IEntityModifier;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;F)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v4

    iput-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackModifier2:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 278
    const/high16 v4, 0x40c00000    # 6.0f

    add-float/2addr v4, v0

    invoke-virtual {p0, p1, p2, v4}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->createDupModifier([Lorg/anddev/andengine/entity/modifier/IEntityModifier;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;F)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v4

    iput-object v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackModifier3:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 281
    .end local v0    # "delayFrames":F
    .end local v1    # "i":I
    .end local v2    # "tmpAttackEffectModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .end local v3    # "tmpDelayModifier":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    :cond_1
    return-void

    .line 155
    .restart local v0    # "delayFrames":F
    :cond_2
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mRace:I

    if-ne v4, v7, :cond_3

    .line 156
    sget-object v4, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->sAttackDelay:[[I

    aget-object v4, v4, v7

    iget v5, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    add-int/lit8 v5, v5, -0xf

    aget v4, v4, v5

    int-to-float v4, v4

    .line 157
    sget-object v5, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    iget v6, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mRace:I

    aget-object v5, v5, v6

    aget v5, v5, v8

    .line 156
    add-float v0, v4, v5

    .line 157
    goto :goto_0

    .line 159
    :cond_3
    sget-object v4, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->sAttackDelay:[[I

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getCamp()I

    move-result v5

    aget-object v4, v4, v5

    iget v5, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    add-int/lit8 v5, v5, -0xf

    aget v4, v4, v5

    int-to-float v4, v4

    .line 160
    sget-object v5, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    iget v6, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mRace:I

    aget-object v5, v5, v6

    aget v5, v5, v8

    .line 159
    add-float v0, v4, v5

    goto/16 :goto_0

    .line 200
    .restart local v1    # "i":I
    .restart local v2    # "tmpAttackEffectModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .restart local v3    # "tmpDelayModifier":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    :cond_4
    iget-boolean v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mbLeftSide:Z

    if-eqz v4, :cond_5

    .line 201
    add-int/lit8 v4, v1, 0x1

    aget-object v5, p1, v1

    aput-object v5, v2, v4

    .line 198
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 203
    :cond_5
    add-int/lit8 v4, v1, 0x1

    aget-object v5, p2, v1

    aput-object v5, v2, v4

    goto :goto_2
.end method

.method protected createDupModifier([Lorg/anddev/andengine/entity/modifier/IEntityModifier;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;F)Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 6
    .param p1, "attackEffectModifiers"    # [Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .param p2, "attackEffectModifiersRight"    # [Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .param p3, "delayFrames"    # F

    .prologue
    .line 285
    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDurationMakeup:F

    mul-float/2addr v4, p3

    const/high16 v5, 0x41c00000    # 24.0f

    div-float/2addr v4, v5

    iput v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackDelay:F

    .line 286
    new-instance v3, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackDelay:F

    new-instance v5, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$5;

    invoke-direct {v5, p0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$5;-><init>(Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;)V

    invoke-direct {v3, v4, v5}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 299
    .local v3, "tmpDelayModifier1":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    array-length v4, p1

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 300
    .local v2, "tmpAttackEffectModifiers1":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 301
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-lt v1, v4, :cond_0

    .line 308
    new-instance v0, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-instance v4, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$6;

    invoke-direct {v4, p0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$6;-><init>(Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;)V

    invoke-direct {v0, v4, v2}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 324
    .local v0, "dupModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    return-object v0

    .line 303
    .end local v0    # "dupModifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_0
    iget-boolean v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mbLeftSide:Z

    if-eqz v4, :cond_1

    .line 304
    add-int/lit8 v4, v1, 0x1

    aget-object v5, p1, v1

    invoke-interface {v5}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v5

    aput-object v5, v2, v4

    .line 301
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_1
    add-int/lit8 v4, v1, 0x1

    aget-object v5, p2, v1

    invoke-interface {v5}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v5

    aput-object v5, v2, v4

    goto :goto_1
.end method

.method protected createModifierListeners()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public createModifiers(FZF)V
    .locals 6
    .param p1, "pSpeed"    # F
    .param p2, "bNoRotation"    # Z
    .param p3, "attackDelay"    # F

    .prologue
    const/4 v5, 0x0

    .line 138
    iput p1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mSpeed:F

    .line 139
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getDurationMakeup()F

    move-result v1

    iput v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDurationMakeup:F

    .line 141
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getCamp()I

    move-result v1

    .line 142
    iget v2, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mRace:I

    sget-object v3, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getCamp()I

    move-result v4

    aget v3, v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    iget v4, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDurationMakeup:F

    .line 141
    invoke-static {v1, v2, v3, v4, v5}, Lcom/droidhen/fortconquer/units/UnitMotion;->initCampModifiersWithSpeed(IIIFZ)[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    .line 144
    .local v0, "tmpModifiers":[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    aget-object v1, v0, v5

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->createAttackEffectModifiers([Lorg/anddev/andengine/entity/modifier/IEntityModifier;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 145
    return-void
.end method

.method public deepCopy(Lcom/droidhen/fortconquer/units/UnitPart;)V
    .locals 3
    .param p1, "sample"    # Lcom/droidhen/fortconquer/units/UnitPart;

    .prologue
    .line 128
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mSpeed:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->createModifiers(FZF)V

    .line 129
    return-void
.end method

.method protected move()V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_WALK:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 76
    return-void
.end method

.method public setSpritePos(FF)V
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 330
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentScene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    if-eq v0, v1, :cond_0

    .line 331
    invoke-super {p0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPart;->setSpritePos(FF)V

    .line 332
    :cond_0
    return-void
.end method

.method protected showHurtEffect()V
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 121
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 123
    :cond_0
    return-void
.end method
