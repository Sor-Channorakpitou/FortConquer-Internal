.class public Lcom/droidhen/fortconquer/component/CoinBarEntity;
.super Lcom/droidhen/fortconquer/layer/Layer;
.source "CoinBarEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/component/CoinBarEntity$SEQ;
    }
.end annotation


# static fields
.field public static final COIN_SPEED:I = 0x190

.field public static final CRYSTAL_SPEED:I = 0xa

.field private static dst_coin:I

.field private static dst_crystal:I

.field private static final taskBuyCoin:Ljava/lang/Runnable;

.field private static final taskClose:Ljava/lang/Runnable;

.field private static final taskHome:Ljava/lang/Runnable;

.field private static final taskStatus:Ljava/lang/Runnable;


# instance fields
.field private cur_coin:I

.field private cur_crystal:I

.field private final mCoinText:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private final mCrystalText:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private final mTotalCoinSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msBtnBack:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msBtnClose:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msBtnHome:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msTopBg:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private parent:Lcom/droidhen/fortconquer/scenes/SmartScene;

.field private final taskBack:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->dst_coin:I

    .line 33
    sput v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->dst_crystal:I

    .line 39
    new-instance v0, Lcom/droidhen/fortconquer/component/CoinBarEntity$1;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity$1;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->taskBuyCoin:Ljava/lang/Runnable;

    .line 46
    new-instance v0, Lcom/droidhen/fortconquer/component/CoinBarEntity$2;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity$2;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->taskHome:Ljava/lang/Runnable;

    .line 53
    new-instance v0, Lcom/droidhen/fortconquer/component/CoinBarEntity$3;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity$3;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->taskStatus:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Lcom/droidhen/fortconquer/component/CoinBarEntity$4;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity$4;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->taskClose:Ljava/lang/Runnable;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/droidhen/fortconquer/scenes/SmartScene;I)V
    .locals 12
    .param p1, "parent"    # Lcom/droidhen/fortconquer/scenes/SmartScene;
    .param p2, "seq"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/high16 v8, 0x41100000    # 9.0f

    const/4 v7, 0x0

    .line 85
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/Layer;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->parent:Lcom/droidhen/fortconquer/scenes/SmartScene;

    .line 35
    iput v9, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_coin:I

    .line 37
    iput v9, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_crystal:I

    .line 67
    new-instance v0, Lcom/droidhen/fortconquer/component/CoinBarEntity$5;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/component/CoinBarEntity$5;-><init>(Lcom/droidhen/fortconquer/component/CoinBarEntity;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->taskBack:Ljava/lang/Runnable;

    .line 86
    iput-object p1, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->parent:Lcom/droidhen/fortconquer/scenes/SmartScene;

    .line 87
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/high16 v1, 0x43c50000    # 394.0f

    const/high16 v2, 0x41c80000    # 25.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rCoinBar:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v3

    sget-object v4, Lcom/droidhen/fortconquer/component/CoinBarEntity;->taskBuyCoin:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->mTotalCoinSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 88
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->mTotalCoinSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v9}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setEnableAnimated(Z)V

    .line 89
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x43d70000    # 430.0f

    const/high16 v2, 0x42000000    # 32.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->fTotalCoin:Lorg/anddev/andengine/opengl/font/Font;

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getCoins()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->mCoinText:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 90
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const v1, 0x440f8000    # 574.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->mCoinText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->fTotalCoin:Lorg/anddev/andengine/opengl/font/Font;

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getCrystals()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->mCrystalText:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 91
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    .line 92
    :cond_0
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBgTop:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v7, v7, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msTopBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 93
    new-instance v1, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const v2, 0x44318000    # 710.0f

    const/high16 v3, 0x41800000    # 16.0f

    sget-object v4, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBtnHome:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    sget-object v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->taskStatus:Ljava/lang/Runnable;

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnHome:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 94
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msTopBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 95
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnHome:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 96
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->mTotalCoinSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v9}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 97
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnHome:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 149
    :cond_1
    :goto_1
    if-eq p2, v10, :cond_2

    .line 150
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->mTotalCoinSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 151
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->mCoinText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 152
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->mCrystalText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 153
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->mTotalCoinSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 155
    :cond_2
    return-void

    .line 93
    :cond_3
    sget-object v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->taskHome:Ljava/lang/Runnable;

    goto :goto_0

    .line 99
    :cond_4
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const v1, 0x44318000    # 710.0f

    const/high16 v2, 0x41800000    # 16.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBtnClose:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    sget-object v4, Lcom/droidhen/fortconquer/component/CoinBarEntity;->taskClose:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnClose:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 100
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnClose:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 101
    if-ne p2, v10, :cond_5

    .line 102
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnClose:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->taskBack:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setClickTask(Ljava/lang/Runnable;)V

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->mTotalCoinSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 105
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnClose:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 106
    if-eq p2, v10, :cond_1

    .line 107
    const v6, 0x3f451eb8    # 0.77f

    .line 108
    .local v6, "SCALE":F
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBgTopTab:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int/lit8 v1, v1, 0x2e

    int-to-float v1, v1

    sget-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBgTopTab:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v7, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msTopBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 109
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/high16 v1, 0x41a00000    # 20.0f

    const/high16 v2, 0x42380000    # 46.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBtnUpgrade:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    div-float/2addr v3, v11

    sub-float/2addr v2, v3

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBtnMarket:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 110
    sget-object v4, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTaskMarket:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    .line 109
    iput-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 111
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v1

    const/high16 v2, 0x42ae0000    # 87.0f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBtnEvolve:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 112
    sget-object v4, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTaskEvolve:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    .line 111
    iput-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 113
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v1

    mul-float/2addr v1, v11

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBtnUpgrade:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 114
    sget-object v4, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTaskUpgrade:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    .line 113
    iput-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 115
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v6}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setScale(F)V

    .line 116
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v6}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setScale(F)V

    .line 117
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v6}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setScale(F)V

    .line 118
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getScaleYMakeup()F

    move-result v1

    mul-float/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setScaleY(F)V

    .line 119
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getScaleYMakeup()F

    move-result v1

    mul-float/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setScaleY(F)V

    .line 120
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getScaleYMakeup()F

    move-result v1

    mul-float/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setScaleY(F)V

    .line 121
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v7, v7}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setScaleCenter(FF)V

    .line 122
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v7, v7}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setScaleCenter(FF)V

    .line 123
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v7, v7}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setScaleCenter(FF)V

    .line 124
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v1

    sub-float/2addr v1, v8

    sget-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rSelectCircle:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v7, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnBack:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 125
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 126
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 127
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 128
    packed-switch p2, :pswitch_data_0

    .line 142
    :goto_2
    :pswitch_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msTopBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 143
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnBack:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 144
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 145
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 146
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    goto/16 :goto_1

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnBack:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v1

    sub-float/2addr v1, v8

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnBack:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 131
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    goto :goto_2

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnBack:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v1

    sub-float/2addr v1, v8

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnBack:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 135
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    goto :goto_2

    .line 138
    :pswitch_3
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnBack:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v1

    sub-float/2addr v1, v8

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnBack:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 139
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    goto :goto_2

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/droidhen/fortconquer/component/CoinBarEntity;)Lcom/droidhen/fortconquer/scenes/SmartScene;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->parent:Lcom/droidhen/fortconquer/scenes/SmartScene;

    return-object v0
