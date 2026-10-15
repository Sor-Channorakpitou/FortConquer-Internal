.class public Lcom/droidhen/fortconquer/units/Lane;
.super Ljava/lang/Object;
.source "Lane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/units/Lane$MINERAL;
    }
.end annotation


# static fields
.field public static final sCellHeight:I = 0x3a

.field public static final sCellWidth:F = 10.0f

.field public static final sCellXStart:I = 0x64

.field public static final sCellYStart:I = 0x64

.field protected static final sFireRoadLen:I = 0x1a

.field public static final sFireballNum:I = 0x4

.field public static final sLaneLength:I = 0x64

.field public static final sLaneNumber:I = 0x5


# instance fields
.field public bFireballUsed:Z

.field mAllUnits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public mBipedLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field public mBipedLayerRight:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field protected mCurrentFireball:I

.field protected mDetachFBRunnable:Ljava/lang/Runnable;

.field public mFireballCircleSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mFireballDelayModifier:[Lorg/anddev/andengine/entity/modifier/DelayModifier;

.field public mFireballExplodeSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field public mFireballSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field protected mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

.field protected mLaneIndex:I

.field mMinerals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/droidhen/fortconquer/units/Mineral;",
            ">;"
        }
    .end annotation
.end field

.field mMineralsForRemove:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/droidhen/fortconquer/units/Mineral;",
            ">;"
        }
    .end annotation
.end field

.field public mQuadLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field public mQuadLayerRight:Lcom/droidhen/fortconquer/scenes/SmartEntity;


