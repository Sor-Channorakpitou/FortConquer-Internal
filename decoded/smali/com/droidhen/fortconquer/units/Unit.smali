.class public Lcom/droidhen/fortconquer/units/Unit;
.super Lcom/droidhen/fortconquer/units/UnitPart;
.source "Unit.java"


# static fields
.field public static final ATTACK_RATIO:F = 5.0f

.field public static final DISTANCE_BASE:I = 0x19

.field public static final HEALTH_RATIO:F = 0.2f

.field public static final RSC_BASE:F = 180.0f

.field protected static final UNIT_ANIMATION_TIME:I = 0x50

.field public static final VALUE_SUB:I = 0xfa


# instance fields
.field private bAlive:Z

.field protected bElite:Z

.field protected mChestCenterX:F

.field protected mChestCenterY:F

.field protected mCopyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Unit;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurAttackMod:I

.field protected mDetachUnitRunnable:Ljava/lang/Runnable;

.field protected mDieBloodModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mDieBloodSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field protected mDieEffectModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mDieEffectSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field protected mEffectContainer:Lorg/anddev/andengine/entity/Entity;

.field protected mGhostModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mGhostSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field protected mHealthBgSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field protected mInitX:F

.field protected mLane:Lcom/droidhen/fortconquer/units/Lane;

.field protected mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

.field protected mRadarFlashModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

.field public mRadarPointSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mSelectedLink:I

.field protected mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

.field protected mUnitContainer:Lorg/anddev/andengine/entity/Entity;

.field protected mUnitDeadRunnable:Ljava/lang/Runnable;

.field public mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

.field public mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

.field public mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

.field protected mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

.field protected mbShadowSaved:Z

