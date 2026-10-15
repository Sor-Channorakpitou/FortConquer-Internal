.class public Lcom/droidhen/fortconquer/scenes/UnitSelectScene;
.super Lcom/droidhen/fortconquer/scenes/SmartScene;
.source "UnitSelectScene.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/scenes/UnitSelectScene$POS;
    }
.end annotation


# static fields
.field private static final CARD_NUM_PER_ROW:I = 0x4

.field private static final NUM_PER_PAGE:I = 0x8

.field public static final SHOW_DISCOUNT_PIC_TIME:Ljava/lang/String; = "discount.showTime"

.field public static final mTaskEvolve:Ljava/lang/Runnable;

.field public static final mTaskMarket:Ljava/lang/Runnable;

.field public static final mTaskUpgrade:Ljava/lang/Runnable;


# instance fields
.field private _page:I

.field public bIsShowGiftPackage:Z

.field public bIsShowingDialog:Z

.field private commonFont:Lorg/anddev/andengine/opengl/font/Font;

.field private commonFontTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private dragonType:I

.field private giftPackageType:I

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

.field public final mGiftPackage:Ljava/lang/Runnable;

.field private mGiftPackageCallback:Lcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;

.field private mGiftPackageItems:[Ljava/lang/String;

.field private mPostIndex:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

.field private mTaskStart:Ljava/lang/Runnable;

.field private mTaskStartNoChoose:Ljava/lang/Runnable;

.field private mTaskUnlock:Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

.field protected mUnitChosenLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field protected mUnitSelectBg:Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

.field protected mUnitSelectTexture:Lcom/droidhen/andplugin/PlistTexture;

.field protected mUnitSelectTextureMore:Lcom/droidhen/andplugin/PlistTexture;

.field public mmLNew:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

.field private mmNoChooseTip:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

.field private mrBottomFrame:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrBtnArrow:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mrBtnEvolve:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mrBtnGiftPackage:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mrBtnMarket:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mrBtnStart:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mrBtnUpgrade:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mrCardSlot:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mrDiscount:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private mrIconCircle:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrLEvolve:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrLMarket:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrLTitle:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrLUnlock:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrLUpgrade:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrTipChoose:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private msArrowL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msArrowR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msBottomFrame:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msBtnGiftPackage:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msBtnStart:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msCardSlot:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msCardsLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private msCoinBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

.field private msDiscountPost:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msIconCircle:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msLEvolve:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msLMarket:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msLNew:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msLStage:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msLTitle:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msLUnlock:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msLUpgrade:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msPostBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

.field private msStageNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private msTRscSpeed:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private msTipsNoChoose:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private mtDiscount:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$3;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$3;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTaskEvolve:Ljava/lang/Runnable;

    .line 134
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$4;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$4;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTaskMarket:Ljava/lang/Runnable;

    .line 140
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$5;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$5;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTaskUpgrade:Ljava/lang/Runnable;

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 3
    .param p1, "shootTheAppleGame"    # Lcom/droidhen/fortconquer/GameActivity;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 223
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    .line 57
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mGiftItems:[Ljava/lang/String;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGiftPackageItems:[Ljava/lang/String;

    .line 61
    iput v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->_page:I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    .line 102
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$1;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$1;-><init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTaskStart:Ljava/lang/Runnable;

    .line 116
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$2;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$2;-><init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTaskStartNoChoose:Ljava/lang/Runnable;

    .line 146
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$6;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$6;-><init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGiftPackage:Ljava/lang/Runnable;

    .line 164
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$7;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$7;-><init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGiftPackageCallback:Lcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;

    .line 176
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$8;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$8;-><init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTaskUnlock:Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

    .line 224
    iput-boolean v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->bIsShowingDialog:Z

    .line 225
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->setOnAreaTouchTraversalFrontToBack()V

    .line 226
    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->setTouchAreaBindingEnabled(Z)V

    .line 227
    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->setOnSceneTouchListenerBindingEnabled(Z)V

    .line 228
    return-void
.end method

.method static synthetic access$0(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mmNoChooseTip:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    return-object v0
.end method

.method static synthetic access$1(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mmNoChooseTip:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    return-void
.end method

.method static synthetic access$10(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTaskUnlock:Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

    return-object v0
.end method

.method static synthetic access$11(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->_page:I

    return v0
.end method

.method static synthetic access$12(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Ljava/util/List;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;Lcom/droidhen/fortconquer/units/Card;)V
    .locals 0

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->onChooseCard(Lcom/droidhen/fortconquer/units/Card;)V

    return-void
.end method

.method static synthetic access$14(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V
    .locals 0

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->detachDiscountPost()V

    return-void
.end method

.method static synthetic access$15(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mPostIndex:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    return-object v0
.end method

.method static synthetic access$2(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Lorg/anddev/andengine/entity/sprite/Sprite;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msTipsNoChoose:Lorg/anddev/andengine/entity/sprite/Sprite;

    return-object v0
.end method

.method static synthetic access$3(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->giftPackageType:I

    return-void
.end method

.method static synthetic access$4(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->dragonType:I

    return-void
.end method

.method static synthetic access$5(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->giftPackageType:I

    return v0
.end method

.method static synthetic access$6(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->dragonType:I

    return v0
.end method

.method static synthetic access$7(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Lcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGiftPackageCallback:Lcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;

    return-object v0
.end method

.method static synthetic access$8(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGiftPackageItems:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)[Lcom/droidhen/andplugin/ComposedAnimatedButton;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardSlot:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    return-object v0
.end method

.method private createBtns()V
    .locals 12

    .prologue
    .line 408
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msIconCircle:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msIconCircle:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v7, v0, v1

    .line 409
    .local v7, "circleCX":F
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msIconCircle:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msIconCircle:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v8, v0, v1

    .line 410
    .local v8, "circleCY":F
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msIconCircle:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v9, v0, v1

    .line 412
    .local v9, "circleR":F
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    float-to-double v2, v7

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v10

    float-to-double v10, v9

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnUpgrade:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v9, v2

    add-float/2addr v2, v8

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnUpgrade:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnUpgrade:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    sget-object v4, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTaskUpgrade:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 413
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    float-to-double v2, v7

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v10

    float-to-double v10, v9

    mul-double/2addr v4, v10

    sub-double/2addr v2, v4

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnEvolve:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnEvolve:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    sget-object v4, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTaskEvolve:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 414
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnMarket:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, v7, v1

    float-to-double v2, v8

    float-to-double v4, v9

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    div-double/2addr v4, v10

    sub-double/2addr v2, v4

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnMarket:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnMarket:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    sget-object v4, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTaskMarket:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 415
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getScaleYMakeup()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setScaleY(F)V

    .line 416
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getScaleYMakeup()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setScaleY(F)V

    .line 417
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getScaleYMakeup()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setScaleY(F)V

    .line 418
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/high16 v1, 0x442e0000    # 696.0f

    const v2, 0x43c88000    # 401.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnStart:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTaskStart:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnStart:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 419
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/high16 v1, 0x42200000    # 40.0f

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnGiftPackage:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGiftPackage:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnGiftPackage:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 420
    const/16 v6, 0xa

    .line 421
    .local v6, "BORDER":I
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$12;

    const/high16 v2, 0x41700000    # 15.0f

    const/high16 v3, 0x434d0000    # 205.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnArrow:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    new-instance v5, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$11;

    invoke-direct {v5, p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$11;-><init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$12;-><init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msArrowL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 432
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msArrowL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setFlippedHorizontal(Z)V

    .line 433
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$14;

    const v2, 0x43ed8000    # 475.0f

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msArrowL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v3

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnArrow:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v4

    new-instance v5, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$13;

    invoke-direct {v5, p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$13;-><init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$14;-><init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msArrowR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 444
    return-void
.end method

.method private createUI()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    const v11, 0x3e99999a    # 0.3f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 306
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v0, v1, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 307
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v0, v1, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitChosenLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 309
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x41a00000    # 20.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrLTitle:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v2, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLTitle:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 310
    new-instance v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/droidhen/fortconquer/component/CoinBarEntity;-><init>(Lcom/droidhen/fortconquer/scenes/SmartScene;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCoinBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    .line 311
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardSlot:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 312
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v2, 0x43d30000    # 422.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->commonFont:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, ""

    const/16 v5, 0x14

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msTRscSpeed:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 313
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardSlot:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 332
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v2, 0x43bc8000    # 377.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBottomFrame:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBottomFrame:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 334
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;

    const/high16 v1, 0x420c0000    # 35.0f

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-direct {v0, p0, v1, v2}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;-><init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardsLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 392
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v1, 0x44084000    # 545.0f

    const/high16 v2, 0x43160000    # 150.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrIconCircle:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msIconCircle:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 393
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x40800000    # 4.0f

    const v2, 0x43c48000    # 393.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rLStage:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLStage:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 394
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/high16 v1, 0x40a00000    # 5.0f

    const v2, 0x43d48000    # 425.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rNStage:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msStageNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 395
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->createBtns()V

    .line 396
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrLUpgrade:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v9

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v2, v9

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrLUpgrade:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLUpgrade:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 397
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrLMarket:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v9

    add-float/2addr v1, v2

    sub-float/2addr v1, v9

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrLMarket:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrLMarket:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLMarket:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 398
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrLEvolve:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v9

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v2, v9

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrLEvolve:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLEvolve:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 399
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x43820000    # 260.0f

    const/high16 v2, 0x43d20000    # 420.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrTipChoose:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msTipsNoChoose:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 400
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v1

    const/high16 v2, 0x42820000    # 65.0f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rLNew:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLNew:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 401
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLNew:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/16 v1, 0x302

    const/16 v2, 0x304

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setBlendFunction(II)V

    .line 402
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrCardSlot:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrLUnlock:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrCardSlot:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileHeight()I

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrLUnlock:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrLUnlock:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLUnlock:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 403
    new-instance v0, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    new-instance v1, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v3, 0x0

    new-instance v4, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    invoke-direct {v4, v12, v11, v10}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    invoke-direct {v4, v11, v10, v10}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 404
    new-instance v4, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    invoke-direct {v4, v12, v10, v11}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 403
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mmLNew:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    .line 405
    return-void

    .line 314
    :cond_0
    move v7, v6

    .line 315
    .local v7, "index":I
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardSlot:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    new-instance v2, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    mul-int/lit8 v3, v6, 0x4b

    add-int/lit16 v3, v3, 0xee

    int-to-float v3, v3

    .line 316
    const v4, 0x43c78000    # 399.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrCardSlot:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v5}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v5

    new-instance v8, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$9;

    invoke-direct {v8, p0, v7}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$9;-><init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;I)V

    invoke-direct {v2, v3, v4, v5, v8}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    .line 315
    aput-object v2, v0, v6

    .line 330
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardSlot:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v0, v0, v6

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setEnableAnimated(Z)V

    .line 313
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private detachDiscountPost()V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msDiscountPost:Lorg/anddev/andengine/entity/sprite/Sprite;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msDiscountPost:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->detachSelf()Z

    .line 698
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msDiscountPost:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msPostBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msPostBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/primitive/Rectangle;->detachSelf()Z

    .line 702
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msPostBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    .line 704
    :cond_1
    return-void
.end method

.method private onChooseCard(Lcom/droidhen/fortconquer/units/Card;)V
    .locals 7
    .param p1, "chosenOne"    # Lcom/droidhen/fortconquer/units/Card;

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v5, 0x40a00000    # 5.0f

    .line 573
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getChosenCards()Ljava/util/ArrayList;

    move-result-object v1

    .line 574
    .local v1, "chosenCards":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/fortconquer/units/Card;>;"
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getCardFront()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v4, v4, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Player;->getBagNumber()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 575
    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->spGrayCoverPool:Lcom/droidhen/fortconquer/kits/ObjectPool;

    invoke-interface {v3}, Lcom/droidhen/fortconquer/kits/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 576
    .local v2, "cover":Lorg/anddev/andengine/entity/primitive/Rectangle;
    invoke-virtual {p1, v2}, Lcom/droidhen/fortconquer/units/Card;->setCardFront(Lorg/anddev/andengine/entity/shape/IShape;)V

    .line 577
    invoke-virtual {v2, v5, v5}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    .line 578
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getWidthScaled()F

    move-result v3

    sub-float/2addr v3, v6

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getHeightScaled()F

    move-result v4

    sub-float/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setSize(FF)V

    .line 579
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->updateView()V

    .line 581
    .end local v2    # "cover":Lorg/anddev/andengine/entity/primitive/Rectangle;
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v4, v4, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Player;->getBagNumber()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 582
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 583
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 584
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->deepCopyWithoutScale()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v0

    .line 585
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateChosenCards()V

    .line 587
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateCardCover(Lcom/droidhen/fortconquer/units/Card;)V

    .line 589
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    :cond_1
    return-void
.end method

.method private updateCardCover(Lcom/droidhen/fortconquer/units/Card;)V
    .locals 4
    .param p1, "chosenOne"    # Lcom/droidhen/fortconquer/units/Card;

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v2, 0x40a00000    # 5.0f

    .line 563
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getCardFront()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->getChosenCards()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->spGrayCoverPool:Lcom/droidhen/fortconquer/kits/ObjectPool;

    invoke-interface {v1}, Lcom/droidhen/fortconquer/kits/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 565
    .local v0, "cover":Lorg/anddev/andengine/entity/primitive/Rectangle;
    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/units/Card;->setCardFront(Lorg/anddev/andengine/entity/shape/IShape;)V

    .line 566
    invoke-virtual {v0, v2, v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    .line 567
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getWidthScaled()F

    move-result v1

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getHeightScaled()F

    move-result v2

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setSize(FF)V

    .line 568
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->updateView()V

    .line 570
    .end local v0    # "cover":Lorg/anddev/andengine/entity/primitive/Rectangle;
    :cond_0
    return-void
.end method

.method private updateChosenCards()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 592
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getChosenCards()Ljava/util/ArrayList;

    move-result-object v1

    .line 593
    .local v1, "chosenCards":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/fortconquer/units/Card;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 602
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 603
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnStart:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v3, v5}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setEnableAnimated(Z)V

    .line 604
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnStart:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v3, v6}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 605
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnStart:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTaskStart:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setClickTask(Ljava/lang/Runnable;)V

    .line 606
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 607
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    .line 614
    :cond_0
    :goto_1
    return-void

    .line 594
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 595
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    mul-int/lit8 v3, v2, 0x4b

    add-int/lit16 v3, v3, 0xee

    int-to-float v3, v3

    const v4, 0x43c78000    # 399.0f

    invoke-virtual {v0, v3, v4}, Lcom/droidhen/fortconquer/units/Card;->setPosition(FF)V

    .line 596
    invoke-virtual {v0, v5}, Lcom/droidhen/fortconquer/units/Card;->setIsSmall(Z)V

    .line 597
    const v3, 0x3f570a3d    # 0.84f

    invoke-virtual {v0, v3}, Lcom/droidhen/fortconquer/units/Card;->setScale(F)V

    .line 598
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->detachSelf()Z

    .line 599
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->reset()V

    .line 600
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitChosenLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v3, v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 593
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 610
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    :cond_2
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnStart:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v3, v6}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setEnableAnimated(Z)V

    .line 611
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnStart:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTaskStartNoChoose:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setClickTask(Ljava/lang/Runnable;)V

    .line 612
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnStart:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v3, v5}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    goto :goto_1
.end method

.method private updateDiscountPost()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 707
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->detachDiscountPost()V

    .line 708
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mPostIndex:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    invoke-static {v0}, Lcom/droidhen/fortconquer/kits/DiscountManager;->getInstance(Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;)Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-result-object v6

    .line 709
    .local v6, "instance":Lcom/droidhen/fortconquer/kits/DiscountManager;
    invoke-virtual {v6}, Lcom/droidhen/fortconquer/kits/DiscountManager;->inDiscountTime()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/droidhen/fortconquer/kits/DiscountManager;->pic:Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/kits/DiscountManager;->isPostShowed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v0

    const/16 v1, 0xd

    if-lt v0, v1, :cond_2

    .line 710
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mtDiscount:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->clearTextureAtlasSources()V

    .line 711
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mtDiscount:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    iget-object v1, v6, Lcom/droidhen/fortconquer/kits/DiscountManager;->pic:Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;

    invoke-virtual {v0, v1, v3, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V

    .line 712
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrDiscount:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v1, v6, Lcom/droidhen/fortconquer/kits/DiscountManager;->pic:Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->setWidth(I)V

    .line 713
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrDiscount:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v1, v6, Lcom/droidhen/fortconquer/kits/DiscountManager;->pic:Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->setHeight(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 714
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mtDiscount:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    .line 715
    invoke-virtual {v6}, Lcom/droidhen/fortconquer/kits/DiscountManager;->setPostShowed()V

    .line 716
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msDiscountPost:Lorg/anddev/andengine/entity/sprite/Sprite;

    if-nez v0, :cond_0

    .line 717
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;

    iget-object v1, v6, Lcom/droidhen/fortconquer/kits/DiscountManager;->pic:Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x190

    int-to-float v1, v1

    iget-object v3, v6, Lcom/droidhen/fortconquer/kits/DiscountManager;->pic:Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    rsub-int v3, v3, 0xf0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrDiscount:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;-><init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msDiscountPost:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msPostBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    if-nez v0, :cond_1

    .line 753
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$16;

    const/high16 v4, 0x44480000    # 800.0f

    const/high16 v5, 0x43f00000    # 480.0f

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$16;-><init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;FFFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msPostBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 775
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msPostBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setColor(FFFF)V

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msPostBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 778
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msPostBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 779
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msDiscountPost:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 780
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msDiscountPost:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 784
    :goto_0
    return-void

    .line 782
    :cond_2
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->nextPost()V

    goto :goto_0
.end method

.method private updateGiftPackage(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 629
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnGiftPackage:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, p1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setVisible(Z)V

    .line 630
    if-eqz p1, :cond_0

    .line 631
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnGiftPackage:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 635
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnGiftPackage:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    goto :goto_0
.end method

.method private updateGiftPackageItem()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 617
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 618
    .local v0, "ca":Ljava/util/Calendar;
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 620
    .local v1, "curDay":I
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v3}, Lcom/droidhen/fortconquer/CCPrefs;->getGiftPackageShowTime(Landroid/content/Context;)I

    move-result v2

    .line 621
    .local v2, "preDay":I
    if-lt v1, v2, :cond_0

    sub-int v3, v1, v2

    if-lt v3, v4, :cond_1

    .line 622
    :cond_0
    invoke-direct {p0, v4}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateGiftPackage(Z)V

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateGiftPackage(Z)V

    goto :goto_0
.end method


# virtual methods
.method public IsTexturesLoaded()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTexture:Lcom/droidhen/andplugin/PlistTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTexture:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistTexture;->isLoadedToHardware()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mDragonWingTextures:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistTexture;->isLoadedToHardware()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public afterSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)V
    .locals 2
    .param p1, "from"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    .line 795
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v0

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 796
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/droidhen/fortconquer/component/Guide;->jump(I)V

    .line 798
    :cond_0
    return-void
.end method

.method protected attachEverything()V
    .locals 4

    .prologue
    .line 448
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 449
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCoinBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 451
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardsLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 452
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLTitle:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 453
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBottomFrame:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 454
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msIconCircle:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 455
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 456
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLMarket:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 457
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 458
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLEvolve:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 459
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLUpgrade:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 460
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 461
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnStart:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 462
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnGiftPackage:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardSlot:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitChosenLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 467
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msArrowL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 468
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msArrowR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 469
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLStage:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 470
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msStageNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 471
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msTipsNoChoose:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 472
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msTRscSpeed:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 473
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLNew:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 474
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msTipsNoChoose:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/16 v2, 0x302

    const/16 v3, 0x304

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setBlendFunction(II)V

    .line 475
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msTipsNoChoose:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setAlpha(F)V

    .line 476
    return-void

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardSlot:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public closeGiftPackageDlg()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 898
    invoke-direct {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateGiftPackage(Z)V

    .line 899
    iput-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->bIsShowGiftPackage:Z

    .line 900
    invoke-static {}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->close()V

    .line 902
    return-void
.end method

.method protected createBGAndSprites()V
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->sBackground:Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->setBackground(Lorg/anddev/andengine/entity/scene/background/IBackground;)V

    .line 302
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->createUI()V

    .line 303
    return-void
.end method

.method public getDragonType()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->dragonType:I

    return v0
.end method

.method protected initTextureRegions()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 279
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v3, "blank_slot.png"

    aput-object v3, v1, v2

    const-string v3, "lock_slot.png"

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrCardSlot:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 280
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "bottom_frame.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBottomFrame:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 282
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBtnUpgrade:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnUpgrade:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 283
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBtnEvolve:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnEvolve:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 284
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBtnMarket:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnMarket:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 285
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v3, "btn_start_up.png"

    aput-object v3, v1, v2

    const-string v3, "btn_start_down.png"

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnStart:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 286
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTextureMore:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v3, "gift_pack_up.png"

    aput-object v3, v1, v2

    const-string v3, "gift_pack_down.png"

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnGiftPackage:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 287
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_evolve.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrLEvolve:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 288
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_select_troops.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrLTitle:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 289
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_market.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrLMarket:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 290
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_upgrade.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrLUpgrade:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 291
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v3, "arrow.png"

    aput-object v3, v1, v2

    const-string v3, "arrow_down.png"

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrBtnArrow:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 293
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "icon_circle.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrIconCircle:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 294
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "tips_please_choose.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrTipChoose:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 295
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_unlock.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrLUnlock:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 296
    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mtDiscount:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v4, 0x200

    const/16 v5, 0x134

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mrDiscount:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 297
    return-void
.end method

.method protected initTextures()V
    .locals 14

    .prologue
    const/16 v13, 0x100

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v12, 0x0

    .line 252
    new-array v6, v11, [Ljava/lang/String;

    const-string v0, "unit_select.png"

    aput-object v0, v6, v12

    const-string v0, "unit_select_kr.png"

    aput-object v0, v6, v4

    const-string v0, "unit_select_yn.png"

    aput-object v0, v6, v10

    .line 253
    .local v6, "selectPic":[Ljava/lang/String;
    new-array v8, v11, [Ljava/lang/String;

    const-string v0, "unit_select.plist"

    aput-object v0, v8, v12

    const-string v0, "unit_select_kr.plist"

    aput-object v0, v8, v4

    const-string v0, "unit_select_yn.plist"

    aput-object v0, v8, v10

    .line 254
    .local v8, "selectPlist":[Ljava/lang/String;
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "gfx/unit_select/"

    .line 255
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v2

    aget-object v2, v6, v2

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v3

    aget-object v3, v8, v3

    sget-object v5, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 254
    invoke-static {v0, v1, v2, v3, v5}, Lcom/droidhen/andplugin/PlistTexture;->getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTexture:Lcom/droidhen/andplugin/PlistTexture;

    .line 257
    new-array v7, v11, [Ljava/lang/String;

    const-string v0, "gift.png"

    aput-object v0, v7, v12

    const-string v0, "gift_kr.png"

    aput-object v0, v7, v4

    const-string v0, "gift_yn.png"

    aput-object v0, v7, v10

    .line 258
    .local v7, "selectPicMore":[Ljava/lang/String;
    new-array v9, v11, [Ljava/lang/String;

    const-string v0, "gift.plist"

    aput-object v0, v9, v12

    const-string v0, "gift_kr.plist"

    aput-object v0, v9, v4

    const-string v0, "gift_yn.plist"

    aput-object v0, v9, v10

    .line 259
    .local v9, "selectPlistMore":[Ljava/lang/String;
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "gfx/unit_select/"

    .line 260
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v2

    aget-object v2, v7, v2

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v3

    aget-object v3, v9, v3

    sget-object v5, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 259
    invoke-static {v0, v1, v2, v3, v5}, Lcom/droidhen/andplugin/PlistTexture;->getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTextureMore:Lcom/droidhen/andplugin/PlistTexture;

    .line 262
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v1, 0x200

    const/16 v2, 0x200

    sget-object v3, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mtDiscount:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTexturesAL:Ljava/util/ArrayList;

    .line 264
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTexturesAL:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTexture:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTexturesAL:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mUnitSelectTextureMore:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tBackground:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v13, v13, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->commonFontTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 271
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->commonFontTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v10, v12}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    .line 272
    const/16 v5, 0x45

    const/16 v10, 0xe3

    const/16 v11, 0xee

    invoke-static {v5, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    .line 271
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->commonFont:Lorg/anddev/andengine/opengl/font/Font;

    .line 273
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v0

    new-array v1, v4, [Lorg/anddev/andengine/opengl/texture/ITexture;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->commonFontTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v2, v1, v12

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTextures([Lorg/anddev/andengine/opengl/texture/ITexture;)V

    .line 274
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getFontManager()Lorg/anddev/andengine/opengl/font/FontManager;

    move-result-object v0

    new-array v1, v4, [Lorg/anddev/andengine/opengl/font/Font;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->commonFont:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v2, v1, v12

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/font/FontManager;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 275
    return-void
.end method

.method protected nextPost()V
    .locals 2

    .prologue
    .line 787
    invoke-static {}, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->values()[Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mPostIndex:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mPostIndex:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    .line 788
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mPostIndex:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->ordinal()I

    move-result v0

    sget-object v1, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->_DST_COUNT_:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 789
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateDiscountPost()V

    .line 791
    :cond_0
    return-void
.end method

.method public onCardDechoose(Lcom/droidhen/fortconquer/units/Card;)V
    .locals 5
    .param p1, "card"    # Lcom/droidhen/fortconquer/units/Card;

    .prologue
    .line 823
    if-nez p1, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getChosenCards()Ljava/util/ArrayList;

    move-result-object v1

    .line 826
    .local v1, "chosenCards":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/fortconquer/units/Card;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 829
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 830
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 831
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 832
    .local v0, "chosen":Lcom/droidhen/fortconquer/units/Card;
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/droidhen/fortconquer/units/Card;

    .line 833
    .local v2, "oriCard":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Card;->detachChildren()V

    .line 834
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getCardFront()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 835
    sget-object v4, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->spGrayCoverPool:Lcom/droidhen/fortconquer/kits/ObjectPool;

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getCardFront()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v3

    check-cast v3, Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-interface {v4, v3}, Lcom/droidhen/fortconquer/kits/ObjectPool;->put(Ljava/lang/Object;)V

    .line 837
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/units/Card;->setCardFront(Lorg/anddev/andengine/entity/shape/IShape;)V

    .line 838
    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Card;->updateView()V

    .line 839
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->detachSelf()Z

    .line 840
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 841
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateChosenCards()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "pKeyCode"    # I
    .param p2, "pEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 851
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    :cond_0
    const/4 v0, 0x0

    .line 888
    :goto_0
    return v0

    .line 855
    :cond_1
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->bIsShowGiftPackage:Z

    if-eqz v0, :cond_2

    .line 856
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    new-instance v1, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$17;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$17;-><init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 888
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 863
    :cond_2
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->bIsShowingDialog:Z

    if-eqz v0, :cond_3

    .line 864
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    new-instance v1, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$18;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$18;-><init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 871
    :cond_3
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msDiscountPost:Lorg/anddev/andengine/entity/sprite/Sprite;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msDiscountPost:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 872
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    new-instance v1, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$19;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$19;-><init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 880
    :cond_4
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    new-instance v1, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$20;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$20;-><init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 808
    const/4 v0, 0x1

    return v0
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 2
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 814
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msPostBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msPostBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/primitive/Rectangle;->hasParent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 815
    :cond_0
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->isHide()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 816
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->hide()V

    .line 819
    :cond_1
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartScene;->onSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    return v0
.end method

.method public onSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z
    .locals 3
    .param p1, "from"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    const/16 v2, 0xd

    .line 918
    invoke-static {p0}, Lcom/droidhen/fortconquer/component/Guide;->shouldLoadTexture(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 921
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/droidhen/fortconquer/component/Guide;->jump(I)V

    .line 922
    invoke-static {v2}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    .line 924
    :cond_0
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v0

    if-ne v0, v2, :cond_2

    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 925
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->setupScene()V

    .line 926
    const/4 v0, 0x0

    .line 933
    :goto_0
    return v0

    .line 929
    :cond_1
    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 930
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 933
    :cond_2
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartScene;->onSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSwitchOut(Lcom/droidhen/fortconquer/scenes/SmartScene;)V
    .locals 3
    .param p1, "to"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    .line 906
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 907
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Player;->saveChosenCard()V

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mtDiscount:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mtDiscount:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->isLoadedToHardware()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/anddev/andengine/opengl/texture/Texture;

    const/4 v1, 0x0

    .line 910
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mtDiscount:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->unloadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    .line 912
    :cond_1
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartScene;->onSwitchOut(Lcom/droidhen/fortconquer/scenes/SmartScene;)V

    .line 913
    return-void
.end method

.method protected registerHandlers()V
    .locals 0

    .prologue
    .line 846
    invoke-virtual {p0, p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    .line 847
    return-void
.end method

.method protected registerTouchAreas()V
    .locals 2

    .prologue
    .line 481
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msArrowL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 482
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msArrowR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 483
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnEvolve:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 484
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnUpgrade:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 485
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnMarket:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 486
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnStart:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 487
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msBtnGiftPackage:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 488
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardsLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 489
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardSlot:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 492
    return-void

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardSlot:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setupScene()V
    .locals 0

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->setupUnitSelectScene()V

    .line 894
    return-void
.end method

.method public setupUnitSelectScene()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 655
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->swithToScene()V

    .line 657
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 658
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0, v4}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 659
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playBGMusic()V

    .line 660
    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateCards(I)V

    .line 661
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateSlots()V

    .line 662
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateCoinText()V

    .line 663
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateGiftPackageItem()V

    .line 664
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msStageNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v1, v1, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 665
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msStageNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mStageData:Lcom/droidhen/fortconquer/stages/StageData;

    iget v1, v1, Lcom/droidhen/fortconquer/stages/StageData;->mStage:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x19

    int-to-float v1, v1

    const v2, 0x43d48000    # 425.0f

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setPosition(FF)V

    .line 666
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->updateRscLv()V

    .line 667
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mRscLvText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 668
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msTRscSpeed:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v1, 0x7f05005c

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getMineralsPerMin()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msTRscSpeed:Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x43590000    # 217.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msTRscSpeed:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msTRscSpeed:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 670
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v0}, Lcom/droidhen/fortconquer/CCPrefs;->hasNewChecked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 671
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLNew:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 672
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mmLNew:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;->reset()V

    .line 673
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLNew:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->clearEntityModifiers()V

    .line 674
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLNew:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mmLNew:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 678
    :goto_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->CheckAndHideAD()V

    .line 679
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->isConcerned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-static {v5}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    .line 686
    :cond_0
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateChosenCards()V

    .line 688
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    if-eqz v0, :cond_1

    .line 689
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    .line 690
    :cond_1
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->cleanBattleField()V

    .line 691
    sget-object v0, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->DST_PURCHASE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mPostIndex:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    .line 692
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateDiscountPost()V

    .line 693
    return-void

    .line 676
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLNew:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    goto :goto_0
.end method

.method public updateCards(I)V
    .locals 10
    .param p1, "direct"    # I

    .prologue
    const/4 v9, 0x1

    const v8, 0x3f1c28f6    # 0.61f

    const/4 v7, 0x0

    .line 500
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardsLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 501
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v5, v5, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Player;->getAllCards()Ljava/util/ArrayList;

    move-result-object v3

    .line 502
    .local v3, "pCard":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/fortconquer/units/Card;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_3

    .line 511
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_1
    if-gez v1, :cond_5

    .line 527
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/droidhen/fortconquer/units/Player;->sortCards(Ljava/util/List;I)V

    .line 528
    :goto_2
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    rem-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_8

    .line 534
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v4, v5, 0x8

    .line 535
    .local v4, "totalPage":I
    if-gez v4, :cond_0

    .line 536
    const/4 v4, 0x0

    .line 538
    :cond_0
    iget v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->_page:I

    add-int/2addr v5, p1

    iput v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->_page:I

    .line 539
    iget v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->_page:I

    if-gez v5, :cond_1

    .line 540
    iput v7, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->_page:I

    .line 541
    :cond_1
    iget v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->_page:I

    if-le v5, v4, :cond_2

    .line 542
    iput v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->_page:I

    .line 543
    :cond_2
    iget v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->_page:I

    mul-int/lit8 v1, v5, 0x8

    :goto_3
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->_page:I

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0x8

    if-ge v5, v6, :cond_a

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_4
    if-lt v1, v5, :cond_9

    .line 550
    iget v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->_page:I

    if-nez v5, :cond_b

    .line 551
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msArrowL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v5, v7}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setVisible(Z)V

    .line 555
    :goto_5
    iget v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->_page:I

    if-ne v5, v4, :cond_c

    .line 556
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msArrowR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v5, v7}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setVisible(Z)V

    .line 560
    :goto_6
    return-void

    .line 503
    .end local v4    # "totalPage":I
    :cond_3
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 504
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 505
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->deepCopyWithoutScale()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v0

    .line 506
    invoke-virtual {v0, v7}, Lcom/droidhen/fortconquer/units/Card;->setIsSmall(Z)V

    .line 507
    invoke-virtual {v0, v8}, Lcom/droidhen/fortconquer/units/Card;->setScale(F)V

    .line 508
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 512
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    :cond_5
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/droidhen/fortconquer/units/BlankCard;

    if-eqz v5, :cond_7

    .line 513
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/BlankCard;

    .line 514
    .local v0, "card":Lcom/droidhen/fortconquer/units/BlankCard;
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/BlankCard;->detachSelf()Z

    .line 515
    sget-object v5, Lcom/droidhen/fortconquer/units/BlankCard;->POOL:Lcom/droidhen/fortconquer/kits/ObjectPool;

    invoke-interface {v5, v0}, Lcom/droidhen/fortconquer/kits/ObjectPool;->put(Ljava/lang/Object;)V

    .line 511
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/BlankCard;
    :cond_6
    :goto_7
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    .line 518
    :cond_7
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 519
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 520
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->detachSelf()Z

    .line 521
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->detachChildren()V

    .line 522
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getCardFront()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 523
    sget-object v6, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->spGrayCoverPool:Lcom/droidhen/fortconquer/kits/ObjectPool;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getCardFront()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v5

    check-cast v5, Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-interface {v6, v5}, Lcom/droidhen/fortconquer/kits/ObjectPool;->put(Ljava/lang/Object;)V

    goto :goto_7

    .line 529
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    :cond_8
    invoke-static {}, Lcom/droidhen/fortconquer/units/BlankCard;->get()Lcom/droidhen/fortconquer/units/BlankCard;

    move-result-object v0

    .line 530
    .local v0, "card":Lcom/droidhen/fortconquer/units/BlankCard;
    invoke-virtual {v0, v8}, Lcom/droidhen/fortconquer/units/BlankCard;->setScale(F)V

    .line 531
    invoke-virtual {v0, v7}, Lcom/droidhen/fortconquer/units/BlankCard;->setType(I)V

    .line 532
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 544
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/BlankCard;
    .restart local v4    # "totalPage":I
    :cond_9
    iget v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->_page:I

    mul-int/lit8 v5, v5, 0x8

    sub-int v2, v1, v5

    .line 545
    .local v2, "index":I
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mAllCards:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 546
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    rem-int/lit8 v5, v2, 0x4

    mul-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0x17

    int-to-float v5, v5

    div-int/lit8 v6, v2, 0x4

    mul-int/lit16 v6, v6, 0x96

    add-int/lit8 v6, v6, 0x5

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Lcom/droidhen/fortconquer/units/Card;->setPosition(FF)V

    .line 547
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardsLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v5, v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 548
    invoke-direct {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateCardCover(Lcom/droidhen/fortconquer/units/Card;)V

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    .end local v2    # "index":I
    :cond_a
    iget v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->_page:I

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x8

    goto/16 :goto_4

    .line 553
    :cond_b
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msArrowL:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v5, v9}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setVisible(Z)V

    goto/16 :goto_5

    .line 558
    :cond_c
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msArrowR:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v5, v9}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setVisible(Z)V

    goto/16 :goto_6
.end method

.method public updateCoinText()V
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCoinBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->updateText()V

    .line 804
    return-void
.end method

.method public updateSlots()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 638
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLUnlock:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->detachSelf()Z

    .line 639
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardSlot:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 651
    return-void

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->getBagNumber()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 641
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardSlot:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setFrameCount(I)V

    .line 642
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardSlot:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 639
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardSlot:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v1, v1, v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setFrameCount(I)V

    .line 645
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLUnlock:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->hasParent()Z

    move-result v1

    if-nez v1, :cond_2

    .line 646
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardSlot:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msLUnlock:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 648
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->msCardSlot:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    goto :goto_1
.end method
