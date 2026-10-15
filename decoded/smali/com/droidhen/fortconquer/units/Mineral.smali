.class public Lcom/droidhen/fortconquer/units/Mineral;
.super Ljava/lang/Object;
.source "Mineral.java"


# static fields
.field private static pool:Lcom/droidhen/fortconquer/kits/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/droidhen/fortconquer/kits/ObjectPool",
            "<",
            "Lcom/droidhen/fortconquer/units/Mineral;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:I

.field private flyModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field private final sprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/droidhen/fortconquer/units/Mineral;->pool:Lcom/droidhen/fortconquer/kits/ObjectPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    sget-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->mrIconMine:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v2

    int-to-float v3, v2

    .line 52
    sget-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->mrIconMine:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v2

    int-to-float v4, v2

    sget-object v5, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->mrIconMine:Lcom/droidhen/andplugin/PlistTextureRegion;

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 51
    iput-object v0, p0, Lcom/droidhen/fortconquer/units/Mineral;->sprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 53
    const/4 v0, 0x3

    new-array v6, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v0, 0x0

    .line 54
    new-instance v1, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    const/high16 v2, 0x43020000    # 130.0f

    const/high16 v3, 0x43b80000    # 368.0f

    const/high16 v4, 0x447a0000    # 1000.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;-><init>(FFF)V

    aput-object v1, v6, v0

    const/4 v7, 0x1

    .line 55
    new-instance v0, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    move v1, v8

    move v2, v9

    move v3, v8

    move v4, v9

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFFFF)V

    aput-object v0, v6, v7

    const/4 v0, 0x2

    .line 56
    new-instance v1, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v8, v9, v2}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v1, v6, v0

    .line 53
    iput-object v6, p0, Lcom/droidhen/fortconquer/units/Mineral;->flyModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/droidhen/fortconquer/units/Mineral;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/droidhen/fortconquer/units/Mineral;-><init>()V

    return-void
.end method

.method public static getMineral(I)Lcom/droidhen/fortconquer/units/Mineral;
    .locals 1
    .param p0, "camp"    # I

    .prologue
    .line 41
    sget-object v0, Lcom/droidhen/fortconquer/units/Mineral;->pool:Lcom/droidhen/fortconquer/kits/ObjectPool;

    invoke-interface {v0}, Lcom/droidhen/fortconquer/kits/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Mineral;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/units/Mineral;->init(I)Lcom/droidhen/fortconquer/units/Mineral;

    move-result-object v0

    return-object v0
.end method

.method private init(I)Lcom/droidhen/fortconquer/units/Mineral;
    .locals 5
    .param p1, "camp"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/droidhen/fortconquer/units/Mineral;->time:J

    .line 61
    sget v2, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v1, v2, 0x4

    .line 62
    .local v1, "rsc":I
    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    const/16 v1, 0x8

    .line 63
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 64
    mul-int/lit8 v2, v1, 0x2

    iput v2, p0, Lcom/droidhen/fortconquer/units/Mineral;->amount:I

    .line 68
    :goto_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Mineral;->sprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setAlpha(F)V

    .line 69
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Mineral;->sprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScale(F)V

    .line 70
    iget-object v3, p0, Lcom/droidhen/fortconquer/units/Mineral;->flyModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_2

    .line 73
    return-object p0

    .line 66
    :cond_1
    iput v1, p0, Lcom/droidhen/fortconquer/units/Mineral;->amount:I

    goto :goto_0

    .line 70
    :cond_2
    aget-object v0, v3, v2

    .line 71
    .local v0, "modifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    invoke-interface {v0}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static initPool()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/droidhen/fortconquer/kits/GreedPool;

    new-instance v1, Lcom/droidhen/fortconquer/units/Mineral$1;

    invoke-direct {v1}, Lcom/droidhen/fortconquer/units/Mineral$1;-><init>()V

    .line 37
    const/4 v2, 0x0

    .line 31
    invoke-direct {v0, v1, v2}, Lcom/droidhen/fortconquer/kits/GreedPool;-><init>(Lcom/droidhen/fortconquer/kits/ObjectGenerator;I)V

    sput-object v0, Lcom/droidhen/fortconquer/units/Mineral;->pool:Lcom/droidhen/fortconquer/kits/ObjectPool;

    .line 38
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/droidhen/fortconquer/units/Mineral;->pool:Lcom/droidhen/fortconquer/kits/ObjectPool;

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/droidhen/fortconquer/units/Mineral;->pool:Lcom/droidhen/fortconquer/kits/ObjectPool;

    invoke-interface {v0}, Lcom/droidhen/fortconquer/kits/ObjectPool;->reset()V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public animateAdd()V
    .locals 5

    .prologue
    .line 77
    iget-object v2, p0, Lcom/droidhen/fortconquer/units/Mineral;->flyModifiers:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 80
    return-void

    .line 77
    :cond_0
    aget-object v0, v2, v1

    .line 78
    .local v0, "modifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    iget-object v4, p0, Lcom/droidhen/fortconquer/units/Mineral;->sprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public attachTo(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1
    .param p1, "entity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Mineral;->sprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-interface {p1, v0}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 88
    return-void
.end method

.method public getAmount()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/droidhen/fortconquer/units/Mineral;->amount:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Mineral;->sprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v0

    return v0
.end method

.method public getSprite()Lorg/anddev/andengine/entity/sprite/Sprite;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Mineral;->sprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Mineral;->sprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Mineral;->sprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Mineral;->sprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v0

    return v0
.end method

.method protected isExpire()Z
    .locals 4

    .prologue
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/droidhen/fortconquer/units/Mineral;->time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Mineral;->sprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->detachSelf()Z

    .line 122
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Mineral;->sprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->clearEntityModifiers()V

    .line 123
    sget-object v0, Lcom/droidhen/fortconquer/units/Mineral;->pool:Lcom/droidhen/fortconquer/kits/ObjectPool;

    invoke-interface {v0, p0}, Lcom/droidhen/fortconquer/kits/ObjectPool;->put(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 111
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Mineral;->sprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 112
    return-void
.end method