.field protected sShadowOffsetY:[I

.field protected sUnitPosOffsetY:[I

.field private final unregisterModifiersTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, -0xa

    const/16 v5, -0xf

    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 124
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterX:F

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterY:F

    .line 77
    iput-boolean v7, p0, Lcom/droidhen/fortconquer/units/Unit;->mbShadowSaved:Z

    .line 78
    const/high16 v0, -0x3cb80000    # -200.0f

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mInitX:F

    .line 79
    iput v7, p0, Lcom/droidhen/fortconquer/units/Unit;->mSelectedLink:I

    .line 84
    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 85
    aput v4, v0, v7

    const/4 v1, 0x3

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 86
    const/4 v1, 0x2

    aput v1, v0, v3

    const/4 v1, 0x6

    aput v4, v0, v1

    const/16 v1, 0x8

    .line 87
    const/4 v2, -0x4

    aput v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, -0x4

    aput v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, -0x5

    aput v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, -0x7

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 88
    const/4 v2, -0x7

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v6, v0, v1

    const/16 v1, 0xe

    const/4 v2, -0x6

    aput v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, -0x5

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 89
    aput v6, v0, v1

    const/16 v1, 0x11

    aput v6, v0, v1

    const/16 v1, 0x12

    aput v6, v0, v1

    const/16 v1, 0x13

    const/4 v2, -0x6

    aput v2, v0, v1

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->sShadowOffsetY:[I

    .line 91
    new-instance v0, Lcom/droidhen/fortconquer/units/Unit$1;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/units/Unit$1;-><init>(Lcom/droidhen/fortconquer/units/Unit;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitDeadRunnable:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Lcom/droidhen/fortconquer/units/Unit$2;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/units/Unit$2;-><init>(Lcom/droidhen/fortconquer/units/Unit;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDetachUnitRunnable:Ljava/lang/Runnable;

    .line 473
    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 474
    const/16 v1, 0x9

    aput v1, v0, v7

    aput v3, v0, v4

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 475
    const/4 v1, 0x7

    aput v1, v0, v3

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x8

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 476
    const/4 v2, -0x3

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v4, v0, v1

    const/16 v1, 0xa

    const/4 v2, -0x3

    aput v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, -0x3

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 477
    aput v4, v0, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    const/16 v1, 0xf

    aput v3, v0, v1

    const/16 v1, 0x10

    .line 478
    aput v5, v0, v1

    const/16 v1, 0x11

    aput v5, v0, v1

    const/16 v1, 0x12

    aput v5, v0, v1

    const/16 v1, 0x13

    aput v5, v0, v1

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->sUnitPosOffsetY:[I

    .line 1382
    new-instance v0, Lcom/droidhen/fortconquer/units/Unit$3;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/units/Unit$3;-><init>(Lcom/droidhen/fortconquer/units/Unit;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->unregisterModifiersTask:Ljava/lang/Runnable;

    .line 126
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 8
    .param p1, "headRace"    # I
    .param p2, "chestRace"    # I
    .param p3, "limbRace"    # I
    .param p4, "bLeftSide"    # Z

    .prologue
    const/16 v7, -0xa

    const/16 v6, -0xf

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 128
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/UnitPart;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterX:F

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterY:F

    .line 77
    iput-boolean v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mbShadowSaved:Z

    .line 78
    const/high16 v0, -0x3cb80000    # -200.0f

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mInitX:F

    .line 79
    iput v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mSelectedLink:I

    .line 84
    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 85
    aput v5, v0, v4

    const/4 v1, 0x3

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 86
    const/4 v1, 0x2

    aput v1, v0, v3

    const/4 v1, 0x6

    aput v5, v0, v1

    const/16 v1, 0x8

    .line 87
    const/4 v2, -0x4

    aput v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, -0x4

    aput v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, -0x5

    aput v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, -0x7

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 88
    const/4 v2, -0x7

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v7, v0, v1

    const/16 v1, 0xe

    const/4 v2, -0x6

    aput v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, -0x5

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 89
    aput v7, v0, v1

    const/16 v1, 0x11

    aput v7, v0, v1

    const/16 v1, 0x12

    aput v7, v0, v1

    const/16 v1, 0x13

    const/4 v2, -0x6

    aput v2, v0, v1

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->sShadowOffsetY:[I

    .line 91
    new-instance v0, Lcom/droidhen/fortconquer/units/Unit$1;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/units/Unit$1;-><init>(Lcom/droidhen/fortconquer/units/Unit;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitDeadRunnable:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Lcom/droidhen/fortconquer/units/Unit$2;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/units/Unit$2;-><init>(Lcom/droidhen/fortconquer/units/Unit;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDetachUnitRunnable:Ljava/lang/Runnable;

    .line 473
    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 474
    const/16 v1, 0x9

    aput v1, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 475
    const/4 v1, 0x7

    aput v1, v0, v3

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x8

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 476
    const/4 v2, -0x3

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v5, v0, v1

    const/16 v1, 0xa

    const/4 v2, -0x3

    aput v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, -0x3

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 477
    aput v5, v0, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    const/16 v1, 0xf

    aput v3, v0, v1

    const/16 v1, 0x10

    .line 478
    aput v6, v0, v1

    const/16 v1, 0x11

    aput v6, v0, v1

    const/16 v1, 0x12

    aput v6, v0, v1

    const/16 v1, 0x13

    aput v6, v0, v1

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->sUnitPosOffsetY:[I

    .line 1382
    new-instance v0, Lcom/droidhen/fortconquer/units/Unit$3;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/units/Unit$3;-><init>(Lcom/droidhen/fortconquer/units/Unit;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->unregisterModifiersTask:Ljava/lang/Runnable;

    .line 130
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPartHead;

    invoke-direct {v0, p1, p4}, Lcom/droidhen/fortconquer/units/UnitPartHead;-><init>(IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    .line 131
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPartChest;

    invoke-direct {v0, p2, p4}, Lcom/droidhen/fortconquer/units/UnitPartChest;-><init>(IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    .line 132
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    invoke-direct {v0, p3, p4, p0}, Lcom/droidhen/fortconquer/units/UnitPartLimbs;-><init>(IZLcom/droidhen/fortconquer/units/Unit;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    .line 134
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartChest;->getCamp()I

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/UnitPartHead;->getCamp()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 135
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPartChest;

    invoke-direct {v0, p1, p4}, Lcom/droidhen/fortconquer/units/UnitPartChest;-><init>(IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->getCamp()I

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/UnitPartHead;->getCamp()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 137
    new-instance v0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    invoke-direct {v0, p1, p4}, Lcom/droidhen/fortconquer/units/UnitPartLimbs;-><init>(IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    .line 138
    :cond_1
    iput-boolean p4, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    .line 139
    iput p1, p0, Lcom/droidhen/fortconquer/units/Unit;->mRace:I

    .line 141
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v0, :cond_3

    .line 143
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mLeftUnitTextures:[Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v2

    aget-object v1, v1, v2

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    .line 149
    :goto_0
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    .line 150
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    .line 151
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    .line 153
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentScene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-ne v0, v1, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->createSprites()V

    .line 156
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/units/Unit;->setScaleAlive(F)V

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/droidhen/fortconquer/units/Unit;->setNewUnitProps(Lcom/droidhen/fortconquer/units/UnitPart;Lcom/droidhen/fortconquer/units/UnitPart;Lcom/droidhen/fortconquer/units/UnitPart;ZZ)V

    .line 161
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 163
    return-void

    .line 147
    :cond_3
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mEnemyTextures:[Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v2

    aget-object v1, v1, v2

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    goto :goto_0
.end method

.method private static calcValue(IFF)I
    .locals 3
    .param p0, "camp"    # I
    .param p1, "attack"    # F
    .param p2, "hp"    # F

    .prologue
    .line 1276
    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v1, p1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1277
    .local v0, "value":I
    return v0
.end method


# virtual methods
.method public attachAttackEffects(Lorg/anddev/andengine/entity/Entity;)V
    .locals 6
    .param p1, "pEffectContainer"    # Lorg/anddev/andengine/entity/Entity;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 794
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v0

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mRace:I

    if-ne v0, v5, :cond_1

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_1:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {p1, v0}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 797
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_1:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 799
    :cond_1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/droidhen/fortconquer/units/UnitMotion;->unitPartExist(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {p1, v0}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 802
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 804
    :cond_2
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v0

    if-eq v0, v4, :cond_3

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/droidhen/fortconquer/units/UnitMotion;->unitPartExist(III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 806
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mRace:I

    if-ne v0, v5, :cond_5

    .line 807
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {p1, v0, v3}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;I)Z

    .line 810
    :goto_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 812
    :cond_3
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mRace:I

    if-ne v0, v5, :cond_4

    .line 814
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {p1, v0}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 815
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 816
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {p1, v0, v3}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;I)Z

    .line 817
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 819
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite3:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {p1, v0}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 820
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite3:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 821
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite3:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {p1, v0, v3}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;I)Z

    .line 822
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDupSprite3:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 824
    :cond_4
    return-void

    .line 809
    :cond_5
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {p1, v0}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    goto :goto_0
.end method

.method public attachToScene(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V
    .locals 9
    .param p1, "pLayer"    # Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .prologue
    const/16 v8, 0x12

    const/16 v7, 0x10

    const/4 v6, 0x3

    const/16 v5, 0xc

    const/4 v4, 0x0

    .line 626
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {p1, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 627
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {p1, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 628
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {p1, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 631
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    if-ne v1, v8, :cond_12

    .line 633
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLFFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 634
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLFLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 635
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLFLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 647
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    if-ne v1, v8, :cond_13

    .line 649
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLBFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 650
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLBLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 651
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLBLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 660
    :goto_1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    .line 661
    :cond_1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitConstants;->sBipudTailType:[I

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    aget v1, v1, v2

    if-eqz v1, :cond_3

    .line 662
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mTail:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 663
    :cond_3
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_4

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitConstants;->sBipudTailType:[I

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    .line 664
    :cond_4
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_5

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    const/16 v2, 0xe

    if-le v1, v2, :cond_6

    .line 665
    :cond_5
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    if-lt v1, v7, :cond_7

    .line 667
    :cond_6
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mTail:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 668
    .local v0, "tail":Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 669
    const/high16 v1, 0x42a00000    # 80.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mDurationMakeup:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 680
    .end local v0    # "tail":Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    if-eq v1, v5, :cond_8

    .line 681
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    if-lt v1, v7, :cond_9

    .line 683
    :cond_8
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mLeftWing:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 684
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 685
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mLeftWing:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    check-cast v1, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    const/high16 v2, 0x42a00000    # 80.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPartChest;->mDurationMakeup:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 693
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChest:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 696
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    if-lt v1, v7, :cond_a

    .line 698
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartHead;->mNeck:[Lcom/droidhen/fortconquer/units/UnitPart;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 699
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartHead;->mNeck:[Lcom/droidhen/fortconquer/units/UnitPart;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 700
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartHead;->mNeck:[Lcom/droidhen/fortconquer/units/UnitPart;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 701
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartHead;->mNeck:[Lcom/droidhen/fortconquer/units/UnitPart;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 702
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartHead;->mNeck:[Lcom/droidhen/fortconquer/units/UnitPart;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 704
    :cond_a
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitConstants;->UNIT_RACE_NO_MOUTH:[I

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v2, v2, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_b

    .line 706
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    if-ne v1, v5, :cond_17

    .line 707
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartHead;->mMouth:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 711
    :cond_b
    :goto_4
    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mRace:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_c

    .line 712
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartHead;->mNose:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 713
    :cond_c
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartHead;->mHead:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 716
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    if-ne v1, v8, :cond_18

    .line 718
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRBFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 719
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRBLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 720
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRBLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 728
    :goto_5
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    if-ne v1, v8, :cond_19

    .line 730
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRFFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 731
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRFLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 732
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRFLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 750
    :cond_d
    :goto_6
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    if-eq v1, v5, :cond_e

    .line 751
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    if-lt v1, v7, :cond_f

    .line 753
    :cond_e
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRightWing:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 754
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 755
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRightWing:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    check-cast v1, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    const/high16 v2, 0x42a00000    # 80.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPartChest;->mDurationMakeup:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 765
    :cond_f
    :goto_7
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentScene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-ne v1, v2, :cond_11

    .line 767
    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mEffectLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 769
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 771
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 772
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v4}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 773
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthBgSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 774
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthBgSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 775
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 776
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 777
    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mTopUILayer:Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mRadarPointSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;->attachChild(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    .line 778
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mRadarPointSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 780
    :cond_10
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/units/Unit;->attachAttackEffects(Lorg/anddev/andengine/entity/Entity;)V

    .line 782
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mBloodEffect:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 783
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mBloodEffect:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v4}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 784
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mGhostSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 785
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mGhostSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setVisible(Z)V

    .line 786
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieEffectSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 787
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieEffectSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setVisible(Z)V

    .line 788
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieBloodSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 789
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieBloodSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setVisible(Z)V

    .line 791
    :cond_11
    return-void

    .line 639
    :cond_12
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLFLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 640
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLFLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 641
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 643
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLFFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    goto/16 :goto_0

    .line 654
    :cond_13
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLBLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 655
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLBLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 656
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLBFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    goto/16 :goto_1

    .line 671
    .restart local v0    # "tail":Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    :cond_14
    invoke-virtual {v0, v4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->stopAnimation(I)V

    .line 672
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 674
    const/high16 v1, -0x3e100000    # -30.0f

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setRotation(F)V

    goto/16 :goto_2

    .line 687
    .end local v0    # "tail":Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    :cond_15
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    if-ne v1, v5, :cond_16

    .line 688
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mLeftWing:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    check-cast v1, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v1, v6}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->stopAnimation(I)V

    goto/16 :goto_3

    .line 690
    :cond_16
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mLeftWing:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    check-cast v1, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v1, v4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->stopAnimation(I)V

    goto/16 :goto_3

    .line 709
    :cond_17
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartHead;->mMouth:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    goto/16 :goto_4

    .line 723
    :cond_18
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRBLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 724
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRBLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 725
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRBFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    goto/16 :goto_5

    .line 735
    :cond_19
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRFLeg_1:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 736
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    if-ne v1, v6, :cond_1a

    .line 738
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mWeapon:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 739
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRFLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 744
    :goto_8
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_d

    .line 746
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRFFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    goto/16 :goto_6

    .line 742
    :cond_1a
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRFLeg_2:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    goto :goto_8

    .line 757
    :cond_1b
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    if-ne v1, v5, :cond_1c

    .line 758
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRightWing:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    check-cast v1, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v1, v6}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->stopAnimation(I)V

    goto/16 :goto_7

    .line 760
    :cond_1c
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRightWing:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    check-cast v1, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v1, v4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->stopAnimation(I)V

    goto/16 :goto_7
.end method

.method public attack(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 907
    sget-object v0, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    aget-object v0, v0, v1

    const/4 v1, 0x5

    aget v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mCurAttackMod:I

    .line 909
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mCurAttackMod:I

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/units/UnitPartHead;->attack(I)V

    .line 910
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mCurAttackMod:I

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/units/UnitPartChest;->attack(I)V

    .line 911
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mCurAttackMod:I

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->attack(I)V

    .line 913
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->updateAttackEffectPosition()V

    .line 914
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_ATTACK:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 916
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->flashRadarPoint()V

    .line 918
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackHost:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackHost:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v0, v1, :cond_1

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 921
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthBgSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 923
    :cond_1
    return-void
.end method

.method protected attackDone()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1025
    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mCurAttackMod:I

    if-nez v1, :cond_1

    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDpa1:F

    .line 1026
    .local v0, "finalDamage":F
    :goto_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1027
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mLane:Lcom/droidhen/fortconquer/units/Lane;

    invoke-virtual {v1, p0, v0}, Lcom/droidhen/fortconquer/units/Lane;->handleDragonAttackDone(Lcom/droidhen/fortconquer/units/Unit;F)V

    .line 1037
    :cond_0
    :goto_1
    return-void

    .line 1025
    .end local v0    # "finalDamage":F
    :cond_1
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDpa2:F

    goto :goto_0

    .line 1028
    .restart local v0    # "finalDamage":F
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-eq v1, v2, :cond_0

    .line 1030
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1, v0}, Lcom/droidhen/fortconquer/units/UnitPart;->beAttacked(F)F

    .line 1031
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mHealth:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 1033
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    iput-object v3, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackHost:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 1034
    iput-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    goto :goto_1
.end method

.method protected beAttacked(F)F
    .locals 4
    .param p1, "pDamage"    # F

    .prologue
    const/4 v0, 0x0

    .line 1042
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v2, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v1, v2, :cond_0

    .line 1056
    :goto_0
    return v0

    .line 1045
    :cond_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->showHurtEffect()V

    .line 1047
    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 1048
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1051
    :cond_1
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealth:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealth:F

    .line 1052
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mBeAttackedNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mBeAttackedNum:I

    .line 1053
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getBaseWidth()F

    move-result v1

    iget v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealth:F

    iget v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mInitHealth:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setWidth(F)V

    .line 1054
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->flashRadarPoint()V

    move v0, p1

    .line 1056
    goto :goto_0
.end method

.method public calcLevelFromAttr()I
    .locals 4

    .prologue
    .line 1283
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getBasicValue()I

    move-result v0

    .line 1285
    .local v0, "value":I
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1286
    sget v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_POWER_AVERAGE_DRAGON:F

    .line 1291
    .local v1, "valueBase":F
    :goto_0
    int-to-float v2, v0

    div-float/2addr v2, v1

    invoke-static {v2}, Lcom/droidhen/fortconquer/stages/StageDataConstants;->getLevelFromIncrFactor(F)I

    move-result v2

    return v2

    .line 1288
    .end local v1    # "valueBase":F
    :cond_0
    sget v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_POWER_AVERAGE:F

    .restart local v1    # "valueBase":F
    goto :goto_0
.end method

.method public celebrate()V
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartHead;->celebrate()V

    .line 1175
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartChest;->celebrate()V

    .line 1176
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->celebrate()V

    .line 1177
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_CELE:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 1178
    return-void
.end method

.method protected createDieModifier(II)Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 13
    .param p1, "pPartType"    # I
    .param p2, "delayFrames"    # I

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v8

    .line 256
    iget v9, p0, Lcom/droidhen/fortconquer/units/Unit;->mRace:I

    sget-object v10, Lcom/droidhen/fortconquer/units/UnitConstants;->CAMP_RACE_START:[I

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v11

    aget v10, v10, v11

    sub-int/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .line 255
    invoke-static {v8, v9, p1, v10, v11}, Lcom/droidhen/fortconquer/units/UnitMotion;->initCampModifiersWithSpeed(IIIFZ)[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v7

    .line 257
    .local v7, "tmpModifiers":[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    aget-object v8, v7, v8

    array-length v8, v8

    if-lez v8, :cond_5

    .line 259
    int-to-float v8, p2

    const/high16 v9, 0x41c00000    # 24.0f

    div-float v4, v8, v9

    .line 260
    .local v4, "mAttackDelay":F
    new-instance v5, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    new-instance v8, Lcom/droidhen/fortconquer/units/Unit$5;

    invoke-direct {v8, p0}, Lcom/droidhen/fortconquer/units/Unit$5;-><init>(Lcom/droidhen/fortconquer/units/Unit;)V

    invoke-direct {v5, v4, v8}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 275
    .local v5, "tmpDelayModifier":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    const/4 v8, 0x5

    if-ne p2, v8, :cond_0

    const/4 v8, 0x5

    :goto_0
    int-to-float v8, v8

    const/high16 v9, 0x41c00000    # 24.0f

    div-float v0, v8, v9

    .line 276
    .local v0, "alphaDura":F
    new-instance v1, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const/4 v8, 0x5

    if-ne p2, v8, :cond_2

    const v8, 0x3e19999a    # 0.15f

    :goto_1
    const v9, 0x3f19999a    # 0.6f

    invoke-direct {v1, v0, v8, v9}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    .line 278
    .local v1, "alphaModifier":Lorg/anddev/andengine/entity/modifier/AlphaModifier;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    new-array v6, v8, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 279
    .local v6, "tmpDieEffectModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    const/4 v8, 0x0

    aput-object v5, v6, v8

    .line 280
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    const/4 v8, 0x0

    aget-object v8, v7, v8

    array-length v8, v8

    if-lt v3, v8, :cond_3

    .line 290
    new-instance v2, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-instance v8, Lcom/droidhen/fortconquer/units/Unit$6;

    invoke-direct {v8, p0}, Lcom/droidhen/fortconquer/units/Unit$6;-><init>(Lcom/droidhen/fortconquer/units/Unit;)V

    invoke-direct {v2, v8, v6}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 308
    .end local v0    # "alphaDura":F
    .end local v1    # "alphaModifier":Lorg/anddev/andengine/entity/modifier/AlphaModifier;
    .end local v3    # "i":I
    .end local v4    # "mAttackDelay":F
    .end local v5    # "tmpDelayModifier":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    .end local v6    # "tmpDieEffectModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :goto_3
    return-object v2

    .line 275
    .restart local v4    # "mAttackDelay":F
    .restart local v5    # "tmpDelayModifier":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    :cond_0
    const/4 v8, 0x1

    if-ne p2, v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x2

    goto :goto_0

    .line 276
    .restart local v0    # "alphaDura":F
    :cond_2
    const v8, 0x3e99999a    # 0.3f

    goto :goto_1

    .line 282
    .restart local v1    # "alphaModifier":Lorg/anddev/andengine/entity/modifier/AlphaModifier;
    .restart local v3    # "i":I
    .restart local v6    # "tmpDieEffectModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_3
    if-nez v3, :cond_4

    const/4 v8, 0x5

    if-lt p2, v8, :cond_4

    .line 284
    add-int/lit8 v8, v3, 0x1

    new-instance v9, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    const/4 v10, 0x2

    new-array v10, v10, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aget-object v12, v7, v12

    aget-object v12, v12, v3

    aput-object v12, v10, v11

    invoke-direct {v9, v10}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    aput-object v9, v6, v8

    .line 280
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 287
    :cond_4
    add-int/lit8 v8, v3, 0x1

    const/4 v9, 0x0

    aget-object v9, v7, v9

    aget-object v9, v9, v3

    aput-object v9, v6, v8

    goto :goto_4

    .line 308
    .end local v0    # "alphaDura":F
    .end local v1    # "alphaModifier":Lorg/anddev/andengine/entity/modifier/AlphaModifier;
    .end local v3    # "i":I
    .end local v4    # "mAttackDelay":F
    .end local v5    # "tmpDelayModifier":Lorg/anddev/andengine/entity/modifier/DelayModifier;
    .end local v6    # "tmpDieEffectModifiers":[Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    :cond_5
    const/4 v2, 0x0

    goto :goto_3
.end method

.method protected createDieModifiers()V
    .locals 2

    .prologue
    .line 228
    const/16 v0, 0x13

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/units/Unit;->createDieModifier(II)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mGhostModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 229
    const/16 v0, 0x14

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/units/Unit;->createDieModifier(II)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieEffectModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 230
    const/16 v0, 0x15

    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/units/Unit;->createDieModifier(II)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieBloodModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 231
    return-void
.end method

.method protected createHurtModifier()V
    .locals 13

    .prologue
    .line 215
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 216
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/4 v0, 0x3

    if-lt v11, v0, :cond_0

    .line 225
    return-void

    .line 218
    :cond_0
    iget-object v12, p0, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v0, Lorg/anddev/andengine/entity/modifier/ColorModifier;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/modifier/ColorModifier;-><init>(FFFFFFF)V

    aput-object v0, v12, v11

    .line 219
    new-instance v8, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    const v1, 0x3d23d70a    # 0.04f

    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x3

    :goto_1
    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-direct {v8, v1, v0, v2}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    .line 220
    .local v8, "hurt1Modifier":Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    new-instance v9, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    const v1, 0x3d23d70a    # 0.04f

    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-direct {v9, v1, v0, v2}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    .line 221
    .local v9, "hurt2Modifier":Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    new-instance v10, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    const/4 v1, 0x2

    .line 222
    invoke-virtual {v8}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {v9}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    move-result-object v2

    .line 221
    aput-object v2, v0, v1

    invoke-direct {v10, v0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 223
    .local v10, "hurtModifier":Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v1, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v4, v4, v11

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    invoke-direct {v1, v2}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    aput-object v1, v0, v11

    .line 216
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 219
    .end local v8    # "hurt1Modifier":Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    .end local v9    # "hurt2Modifier":Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    .end local v10    # "hurtModifier":Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    .line 220
    .restart local v8    # "hurt1Modifier":Lorg/anddev/andengine/entity/modifier/MoveByModifier;
    :cond_2
    const/4 v0, -0x3

    goto :goto_2
.end method

.method protected createModifiers()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->createMoveModifier()V

    .line 205
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->createDieModifiers()V

    .line 206
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->createHurtModifier()V

    .line 208
    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v2, v2, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    aget-object v1, v1, v2

    const/4 v2, 0x6

    aget v0, v1, v2

    .line 209
    .local v0, "attackDelay":F
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/droidhen/fortconquer/units/UnitPartHead;->createModifiers(FZF)V

    .line 210
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/droidhen/fortconquer/units/UnitPartChest;->createModifiers(FZF)V

    .line 211
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->createModifiers(FZF)V

    .line 212
    return-void
.end method

.method protected createMoveModifier()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 234
    iget-boolean v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v1, :cond_1

    const/high16 v0, 0x42100000    # 36.0f

    .line 235
    .local v0, "moveX":F
    :goto_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 236
    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getDurationMakeup()F

    move-result v1

    iput v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mDurationMakeup:F

    .line 239
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    .line 240
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    new-instance v2, Lcom/droidhen/fortconquer/units/Unit$4;

    const v3, 0x3f755555

    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mDurationMakeup:F

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v0, v4}, Lcom/droidhen/fortconquer/units/Unit$4;-><init>(Lcom/droidhen/fortconquer/units/Unit;FFF)V

    aput-object v2, v1, v5

    .line 248
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    move-result-object v3

    aput-object v3, v1, v2

    .line 249
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    move-result-object v2

    aput-object v2, v1, v6

    .line 250
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    move-result-object v3

    aput-object v3, v1, v2

    .line 251
    return-void

    .line 234
    .end local v0    # "moveX":F
    :cond_1
    const/high16 v0, -0x3df00000    # -36.0f

    goto :goto_0
.end method

.method protected createSprites()V
    .locals 13

    .prologue
    const/16 v12, 0x303

    const/16 v11, 0x302

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/high16 v9, -0x3cb80000    # -200.0f

    .line 166
    new-instance v6, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mRace:I

    const/16 v7, 0x22

    iget-boolean v8, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    invoke-static {v4, v7, v8}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->getUnitTextureRegion(IIZ)Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v4

    check-cast v4, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v6, v9, v9, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v6, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 167
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const v6, 0x3fcccccd    # 1.6f

    invoke-virtual {v4, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScale(F)V

    .line 168
    new-instance v6, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mRace:I

    const/16 v7, 0x23

    iget-boolean v8, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    invoke-static {v4, v7, v8}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->getUnitTextureRegion(IIZ)Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v4

    check-cast v4, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v6, v9, v9, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v6, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthBgSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 169
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthBgSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const v6, 0x3fcccccd    # 1.6f

    invoke-virtual {v4, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScale(F)V

    .line 170
    new-instance v6, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mRace:I

    const/16 v7, 0x24

    iget-boolean v8, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    invoke-static {v4, v7, v8}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->getUnitTextureRegion(IIZ)Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v4

    check-cast v4, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v6, v9, v9, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v6, p0, Lcom/droidhen/fortconquer/units/Unit;->mRadarPointSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 171
    new-instance v3, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4, v6, v7}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFF)V

    .line 172
    .local v3, "zoomOutModifier":Lorg/anddev/andengine/entity/modifier/ScaleModifier;
    new-instance v2, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v6, 0x3fc00000    # 1.5f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v6, v7}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFF)V

    .line 173
    .local v2, "zoomInModifier":Lorg/anddev/andengine/entity/modifier/ScaleModifier;
    new-instance v4, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-array v6, v10, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v2, v6, v5

    invoke-direct {v4, v6}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iput-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mRadarFlashModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    .line 174
    new-instance v6, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mRace:I

    const/16 v7, 0x13

    iget-boolean v8, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    invoke-static {v4, v7, v8}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->getUnitTextureRegion(IIZ)Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v4

    check-cast v4, Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v6, v9, v9, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v6, p0, Lcom/droidhen/fortconquer/units/Unit;->mGhostSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 175
    new-instance v6, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mRace:I

    const/16 v7, 0x14

    iget-boolean v8, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    invoke-static {v4, v7, v8}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->getUnitTextureRegion(IIZ)Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v4

    check-cast v4, Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v6, v9, v9, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v6, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieEffectSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 176
    new-instance v6, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mRace:I

    const/16 v7, 0x15

    iget-boolean v8, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    invoke-static {v4, v7, v8}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->getUnitTextureRegion(IIZ)Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v4

    check-cast v4, Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v6, v9, v9, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v6, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieBloodSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 177
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mGhostSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v4, v11, v12}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setBlendFunction(II)V

    .line 178
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieEffectSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v4, v11, v12}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setBlendFunction(II)V

    .line 179
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieBloodSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v4, v11, v12}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setBlendFunction(II)V

    .line 182
    new-instance v6, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mRace:I

    const/16 v7, 0xe

    iget-boolean v8, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    invoke-static {v4, v7, v8}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->getUnitTextureRegion(IIZ)Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v4

    check-cast v4, Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v6, v9, v9, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v6, p0, Lcom/droidhen/fortconquer/units/Unit;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 183
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v4

    if-nez v4, :cond_2

    .line 184
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    const v6, 0x3f333333    # 0.7f

    invoke-virtual {v4, v6}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setScale(F)V

    .line 189
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChest:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v4, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 190
    .local v0, "chestSprite":Lorg/anddev/andengine/entity/sprite/BaseSprite;
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mLBFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v1, v4, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 193
    .local v1, "footSprite":Lorg/anddev/andengine/entity/sprite/BaseSprite;
    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidthScaled()F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Unit;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float v6, v4, v6

    iget-boolean v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    int-to-float v4, v4

    add-float/2addr v4, v6

    iput v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mOffsetX:F

    .line 194
    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v4

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeightScaled()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x42a00000    # 80.0f

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/droidhen/fortconquer/units/Unit;->sShadowOffsetY:[I

    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v6, v6, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    aget v5, v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mOffsetY:F

    .line 195
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v4

    if-ne v4, v10, :cond_1

    .line 197
    iget v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mOffsetX:F

    iget-boolean v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v4, :cond_5

    const/16 v4, -0x19

    :goto_2
    int-to-float v4, v4

    add-float/2addr v4, v5

    iput v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mOffsetX:F

    .line 198
    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mOffsetY:F

    const/high16 v5, 0x42200000    # 40.0f

    add-float/2addr v4, v5

    iput v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mOffsetY:F

    .line 200
    :cond_1
    return-void

    .line 185
    .end local v0    # "chestSprite":Lorg/anddev/andengine/entity/sprite/BaseSprite;
    .end local v1    # "footSprite":Lorg/anddev/andengine/entity/sprite/BaseSprite;
    :cond_2
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 186
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    const v6, 0x3f8ccccd    # 1.1f

    invoke-virtual {v4, v6}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setScaleX(F)V

    goto :goto_0

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v4

    if-ne v4, v10, :cond_0

    .line 188
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    const v6, 0x3fa66666    # 1.3f

    invoke-virtual {v4, v6}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setScaleX(F)V

    goto :goto_0

    .line 193
    .restart local v0    # "chestSprite":Lorg/anddev/andengine/entity/sprite/BaseSprite;
    .restart local v1    # "footSprite":Lorg/anddev/andengine/entity/sprite/BaseSprite;
    :cond_4
    const/4 v4, -0x1

    goto :goto_1

    .line 197
    :cond_5
    const/16 v4, 0x19

    goto :goto_2
.end method

.method public dead()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1109
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/UnitPartHead;->dead()V

    .line 1110
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/UnitPartChest;->dead()V

    .line 1111
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->dead()V

    .line 1112
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitDeadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 1113
    sget-object v2, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 1115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_3

    .line 1119
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/Entity;->unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z

    .line 1120
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/Entity;->unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z

    .line 1121
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/Entity;->unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z

    .line 1122
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/Entity;->unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z

    .line 1123
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/Entity;->unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z

    .line 1124
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/Entity;->unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z

    .line 1125
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/Entity;->unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z

    .line 1126
    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->sCurrentScene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-ne v2, v3, :cond_0

    sget v2, Lcom/droidhen/fortconquer/stages/StageData;->mTotalTimeSlot:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    .line 1127
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->playDieEffect()V

    .line 1129
    :cond_0
    iget-boolean v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-nez v2, :cond_1

    .line 1131
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->updateLastStageKill()V

    .line 1132
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getLastStageKill()I

    move-result v2

    const/16 v3, 0x3c

    if-gt v2, v3, :cond_1

    .line 1134
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getSellPrice()I

    move-result v2

    div-int/lit8 v1, v2, 0x64

    .line 1136
    .local v1, "thisCoin":I
    invoke-static {v1}, Lcom/droidhen/fortconquer/units/Player;->updateLastStageCoins(I)V

    .line 1140
    .end local v1    # "thisCoin":I
    :cond_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    instance-of v2, v2, Lcom/droidhen/fortconquer/units/Unit;

    if-eqz v2, :cond_2

    .line 1142
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    check-cast v2, Lcom/droidhen/fortconquer/units/Unit;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/Unit;->mHealthBgSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 1143
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    check-cast v2, Lcom/droidhen/fortconquer/units/Unit;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 1146
    :cond_2
    return-void

    .line 1117
    :cond_3
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;->reset()V

    .line 1115
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public deepCopy()Lcom/droidhen/fortconquer/units/Unit;
    .locals 8

    .prologue
    .line 413
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mCopyList:Ljava/util/ArrayList;

    if-nez v4, :cond_4

    .line 415
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mCopyList:Ljava/util/ArrayList;

    .line 432
    :cond_0
    new-instance v2, Lcom/droidhen/fortconquer/units/Unit;

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v4, v4, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    iget-object v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v5, v5, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    .line 433
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v6, v6, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    iget-boolean v7, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    .line 432
    invoke-direct {v2, v4, v5, v6, v7}, Lcom/droidhen/fortconquer/units/Unit;-><init>(IIIZ)V

    .line 436
    .local v2, "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackDistance:I

    iput v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mAttackDistance:I

    .line 437
    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    iput v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    .line 438
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getDurationMakeup()F

    move-result v4

    iput v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mDurationMakeup:F

    .line 439
    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealth:F

    iput v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mHealth:F

    .line 440
    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mInitHealth:F

    iput v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mInitHealth:F

    .line 441
    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mDps:F

    iput v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mDps:F

    .line 442
    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mDpa1:F

    iput v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mDpa1:F

    .line 443
    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mDpa2:F

    iput v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mDpa2:F

    .line 444
    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mCoolDown:F

    iput v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mCoolDown:F

    .line 445
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getQuality()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/droidhen/fortconquer/units/Unit;->setQuality(I)V

    .line 446
    iget-boolean v4, p0, Lcom/droidhen/fortconquer/units/Unit;->bElite:Z

    iput-boolean v4, v2, Lcom/droidhen/fortconquer/units/Unit;->bElite:Z

    .line 449
    iget-object v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    invoke-virtual {v4, v5}, Lcom/droidhen/fortconquer/units/UnitPartHead;->setSpeed(F)V

    .line 450
    iget-object v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    invoke-virtual {v4, v5}, Lcom/droidhen/fortconquer/units/UnitPartChest;->setSpeed(F)V

    .line 451
    iget-object v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    invoke-virtual {v4, v5}, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->setSpeed(F)V

    .line 453
    iget-object v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    invoke-virtual {v4, v5}, Lcom/droidhen/fortconquer/units/UnitPartHead;->deepCopy(Lcom/droidhen/fortconquer/units/UnitPart;)V

    .line 454
    iget-object v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    invoke-virtual {v4, v5}, Lcom/droidhen/fortconquer/units/UnitPartChest;->deepCopy(Lcom/droidhen/fortconquer/units/UnitPart;)V

    .line 455
    iget-object v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    invoke-virtual {v4, v5}, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->deepCopy(Lcom/droidhen/fortconquer/units/UnitPart;)V

    .line 457
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    if-eqz v4, :cond_1

    .line 458
    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->createMoveModifier()V

    .line 460
    :cond_1
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    if-eqz v4, :cond_2

    .line 462
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    array-length v4, v4

    new-array v4, v4, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iput-object v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 463
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    array-length v4, v4

    if-lt v1, v4, :cond_7

    .line 466
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->createDieModifiers()V

    .line 468
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mCopyList:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 469
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mCopyList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v0, v2

    .line 470
    .end local v2    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    :goto_1
    return-object v0

    .line 418
    :cond_4
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mCopyList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 419
    .local v3, "num":I
    const/4 v0, 0x0

    .line 420
    .local v0, "cand":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v3, :cond_0

    .line 422
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mCopyList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cand":Lcom/droidhen/fortconquer/units/Unit;
    check-cast v0, Lcom/droidhen/fortconquer/units/Unit;

    .line 423
    .restart local v0    # "cand":Lcom/droidhen/fortconquer/units/Unit;
    iget-object v4, v0, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v5, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieBloodModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v4}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->isFinished()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieBloodModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v4}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->getSecondsElapsed()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_6

    .line 426
    :cond_5
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Unit;->reset()V

    goto :goto_1

    .line 420
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 464
    .end local v0    # "cand":Lcom/droidhen/fortconquer/units/Unit;
    .end local v3    # "num":I
    .restart local v2    # "newUnit":Lcom/droidhen/fortconquer/units/Unit;
    :cond_7
    iget-object v4, v2, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    iget-object v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v5, v5, v1

    invoke-interface {v5}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v5

    aput-object v5, v4, v1

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public detachFromScene(Lcom/droidhen/fortconquer/scenes/SmartEntity;)V
    .locals 2
    .param p1, "pLayer"    # Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .prologue
    .line 852
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChild(Lorg/anddev/andengine/entity/IEntity;)Z

    .line 853
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChild(Lorg/anddev/andengine/entity/IEntity;)Z

    .line 854
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChild(Lorg/anddev/andengine/entity/IEntity;)Z

    .line 856
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentScene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-ne v0, v1, :cond_0

    .line 858
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEffectLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChild(Lorg/anddev/andengine/entity/IEntity;)Z

    .line 860
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mRadarPointSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->detachSelf()Z

    .line 862
    :cond_0
    return-void
.end method

.method public detachUnit()V
    .locals 2

    .prologue
    .line 866
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mDetachUnitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 867
    return-void
.end method

.method public flashRadarPoint()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1323
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mRadarPointSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 1324
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mRadarPointSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mRadarFlashModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;->reset()V

    .line 1327
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mRadarPointSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mRadarFlashModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 1330
    return-void
.end method

.method public getAttack()F
    .locals 1

    .prologue
    .line 1220
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDps:F

    return v0
.end method

.method public getAttackDistance()I
    .locals 1

    .prologue
    .line 1294
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackDistance:I

    return v0
.end method

.method public getAttackSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 827
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mRace:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_1:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 835
    :goto_0
    return-object v0

    .line 831
    :cond_1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/droidhen/fortconquer/units/UnitMotion;->unitPartExist(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 833
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    goto :goto_0

    .line 835
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBasicValue()I
    .locals 3

    .prologue
    .line 1272
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v0

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getAttack()F

    move-result v1

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getInitHealth()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/droidhen/fortconquer/units/Unit;->calcValue(IFF)I

    move-result v0

    return v0
.end method

.method public getCD()F
    .locals 1

    .prologue
    .line 1216
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mCoolDown:F

    return v0
.end method

.method public getCamp()I
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mHead:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v0

    return v0
.end method

.method public getChestRace()I
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v0, v0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    return v0
.end method

.method public getExplodeSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 839
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 847
    :cond_0
    :goto_0
    return-object v0

    .line 841
    :cond_1
    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mRace:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 842
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    goto :goto_0

    .line 843
    :cond_2
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v2, v2, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lcom/droidhen/fortconquer/units/UnitMotion;->unitPartExist(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    goto :goto_0
.end method

.method public getLimbRace()I
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v0, v0, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    return v0
.end method

.method protected getNewValue(FFFIIIZZI)F
    .locals 8
    .param p1, "value1"    # F
    .param p2, "value2"    # F
    .param p3, "value3"    # F
    .param p4, "race1"    # I
    .param p5, "race2"    # I
    .param p6, "race3"    # I
    .param p7, "evolve"    # Z
    .param p8, "crystal"    # Z
    .param p9, "prop"    # I

    .prologue
    .line 358
    cmpl-float v6, p1, p2

    if-lez v6, :cond_0

    cmpl-float v6, p1, p3

    if-lez v6, :cond_0

    .line 360
    move v1, p1

    .line 361
    .local v1, "max":F
    move v2, p5

    .line 362
    .local v2, "raceMin1":I
    move v3, p6

    .line 382
    .local v3, "raceMin2":I
    :goto_0
    if-nez p7, :cond_2

    .line 394
    .end local v1    # "max":F
    :goto_1
    return v1

    .line 366
    .end local v2    # "raceMin1":I
    .end local v3    # "raceMin2":I
    :cond_0
    cmpl-float v6, p2, p3

    if-lez v6, :cond_1

    .line 368
    move v1, p2

    .line 369
    .restart local v1    # "max":F
    move v2, p4

    .line 370
    .restart local v2    # "raceMin1":I
    move v3, p6

    .line 373
    .restart local v3    # "raceMin2":I
    goto :goto_0

    .line 375
    .end local v1    # "max":F
    .end local v2    # "raceMin1":I
    .end local v3    # "raceMin2":I
    :cond_1
    move v1, p3

    .line 376
    .restart local v1    # "max":F
    move v2, p4

    .line 377
    .restart local v2    # "raceMin1":I
    move v3, p5

    .restart local v3    # "raceMin2":I
    goto :goto_0

    .line 386
    :cond_2
    sget v6, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    invoke-static {v6}, Lcom/droidhen/fortconquer/stages/StageDataConstants;->getCureentIncrSpeed(I)F

    move-result v0

    .line 387
    .local v0, "currentIncreSpeed":F
    if-eqz p8, :cond_3

    .line 388
    const/high16 v6, 0x40800000    # 4.0f

    mul-float v5, v0, v6

    .local v5, "valueMin2":F
    move v4, v5

    .line 394
    .local v4, "valueMin1":F
    :goto_2
    sget-object v6, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    aget-object v6, v6, v2

    aget v6, v6, p9

    mul-float/2addr v6, v4

    add-float/2addr v6, v1

    .line 395
    sget-object v7, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    aget-object v7, v7, v3

    aget v7, v7, p9

    mul-float/2addr v7, v5

    .line 394
    add-float v1, v6, v7

    goto :goto_1

    .line 390
    .end local v4    # "valueMin1":F
    .end local v5    # "valueMin2":F
    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v6, v7}, Lorg/anddev/andengine/util/MathUtils;->random(FF)F

    move-result v6

    mul-float v4, v6, v0

    .line 391
    .restart local v4    # "valueMin1":F
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v6, v7}, Lorg/anddev/andengine/util/MathUtils;->random(FF)F

    move-result v6

    mul-float v5, v6, v0

    .restart local v5    # "valueMin2":F
    goto :goto_2
.end method

.method public getScaleRate()F
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mScale:F

    return v0
.end method

.method public getSelectedLink()I
    .locals 1

    .prologue
    .line 1306
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mSelectedLink:I

    return v0
.end method

.method public getSellPrice()I
    .locals 2

    .prologue
    .line 1280
    const/high16 v0, 0x437a0000    # 250.0f

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->calcLevelFromAttr()I

    move-result v1

    invoke-static {v1}, Lcom/droidhen/fortconquer/stages/StageDataConstants;->getCoinIncrSpeed(I)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 1224
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    return v0
.end method

.method public getStoneCost()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 1228
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getBasicValue()I

    move-result v0

    .line 1230
    .local v0, "attackPower":I
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1231
    int-to-float v2, v0

    const v3, 0x3fd9999a    # 1.7f

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 1235
    :cond_0
    const/16 v2, 0xfa

    if-ge v0, v2, :cond_3

    .line 1236
    const/high16 v1, 0x41200000    # 10.0f

    .line 1240
    .local v1, "stoneCost":F
    :goto_0
    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 1241
    const/high16 v1, 0x41f00000    # 30.0f

    .line 1243
    :cond_1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1244
    const v2, 0x3fe66666    # 1.8f

    mul-float/2addr v1, v2

    .line 1245
    sget v2, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v3, 0x3c

    if-le v2, v3, :cond_2

    .line 1246
    const v2, 0x3f866666    # 1.05f

    mul-float/2addr v1, v2

    .line 1248
    :cond_2
    float-to-int v2, v1

    return v2

    .line 1238
    .end local v1    # "stoneCost":F
    :cond_3
    const/high16 v2, 0x41200000    # 10.0f

    add-int/lit16 v3, v0, -0xfa

    int-to-float v3, v3

    const/high16 v4, 0x43340000    # 180.0f

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .restart local v1    # "stoneCost":F
    goto :goto_0
.end method

.method public getX()F
    .locals 6

    .prologue
    const/high16 v5, 0x41a00000    # 20.0f

    .line 593
    const/4 v2, 0x0

    .line 594
    .local v2, "localX":F
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChest:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v0

    .line 595
    .local v0, "chestSprite":Lorg/anddev/andengine/entity/sprite/BaseSprite;
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mHead:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v1

    .line 596
    .local v1, "headSprite":Lorg/anddev/andengine/entity/sprite/BaseSprite;
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    if-nez v3, :cond_1

    .line 597
    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v3

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidthScaled()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v2, v3, v4

    .line 613
    :cond_0
    :goto_0
    iget v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterX:F

    sub-float/2addr v3, v2

    const v4, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 614
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/Entity;->getX()F

    move-result v4

    .line 613
    add-float/2addr v3, v4

    return v3

    .line 598
    :cond_1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 599
    iget-boolean v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v3, :cond_2

    .line 600
    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v3

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidthScaled()F

    move-result v4

    add-float/2addr v3, v4

    sub-float v2, v3, v5

    goto :goto_0

    .line 602
    :cond_2
    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v3

    add-float v2, v3, v5

    .line 603
    goto :goto_0

    .line 604
    :cond_3
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 605
    iget-boolean v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v3, :cond_5

    .line 606
    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v2

    .line 610
    :goto_1
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    const/16 v4, 0x11

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    const/16 v4, 0x13

    if-ne v3, v4, :cond_0

    .line 611
    :cond_4
    iget-boolean v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v3, :cond_6

    const/16 v3, 0x14

    :goto_2
    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_0

    .line 608
    :cond_5
    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v3

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidthScaled()F

    move-result v4

    add-float v2, v3, v4

    goto :goto_1

    .line 611
    :cond_6
    const/16 v3, -0x14

    goto :goto_2
.end method

.method public getY()F
    .locals 3

    .prologue
    .line 620
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartHead;->mHead:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPartHead;->mHead:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeightScaled()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 621
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/Entity;->getY()F

    move-result v1

    .line 620
    add-float/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1346
    const/16 v0, 0x1f

    .line 1347
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1348
    .local v1, "result":I
    iget v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterX:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 1349
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterY:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 1350
    return v1
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 1333
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Unit;->bAlive:Z

    return v0
.end method

.method public isElite()Z
    .locals 1

    .prologue
    .line 1341
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Unit;->bElite:Z

    return v0
.end method

.method public isPropertyEq(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1354
    if-ne p0, p1, :cond_1

    .line 1379
    :cond_0
    :goto_0
    return v1

    .line 1356
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 1357
    goto :goto_0

    .line 1358
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 1359
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1360
    check-cast v0, Lcom/droidhen/fortconquer/units/Unit;

    .line 1361
    .local v0, "other":Lcom/droidhen/fortconquer/units/Unit;
    iget v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mDps:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/droidhen/fortconquer/units/Unit;->mDps:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1362
    goto :goto_0

    .line 1363
    :cond_4
    iget v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mInitHealth:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/droidhen/fortconquer/units/Unit;->mInitHealth:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 1364
    goto :goto_0

    .line 1365
    :cond_5
    iget v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 1366
    goto :goto_0

    .line 1367
    :cond_6
    iget v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mCoolDown:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/droidhen/fortconquer/units/Unit;->mCoolDown:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 1368
    goto :goto_0

    .line 1369
    :cond_7
    iget v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mCoolDown:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/droidhen/fortconquer/units/Unit;->mCoolDown:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 1370
    goto :goto_0

    .line 1371
    :cond_8
    iget v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mCoolDown:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/droidhen/fortconquer/units/Unit;->mCoolDown:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_9

    move v1, v2

    .line 1372
    goto :goto_0

    .line 1373
    :cond_9
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    iget-object v4, v0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v4, v4, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    if-eq v3, v4, :cond_a

    move v1, v2

    .line 1374
    goto :goto_0

    .line 1375
    :cond_a
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    iget-object v4, v0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v4, v4, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    if-eq v3, v4, :cond_b

    move v1, v2

    .line 1376
    goto/16 :goto_0

    .line 1377
    :cond_b
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    iget-object v4, v0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v4, v4, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 1378
    goto/16 :goto_0
.end method

.method public move()V
    .locals 8

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    const-wide v6, 0x4053f70a3d70a3d7L    # 79.86

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 872
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartHead;->move()V

    .line 873
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartChest;->move()V

    .line 874
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->move()V

    .line 875
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v0, v1, :cond_0

    .line 876
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;->reset()V

    .line 877
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/Entity;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 878
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;->reset()V

    .line 879
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/Entity;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 880
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;->reset()V

    .line 881
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/Entity;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 882
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;->reset()V

    .line 883
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mMoveByModifier:[Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/Entity;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 885
    :cond_0
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_WALK:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 886
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->resetHealthBarPos()V

    .line 887
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 888
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthBgSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 890
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 892
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mLeftWing:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0, v4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->stopAnimation(I)V

    .line 893
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mLeftWing:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mDurationMakeup:F

    float-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 894
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRightWing:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0, v4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->stopAnimation(I)V

    .line 895
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRightWing:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mDurationMakeup:F

    float-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 898
    :cond_1
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Unit;->bElite:Z

    if-eqz v0, :cond_2

    .line 899
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->flashRadarPoint()V

    .line 900
    :cond_2
    return-void
.end method

.method protected pause()V
    .locals 0

    .prologue
    .line 1184
    return-void
.end method

.method protected playDieEffect()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x43390000    # 185.0f

    const/high16 v3, 0x433b0000    # 187.0f

    .line 1149
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mGhostSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterX:F

    sub-float/2addr v1, v3

    iget v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterY:F

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setPosition(FF)V

    .line 1150
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieEffectSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterX:F

    const/high16 v2, 0x432a0000    # 170.0f

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterY:F

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setPosition(FF)V

    .line 1151
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieBloodSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterX:F

    sub-float/2addr v1, v3

    iget v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterY:F

    const/high16 v3, 0x43020000    # 130.0f

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setPosition(FF)V

    .line 1155
    :goto_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mGhostModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 1156
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mGhostSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mGhostModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 1157
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieEffectModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 1158
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieEffectSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieEffectModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 1159
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieBloodModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 1160
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieBloodSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieBloodModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 1162
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->sDieSoundCount:[I

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    aget v0, v0, v1

    if-ge v0, v5, :cond_0

    .line 1163
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentScene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-ne v0, v1, :cond_0

    .line 1164
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-ne v0, v1, :cond_0

    .line 1166
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 1167
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->sDieSoundCount:[I

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 1169
    :cond_0
    return-void

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieBloodSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterX:F

    sub-float/2addr v1, v3

    iget v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterY:F

    const/high16 v3, 0x43250000    # 165.0f

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setPosition(FF)V

    goto :goto_0
.end method

.method public rebuildAttributes(I)V
    .locals 6
    .param p1, "stage"    # I

    .prologue
    const/4 v4, 0x0

    .line 1252
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    invoke-virtual {v0, p1}, Lcom/droidhen/fortconquer/units/UnitPartHead;->setStageMatched(I)V

    .line 1253
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartHead;->initDefaultValues()V

    .line 1254
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    invoke-virtual {v0, p1}, Lcom/droidhen/fortconquer/units/UnitPartChest;->setStageMatched(I)V

    .line 1255
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartChest;->initDefaultValues()V

    .line 1256
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    invoke-virtual {v0, p1}, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->setStageMatched(I)V

    .line 1257
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->initDefaultValues()V

    .line 1258
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/droidhen/fortconquer/units/Unit;->setNewUnitProps(Lcom/droidhen/fortconquer/units/UnitPart;Lcom/droidhen/fortconquer/units/UnitPart;Lcom/droidhen/fortconquer/units/UnitPart;ZZ)V

    .line 1259
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1400
    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mInitHealth:F

    iput v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealth:F

    .line 1401
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getBaseWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setWidth(F)V

    .line 1402
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v1, :cond_0

    .line 1404
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    iput-object v6, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackHost:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 1405
    iput-object v6, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 1407
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackHost:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v1, :cond_1

    .line 1409
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackHost:Lcom/droidhen/fortconquer/units/UnitPart;

    iput-object v6, v1, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 1410
    iput-object v6, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackHost:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 1412
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v1, v4, v4}, Lorg/anddev/andengine/entity/Entity;->setPosition(FF)V

    .line 1413
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v1, v4, v4}, Lorg/anddev/andengine/entity/Entity;->setPosition(FF)V

    .line 1414
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v1, v4, v4}, Lorg/anddev/andengine/entity/Entity;->setPosition(FF)V

    .line 1415
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v1, v4, v4}, Lorg/anddev/andengine/entity/Entity;->setPosition(FF)V

    .line 1416
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v1, v3, v3, v3}, Lorg/anddev/andengine/entity/Entity;->setColor(FFF)V

    .line 1417
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v1, v3, v3, v3}, Lorg/anddev/andengine/entity/Entity;->setColor(FFF)V

    .line 1418
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v1, v3, v3, v3}, Lorg/anddev/andengine/entity/Entity;->setColor(FFF)V

    .line 1419
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v1, v3, v3, v3}, Lorg/anddev/andengine/entity/Entity;->setColor(FFF)V

    .line 1420
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mGhostSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1, v5}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setVisible(Z)V

    .line 1421
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mGhostModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 1422
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    .line 1423
    .local v0, "activity":Lcom/droidhen/fortconquer/GameActivity;
    if-eqz v0, :cond_2

    .line 1425
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->unregisterModifiersTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 1427
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieEffectSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1, v5}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setVisible(Z)V

    .line 1428
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieEffectModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 1429
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieBloodSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1, v5}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setVisible(Z)V

    .line 1430
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mDieBloodModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 1431
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mRadarPointSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScale(F)V

    .line 1432
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1, v5}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setVisible(Z)V

    .line 1433
    return-void
.end method

.method public resetCopylist()V
    .locals 4

    .prologue
    .line 1437
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mCopyList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1439
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mCopyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1440
    .local v2, "num":I
    const/4 v0, 0x0

    .line 1441
    .local v0, "cand":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 1447
    .end local v0    # "cand":Lcom/droidhen/fortconquer/units/Unit;
    .end local v1    # "i":I
    .end local v2    # "num":I
    :cond_0
    return-void

    .line 1443
    .restart local v0    # "cand":Lcom/droidhen/fortconquer/units/Unit;
    .restart local v1    # "i":I
    .restart local v2    # "num":I
    :cond_1
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mCopyList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cand":Lcom/droidhen/fortconquer/units/Unit;
    check-cast v0, Lcom/droidhen/fortconquer/units/Unit;

    .line 1444
    .restart local v0    # "cand":Lcom/droidhen/fortconquer/units/Unit;
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Unit;->dead()V

    .line 1441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected resetHealthBarPos()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 561
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChest:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChest:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getBaseWidth()F

    move-result v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getBaseWidth()F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    .line 562
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    .line 561
    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 564
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthBgSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    sub-float/2addr v1, v3

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 565
    return-void
.end method

.method protected resume()V
    .locals 0

    .prologue
    .line 1190
    return-void
.end method

.method public setAlive(Z)V
    .locals 0
    .param p1, "bAlive"    # Z

    .prologue
    .line 1337
    iput-boolean p1, p0, Lcom/droidhen/fortconquer/units/Unit;->bAlive:Z

    .line 1338
    return-void
.end method

.method protected setAttackTarget(Lcom/droidhen/fortconquer/units/UnitPart;I)V
    .locals 2
    .param p1, "pTarget"    # Lcom/droidhen/fortconquer/units/UnitPart;
    .param p2, "pDist"    # I

    .prologue
    const/4 v1, 0x0

    .line 1002
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    instance-of v0, v0, Lcom/droidhen/fortconquer/units/Unit;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    check-cast v0, Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mHealthBgSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 1005
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    check-cast v0, Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 1006
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    check-cast v0, Lcom/droidhen/fortconquer/units/Unit;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/droidhen/fortconquer/units/Unit;->mAttackHost:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 1009
    :cond_0
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 1010
    iput p2, p0, Lcom/droidhen/fortconquer/units/Unit;->mTargetDist:I

    .line 1011
    instance-of v0, p1, Lcom/droidhen/fortconquer/units/Fort;

    if-eqz v0, :cond_1

    .line 1012
    iput-object p0, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 1014
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    iput-object p0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackHost:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 1016
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPartHead;->setAttackTarget(Lcom/droidhen/fortconquer/units/UnitPart;I)V

    .line 1017
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPartChest;->setAttackTarget(Lcom/droidhen/fortconquer/units/UnitPart;I)V

    .line 1018
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->setAttackTarget(Lcom/droidhen/fortconquer/units/UnitPart;I)V

    .line 1019
    return-void
.end method

.method protected setHealthBarPos()V
    .locals 6

    .prologue
    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 542
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChest:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChest:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getBaseWidth()F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getBaseWidth()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 543
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChest:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v2

    sub-float/2addr v2, v5

    .line 542
    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 545
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v0

    if-nez v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartHead;->mHead:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v2

    sub-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 557
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthBgSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    sub-float/2addr v1, v4

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 558
    return-void

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v0, v0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    .line 551
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChest:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    goto :goto_0

    .line 553
    :cond_2
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChest:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    goto :goto_0
.end method

.method public setKeyValues(FFF)V
    .locals 6
    .param p1, "pHealth"    # F
    .param p2, "pDps"    # F
    .param p3, "pSpeed"    # F

    .prologue
    const/4 v5, 0x6

    const/high16 v1, 0x42340000    # 45.0f

    const/high16 v4, 0x41c00000    # 24.0f

    .line 400
    iput p1, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealth:F

    .line 401
    iput p1, p0, Lcom/droidhen/fortconquer/units/Unit;->mInitHealth:F

    .line 402
    iput p3, p0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    .line 403
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 404
    iput v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getDurationMakeup()F

    move-result v0

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDurationMakeup:F

    .line 406
    iput p2, p0, Lcom/droidhen/fortconquer/units/Unit;->mDps:F

    .line 407
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDps:F

    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mDurationMakeup:F

    mul-float/2addr v0, v1

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitMotion;->ATTACK_RATE_LEN_1:[F

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v2

    aget v1, v1, v2

    sget-object v2, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    aget-object v2, v2, v3

    aget v2, v2, v5

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDpa1:F

    .line 408
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDps:F

    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mDurationMakeup:F

    mul-float/2addr v0, v1

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitMotion;->ATTACK_RATE_LEN_2:[F

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v2

    aget v1, v1, v2

    sget-object v2, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    aget-object v2, v2, v3

    aget v2, v2, v5

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDpa2:F

    .line 409
    return-void
.end method

.method protected setNewUnitProps(Lcom/droidhen/fortconquer/units/UnitPart;Lcom/droidhen/fortconquer/units/UnitPart;Lcom/droidhen/fortconquer/units/UnitPart;ZZ)V
    .locals 12
    .param p1, "pUnitPartHead"    # Lcom/droidhen/fortconquer/units/UnitPart;
    .param p2, "pUnitPartChest"    # Lcom/droidhen/fortconquer/units/UnitPart;
    .param p3, "pUnitPartLimbs"    # Lcom/droidhen/fortconquer/units/UnitPart;
    .param p4, "bEvolve"    # Z
    .param p5, "useCrystal"    # Z

    .prologue
    .line 313
    iget v0, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackDistance:I

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackDistance:I

    .line 315
    iget v0, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    iget v1, p3, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    div-float/2addr v0, v1

    iget v1, p3, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    add-float/2addr v0, v1

    iget v1, p2, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    iget v2, p3, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    .line 316
    if-nez p4, :cond_0

    .line 317
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    .line 318
    :cond_0
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    const/high16 v1, 0x42340000    # 45.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 319
    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mSpeed:F

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getDurationMakeup()F

    move-result v0

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDurationMakeup:F

    .line 322
    iget v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mHealth:F

    iget v2, p2, Lcom/droidhen/fortconquer/units/UnitPart;->mHealth:F

    iget v3, p3, Lcom/droidhen/fortconquer/units/UnitPart;->mHealth:F

    .line 323
    iget v4, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    iget v5, p2, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    iget v6, p3, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/4 v9, 0x0

    move-object v0, p0

    move/from16 v7, p4

    move/from16 v8, p5

    .line 322
    invoke-virtual/range {v0 .. v9}, Lcom/droidhen/fortconquer/units/Unit;->getNewValue(FFFIIIZZI)F

    move-result v0

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealth:F

    .line 324
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealth:F

    const/16 v1, -0x14

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealth:F

    .line 325
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealth:F

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mInitHealth:F

    .line 327
    iget v1, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mDps:F

    iget v2, p2, Lcom/droidhen/fortconquer/units/UnitPart;->mDps:F

    iget v3, p3, Lcom/droidhen/fortconquer/units/UnitPart;->mDps:F

    .line 328
    iget v4, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    iget v5, p2, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    iget v6, p3, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    const/4 v9, 0x1

    move-object v0, p0

    move/from16 v7, p4

    move/from16 v8, p5

    .line 327
    invoke-virtual/range {v0 .. v9}, Lcom/droidhen/fortconquer/units/Unit;->getNewValue(FFFIIIZZI)F

    move-result v0

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDps:F

    .line 329
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDps:F

    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDps:F

    .line 331
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDps:F

    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mDurationMakeup:F

    mul-float/2addr v0, v1

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitMotion;->ATTACK_RATE_LEN_1:[F

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v2

    aget v1, v1, v2

    sget-object v2, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    iget v3, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    aget-object v2, v2, v3

    const/4 v3, 0x6

    aget v2, v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x41c00000    # 24.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDpa1:F

    .line 332
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDps:F

    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mDurationMakeup:F

    mul-float/2addr v0, v1

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitMotion;->ATTACK_RATE_LEN_2:[F

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v2

    aget v1, v1, v2

    sget-object v2, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    iget v3, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mRace:I

    aget-object v2, v2, v3

    const/4 v3, 0x6

    aget v2, v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x41c00000    # 24.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDpa2:F

    .line 333
    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mCoolDown:F

    .line 334
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 336
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mCoolDown:F

    .line 337
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v1, 0x3c

    if-le v0, v1, :cond_2

    .line 339
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDps:F

    const v1, 0x3f866666    # 1.05f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mDps:F

    .line 340
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealth:F

    const v1, 0x3f866666    # 1.05f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealth:F

    .line 341
    iget v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealth:F

    iput v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mInitHealth:F

    .line 344
    :cond_2
    if-eqz p4, :cond_3

    .line 345
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->calcLevelFromAttr()I

    move-result v10

    .line 346
    .local v10, "stage":I
    invoke-static {}, Lcom/droidhen/fortconquer/units/Card;->getCardStandardLevel()I

    move-result v11

    .line 347
    .local v11, "standardStage":I
    sub-int v0, v10, v11

    invoke-static {v0}, Lcom/droidhen/fortconquer/units/Card;->getQualifyViaLevelDelta(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/units/Unit;->setQuality(I)V

    .line 351
    .end local v10    # "stage":I
    .end local v11    # "standardStage":I
    :cond_3
    return-void
.end method

.method public setPos(IILcom/droidhen/fortconquer/units/Lane;)V
    .locals 8
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "pLane"    # Lcom/droidhen/fortconquer/units/Lane;

    .prologue
    const/high16 v7, 0x42200000    # 40.0f

    const/high16 v6, 0x42a00000    # 80.0f

    const/4 v5, 0x1

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v3, 0x41200000    # 10.0f

    .line 482
    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 483
    iput p1, p0, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    .line 484
    iput p2, p0, Lcom/droidhen/fortconquer/units/Unit;->mPosLane:I

    .line 485
    iput-object p3, p0, Lcom/droidhen/fortconquer/units/Unit;->mLane:Lcom/droidhen/fortconquer/units/Lane;

    .line 486
    invoke-virtual {p0, v5}, Lcom/droidhen/fortconquer/units/Unit;->setAlive(Z)V

    .line 487
    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mPosLane:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x3a

    add-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    .line 488
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRBFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeight()F

    move-result v2

    .line 487
    sub-float/2addr v1, v2

    .line 489
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRBFoot:Lcom/droidhen/fortconquer/units/UnitPart;

    iget v2, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mOffsetY:F

    .line 487
    sub-float v0, v1, v2

    .line 491
    .local v0, "pY":F
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->sUnitPosOffsetY:[I

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v2, v2, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    aget v1, v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 493
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v1, :cond_1

    .line 494
    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/droidhen/fortconquer/units/Unit;->setSpritePos(FF)V

    .line 506
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mbShadowSaved:Z

    if-eqz v1, :cond_6

    .line 508
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mInitX:F

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    .line 514
    :goto_1
    return-void

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-nez v1, :cond_2

    .line 496
    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    add-float/2addr v1, v7

    invoke-virtual {p0, v1, v0}, Lcom/droidhen/fortconquer/units/Unit;->setSpritePos(FF)V

    goto :goto_0

    .line 497
    :cond_2
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    if-ne v1, v5, :cond_3

    iget-boolean v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v1, :cond_3

    .line 498
    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    sub-float/2addr v1, v7

    invoke-virtual {p0, v1, v0}, Lcom/droidhen/fortconquer/units/Unit;->setSpritePos(FF)V

    goto :goto_0

    .line 499
    :cond_3
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    if-ne v1, v5, :cond_4

    iget-boolean v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-nez v1, :cond_4

    .line 500
    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    add-float/2addr v1, v6

    invoke-virtual {p0, v1, v0}, Lcom/droidhen/fortconquer/units/Unit;->setSpritePos(FF)V

    goto :goto_0

    .line 501
    :cond_4
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v1, :cond_5

    .line 502
    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    sub-float/2addr v1, v6

    invoke-virtual {p0, v1, v0}, Lcom/droidhen/fortconquer/units/Unit;->setSpritePos(FF)V

    goto :goto_0

    .line 503
    :cond_5
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-nez v1, :cond_0

    .line 504
    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    add-float/2addr v1, v6

    invoke-virtual {p0, v1, v0}, Lcom/droidhen/fortconquer/units/Unit;->setSpritePos(FF)V

    goto :goto_0

    .line 511
    :cond_6
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v1

    iput v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mInitX:F

    .line 512
    iput-boolean v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mbShadowSaved:Z

    goto :goto_1
.end method

.method protected setScaleAlive(F)V
    .locals 1
    .param p1, "pScale"    # F

    .prologue
    .line 577
    iput p1, p0, Lcom/droidhen/fortconquer/units/Unit;->mScale:F

    .line 578
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/Entity;->setScale(F)V

    .line 579
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/Entity;->setScale(F)V

    .line 580
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/Entity;->setScale(F)V

    .line 581
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/Entity;->setScale(F)V

    .line 582
    return-void
.end method

.method public setScaleRate(F)V
    .locals 3
    .param p1, "pScale"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 569
    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 570
    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p1, v0

    .line 571
    :cond_0
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v0, v0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 572
    const v0, 0x3f59999a    # 0.85f

    mul-float/2addr p1, v0

    .line 573
    :cond_1
    invoke-virtual {p0, p1}, Lcom/droidhen/fortconquer/units/Unit;->setScaleAlive(F)V

    .line 574
    return-void
.end method

.method public setSelectedLink(I)V
    .locals 0
    .param p1, "pSelectedLink"    # I

    .prologue
    .line 1310
    iput p1, p0, Lcom/droidhen/fortconquer/units/Unit;->mSelectedLink:I

    .line 1311
    return-void
.end method

.method public setSpritePos(FF)V
    .locals 4
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 523
    iput p1, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterX:F

    .line 524
    iput p2, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterY:F

    .line 525
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/entity/Entity;->setScaleCenter(FF)V

    .line 526
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/entity/Entity;->setScaleCenter(FF)V

    .line 527
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/entity/Entity;->setScaleCenter(FF)V

    .line 528
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/entity/Entity;->setScaleCenter(FF)V

    .line 529
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPartHead;->setSpritePos(FF)V

    .line 530
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPartChest;->setSpritePos(FF)V

    .line 531
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->setSpritePos(FF)V

    .line 532
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentScene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/droidhen/fortconquer/units/Unit;->bAlive:Z

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChest:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/UnitPart;->getX()F

    move-result v1

    iget v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mOffsetX:F

    add-float/2addr v1, v2

    .line 535
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mChest:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/UnitPart;->getY()F

    move-result v2

    iget v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mOffsetY:F

    add-float/2addr v2, v3

    .line 534
    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    .line 537
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->setHealthBarPos()V

    .line 539
    :cond_0
    return-void
.end method

.method protected showHurtEffect()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1062
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v0, v1, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->updateBloodEffectPosition()V

    .line 1066
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackHost:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackHost:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-eq v0, v1, :cond_2

    .line 1068
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 1069
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHealthBgSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 1072
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    if-eqz v0, :cond_3

    .line 1074
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0, v2, v2, v2}, Lorg/anddev/andengine/entity/Entity;->setColor(FFF)V

    .line 1075
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v0, v0, v4

    invoke-interface {v0}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 1076
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/Entity;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 1078
    :cond_3
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    if-eqz v0, :cond_4

    .line 1080
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0, v2, v2, v2}, Lorg/anddev/andengine/entity/Entity;->setColor(FFF)V

    .line 1081
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 1082
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/Entity;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 1084
    :cond_4
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0, v2, v2, v2}, Lorg/anddev/andengine/entity/Entity;->setColor(FFF)V

    .line 1087
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v0, v0, v5

    invoke-interface {v0}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 1088
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mHurtModifier:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/Entity;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0
.end method

.method public stand()V
    .locals 2

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartHead;->stand()V

    .line 1096
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartChest;->stand()V

    .line 1097
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->stand()V

    .line 1098
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_WALK:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v0, v1, :cond_1

    .line 1099
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_ATTACK:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v0, v1, :cond_2

    .line 1101
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    goto :goto_0

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_CELE:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v0, v1, :cond_0

    .line 1103
    sget-object v0, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    goto :goto_0
.end method

.method public update()V
    .locals 4

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mTail:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mTail:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v0

    instance-of v0, v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-eqz v0, :cond_0

    .line 1196
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_PAUSE:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-ne v0, v1, :cond_1

    .line 1197
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mTail:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mTail:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->stopAnimation()V

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-ne v0, v1, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mTail:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mTail:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPart;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    const/high16 v1, 0x42a00000    # 80.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v2, v2, Lcom/droidhen/fortconquer/units/UnitPartChest;->mDurationMakeup:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    goto :goto_0
.end method

.method protected updateAttackEffectPosition()V
    .locals 12

    .prologue
    const v11, 0x3ecccccc    # 0.39999998f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/high16 v7, 0x40000000    # 2.0f

    .line 927
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    if-eq v3, v10, :cond_0

    iget v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mRace:I

    if-ne v3, v8, :cond_1

    .line 929
    :cond_0
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_1:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterX:F

    iget v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterY:F

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->setSpritePos(FF)V

    .line 931
    :cond_1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    if-eq v3, v10, :cond_3

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v4, v4, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    const/16 v5, 0x10

    invoke-static {v3, v4, v5}, Lcom/droidhen/fortconquer/units/UnitMotion;->unitPartExist(III)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 933
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterX:F

    iget v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterY:F

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->setSpritePos(FF)V

    .line 935
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v3

    if-ne v3, v9, :cond_2

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    if-eq v3, v8, :cond_2

    .line 936
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v4

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v4

    .line 937
    iget-object v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/UnitPart;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v6, v6, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v6

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 936
    invoke-virtual {v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    .line 938
    :cond_2
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/UnitPart;->getX()F

    move-result v4

    iput v4, v3, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mTargetX:F

    .line 939
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_2:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    iput-object v4, v3, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 941
    :cond_3
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    if-eq v3, v10, :cond_5

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v4, v4, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    const/16 v5, 0x11

    invoke-static {v3, v4, v5}, Lcom/droidhen/fortconquer/units/UnitMotion;->unitPartExist(III)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 943
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v3, v4}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 944
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterX:F

    iget v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterY:F

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->setSpritePos(FF)V

    .line 945
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v2

    .line 948
    .local v2, "width":F
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/UnitPart;->getX()F

    move-result v1

    .line 949
    .local v1, "targetX":F
    const/4 v0, 0x0

    .line 950
    .local v0, "targetDistX":F
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    instance-of v3, v3, Lcom/droidhen/fortconquer/units/Fort;

    if-eqz v3, :cond_7

    .line 951
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/UnitPart;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getX()F

    move-result v4

    sub-float v4, v3, v4

    iget-boolean v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v3, :cond_6

    move v3, v2

    :goto_0
    add-float v0, v4, v3

    .line 977
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v3

    if-ne v3, v9, :cond_b

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    if-nez v3, :cond_b

    .line 978
    iget v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mRace:I

    if-eq v3, v9, :cond_b

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    if-eq v3, v8, :cond_b

    .line 979
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v3

    .line 980
    div-float v4, v2, v7

    sub-float v4, v1, v4

    iget-object v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/Entity;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    .line 981
    mul-float v5, v0, v11

    .line 980
    add-float/2addr v4, v5

    .line 982
    iget-object v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/UnitPart;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v6, v6, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v6

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 979
    invoke-virtual {v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    .line 991
    .end local v0    # "targetDistX":F
    .end local v1    # "targetX":F
    .end local v2    # "width":F
    :cond_5
    :goto_2
    return-void

    .line 951
    .restart local v0    # "targetDistX":F
    .restart local v1    # "targetX":F
    .restart local v2    # "width":F
    :cond_6
    neg-float v3, v2

    goto :goto_0

    .line 954
    :cond_7
    iget-boolean v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v3, :cond_9

    .line 956
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mTargetDist:I

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    div-float v4, v2, v7

    add-float v0, v3, v4

    .line 957
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    if-eqz v3, :cond_8

    .line 958
    const/high16 v3, 0x42200000    # 40.0f

    add-float/2addr v0, v3

    .line 959
    :cond_8
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v4, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_WALK:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v3, v4, :cond_4

    .line 961
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v4, v4, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackDelay:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 962
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v4, v4, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackDelay:F

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    .line 964
    goto/16 :goto_1

    .line 967
    :cond_9
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mTargetDist:I

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    div-float v4, v2, v7

    sub-float v0, v3, v4

    .line 968
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v3

    if-eqz v3, :cond_a

    .line 969
    const/high16 v3, 0x42200000    # 40.0f

    sub-float/2addr v0, v3

    .line 970
    :cond_a
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v4, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_WALK:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v3, v4, :cond_4

    .line 972
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v4, v4, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackDelay:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 973
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPart;->mSpeed:F

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v4, v4, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v4, v4, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackDelay:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    goto/16 :goto_1

    .line 983
    :cond_b
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    if-eq v3, v8, :cond_5

    .line 985
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v3, v3, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v3

    .line 986
    div-float v4, v2, v7

    sub-float v4, v1, v4

    iget-object v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/Entity;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    .line 987
    mul-float v5, v0, v11

    .line 986
    add-float/2addr v4, v5

    .line 988
    iget-object v5, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget-object v5, v5, Lcom/droidhen/fortconquer/units/UnitPartHead;->mAttackEffect_2_3:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;

    move-result-object v5

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v5

    .line 985
    invoke-virtual {v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    goto/16 :goto_2
.end method

.method protected updateBloodEffectPosition()V
    .locals 3

    .prologue
    .line 995
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartChest;->mBloodEffect:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v1, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterX:F

    iget v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mChestCenterY:F

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->setSpritePos(FF)V

    .line 996
    return-void
.end method

.method public updateRadarPosition()V
    .locals 4

    .prologue
    .line 1315
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit;->mRadarPointSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x438c0000    # 280.0f

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Unit;->getX()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/droidhen/fortconquer/units/Unit;->mPosLane:I

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 1319
    :cond_0
    return-void
.end method