.end method

.method public static updateCurText()V
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getCoins()I

    move-result v0

    sput v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->dst_coin:I

    .line 194
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getCrystals()I

    move-result v0

    sput v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->dst_crystal:I

    .line 195
    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 0

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->updateText()V

    .line 200
    return-void
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method protected onManagedUpdate(F)V
    .locals 6
    .param p1, "pSecondsElapsed"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 169
    sget v2, Lcom/droidhen/fortconquer/component/CoinBarEntity;->dst_coin:I

    iget v3, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_coin:I

    if-eq v2, v3, :cond_0

    .line 170
    sget v2, Lcom/droidhen/fortconquer/component/CoinBarEntity;->dst_coin:I

    iget v3, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_coin:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 171
    .local v0, "distance":I
    sget v2, Lcom/droidhen/fortconquer/component/CoinBarEntity;->dst_coin:I

    iget v3, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_coin:I

    sub-int/2addr v2, v3

    div-int v1, v2, v0

    .line 172
    .local v1, "signal":I
    int-to-float v2, v0

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, p1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 173
    sget v2, Lcom/droidhen/fortconquer/component/CoinBarEntity;->dst_coin:I

    iput v2, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_coin:I

    .line 177
    :goto_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->mCoinText:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget v3, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_coin:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 179
    .end local v0    # "distance":I
    .end local v1    # "signal":I
    :cond_0
    sget v2, Lcom/droidhen/fortconquer/component/CoinBarEntity;->dst_crystal:I

    iget v3, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_crystal:I

    if-eq v2, v3, :cond_1

    .line 180
    sget v2, Lcom/droidhen/fortconquer/component/CoinBarEntity;->dst_crystal:I

    iget v3, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_crystal:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 181
    .restart local v0    # "distance":I
    sget v2, Lcom/droidhen/fortconquer/component/CoinBarEntity;->dst_crystal:I

    iget v3, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_crystal:I

    sub-int/2addr v2, v3

    div-int v1, v2, v0

    .line 182
    .restart local v1    # "signal":I
    int-to-float v2, v0

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, p1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 183
    sget v2, Lcom/droidhen/fortconquer/component/CoinBarEntity;->dst_crystal:I

    iput v2, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_crystal:I

    .line 187
    :goto_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->mCrystalText:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget v3, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_crystal:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 189
    .end local v0    # "distance":I
    .end local v1    # "signal":I
    :cond_1
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/layer/Layer;->onManagedUpdate(F)V

    .line 190
    return-void

    .line 175
    .restart local v0    # "distance":I
    .restart local v1    # "signal":I
    :cond_2
    iget v2, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_coin:I

    int-to-float v2, v2

    int-to-float v3, v1

    add-int/lit16 v4, v0, 0x190

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_coin:I

    goto :goto_0

    .line 185
    :cond_3
    iget v2, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_crystal:I

    int-to-float v2, v2

    int-to-float v3, v1

    add-int/lit8 v4, v0, 0xa

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_crystal:I

    goto :goto_1
.end method

.method public updateText()V
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getCoins()I

    move-result v0

    sput v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->dst_coin:I

    iput v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_coin:I

    .line 162
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getCrystals()I

    move-result v0

    sput v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->dst_crystal:I

    iput v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_crystal:I

    .line 163
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->mCoinText:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget v1, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_coin:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->mCrystalText:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget v1, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity;->cur_crystal:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 165
    return-void
.end method
