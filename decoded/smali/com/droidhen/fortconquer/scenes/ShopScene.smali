.class public Lcom/droidhen/fortconquer/scenes/ShopScene;
.super Lcom/droidhen/fortconquer/scenes/SmartScene;
.source "ShopScene.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/scenes/ShopScene$POS;
    }
.end annotation


# static fields
.field public static final CARD_MARGIN:I = 0xa9


# instance fields
.field public bStoreFromWorld:Z

.field private curTab:I

.field private fFont:Lorg/anddev/andengine/opengl/font/Font;

.field private isInDlg:Z

.field private mAllCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/droidhen/fortconquer/units/Card;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

.field private mBackTask:Ljava/lang/Runnable;

.field private mBlankCards:[Lcom/droidhen/fortconquer/units/BlankCard;

.field private mBuyIndex:I

.field private final mBuyTask:Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

.field private mCardsFrontLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field protected mCardsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

.field private mCoinBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

.field private mGoodsFrontLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field protected mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

.field private mSellCard:Lcom/droidhen/fortconquer/units/Card;

.field private final mSellTask:Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

.field protected mStoreCoin1TextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field protected mStoreCoin2TextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field protected mStoreCoinSelectedSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mStoreCoinSelectedTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field protected mStoreCoinSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mStorePriceSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mStorePriceTextureRegion:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private mUILeftCover:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private mUIRightCover:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private mUITexture:Lcom/droidhen/andplugin/PlistTexture;

.field private mrBtnRefresh:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mrBuyLabel:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrCardBg:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mrFrameB:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrFrameL:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrFrameR:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrFrameT:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mrLSellSmall:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrSellLabel:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public mrTroopPack:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msBtnRefresh:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msBuyBgs:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

.field private msBuyLabel:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msCardBgPool:Lcom/droidhen/fortconquer/kits/GreedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/droidhen/fortconquer/kits/GreedPool",
            "<",
            "Lcom/droidhen/andplugin/ComposedAnimatedButton;",
            ">;"
        }
    .end annotation
.end field

.field private msCoinIconsPool:Lcom/droidhen/fortconquer/kits/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/droidhen/fortconquer/kits/ObjectPool",
            "<",
            "Lorg/anddev/andengine/entity/sprite/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private msCoinTextPool:Lcom/droidhen/fortconquer/kits/GreedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/droidhen/fortconquer/kits/GreedPool",
            "<",
            "Lorg/anddev/andengine/entity/text/ChangeableText;",
            ">;"
        }
    .end annotation
.end field

.field private msCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private msFrameB:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msFrameBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

.field private msFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msFrameT:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msGoodCoins:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private msLNew:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msPriceTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

.field private msSellLabel:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msSmallSellPool:Lcom/droidhen/fortconquer/kits/GreedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/droidhen/fortconquer/kits/GreedPool",
            "<",
            "Lorg/anddev/andengine/entity/sprite/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private msTRefreshTip:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private tFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;