# direct methods
.method public constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;I)V
    .locals 9
    .param p1, "pGameScene"    # Lcom/droidhen/fortconquer/scenes/GameScene;
    .param p2, "index"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v7, p0, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    .line 71
    new-instance v1, Lcom/droidhen/fortconquer/units/Lane$1;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/units/Lane$1;-><init>(Lcom/droidhen/fortconquer/units/Lane;)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mDetachFBRunnable:Ljava/lang/Runnable;

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mAllUnits:Ljava/util/ArrayList;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mMinerals:Ljava/util/List;

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mMineralsForRemove:Ljava/util/List;

    .line 112
    iput p2, p0, Lcom/droidhen/fortconquer/units/Lane;->mLaneIndex:I

    .line 113
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 114
    new-instance v1, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v1, v2, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mBipedLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 115
    new-instance v1, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v1, v2, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mQuadLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 116
    new-instance v1, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v1, v2, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mBipedLayerRight:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 117
    new-instance v1, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v1, v2, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mQuadLayerRight:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 126
    iput-boolean v8, p0, Lcom/droidhen/fortconquer/units/Lane;->bFireballUsed:Z

    .line 127
    new-array v1, v6, [Lorg/anddev/andengine/entity/sprite/Sprite;

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballCircleSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 128
    new-array v1, v6, [Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 129
    new-array v1, v6, [Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballExplodeSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 130
    new-array v1, v6, [Lorg/anddev/andengine/entity/modifier/DelayModifier;

    iput-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballDelayModifier:[Lorg/anddev/andengine/entity/modifier/DelayModifier;

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 172
    return-void

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballCircleSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v3, Lorg/anddev/andengine/entity/sprite/Sprite;

    mul-int/lit8 v1, v0, 0x64

    add-int/lit8 v1, v1, 0x31

    int-to-float v4, v1

    iget v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mLaneIndex:I

    mul-int/lit8 v1, v1, 0x3a

    add-int/lit8 v1, v1, 0x61

    int-to-float v5, v1

    const/16 v1, 0x2b

    invoke-static {v7, v1, v8}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->getUnitTextureRegion(IIZ)Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v3, v4, v5, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aput-object v3, v2, v0

    .line 134
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    new-instance v3, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/high16 v1, -0x3db80000    # -50.0f

    mul-int/lit8 v4, v0, 0x64

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mLaneIndex:I

    mul-int/lit8 v1, v1, 0x3a

    add-int/lit8 v1, v1, -0x46

    int-to-float v5, v1

    const/16 v1, 0x28

    invoke-static {v7, v1, v8}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->getUnitTextureRegion(IIZ)Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v1

    check-cast v1, Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v3, v4, v5, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    aput-object v3, v2, v0

    .line 135
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v1, v1, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setScale(F)V

    .line 136
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballExplodeSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    new-instance v3, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/high16 v1, 0x42200000    # 40.0f

    mul-int/lit8 v4, v0, 0x64

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mLaneIndex:I

    mul-int/lit8 v1, v1, 0x3a

    add-int/lit8 v1, v1, 0x1e

    int-to-float v5, v1

    const/16 v1, 0x29

    invoke-static {v7, v1, v8}, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->getUnitTextureRegion(IIZ)Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v1

    check-cast v1, Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v3, v4, v5, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    aput-object v3, v2, v0

    .line 137
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballDelayModifier:[Lorg/anddev/andengine/entity/modifier/DelayModifier;

    new-instance v2, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    const/high16 v3, 0x3ec00000    # 0.375f

    new-instance v4, Lcom/droidhen/fortconquer/units/Lane$2;

    invoke-direct {v4, p0}, Lcom/droidhen/fortconquer/units/Lane$2;-><init>(Lcom/droidhen/fortconquer/units/Lane;)V

    invoke-direct {v2, v3, v4}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    aput-object v2, v1, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkMineralExpire()V
    .locals 4

    .prologue
    .line 283
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Lane;->mMinerals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "k":I
    :goto_0
    if-gez v0, :cond_0

    .line 294
    return-void

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Lane;->mMinerals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/Mineral;

    .line 285
    .local v1, "mineral":Lcom/droidhen/fortconquer/units/Mineral;
    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Mineral;->isExpire()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Mineral;->getSprite()Lorg/anddev/andengine/entity/sprite/Sprite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->detachSelf()Z

    .line 287
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Mineral;->getSprite()Lorg/anddev/andengine/entity/sprite/Sprite;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/engine/camera/hud/HUD;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 288
    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Mineral;->getX()F

    move-result v2

    const/high16 v3, 0x43c80000    # 400.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Mineral;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/units/Mineral;->setPosition(FF)V

    .line 289
    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Mineral;->animateAdd()V

    .line 290
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Lane;->mMineralsForRemove:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Lane;->mMinerals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 283
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private onUnitDead(Lcom/droidhen/fortconquer/units/UnitPart;)V
    .locals 4
    .param p1, "unit"    # Lcom/droidhen/fortconquer/units/UnitPart;

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/UnitPart;->isEnemy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/UnitPart;->getCamp()I

    move-result v1

    invoke-static {v1}, Lcom/droidhen/fortconquer/units/Mineral;->getMineral(I)Lcom/droidhen/fortconquer/units/Mineral;

    move-result-object v0

    .line 299
    .local v0, "mineral":Lcom/droidhen/fortconquer/units/Mineral;
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mMinerals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/UnitPart;->getX()F

    move-result v1

    iget v2, p0, Lcom/droidhen/fortconquer/units/Lane;->mLaneIndex:I

    mul-int/lit8 v2, v2, 0x3a

    add-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x1d

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Mineral;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/units/Mineral;->setPosition(FF)V

    .line 301
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineralLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/units/Mineral;->attachTo(Lorg/anddev/andengine/entity/IEntity;)V

    .line 303
    .end local v0    # "mineral":Lcom/droidhen/fortconquer/units/Mineral;
    :cond_0
    return-void
.end method

.method private removeMineral()V
    .locals 4

    .prologue
    .line 269
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Lane;->mMineralsForRemove:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    :cond_0
    return-void

    .line 272
    :cond_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Lane;->mMineralsForRemove:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "k":I
    :goto_0
    if-ltz v0, :cond_0

    .line 273
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Lane;->mMineralsForRemove:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/Mineral;

    .line 274
    .local v1, "mineral":Lcom/droidhen/fortconquer/units/Mineral;
    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Mineral;->getX()F

    move-result v2

    const/high16 v3, 0x43020000    # 130.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Mineral;->getY()F

    move-result v2

    const/high16 v3, 0x43b80000    # 368.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 275
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v2

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Mineral;->getAmount()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/units/Player;->updateResource(F)V

    .line 276
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Lane;->mMineralsForRemove:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/droidhen/fortconquer/units/Mineral;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Mineral;->release()V

    .line 277
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Lane;->mMineralsForRemove:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 272
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addUnit(Lcom/droidhen/fortconquer/units/Unit;I)Z
    .locals 1
    .param p1, "unit"    # Lcom/droidhen/fortconquer/units/Unit;
    .param p2, "position"    # I

    .prologue
    .line 176
    monitor-enter p0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    if-gez p2, :cond_1

    .line 177
    :cond_0
    const/4 v0, 0x0

    .line 182
    :goto_0
    monitor-exit p0

    return v0

    .line 179
    :cond_1
    :try_start_0
    iput p2, p1, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    .line 180
    iget v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mLaneIndex:I

    iput v0, p1, Lcom/droidhen/fortconquer/units/Unit;->mPosLane:I

    .line 181
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mAllUnits:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canAttack(Lcom/droidhen/fortconquer/units/UnitPart;)I
    .locals 9
    .param p1, "unit"    # Lcom/droidhen/fortconquer/units/UnitPart;

    .prologue
    .line 308
    monitor-enter p0

    const/4 v5, 0x0

    .line 309
    .local v5, "num":I
    const/4 v2, 0x0

    .line 310
    .local v2, "enemy":Lcom/droidhen/fortconquer/units/UnitPart;
    const/4 v6, 0x0

    .line 311
    .local v6, "target":Lcom/droidhen/fortconquer/units/UnitPart;
    const/16 v3, 0x1e

    .line 314
    .local v3, "finalDistance":I
    :try_start_0
    iget-object v7, p0, Lcom/droidhen/fortconquer/units/Lane;->mAllUnits:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 315
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-le v4, v5, :cond_0

    .line 332
    if-eqz v6, :cond_5

    iget-object v7, v6, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v8, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-eq v7, v8, :cond_5

    .line 334
    move-object v0, p1

    check-cast v0, Lcom/droidhen/fortconquer/units/Unit;

    move-object v7, v0

    invoke-virtual {v7, v6, v3}, Lcom/droidhen/fortconquer/units/Unit;->setAttackTarget(Lcom/droidhen/fortconquer/units/UnitPart;I)V

    .line 335
    iget v7, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mTargetDist:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :goto_1
    monitor-exit p0

    return v7

    .line 317
    :cond_0
    if-ne v4, v5, :cond_4

    .line 318
    :try_start_1
    iget-boolean v7, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v7, v7, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Enemy;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v2

    .line 321
    :goto_2
    iget v7, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mPosCol:I

    iget v8, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mPosCol:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 322
    .local v1, "distance":I
    iget-boolean v7, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    iget-boolean v8, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    if-eq v7, v8, :cond_2

    .line 323
    iget-object v7, v2, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v8, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-eq v7, v8, :cond_2

    .line 324
    iget v7, p1, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackDistance:I

    if-lt v7, v1, :cond_2

    .line 325
    if-gt v3, v1, :cond_1

    if-nez v6, :cond_2

    .line 327
    :cond_1
    move-object v6, v2

    .line 328
    move v3, v1

    .line 315
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 318
    .end local v1    # "distance":I
    :cond_3
    iget-object v7, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v7, v7, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v7, v7, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Player;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v2

    goto :goto_2

    .line 320
    :cond_4
    iget-object v7, p0, Lcom/droidhen/fortconquer/units/Lane;->mAllUnits:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/droidhen/fortconquer/units/UnitPart;

    move-object v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 339
    :cond_5
    const/4 v7, -0x1

    goto :goto_1

    .line 308
    .end local v4    # "j":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized clearUnits()V
    .locals 1

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mAllUnits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fireballKillUnits()V
    .locals 7

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mAllUnits:Ljava/util/ArrayList;

    .line 89
    .local v1, "laneUnits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Unit;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "j":I
    :goto_0
    if-gez v0, :cond_1

    .line 101
    .end local v0    # "j":I
    :cond_0
    monitor-exit p0

    return-void

    .line 92
    .restart local v0    # "j":I
    :cond_1
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/droidhen/fortconquer/units/Unit;

    .line 93
    .local v2, "unit":Lcom/droidhen/fortconquer/units/Unit;
    iget-boolean v3, v2, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-nez v3, :cond_2

    .line 94
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v4, p0, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v5, p0, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x41200000    # 10.0f

    iget v6, v2, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 96
    invoke-direct {p0, v2}, Lcom/droidhen/fortconquer/units/Lane;->onUnitDead(Lcom/droidhen/fortconquer/units/UnitPart;)V

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->dead()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 88
    .end local v0    # "j":I
    .end local v1    # "laneUnits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Unit;>;"
    .end local v2    # "unit":Lcom/droidhen/fortconquer/units/Unit;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getFortEnemy()Lcom/droidhen/fortconquer/units/Unit;
    .locals 6

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Lane;->mAllUnits:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 418
    .local v2, "num":I
    const/4 v3, 0x0

    .line 419
    .local v3, "unit":Lcom/droidhen/fortconquer/units/Unit;
    const/4 v0, 0x0

    .line 420
    .local v0, "fortEnemy":Lcom/droidhen/fortconquer/units/Unit;
    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_0
    if-gtz v1, :cond_0

    .line 428
    monitor-exit p0

    return-object v0

    .line 422
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Lane;->mAllUnits:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "unit":Lcom/droidhen/fortconquer/units/Unit;
    check-cast v3, Lcom/droidhen/fortconquer/units/Unit;

    .line 423
    .restart local v3    # "unit":Lcom/droidhen/fortconquer/units/Unit;
    iget-boolean v4, v3, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    const/16 v5, 0x3c

    if-le v4, v5, :cond_2

    if-eqz v0, :cond_1

    iget v4, v3, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    iget v5, v0, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v4, v5, :cond_2

    .line 425
    :cond_1
    move-object v0, v3

    .line 420
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 417
    .end local v0    # "fortEnemy":Lcom/droidhen/fortconquer/units/Unit;
    .end local v1    # "j":I
    .end local v2    # "num":I
    .end local v3    # "unit":Lcom/droidhen/fortconquer/units/Unit;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized handleDragonAttackDone(Lcom/droidhen/fortconquer/units/Unit;F)V
    .locals 9
    .param p1, "dragon"    # Lcom/droidhen/fortconquer/units/Unit;
    .param p2, "finalDamage"    # F

    .prologue
    .line 345
    monitor-enter p0

    const/4 v6, 0x0

    .line 346
    .local v6, "num":I
    const/4 v4, 0x0

    .line 347
    .local v4, "enemy":Lcom/droidhen/fortconquer/units/UnitPart;
    const/4 v1, 0x0

    .line 348
    .local v1, "attackNum":I
    :try_start_0
    sget v7, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit8 v7, v7, -0x1

    div-int/lit8 v7, v7, 0x46

    add-int/lit8 v3, v7, 0x3

    .line 349
    .local v3, "dragonTargetNum":I
    const/4 v7, 0x6

    if-le v3, v7, :cond_0

    const/4 v3, 0x6

    .line 351
    :cond_0
    iget-boolean v7, p1, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v7, :cond_2

    iget-object v7, p1, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v8, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v8, v8, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    invoke-virtual {v8}, Lcom/droidhen/fortconquer/units/Enemy;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v8

    if-ne v7, v8, :cond_2

    .line 354
    iget-object v7, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v7, v7, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Enemy;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/droidhen/fortconquer/units/Fort;->beAttacked(F)F

    .line 355
    iget-object v7, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v7, v7, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Enemy;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v7

    iput-object p1, v7, Lcom/droidhen/fortconquer/units/Fort;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 358
    :cond_2
    :try_start_1
    iget-boolean v7, p1, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-nez v7, :cond_3

    iget-object v7, p1, Lcom/droidhen/fortconquer/units/Unit;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v8, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v8, v8, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v8, v8, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v8}, Lcom/droidhen/fortconquer/units/Player;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v8

    if-ne v7, v8, :cond_3

    .line 360
    iget-object v7, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v7, v7, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v7, v7, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Player;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/droidhen/fortconquer/units/Fort;->beAttacked(F)F

    .line 361
    iget-object v7, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v7, v7, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v7, v7, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Player;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v7

    iput-object p1, v7, Lcom/droidhen/fortconquer/units/Fort;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 345
    .end local v3    # "dragonTargetNum":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 365
    .restart local v3    # "dragonTargetNum":I
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/droidhen/fortconquer/units/Lane;->mAllUnits:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 366
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v6, :cond_1

    .line 368
    iget-object v7, p0, Lcom/droidhen/fortconquer/units/Lane;->mAllUnits:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/droidhen/fortconquer/units/UnitPart;

    move-object v4, v0

    .line 369
    iget v7, p1, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    iget v8, v4, Lcom/droidhen/fortconquer/units/UnitPart;->mPosCol:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 370
    .local v2, "distance":I
    iget-boolean v7, v4, Lcom/droidhen/fortconquer/units/UnitPart;->mbLeftSide:Z

    iget-boolean v8, p1, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eq v7, v8, :cond_4

    .line 371
    iget-object v7, v4, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v8, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-eq v7, v8, :cond_4

    .line 372
    iget v7, p1, Lcom/droidhen/fortconquer/units/Unit;->mAttackDistance:I

    if-lt v7, v2, :cond_4

    .line 374
    iput-object p1, v4, Lcom/droidhen/fortconquer/units/UnitPart;->mAttackHost:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 375
    invoke-virtual {v4, p2}, Lcom/droidhen/fortconquer/units/UnitPart;->beAttacked(F)F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 376
    add-int/lit8 v1, v1, 0x1

    .line 377
    if-ge v1, v3, :cond_1

    .line 366
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public declared-synchronized hasUnit()Z
    .locals 1

    .prologue
    .line 432
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mAllUnits:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mAllUnits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onUpdata()V
    .locals 9

    .prologue
    .line 192
    monitor-enter p0

    const/4 v3, 0x0

    .line 193
    .local v3, "num":I
    const/4 v5, 0x0

    .line 194
    .local v5, "unit":Lcom/droidhen/fortconquer/units/Unit;
    :try_start_0
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/Lane;->checkMineralExpire()V

    .line 195
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/Lane;->removeMineral()V

    .line 198
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Lane;->mAllUnits:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 199
    add-int/lit8 v1, v3, -0x1

    .local v1, "j":I
    :goto_0
    if-gez v1, :cond_0

    .line 254
    monitor-exit p0

    return-void

    .line 201
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Lane;->mAllUnits:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/droidhen/fortconquer/units/Unit;

    move-object v5, v0

    .line 202
    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Unit;->update()V

    .line 204
    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Unit;->getX()F

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    sub-float/2addr v6, v7

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v6, v7

    float-to-int v2, v6

    .line 205
    .local v2, "newPos":I
    if-gez v2, :cond_1

    .line 206
    const/4 v2, 0x0

    .line 207
    :cond_1
    const/16 v6, 0x64

    if-lt v2, v6, :cond_2

    .line 208
    const/16 v2, 0x63

    .line 209
    :cond_2
    iput v2, v5, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    .line 212
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v6, v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/units/Enemy;->lost()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-boolean v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-nez v6, :cond_9

    iget-object v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-eq v6, v7, :cond_9

    .line 214
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Lane;->mAllUnits:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Unit;->dead()V

    .line 224
    :cond_3
    :goto_1
    iget-object v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-eq v6, v7, :cond_4

    iget-object v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v6, v7, :cond_a

    .line 225
    :cond_4
    sget-object v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v7, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-ne v6, v7, :cond_a

    invoke-virtual {p0, v5}, Lcom/droidhen/fortconquer/units/Lane;->canAttack(Lcom/droidhen/fortconquer/units/UnitPart;)I

    move-result v6

    if-ltz v6, :cond_a

    .line 226
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/units/Unit;->attack(I)V

    .line 237
    :cond_5
    :goto_2
    iget v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mHealth:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    sget-object v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v7, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-ne v6, v7, :cond_6

    .line 238
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Lane;->mAllUnits:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Unit;->dead()V

    .line 240
    invoke-direct {p0, v5}, Lcom/droidhen/fortconquer/units/Lane;->onUnitDead(Lcom/droidhen/fortconquer/units/UnitPart;)V

    .line 241
    instance-of v6, v5, Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v6, :cond_6

    iget-boolean v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v6, :cond_6

    .line 242
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v6, v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mUnitAliveNum:[I

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Unit;->getSelectedLink()I

    move-result v7

    aget v6, v6, v7

    if-lez v6, :cond_6

    .line 243
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v6, v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mUnitAliveNum:[I

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Unit;->getSelectedLink()I

    move-result v7

    aget v8, v6, v7

    add-int/lit8 v8, v8, -0x1

    aput v8, v6, v7

    .line 244
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/scenes/GameScene;->updateCDBoxes()V

    .line 249
    :cond_6
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v6, v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/units/Enemy;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v6

    iget-object v4, v6, Lcom/droidhen/fortconquer/units/Fort;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 250
    .local v4, "pFortEnemy":Lcom/droidhen/fortconquer/units/UnitPart;
    iget-boolean v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v6, :cond_8

    iget v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    const/16 v7, 0x46

    if-le v6, v7, :cond_8

    .line 251
    if-eqz v4, :cond_7

    iget-object v6, v4, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-eq v6, v7, :cond_7

    iget v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mPosCol:I

    iget v7, v4, Lcom/droidhen/fortconquer/units/UnitPart;->mPosCol:I

    if-le v6, v7, :cond_8

    .line 252
    :cond_7
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v6, v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/units/Enemy;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v6

    iput-object v5, v6, Lcom/droidhen/fortconquer/units/Fort;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 199
    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 217
    .end local v4    # "pFortEnemy":Lcom/droidhen/fortconquer/units/UnitPart;
    :cond_9
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v6, v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v6, v6, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/units/Player;->lost()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-eq v6, v7, :cond_3

    .line 219
    iget-object v6, p0, Lcom/droidhen/fortconquer/units/Lane;->mAllUnits:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Unit;->dead()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 192
    .end local v1    # "j":I
    .end local v2    # "newPos":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 227
    .restart local v1    # "j":I
    .restart local v2    # "newPos":I
    :cond_a
    :try_start_2
    iget-object v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-eq v6, v7, :cond_b

    iget-object v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v6, v7, :cond_c

    .line 228
    :cond_b
    sget-object v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v7, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_RUNNING:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-ne v6, v7, :cond_c

    .line 229
    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Unit;->move()V

    goto/16 :goto_2

    .line 230
    :cond_c
    iget-object v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-eq v6, v7, :cond_d

    iget-object v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v6, v7, :cond_e

    .line 231
    :cond_d
    sget-object v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v7, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_PASS:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-ne v6, v7, :cond_e

    iget-boolean v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-eqz v6, :cond_e

    .line 232
    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Unit;->celebrate()V

    goto/16 :goto_2

    .line 233
    :cond_e
    iget-object v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_WALKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-eq v6, v7, :cond_f

    iget-object v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v7, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v6, v7, :cond_5

    .line 234
    :cond_f
    sget-object v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mState:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    sget-object v7, Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;->GAME_FAIL:Lcom/droidhen/fortconquer/scenes/GameScene$GameSceneState;

    if-ne v6, v7, :cond_5

    iget-boolean v6, v5, Lcom/droidhen/fortconquer/units/Unit;->mbLeftSide:Z

    if-nez v6, :cond_5

    .line 235
    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Unit;->celebrate()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Lane;->clearUnits()V

    .line 407
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mBipedLayerRight:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 408
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mQuadLayerRight:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 409
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mBipedLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 410
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mQuadLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/units/Lane;->bFireballUsed:Z

    .line 412
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mMinerals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 413
    return-void
.end method

.method public showFBCircle(Z)V
    .locals 2
    .param p1, "bVisible"    # Z

    .prologue
    .line 437
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 441
    return-void

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballCircleSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public startFireball()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    .line 384
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/Lane;->startNextFireball()V

    .line 385
    return-void
.end method

.method public startNextFireball()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 389
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 390
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 391
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setVisible(Z)V

    .line 392
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    aget-object v0, v0, v1

    const-wide/16 v2, 0x7d

    invoke-virtual {v0, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->animate(JZ)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 393
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballDelayModifier:[Lorg/anddev/andengine/entity/modifier/DelayModifier;

    iget v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/DelayModifier;->reset()V

    .line 394
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballDelayModifier:[Lorg/anddev/andengine/entity/modifier/DelayModifier;

    iget v2, p0, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 396
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballExplodeSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 397
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballExplodeSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setVisible(Z)V

    .line 398
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mQuadLayerRight:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v2, p0, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 399
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane;->mQuadLayerRight:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane;->mFireballExplodeSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget v2, p0, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 401
    iput-boolean v5, p0, Lcom/droidhen/fortconquer/units/Lane;->bFireballUsed:Z

    .line 402
    return-void
.end method