# direct methods
.method public constructor <init>(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 3
    .param p1, "shootTheAppleGame"    # Lcom/droidhen/fortconquer/GameActivity;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    .line 122
    iput-boolean v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->isInDlg:Z

    .line 558
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ShopScene$1;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$1;-><init>(Lcom/droidhen/fortconquer/scenes/ShopScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mSellTask:Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

    .line 584
    iput v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mBuyIndex:I

    .line 585
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$2;-><init>(Lcom/droidhen/fortconquer/scenes/ShopScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mBuyTask:Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

    .line 653
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/droidhen/fortconquer/units/BlankCard;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mBlankCards:[Lcom/droidhen/fortconquer/units/BlankCard;

    .line 803
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ShopScene$3;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$3;-><init>(Lcom/droidhen/fortconquer/scenes/ShopScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mBackTask:Ljava/lang/Runnable;

    .line 165
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->setOnAreaTouchTraversalFrontToBack()V

    .line 166
    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/scenes/ShopScene;->setTouchAreaBindingEnabled(Z)V

    .line 167
    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/scenes/ShopScene;->setOnSceneTouchListenerBindingEnabled(Z)V

    .line 168
    return-void
.end method

.method static synthetic access$0(Lcom/droidhen/fortconquer/scenes/ShopScene;Z)V
    .locals 0

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->isInDlg:Z

    return-void
.end method

.method static synthetic access$1(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/units/Card;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mSellCard:Lcom/droidhen/fortconquer/units/Card;

    return-object v0
.end method

.method static synthetic access$10(Lcom/droidhen/fortconquer/scenes/ShopScene;)Ljava/util/List;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11(Lcom/droidhen/fortconquer/scenes/ShopScene;Lcom/droidhen/fortconquer/units/Card;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mSellCard:Lcom/droidhen/fortconquer/units/Card;

    return-void
.end method

.method static synthetic access$12(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mSellTask:Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

    return-object v0
.end method

.method static synthetic access$13(Lcom/droidhen/fortconquer/scenes/ShopScene;I)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->updateTabs(I)V

    return-void
.end method

.method static synthetic access$14(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrCardBg:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    return-object v0
.end method

.method static synthetic access$15(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/kits/ObjectPool;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msCoinIconsPool:Lcom/droidhen/fortconquer/kits/ObjectPool;

    return-object v0
.end method

.method static synthetic access$16(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/andplugin/PlistTextureRegion;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrLSellSmall:Lcom/droidhen/andplugin/PlistTextureRegion;

    return-object v0
.end method

.method static synthetic access$17(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/kits/GreedPool;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msSmallSellPool:Lcom/droidhen/fortconquer/kits/GreedPool;

    return-object v0
.end method

.method static synthetic access$18(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/kits/GreedPool;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msCoinTextPool:Lcom/droidhen/fortconquer/kits/GreedPool;

    return-object v0
.end method

.method static synthetic access$19(Lcom/droidhen/fortconquer/scenes/ShopScene;)I
    .locals 1

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->getRefreshCrystal()I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/droidhen/fortconquer/scenes/ShopScene;)V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->updateCards()V

    return-void
.end method

.method static synthetic access$3(Lcom/droidhen/fortconquer/scenes/ShopScene;)I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mBuyIndex:I

    return v0
.end method

.method static synthetic access$4(Lcom/droidhen/fortconquer/scenes/ShopScene;)V
    .locals 0

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->updateGoods()V

    return-void
.end method

.method static synthetic access$5(Lcom/droidhen/fortconquer/scenes/ShopScene;)Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->isInDlg:Z

    return v0
.end method

.method static synthetic access$6(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lorg/anddev/andengine/entity/primitive/Rectangle;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    return-object v0
.end method

.method static synthetic access$7(Lcom/droidhen/fortconquer/scenes/ShopScene;I)V
    .locals 0

    .prologue
    .line 584
    iput p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mBuyIndex:I

    return-void
.end method

.method static synthetic access$8(Lcom/droidhen/fortconquer/scenes/ShopScene;)[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBuyBgs:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    return-object v0
.end method

.method static synthetic access$9(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mBuyTask:Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

    return-object v0
.end method

.method private getRefreshCrystal()I
    .locals 1

    .prologue
    .line 486
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->getBaseCrystal(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private initCardView()V
    .locals 5

    .prologue
    const/high16 v4, -0x3f000000    # -8.0f

    .line 501
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 515
    return-void

    .line 502
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    aget-object v0, v2, v1

    .line 503
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    if-nez v0, :cond_1

    .line 501
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 505
    :cond_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msPriceTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v2, v2, v1

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->useCrystalToBuy()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 507
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msGoodCoins:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 511
    :goto_2
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBuyBgs:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/units/Card;->setCardBack(Lorg/anddev/andengine/entity/shape/IShape;)V

    .line 512
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getCardBack()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v2

    invoke-interface {v2, v4, v4}, Lorg/anddev/andengine/entity/shape/IShape;->setPosition(FF)V

    .line 513
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v2, v0}, Lcom/droidhen/fortconquer/layer/DragLayer;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    goto :goto_1

    .line 509
    :cond_2
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msGoodCoins:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    goto :goto_2
.end method

.method private setGoodsLayerPos(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 490
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    aget-object v0, v1, p1

    .line 494
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    if-eqz v0, :cond_0

    .line 497
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/layer/DragLayer;->getInitialX()F

    move-result v2

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/layer/DragLayer;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/layer/DragLayer;->setPosition(FF)V

    goto :goto_0
.end method

.method private updateCards()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v5, -0x3f000000    # -8.0f

    .line 708
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getAllCards()Ljava/util/ArrayList;

    move-result-object v2

    .line 709
    .local v2, "pCard":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/fortconquer/units/Card;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 721
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-gez v1, :cond_3

    .line 730
    :goto_2
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v8, :cond_6

    .line 736
    :goto_3
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v8, :cond_0

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/droidhen/fortconquer/units/BlankCard;

    if-nez v3, :cond_7

    .line 739
    :cond_0
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/droidhen/fortconquer/units/Player;->sortCards(Ljava/util/List;I)V

    .line 740
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_8

    .line 745
    return-void

    .line 710
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 711
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 712
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->deepCopyWithoutScale()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v0

    .line 713
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msCardBgPool:Lcom/droidhen/fortconquer/kits/GreedPool;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/kits/GreedPool;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/anddev/andengine/entity/shape/IShape;

    invoke-virtual {v0, v3}, Lcom/droidhen/fortconquer/units/Card;->setCardBack(Lorg/anddev/andengine/entity/shape/IShape;)V

    .line 715
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getCardBack()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v3

    invoke-interface {v3, v5, v5}, Lorg/anddev/andengine/entity/shape/IShape;->setPosition(FF)V

    .line 716
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getCardBack()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v4

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msSmallSellPool:Lcom/droidhen/fortconquer/kits/GreedPool;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/kits/GreedPool;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/anddev/andengine/entity/IEntity;

    invoke-interface {v4, v3}, Lorg/anddev/andengine/entity/shape/IShape;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 717
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mCardsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v3, v0}, Lcom/droidhen/fortconquer/layer/DragLayer;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 718
    const v3, 0x44494000    # 805.0f

    invoke-virtual {v0, v3, v6}, Lcom/droidhen/fortconquer/units/Card;->setPosition(FF)V

    .line 709
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 722
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    :cond_3
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 723
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->detachChildren()V

    .line 724
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->detachSelf()Z

    .line 725
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->getCardBack()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 726
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->getCardBack()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v3

    invoke-interface {v3}, Lorg/anddev/andengine/entity/shape/IShape;->detachChildren()V

    .line 727
    :cond_4
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 721
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    .line 731
    :cond_6
    invoke-static {v7}, Lcom/droidhen/fortconquer/units/BlankCard;->get(Z)Lcom/droidhen/fortconquer/units/BlankCard;

    move-result-object v0

    .line 732
    .local v0, "card":Lcom/droidhen/fortconquer/units/BlankCard;
    invoke-virtual {v0, v7}, Lcom/droidhen/fortconquer/units/BlankCard;->setType(I)V

    .line 733
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mCardsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v3, v0}, Lcom/droidhen/fortconquer/layer/DragLayer;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 734
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 737
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/BlankCard;
    :cond_7
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->detachSelf()Z

    goto/16 :goto_3

    .line 741
    :cond_8
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllCards:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 742
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/droidhen/fortconquer/units/Card;->setIsSmall(Z)V

    .line 743
    mul-int/lit16 v3, v1, 0xa9

    add-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    invoke-virtual {v0, v3, v6}, Lcom/droidhen/fortconquer/units/Card;->setPosition(FF)V

    .line 740
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4
.end method

.method private updateCoinText()V
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mCoinBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->updateText()V

    .line 801
    return-void
.end method

.method private updateGoods()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v5, -0x3f000000    # -8.0f

    .line 678
    const/4 v2, 0x0

    .line 679
    .local v2, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    array-length v4, v4

    if-lt v1, v4, :cond_0

    .line 687
    if-le v2, v8, :cond_7

    .line 688
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mBlankCards:[Lcom/droidhen/fortconquer/units/BlankCard;

    array-length v4, v4

    if-lt v1, v4, :cond_3

    move v3, v2

    .line 693
    .end local v2    # "num":I
    .local v3, "num":I
    :goto_2
    if-lt v3, v8, :cond_5

    .line 702
    return-void

    .line 680
    .end local v3    # "num":I
    .restart local v2    # "num":I
    :cond_0
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    aget-object v0, v4, v1

    .line 681
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    if-nez v0, :cond_1

    .line 679
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 683
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "num":I
    .restart local v3    # "num":I
    mul-int/lit16 v4, v2, 0xa9

    add-int/lit8 v4, v4, 0x8

    int-to-float v4, v4

    invoke-virtual {v0, v4, v6}, Lcom/droidhen/fortconquer/units/Card;->setPosition(FF)V

    .line 684
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getCardBack()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 685
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getCardBack()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v4

    invoke-interface {v4, v5, v5}, Lorg/anddev/andengine/entity/shape/IShape;->setPosition(FF)V

    :cond_2
    move v2, v3

    .end local v3    # "num":I
    .restart local v2    # "num":I
    goto :goto_3

    .line 689
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    :cond_3
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mBlankCards:[Lcom/droidhen/fortconquer/units/BlankCard;

    aget-object v4, v4, v1

    if-eqz v4, :cond_4

    .line 690
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mBlankCards:[Lcom/droidhen/fortconquer/units/BlankCard;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/BlankCard;->detachSelf()Z

    .line 688
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 694
    .end local v2    # "num":I
    .restart local v3    # "num":I
    :cond_5
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mBlankCards:[Lcom/droidhen/fortconquer/units/BlankCard;

    aget-object v0, v4, v3

    .line 695
    .local v0, "card":Lcom/droidhen/fortconquer/units/BlankCard;
    if-nez v0, :cond_6

    .line 696
    invoke-static {v7}, Lcom/droidhen/fortconquer/units/BlankCard;->get(Z)Lcom/droidhen/fortconquer/units/BlankCard;

    move-result-object v0

    .line 697
    :cond_6
    invoke-virtual {v0, v7}, Lcom/droidhen/fortconquer/units/BlankCard;->setType(I)V

    .line 698
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mBlankCards:[Lcom/droidhen/fortconquer/units/BlankCard;

    aput-object v0, v4, v3

    .line 699
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "num":I
    .restart local v2    # "num":I
    mul-int/lit16 v4, v3, 0xa9

    int-to-float v4, v4

    invoke-virtual {v0, v4, v6}, Lcom/droidhen/fortconquer/units/BlankCard;->setPosition(FF)V

    .line 700
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v4, v0}, Lcom/droidhen/fortconquer/layer/DragLayer;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .end local v0    # "card":Lcom/droidhen/fortconquer/units/BlankCard;
    :cond_7
    move v3, v2

    .end local v2    # "num":I
    .restart local v3    # "num":I
    goto :goto_2
.end method

.method private updateTabs(I)V
    .locals 4
    .param p1, "tab"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 533
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 534
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    rsub-int/lit8 v1, p1, 0x1

    rem-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 535
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->curTab:I

    if-ne v0, p1, :cond_0

    .line 554
    :goto_0
    return-void

    .line 538
    :cond_0
    iput p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->curTab:I

    .line 539
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 540
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 541
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->curTab:I

    if-nez v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v0, v3}, Lcom/droidhen/fortconquer/layer/DragLayer;->setVisible(Z)V

    .line 543
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsFrontLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->setVisible(Z)V

    .line 544
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mCardsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/layer/DragLayer;->setVisible(Z)V

    .line 545
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mCardsFrontLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->setVisible(Z)V

    .line 546
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->updateGoods()V

    goto :goto_0

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/layer/DragLayer;->setVisible(Z)V

    .line 549
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsFrontLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->setVisible(Z)V

    .line 550
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mCardsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v0, v3}, Lcom/droidhen/fortconquer/layer/DragLayer;->setVisible(Z)V

    .line 551
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mCardsFrontLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->setVisible(Z)V

    .line 552
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->updateCards()V

    goto :goto_0
.end method


# virtual methods
.method public IsTexturesLoaded()Z
    .locals 1

    .prologue
    .line 749
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mDragonWingTextures:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistTexture;->isLoadedToHardware()Z

    move-result v0

    return v0
.end method

.method protected attachEverything()V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method public clearGoods()V
    .locals 3

    .prologue
    .line 661
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    if-nez v1, :cond_0

    .line 662
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->genGoodsList()V

    .line 674
    :goto_0
    return-void

    .line 665
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 672
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->genGoodsList()V

    .line 673
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->initCardView()V

    goto :goto_0

    .line 666
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBuyBgs:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->detachSelf()Z

    .line 667
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 668
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/units/Card;->setCardBack(Lorg/anddev/andengine/entity/shape/IShape;)V

    .line 669
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Card;->detachSelf()Z

    .line 665
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected createBGAndSprites()V
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/droidhen/fortconquer/units/Player;->sAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    .line 218
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->createUI()V

    .line 219
    return-void
.end method

.method protected createUI()V
    .locals 12

    .prologue
    const/high16 v2, 0x42c40000    # 98.0f

    const/high16 v7, 0x42ae0000    # 87.0f

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 222
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->sBackground:Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->setBackground(Lorg/anddev/andengine/entity/scene/background/IBackground;)V

    .line 223
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v0, v1, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 225
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;

    invoke-direct {v0, p0, v2, v2}, Lcom/droidhen/fortconquer/scenes/ShopScene$4;-><init>(Lcom/droidhen/fortconquer/scenes/ShopScene;FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    .line 288
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v0, v1, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsFrontLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 289
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v0, v1, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mCardsFrontLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 290
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;

    invoke-direct {v0, p0, v2, v2}, Lcom/droidhen/fortconquer/scenes/ShopScene$5;-><init>(Lcom/droidhen/fortconquer/scenes/ShopScene;FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mCardsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    .line 347
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mCardsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v0, v11}, Lcom/droidhen/fortconquer/layer/DragLayer;->setVisible(Z)V

    .line 348
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mCardsFrontLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v11}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->setVisible(Z)V

    .line 349
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 350
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    array-length v0, v0

    if-lt v10, v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v0, v0, v11

    invoke-virtual {v0, v8}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 363
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, -0x3e900000    # -15.0f

    sget-object v4, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rLNew:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v2, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msLNew:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 364
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msLNew:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/16 v2, 0x302

    const/16 v3, 0x304

    invoke-virtual {v0, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setBlendFunction(II)V

    .line 365
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msLNew:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v11}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 366
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v0, v0, v11

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msLNew:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 368
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    sget-object v2, Lcom/droidhen/fortconquer/scenes/ShopScene$POS$UI_TABS;->X:[I

    aget v2, v2, v11

    add-int/lit8 v2, v2, 0x19

    int-to-float v2, v2

    sget-object v3, Lcom/droidhen/fortconquer/scenes/ShopScene$POS$UI_TABS;->Y:[I

    aget v3, v3, v11

    add-int/lit8 v3, v3, 0xb

    int-to-float v3, v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrBuyLabel:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v2, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBuyLabel:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 369
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    sget-object v2, Lcom/droidhen/fortconquer/scenes/ShopScene$POS$UI_TABS;->X:[I

    aget v2, v2, v8

    add-int/lit8 v2, v2, 0x19

    int-to-float v2, v2

    sget-object v3, Lcom/droidhen/fortconquer/scenes/ShopScene$POS$UI_TABS;->Y:[I

    aget v3, v3, v8

    add-int/lit8 v3, v3, 0xb

    int-to-float v3, v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrSellLabel:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v2, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msSellLabel:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 370
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x429a0000    # 77.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrFrameL:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v2, v7, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 371
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrFrameR:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v2

    rsub-int v2, v2, 0x31f

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrFrameR:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v2, v7, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 372
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x429a0000    # 77.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrFrameT:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v2, v7, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameT:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 373
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v3

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrFrameB:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrFrameB:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v2, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameB:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 374
    new-instance v0, Lorg/anddev/andengine/entity/primitive/Rectangle;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x44320000    # 712.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameB:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 375
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    const v2, 0x3d888889

    const v3, 0x3db0b0b1

    const v4, 0x3de0e0e1

    invoke-virtual {v0, v2, v3, v4}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setColor(FFF)V

    .line 376
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameB:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 377
    new-instance v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;

    invoke-direct {v0, p0, v11}, Lcom/droidhen/fortconquer/component/CoinBarEntity;-><init>(Lcom/droidhen/fortconquer/scenes/SmartScene;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mCoinBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    .line 381
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 382
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 383
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsFrontLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 384
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mCardsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 385
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mCardsFrontLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 386
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x42ac0000    # 86.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43aa0000    # 340.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILeftCover:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-virtual {v6, v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 387
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v3, 0x4441c000    # 775.0f

    const/high16 v4, 0x42ac0000    # 86.0f

    const/high16 v5, 0x41c80000    # 25.0f

    const/high16 v6, 0x43aa0000    # 340.0f

    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUIRightCover:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct/range {v2 .. v7}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 388
    const/4 v10, 0x0

    :goto_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    array-length v0, v0

    if-lt v10, v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msSellLabel:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 392
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBuyLabel:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 393
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 394
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 395
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msFrameT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 397
    new-instance v0, Lcom/droidhen/fortconquer/kits/GreedPool;

    new-instance v2, Lcom/droidhen/fortconquer/scenes/ShopScene$7;

    invoke-direct {v2, p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$7;-><init>(Lcom/droidhen/fortconquer/scenes/ShopScene;)V

    .line 403
    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Lcom/droidhen/fortconquer/kits/GreedPool;-><init>(Lcom/droidhen/fortconquer/kits/ObjectGenerator;I)V

    .line 397
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msCardBgPool:Lcom/droidhen/fortconquer/kits/GreedPool;

    .line 404
    new-instance v0, Lcom/droidhen/fortconquer/kits/GreedPool;

    new-instance v2, Lcom/droidhen/fortconquer/scenes/ShopScene$8;

    invoke-direct {v2, p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$8;-><init>(Lcom/droidhen/fortconquer/scenes/ShopScene;)V

    .line 415
    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Lcom/droidhen/fortconquer/kits/GreedPool;-><init>(Lcom/droidhen/fortconquer/kits/ObjectGenerator;I)V

    .line 404
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msCoinIconsPool:Lcom/droidhen/fortconquer/kits/ObjectPool;

    .line 416
    new-instance v0, Lcom/droidhen/fortconquer/kits/GreedPool;

    new-instance v2, Lcom/droidhen/fortconquer/scenes/ShopScene$9;

    invoke-direct {v2, p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$9;-><init>(Lcom/droidhen/fortconquer/scenes/ShopScene;)V

    .line 427
    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Lcom/droidhen/fortconquer/kits/GreedPool;-><init>(Lcom/droidhen/fortconquer/kits/ObjectGenerator;I)V

    .line 416
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msSmallSellPool:Lcom/droidhen/fortconquer/kits/GreedPool;

    .line 428
    new-instance v0, Lcom/droidhen/fortconquer/kits/GreedPool;

    new-instance v2, Lcom/droidhen/fortconquer/scenes/ShopScene$10;

    invoke-direct {v2, p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$10;-><init>(Lcom/droidhen/fortconquer/scenes/ShopScene;)V

    .line 439
    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Lcom/droidhen/fortconquer/kits/GreedPool;-><init>(Lcom/droidhen/fortconquer/kits/ObjectGenerator;I)V

    .line 428
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msCoinTextPool:Lcom/droidhen/fortconquer/kits/GreedPool;

    .line 441
    new-instance v2, Lcom/droidhen/fortconquer/scenes/ShopScene$12;

    const/high16 v4, 0x441b0000    # 620.0f

    const/high16 v5, 0x43cf0000    # 414.0f

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrBtnRefresh:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    new-instance v7, Lcom/droidhen/fortconquer/scenes/ShopScene$11;

    invoke-direct {v7, p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$11;-><init>(Lcom/droidhen/fortconquer/scenes/ShopScene;)V

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/droidhen/fortconquer/scenes/ShopScene$12;-><init>(Lcom/droidhen/fortconquer/scenes/ShopScene;FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBtnRefresh:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 458
    new-instance v2, Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBtnRefresh:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v0

    const/high16 v3, 0x40e00000    # 7.0f

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBtnRefresh:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v0

    const/high16 v4, 0x40400000    # 3.0f

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v6, "n_crystals.png"

    const/4 v7, 0x2

    invoke-direct/range {v2 .. v8}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;IZ)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 460
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsFrontLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBtnRefresh:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 461
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsFrontLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 462
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    array-length v0, v0

    new-array v0, v0, [Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBuyBgs:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 463
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBuyBgs:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    array-length v0, v0

    new-array v0, v0, [Lorg/anddev/andengine/entity/text/ChangeableText;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msPriceTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 464
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBuyBgs:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    array-length v0, v0

    new-array v0, v0, [Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msGoodCoins:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 465
    const/4 v10, 0x0

    :goto_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBuyBgs:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    array-length v0, v0

    if-lt v10, v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mCoinBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 474
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x437b0000    # 251.0f

    const/high16 v2, 0x43cd0000    # 410.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->fFont:Lorg/anddev/andengine/opengl/font/Font;

    const v4, 0x7f050050

    new-array v5, v8, [Ljava/lang/Object;

    const v6, 0x5f5e0ff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/anddev/andengine/util/HorizontalAlign;->CENTER:Lorg/anddev/andengine/util/HorizontalAlign;

    const/16 v6, 0x64

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;Lorg/anddev/andengine/util/HorizontalAlign;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msTRefreshTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 475
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsFrontLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msTRefreshTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 478
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->initCardView()V

    .line 480
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/high16 v1, 0x41880000    # 17.0f

    const/high16 v2, 0x43d10000    # 418.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    sget-object v4, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->sTaskShowTapjoyOffers:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 481
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 482
    return-void

    .line 351
    :cond_0
    move v9, v10

    .line 352
    .local v9, "currentIndex":I
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    new-instance v2, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    sget-object v3, Lcom/droidhen/fortconquer/scenes/ShopScene$POS$UI_TABS;->X:[I

    aget v3, v3, v10

    int-to-float v3, v3

    sget-object v4, Lcom/droidhen/fortconquer/scenes/ShopScene$POS$UI_TABS;->Y:[I

    aget v4, v4, v10

    int-to-float v4, v4

    sget-object v5, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rTab:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v5}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v5

    new-instance v6, Lcom/droidhen/fortconquer/scenes/ShopScene$6;

    invoke-direct {v6, p0, v9}, Lcom/droidhen/fortconquer/scenes/ShopScene$6;-><init>(Lcom/droidhen/fortconquer/scenes/ShopScene;I)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    aput-object v2, v0, v10

    .line 359
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v0, v0, v10

    invoke-virtual {v0, v11}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 360
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v0, v0, v10

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getWidth()F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setWidth(F)V

    .line 350
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 389
    .end local v9    # "currentIndex":I
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v2, v2, v10

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 388
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 466
    :cond_2
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msPriceTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msCoinTextPool:Lcom/droidhen/fortconquer/kits/GreedPool;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/GreedPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    aput-object v0, v2, v10

    .line 467
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBuyBgs:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    new-instance v2, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrCardBg:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v3

    invoke-direct {v2, v1, v1, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    aput-object v2, v0, v10

    .line 468
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msGoodCoins:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    new-instance v2, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, 0x43720000    # 242.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCoinCrystal:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v5}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    aput-object v2, v0, v10

    .line 469
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBuyBgs:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    aget-object v0, v0, v10

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msPriceTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v2, v2, v10

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 470
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBuyBgs:[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    aget-object v0, v0, v10

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msGoodCoins:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v2, v2, v10

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 465
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2
.end method

.method protected initTextureRegions()V
    .locals 8

    .prologue
    const/16 v5, 0xaa

    const/16 v3, 0x2b

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_sell.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrSellLabel:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 201
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_sell_small.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrLSellSmall:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 202
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_buy.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrBuyLabel:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 203
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "frame_l.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrFrameL:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 204
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "frame_r.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrFrameR:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 205
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "frame_t.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrFrameT:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 206
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "frame_b.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrFrameB:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 207
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v7, [Ljava/lang/String;

    const-string v4, "btn_refresh_up.png"

    aput-object v4, v1, v2

    const-string v4, "btn_refresh_down.png"

    aput-object v4, v1, v6

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrBtnRefresh:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 208
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v7, [Ljava/lang/String;

    const-string v4, "buy_bg.png"

    aput-object v4, v1, v2

    const-string v4, "buy_bg_chosen.png"

    aput-object v4, v1, v6

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrCardBg:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 209
    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tBackground:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v4, 0x2d

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILeftCover:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 210
    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tBackground:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v2, 0x183

    const/16 v4, 0xc

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUIRightCover:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 212
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "troops_pack.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrTroopPack:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 213
    return-void
.end method

.method protected initTextures()V
    .locals 11

    .prologue
    const/4 v1, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mTexturesAL:Ljava/util/ArrayList;

    .line 179
    new-array v6, v1, [Ljava/lang/String;

    const-string v0, "shop.png"

    aput-object v0, v6, v10

    const-string v0, "shop_kr.png"

    aput-object v0, v6, v4

    const-string v0, "shop_yn.png"

    aput-object v0, v6, v8

    .line 180
    .local v6, "shopPic":[Ljava/lang/String;
    new-array v7, v1, [Ljava/lang/String;

    const-string v0, "shop.plist"

    aput-object v0, v7, v10

    const-string v0, "shop_kr.plist"

    aput-object v0, v7, v4

    const-string v0, "shop_yn.plist"

    aput-object v0, v7, v8

    .line 181
    .local v7, "shopPlist":[Ljava/lang/String;
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "gfx/store/"

    .line 182
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v2

    aget-object v2, v6, v2

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v3

    aget-object v3, v7, v3

    sget-object v5, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 181
    invoke-static {v0, v1, v2, v3, v5}, Lcom/droidhen/andplugin/PlistTexture;->getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    .line 184
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tBackground:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mTexturesAL:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v1, 0x200

    const/16 v2, 0x80

    sget-object v3, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->tFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 190
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->tFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v8, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41c00000    # 24.0f

    const/16 v5, 0xb

    const/16 v8, 0xec

    const/16 v9, 0xf2

    invoke-static {v5, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->fFont:Lorg/anddev/andengine/opengl/font/Font;

    new-array v0, v4, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 191
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->tFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    new-array v0, v4, [Lorg/anddev/andengine/opengl/font/Font;

    .line 192
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->fFont:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 194
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mrFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 195
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "pKeyCode"    # I
    .param p2, "pEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 821
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 823
    :cond_0
    const/4 v0, 0x0

    .line 826
    :goto_0
    return v0

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mBackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 826
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onManagedUpdate(F)V
    .locals 0
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 657
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartScene;->onManagedUpdate(F)V

    .line 658
    return-void
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 831
    const/4 v0, 0x1

    return v0
.end method

.method public onSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z
    .locals 2
    .param p1, "from"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    .line 843
    invoke-static {p0}, Lcom/droidhen/fortconquer/component/Guide;->shouldLoadTexture(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartScene;->onSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z

    move-result v0

    return v0

    .line 846
    :cond_1
    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onSwitchOut(Lcom/droidhen/fortconquer/scenes/SmartScene;)V
    .locals 2
    .param p1, "to"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    .line 835
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    if-ne p1, v0, :cond_0

    .line 836
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->reloadStep()V

    .line 838
    :cond_0
    return-void
.end method

.method protected registerHandlers()V
    .locals 0

    .prologue
    .line 172
    invoke-virtual {p0, p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    .line 173
    return-void
.end method

.method protected registerTouchAreas()V
    .locals 2

    .prologue
    .line 523
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mCardsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 527
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 528
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBtnRefresh:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 529
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 530
    return-void

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setupScene()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 753
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->swithToScene()V

    .line 754
    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 755
    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v2, v6}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 756
    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playBGMusic()V

    .line 757
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->attachEverything()V

    .line 758
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->updateGoods()V

    .line 759
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->updateCards()V

    .line 760
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/scenes/ShopScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 761
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->updateCoinText()V

    .line 762
    sget v2, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_0

    sget v2, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    if-le v2, v8, :cond_0

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v2}, Lcom/droidhen/fortconquer/CCPrefs;->hasNewChecked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 763
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v2, v7}, Lcom/droidhen/fortconquer/CCPrefs;->setNewChecked(Landroid/content/Context;Z)V

    .line 764
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msLNew:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 765
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v2, v2, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v2, v2, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mmLNew:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;->reset()V

    .line 766
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msLNew:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->clearEntityModifiers()V

    .line 767
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msLNew:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mmLNew:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 771
    :goto_0
    invoke-direct {p0, v6}, Lcom/droidhen/fortconquer/scenes/ShopScene;->updateTabs(I)V

    .line 772
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/layer/DragLayer;->getInitialX()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/layer/DragLayer;->getInitialY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/droidhen/fortconquer/layer/DragLayer;->setPosition(FF)V

    .line 773
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->isConcerned()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 774
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v2, v6}, Lcom/droidhen/fortconquer/layer/DragLayer;->setEnableDrag(Z)V

    .line 775
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 788
    .end local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/GameActivity;->CheckAndHideAD()V

    .line 789
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msTRefreshTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v3, 0x7f050050

    new-array v4, v7, [Ljava/lang/Object;

    sget v5, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v5, v5, 0xa

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 790
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->getRefreshCrystal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 791
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->getRefreshCrystal()I

    move-result v2

    if-ge v2, v8, :cond_4

    .line 792
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getInitialX()F

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getInitialY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setPosition(FF)V

    .line 797
    :goto_3
    return-void

    .line 769
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msLNew:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    goto :goto_0

    .line 776
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    aget-object v0, v2, v1

    .line 777
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 778
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getValue()I

    move-result v2

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getCoins()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 779
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Unit;->getQuality()I

    move-result v2

    if-nez v2, :cond_2

    .line 780
    invoke-direct {p0, v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->setGoodsLayerPos(I)V

    .line 781
    sget-object v2, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    iget-object v2, v2, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/layer/DragLayer;->getX()F

    move-result v3

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getX()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getWidth()F

    move-result v4

    const v5, 0x3eb33333    # 0.35f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    iget-object v4, v4, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    goto/16 :goto_2

    .line 775
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 786
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v2, v7}, Lcom/droidhen/fortconquer/layer/DragLayer;->setEnableDrag(Z)V

    goto/16 :goto_2

    .line 794
    :cond_4
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getInitialX()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene;->msCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getInitialY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setPosition(FF)V

    goto :goto_3
.end method
