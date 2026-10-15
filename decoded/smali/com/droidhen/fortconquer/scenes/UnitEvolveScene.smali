.class public Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;
.super Lcom/droidhen/fortconquer/scenes/SmartScene;
.source "UnitEvolveScene.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$POS;
    }
.end annotation


# static fields
.field static final ANIMATE_SPEED:F = 1.0f

.field static final CARD_MARGIN:I = 0xa5


# instance fields
.field curX:F

.field curY:F

.field grabX:F

.field isScrolling:Z

.field private final mAllCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/droidhen/fortconquer/units/Card;",
            ">;"
        }
    .end annotation
.end field

.field private mBackRunnable:Ljava/lang/Runnable;

.field private mBtnEvolveRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mBtnEvolveSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private mBtnSuperEvolveRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mBtnSuperEvolveSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

.field private mCoinBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

.field private mCurrentCamp:I

.field protected mEvolvedCard:Lcom/droidhen/fortconquer/units/Card;

.field private mFont:Lorg/anddev/andengine/opengl/font/Font;

.field private mFontTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field protected mPickPart:I

.field protected mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

.field protected mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

.field protected mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

.field private mTabCampIcons:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private mUIEvolveChestRegion:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mUIEvolveChestSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private mUIEvolveFrameRegion:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mUIEvolveFrameSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private mUIEvolveHeadRegion:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mUIEvolveHeadSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private mUIEvolveLimbRegion:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mUIEvolveLimbSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private mUILeftCover:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private mUIRightCover:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private mUITexture:Lcom/droidhen/andplugin/PlistTexture;

.field private mUnitChosenLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field protected mUnitEvolveLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private mmCardModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

.field private mmEvolversFly:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

.field private mmRayBgModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

.field private mmRayModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

.field private mmRayRotationModofier:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

.field private mrCardFrameB:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrCardFrameL:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrCardFrameR:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrCardFrameT:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private mrStarRay:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private msCardFrameB:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msCardFrameBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

.field private msCardFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msCardFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msCardFrameT:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msEvolveCrystal:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private msRayBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

.field private msStarRay:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msText:Lorg/anddev/andengine/entity/text/Text;

.field prevX:F


# direct methods
.method public constructor <init>(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 3
    .param p1, "gameActivity"    # Lcom/droidhen/fortconquer/GameActivity;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 186
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/droidhen/fortconquer/layer/DragLayer;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mAllCards:Ljava/util/List;

    .line 128
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$1;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$1;-><init>(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mBackRunnable:Ljava/lang/Runnable;

    .line 156
    iput v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCurrentCamp:I

    .line 163
    iput-boolean v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->isScrolling:Z

    .line 187
    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->setTouchAreaBindingEnabled(Z)V

    .line 188
    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->setOnSceneTouchListenerBindingEnabled(Z)V

    .line 189
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->setOnAreaTouchTraversalFrontToBack()V

    .line 190
    return-void
.end method

.method static synthetic access$0(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)Lorg/anddev/andengine/entity/primitive/Rectangle;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msRayBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    return-object v0
.end method

.method static synthetic access$1(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)Lorg/anddev/andengine/entity/primitive/Rectangle;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    return-object v0
.end method

.method static synthetic access$2(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)Ljava/util/List;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mAllCards:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;Lcom/droidhen/fortconquer/units/Card;)Z
    .locals 1

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->hasChosen(Lcom/droidhen/fortconquer/units/Card;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->updateEvolvers()V

    return-void
.end method

.method static synthetic access$5(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;Z)Lcom/droidhen/fortconquer/units/Card;
    .locals 1

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->evolve(Z)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCurrentCamp:I

    return v0
.end method

.method static synthetic access$7(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;I)V
    .locals 0

    .prologue
    .line 156
    iput p1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCurrentCamp:I

    return-void
.end method

.method private createUI()V
    .locals 15

    .prologue
    const/high16 v14, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v13, 0x1

    const/high16 v12, 0x43b50000    # 362.0f

    const/4 v11, 0x0

    .line 263
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v0, v2, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 264
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mrStarRay:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x190

    int-to-float v1, v1

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mrStarRay:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    rsub-int v3, v3, 0xf0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mrStarRay:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msStarRay:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 265
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$2;

    const/high16 v4, 0x44480000    # 800.0f

    const/high16 v5, 0x43f00000    # 480.0f

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$2;-><init>(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;FFFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msRayBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 285
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    array-length v0, v0

    if-lt v9, v0, :cond_0

    .line 353
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;

    const/high16 v1, 0x42a40000    # 82.0f

    const/high16 v3, 0x43af0000    # 350.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIEvolveFrameRegion:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;-><init>(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIEvolveFrameSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 389
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$POS$AREA_EVOLVE;->X:[I

    aget v1, v1, v11

    int-to-float v1, v1

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIEvolveHeadRegion:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v12, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIEvolveHeadSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 390
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$POS$AREA_EVOLVE;->X:[I

    aget v1, v1, v13

    int-to-float v1, v1

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIEvolveChestRegion:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v12, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIEvolveChestSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 391
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$POS$AREA_EVOLVE;->X:[I

    const/4 v3, 0x2

    aget v1, v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIEvolveLimbRegion:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v12, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIEvolveLimbSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 393
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const v1, 0x43d08000    # 417.0f

    const/high16 v3, 0x43ca0000    # 404.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mBtnSuperEvolveRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    new-instance v5, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$5;

    invoke-direct {v5, p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$5;-><init>(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)V

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mBtnSuperEvolveSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 399
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const v1, 0x441bc000    # 623.0f

    const/high16 v3, 0x43ca0000    # 404.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mBtnEvolveRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    new-instance v5, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$6;

    invoke-direct {v5, p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$6;-><init>(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)V

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mBtnEvolveSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 405
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 406
    const/4 v9, 0x0

    :goto_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    array-length v0, v0

    if-lt v9, v0, :cond_1

    .line 424
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mTabCampIcons:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 425
    const/4 v9, 0x0

    :goto_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mTabCampIcons:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    array-length v0, v0

    if-lt v9, v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v0, v0, v11

    invoke-virtual {v0, v13}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 431
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v0, v0, v11

    invoke-virtual {v0, v11}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setEnableAnimated(Z)V

    .line 432
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x429a0000    # 77.0f

    const/high16 v3, 0x42ae0000    # 87.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mrCardFrameL:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 433
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v3

    add-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mrCardFrameT:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v1, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameT:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 434
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mrCardFrameB:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mrCardFrameB:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameB:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 435
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v3

    add-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mrCardFrameR:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 436
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v10

    .line 437
    .local v10, "lineWeight":F
    new-instance v0, Lorg/anddev/andengine/entity/primitive/Rectangle;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    add-float/2addr v1, v10

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v3

    add-float/2addr v3, v10

    .line 438
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float v5, v14, v10

    sub-float/2addr v4, v5

    .line 439
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameB:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v5, v10

    invoke-direct {v0, v1, v3, v4, v5}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    .line 437
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 440
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    const v1, 0x3d888889

    const v3, 0x3db0b0b1

    const v4, 0x3de0e0e1

    invoke-virtual {v0, v1, v3, v4}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setColor(FFF)V

    .line 442
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 443
    const/4 v9, 0x0

    :goto_3
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    array-length v0, v0

    if-lt v9, v0, :cond_3

    .line 447
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    aget-object v0, v0, v11

    invoke-virtual {v0, v13}, Lcom/droidhen/fortconquer/layer/DragLayer;->setVisible(Z)V

    .line 448
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    aget-object v0, v0, v11

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 450
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v3, 0x42c20000    # 97.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x43680000    # 232.0f

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILeftCover:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct/range {v1 .. v6}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 451
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v1, 0x443f4000    # 765.0f

    const/high16 v2, 0x42c20000    # 97.0f

    const/high16 v3, 0x420c0000    # 35.0f

    const/high16 v4, 0x43680000    # 232.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIRightCover:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-virtual {v6, v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 452
    const/4 v9, 0x0

    :goto_4
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    array-length v0, v0

    if-lt v9, v0, :cond_4

    .line 455
    const/4 v9, 0x0

    :goto_5
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mTabCampIcons:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    array-length v0, v0

    if-lt v9, v0, :cond_5

    .line 458
    new-instance v0, Lorg/anddev/andengine/entity/text/Text;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mBtnSuperEvolveSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mBtnSuperEvolveSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mFont:Lorg/anddev/andengine/opengl/font/Font;

    const v4, 0x7f05004f

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msText:Lorg/anddev/andengine/entity/text/Text;

    .line 459
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 460
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 461
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameT:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 462
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msCardFrameB:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 463
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIEvolveFrameSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 464
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIEvolveHeadSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 465
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIEvolveChestSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 466
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIEvolveLimbSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 467
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUnitChosenLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 468
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mBtnSuperEvolveSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 469
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mBtnEvolveSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 470
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msText:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 471
    new-instance v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;

    invoke-direct {v0, p0, v13}, Lcom/droidhen/fortconquer/component/CoinBarEntity;-><init>(Lcom/droidhen/fortconquer/scenes/SmartScene;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCoinBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    .line 472
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCoinBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 473
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mBtnSuperEvolveSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mBtnSuperEvolveSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    const/high16 v3, 0x41100000    # 9.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v4, "n_evolve.png"

    const/4 v5, 0x2

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msEvolveCrystal:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 474
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msEvolveCrystal:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 476
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 477
    new-instance v1, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    sget-object v2, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$POS$AREA_EVOLVE;->X:[I

    aget v2, v2, v11

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    invoke-direct {v1, v2, v12, v3}, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;-><init>(FFF)V

    aput-object v1, v0, v11

    .line 478
    new-instance v1, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    sget-object v2, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$POS$AREA_EVOLVE;->X:[I

    aget v2, v2, v13

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    invoke-direct {v1, v2, v12, v3}, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;-><init>(FFF)V

    aput-object v1, v0, v13

    const/4 v1, 0x2

    .line 479
    new-instance v2, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$POS$AREA_EVOLVE;->X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    invoke-direct {v2, v3, v12, v4}, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;-><init>(FFF)V

    aput-object v2, v0, v1

    .line 476
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmEvolversFly:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .line 481
    return-void

    .line 286
    .end local v10    # "lineWeight":F
    :cond_0
    move v7, v9

    .line 287
    .local v7, "currentCamp":I
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    new-instance v1, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;

    const/high16 v3, 0x42ce0000    # 103.0f

    const/high16 v4, 0x42c20000    # 97.0f

    invoke-direct {v1, p0, v3, v4, v7}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;-><init>(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;FFI)V

    aput-object v1, v0, v9

    .line 285
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 407
    .end local v7    # "currentCamp":I
    :cond_1
    move v8, v9

    .line 409
    .local v8, "currentIndex":I
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    new-instance v1, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$POS$UI_TABS;->X:[I

    aget v3, v3, v9

    int-to-float v3, v3

    sget-object v4, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$POS$UI_TABS;->Y:[I

    aget v4, v4, v9

    int-to-float v4, v4

    sget-object v5, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rTab:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v5}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v5

    new-instance v6, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$7;

    invoke-direct {v6, p0, v8}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$7;-><init>(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;I)V

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    aput-object v1, v0, v9

    .line 421
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 422
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v0, v0, v9

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getWidth()F

    move-result v1

    const/high16 v3, 0x40400000    # 3.0f

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setWidth(F)V

    .line 406
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 426
    .end local v8    # "currentIndex":I
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mTabCampIcons:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    new-instance v1, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getWidth()F

    move-result v4

    sget-object v5, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rCampIcon:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v5}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v14

    add-float/2addr v3, v4

    .line 427
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getHeight()F

    move-result v5

    sget-object v6, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rCampIcon:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v6}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v14

    add-float/2addr v4, v5

    sub-float/2addr v4, v14

    sget-object v5, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rCampIcon:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v5}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    .line 426
    aput-object v1, v0, v9

    .line 428
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mTabCampIcons:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v0, v0, v9

    invoke-virtual {v0, v9}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 425
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 444
    .restart local v10    # "lineWeight":F
    :cond_3
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 445
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Lcom/droidhen/fortconquer/layer/DragLayer;->setVisible(Z)V

    .line 443
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 453
    :cond_4
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 452
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 456
    :cond_5
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mTabCampIcons:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 455
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5
.end method

.method private evolve(Z)Lcom/droidhen/fortconquer/units/Card;
    .locals 5
    .param p1, "superEvolve"    # Z

    .prologue
    const/4 v4, 0x2

    .line 668
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v1, :cond_7

    .line 669
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-static {v1, v2, v3}, Lcom/droidhen/fortconquer/Calculator;->evolveCoin(Lcom/droidhen/fortconquer/units/Card;Lcom/droidhen/fortconquer/units/Card;Lcom/droidhen/fortconquer/units/Card;)I

    move-result v1

    neg-int v1, v1

    invoke-static {v1}, Lcom/droidhen/fortconquer/units/Player;->changeCoins(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 670
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->getEvolvePrice()I

    move-result v1

    neg-int v1, v1

    invoke-static {v1}, Lcom/droidhen/fortconquer/units/Player;->changeCrystals(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 671
    :cond_1
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    if-eq v1, v4, :cond_4

    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->getEvolvePrice()I

    move-result v1

    neg-int v1, v1

    invoke-static {v1}, Lcom/droidhen/fortconquer/units/Player;->changeCrystals(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 674
    :cond_2
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    .line 675
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->hide()V

    .line 676
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->saveProgress()V

    .line 678
    :cond_3
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-static {v1, v2, v3, p1}, Lcom/droidhen/fortconquer/units/UnitFactory;->evolveCards(Lcom/droidhen/fortconquer/units/Card;Lcom/droidhen/fortconquer/units/Card;Lcom/droidhen/fortconquer/units/Card;Z)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v0

    .line 679
    .local v0, "newCard":Lcom/droidhen/fortconquer/units/Card;
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->onCardDechoose(Lcom/droidhen/fortconquer/units/Card;)V

    .line 680
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->onCardDechoose(Lcom/droidhen/fortconquer/units/Card;)V

    .line 681
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->onCardDechoose(Lcom/droidhen/fortconquer/units/Card;)V

    .line 682
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->getAllCards()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 683
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->getAllCards()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 684
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->getAllCards()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 685
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->getAllCards()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->clearEvolvers()V

    .line 688
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->updateCoinText()V

    .line 689
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->updateEvolvers()V

    .line 690
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->saveCardRecord()V

    .line 692
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->deepCopy()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->playNewCard(Lcom/droidhen/fortconquer/units/Card;)V

    .line 702
    .end local v0    # "newCard":Lcom/droidhen/fortconquer/units/Card;
    :goto_0
    return-object v0

    .line 695
    :cond_4
    if-eqz p1, :cond_7

    .line 696
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    if-ne v1, v4, :cond_5

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getCrystals()I

    move-result v1

    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->getEvolvePrice()I

    move-result v2

    if-lt v1, v2, :cond_6

    .line 697
    :cond_5
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    if-eq v1, v4, :cond_7

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getCrystals()I

    move-result v1

    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->getEvolvePrice()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 699
    :cond_6
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mCoinStoreScene:Lcom/droidhen/fortconquer/scenes/CoinStoreScene;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->setupScene()V

    .line 702
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEvolvePrice()I
    .locals 3

    .prologue
    .line 740
    invoke-static {}, Lcom/droidhen/fortconquer/units/Card;->calcDragonBaseValue()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    div-int/lit8 v0, v1, 0x2

    .line 741
    .local v0, "price":I
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 742
    const/16 v0, 0x64

    .line 743
    :cond_0
    iget v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCurrentCamp:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 745
    div-int/lit8 v0, v0, 0x2

    .line 747
    :cond_1
    return v0
.end method

.method private hasChosen(Lcom/droidhen/fortconquer/units/Card;)Z
    .locals 2
    .param p1, "card"    # Lcom/droidhen/fortconquer/units/Card;

    .prologue
    const/4 v0, 0x0

    .line 523
    if-nez p1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {p1, v1}, Lcom/droidhen/fortconquer/units/Card;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {p1, v1}, Lcom/droidhen/fortconquer/units/Card;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {p1, v1}, Lcom/droidhen/fortconquer/units/Card;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private playNewCard(Lcom/droidhen/fortconquer/units/Card;)V
    .locals 11
    .param p1, "card"    # Lcom/droidhen/fortconquer/units/Card;

    .prologue
    const v10, 0x3e4ccccd    # 0.2f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 706
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mEvolvedCard:Lcom/droidhen/fortconquer/units/Card;

    .line 707
    invoke-virtual {p1, v7}, Lcom/droidhen/fortconquer/units/Card;->setTextSize(B)V

    .line 708
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msRayBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/primitive/Rectangle;->detachChildren()V

    .line 709
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msRayBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v0, v7}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setVisible(Z)V

    .line 710
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msRayBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 711
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msRayBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 712
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msRayBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msStarRay:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 713
    invoke-virtual {p0, p1}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 714
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmRayBgModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    if-nez v0, :cond_0

    .line 715
    new-instance v0, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v2, 0x0

    new-instance v3, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const/high16 v4, 0x3fc00000    # 1.5f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v8}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v3, v1, v2

    new-instance v2, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v3, v8, v8}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v2, v1, v7

    const/4 v2, 0x2

    .line 716
    new-instance v3, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {v3, v4, v8, v10}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v4, 0x3f99999a    # 1.2f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v3, v4, v10, v5}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 715
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmRayBgModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    .line 718
    new-instance v0, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    new-instance v1, Lorg/anddev/andengine/entity/modifier/RotationByModifier;

    const/high16 v2, -0x3d900000    # -60.0f

    invoke-direct {v1, v9, v2}, Lorg/anddev/andengine/entity/modifier/RotationByModifier;-><init>(FF)V

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmRayRotationModofier:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    .line 719
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msStarRay:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmRayRotationModofier:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 720
    new-instance v0, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v2, 0x0

    new-instance v3, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {v3, v9, v6, v4}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFF)V

    aput-object v3, v1, v2

    .line 721
    new-instance v2, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x40400000    # 3.0f

    const v5, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFF)V

    aput-object v2, v1, v7

    const/4 v2, 0x2

    new-instance v3, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const/4 v4, 0x0

    invoke-direct {v3, v6, v6, v4}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 720
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmRayModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    .line 722
    new-instance v0, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v2, 0x0

    new-instance v3, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v3, v4, v10, v6}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFF)V

    aput-object v3, v1, v2

    new-instance v2, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmRayModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;->getDuration()F

    move-result v3

    const v4, 0x3fe66666    # 1.8f

    sub-float/2addr v3, v4

    invoke-direct {v2, v3, v6, v6}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFF)V

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmCardModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    .line 729
    :goto_0
    const/high16 v0, 0x43a10000    # 322.0f

    const/high16 v1, 0x42f80000    # 124.0f

    invoke-virtual {p1, v0, v1}, Lcom/droidhen/fortconquer/units/Card;->setPosition(FF)V

    .line 730
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getWidth()F

    move-result v0

    div-float/2addr v0, v9

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getHeight()F

    move-result v1

    div-float/2addr v1, v9

    invoke-virtual {p1, v0, v1}, Lcom/droidhen/fortconquer/units/Card;->setScaleCenter(FF)V

    .line 731
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msRayBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmRayBgModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 732
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmCardModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {p1, v0}, Lcom/droidhen/fortconquer/units/Card;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 733
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msStarRay:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmRayModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 735
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 736
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 737
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmRayBgModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;->reset()V

    .line 725
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmRayRotationModofier:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;->reset()V

    .line 726
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmRayModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;->reset()V

    .line 727
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmCardModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;->reset()V

    goto :goto_0
.end method

.method private updateEvolvers()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 563
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUnitChosenLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "num":I
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Card;->detachSelf()Z

    .line 567
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1, v3}, Lcom/droidhen/fortconquer/units/Card;->setIsSmall(Z)V

    .line 568
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUnitChosenLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 569
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Card;->clearEntityModifiers()V

    .line 570
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmEvolversFly:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v1, v1, v4

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 571
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmEvolversFly:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/units/Card;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    .line 574
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v1, :cond_1

    .line 575
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Card;->detachSelf()Z

    .line 576
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1, v3}, Lcom/droidhen/fortconquer/units/Card;->setIsSmall(Z)V

    .line 577
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUnitChosenLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 578
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Card;->clearEntityModifiers()V

    .line 579
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmEvolversFly:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v1, v1, v3

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 580
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmEvolversFly:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/units/Card;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 581
    add-int/lit8 v0, v0, 0x1

    .line 583
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v1, :cond_2

    .line 584
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Card;->detachSelf()Z

    .line 585
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1, v3}, Lcom/droidhen/fortconquer/units/Card;->setIsSmall(Z)V

    .line 586
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUnitChosenLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 587
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Card;->clearEntityModifiers()V

    .line 588
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmEvolversFly:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v1, v1, v5

    invoke-interface {v1}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->reset()V

    .line 589
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mmEvolversFly:[Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/units/Card;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 590
    add-int/lit8 v0, v0, 0x1

    .line 592
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->isConcerned()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 593
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    .line 595
    :cond_3
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->updateCoinText()V

    .line 596
    return-void
.end method


# virtual methods
.method public IsTexturesLoaded()Z
    .locals 1

    .prologue
    .line 647
    const/4 v0, 0x0

    return v0
.end method

.method protected attachEverything()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method protected clearEvolvers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 774
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->onCardDechoose(Lcom/droidhen/fortconquer/units/Card;)V

    .line 775
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->onCardDechoose(Lcom/droidhen/fortconquer/units/Card;)V

    .line 776
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->onCardDechoose(Lcom/droidhen/fortconquer/units/Card;)V

    .line 777
    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    .line 778
    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    .line 779
    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    .line 780
    return-void
.end method

.method protected createBGAndSprites()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v0, v1, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUnitEvolveLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 248
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v0, v1, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUnitChosenLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 249
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->sBackground:Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->setBackground(Lorg/anddev/andengine/entity/scene/background/IBackground;)V

    .line 250
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->createUI()V

    .line 251
    return-void
.end method

.method protected initTextureRegions()V
    .locals 14

    .prologue
    const/16 v5, 0x74

    const/16 v3, 0x30

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 225
    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tBackground:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v4, 0x2d

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILeftCover:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 226
    new-instance v6, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    sget-object v7, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tBackground:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v8, 0x17e

    const/16 v10, 0x11

    move v9, v3

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    iput-object v6, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIRightCover:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 228
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "card_frame_bg_t.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mrCardFrameT:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 229
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "card_frame_bg_b.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mrCardFrameB:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 230
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "card_frame_bg_l.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mrCardFrameL:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 231
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "card_frame_bg_r.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mrCardFrameR:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 233
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "star_ray.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mrStarRay:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 234
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "evolve_bg.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIEvolveFrameRegion:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 235
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "evolve_head.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIEvolveHeadRegion:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 236
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "evolve_foot.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIEvolveLimbRegion:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 237
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "evolve_body.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIEvolveChestRegion:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 238
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v13, [Ljava/lang/String;

    const-string v3, "btn_evolve_01_up.png"

    aput-object v3, v1, v2

    const-string v3, "btn_evolve_01_down.png"

    aput-object v3, v1, v12

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mBtnSuperEvolveRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 239
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v13, [Ljava/lang/String;

    const-string v3, "btn_evolve_02_up.png"

    aput-object v3, v1, v2

    const-string v2, "btn_evolve_02_down.png"

    aput-object v2, v1, v12

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mBtnEvolveRegion:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 240
    return-void
.end method

.method protected initTextures()V
    .locals 11

    .prologue
    const/16 v9, 0x100

    const/4 v1, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 205
    new-array v6, v1, [Ljava/lang/String;

    const-string v0, "evolve.png"

    aput-object v0, v6, v10

    const-string v0, "evolve_kr.png"

    aput-object v0, v6, v4

    const-string v0, "evolve_yn.png"

    aput-object v0, v6, v8

    .line 206
    .local v6, "evolvePic":[Ljava/lang/String;
    new-array v7, v1, [Ljava/lang/String;

    const-string v0, "evolve.plist"

    aput-object v0, v7, v10

    const-string v0, "evolve_kr.plist"

    aput-object v0, v7, v4

    const-string v0, "evolve_yn.plist"

    aput-object v0, v7, v8

    .line 207
    .local v7, "evolvePlist":[Ljava/lang/String;
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "gfx/unit_evolve/"

    .line 208
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v2

    aget-object v2, v6, v2

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v3

    aget-object v3, v7, v3

    sget-object v5, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 207
    invoke-static {v0, v1, v2, v3, v5}, Lcom/droidhen/andplugin/PlistTexture;->getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    .line 209
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v9, v9, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mFontTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 210
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mFontTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v8, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41b00000    # 22.0f

    const/16 v5, 0x45

    const/16 v8, 0xe3

    const/16 v9, 0xee

    invoke-static {v5, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mFont:Lorg/anddev/andengine/opengl/font/Font;

    .line 211
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v0

    new-array v1, v4, [Lorg/anddev/andengine/opengl/texture/ITexture;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mFontTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTextures([Lorg/anddev/andengine/opengl/texture/ITexture;)V

    .line 212
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getFontManager()Lorg/anddev/andengine/opengl/font/FontManager;

    move-result-object v0

    new-array v1, v4, [Lorg/anddev/andengine/opengl/font/Font;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mFont:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/font/FontManager;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mTexturesAL:Ljava/util/ArrayList;

    .line 215
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tBackground:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mTexturesAL:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITexture:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method

.method public notifyCardDeleted(Lcom/droidhen/fortconquer/units/Card;)V
    .locals 3
    .param p1, "card"    # Lcom/droidhen/fortconquer/units/Card;

    .prologue
    const/4 v2, 0x0

    .line 755
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->detachSelf()Z

    .line 756
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->hasChosen(Lcom/droidhen/fortconquer/units/Card;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "evolver":Lcom/droidhen/fortconquer/units/Card;
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {p1, v1}, Lcom/droidhen/fortconquer/units/Card;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 759
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    .line 760
    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    .line 768
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->detachSelf()Z

    .line 770
    .end local v0    # "evolver":Lcom/droidhen/fortconquer/units/Card;
    :cond_1
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->detachChildren()V

    .line 771
    return-void

    .line 761
    .restart local v0    # "evolver":Lcom/droidhen/fortconquer/units/Card;
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {p1, v1}, Lcom/droidhen/fortconquer/units/Card;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 762
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    .line 763
    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    goto :goto_0

    .line 764
    :cond_3
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {p1, v1}, Lcom/droidhen/fortconquer/units/Card;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    .line 766
    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "pKeyCode"    # I
    .param p2, "pEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mBackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 656
    const/4 v0, 0x1

    return v0
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 661
    const/4 v0, 0x1

    return v0
.end method

.method public onSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z
    .locals 2
    .param p1, "from"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    .line 796
    invoke-static {p0}, Lcom/droidhen/fortconquer/component/Guide;->shouldLoadTexture(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartScene;->onSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z

    move-result v0

    return v0

    .line 799
    :cond_1
    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onSwitchOut(Lcom/droidhen/fortconquer/scenes/SmartScene;)V
    .locals 2
    .param p1, "to"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    .line 788
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 789
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->reloadStep()V

    .line 791
    :cond_0
    return-void
.end method

.method protected registerHandlers()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0, p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    .line 198
    return-void
.end method

.method protected registerTouchAreas()V
    .locals 2

    .prologue
    .line 631
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUIEvolveFrameSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 635
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mBtnEvolveSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 636
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mBtnSuperEvolveSprite:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 637
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 640
    return-void

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setupScene()V
    .locals 0

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->setupUnitEvolveScene()V

    .line 785
    return-void
.end method

.method public setupUnitEvolveScene()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 530
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->swithToScene()V

    .line 531
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 532
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 533
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playBGMusic()V

    .line 534
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->detachChildren()V

    .line 535
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 536
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUnitEvolveLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 537
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUnitChosenLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 538
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUnitEvolveLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mEvolvedCard:Lcom/droidhen/fortconquer/units/Card;

    .line 541
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->updateEvolvers()V

    .line 542
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->updateAllCards()V

    .line 543
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->updateCoinText()V

    .line 544
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCoinBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->updateText()V

    .line 545
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->isConcerned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iput v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCurrentCamp:I

    .line 547
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    .line 548
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer;->setEnableDrag(Z)V

    .line 549
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/layer/DragLayer;->getInitialX()F

    move-result v1

    .line 550
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/layer/DragLayer;->getInitialY()F

    move-result v2

    .line 549
    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/layer/DragLayer;->setPosition(FF)V

    .line 551
    sget-object v0, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    iget-object v0, v0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/layer/DragLayer;->getInitialX()F

    move-result v1

    const/high16 v2, 0x429c0000    # 78.0f

    add-float/2addr v1, v2

    sget-object v2, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    iget-object v2, v2, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 552
    sget-object v2, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    iget-object v2, v2, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    .line 551
    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 556
    :goto_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->swicthTab()V

    .line 557
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->CheckAndHideAD()V

    .line 559
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/droidhen/fortconquer/layer/DragLayer;->setEnableDrag(Z)V

    goto :goto_0
.end method

.method protected swicthTab()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 599
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    array-length v2, v2

    if-lt v0, v2, :cond_4

    .line 604
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCurrentCamp:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v5}, Lcom/droidhen/fortconquer/layer/DragLayer;->setVisible(Z)V

    .line 605
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCurrentCamp:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v5}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 606
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCurrentCamp:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setEnableAnimated(Z)V

    .line 607
    const/4 v1, 0x0

    .line 608
    .local v1, "num":I
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v2, :cond_0

    .line 609
    add-int/lit8 v1, v1, 0x1

    .line 611
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v2, :cond_1

    .line 612
    add-int/lit8 v1, v1, 0x1

    .line 614
    :cond_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v2, :cond_2

    .line 615
    add-int/lit8 v1, v1, 0x1

    .line 617
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    .line 618
    if-lez v1, :cond_3

    .line 619
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->updateEvolvers()V

    .line 620
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->updateAllCards()V

    .line 622
    :cond_3
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->updateCoinText()V

    .line 623
    return-void

    .line 600
    .end local v1    # "num":I
    :cond_4
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 601
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Lcom/droidhen/fortconquer/layer/DragLayer;->setVisible(Z)V

    .line 602
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mUITabs:[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setEnableAnimated(Z)V

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected updateAllCards()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v7, 0x40a00000    # 5.0f

    const/4 v6, 0x0

    .line 484
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    array-length v4, v4

    if-lt v2, v4, :cond_0

    .line 487
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v4, v4, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Player;->getAllCards()Ljava/util/ArrayList;

    move-result-object v3

    .line 488
    .local v3, "pCard":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/fortconquer/units/Card;>;"
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 493
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mAllCards:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_2
    if-gez v2, :cond_3

    .line 499
    const/4 v2, 0x0

    :goto_3
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mAllCards:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_5

    .line 512
    const/4 v2, 0x0

    :goto_4
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    array-length v4, v4

    if-lt v2, v4, :cond_8

    .line 520
    return-void

    .line 485
    .end local v3    # "pCard":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/fortconquer/units/Card;>;"
    :cond_0
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/layer/DragLayer;->detachChildren()V

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    .restart local v3    # "pCard":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/fortconquer/units/Card;>;"
    :cond_1
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mAllCards:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 490
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mAllCards:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Card;->deepCopy()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 494
    :cond_3
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mAllCards:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 495
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mAllCards:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 496
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->notifyCardDeleted(Lcom/droidhen/fortconquer/units/Card;)V

    .line 493
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 500
    :cond_5
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mAllCards:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 501
    .restart local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->detachChildren()V

    .line 502
    invoke-virtual {v0, v9}, Lcom/droidhen/fortconquer/units/Card;->setIsSmall(Z)V

    .line 503
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/layer/DragLayer;->getChildCount()I

    move-result v4

    mul-int/lit16 v4, v4, 0xa5

    int-to-float v4, v4

    invoke-virtual {v0, v4, v6}, Lcom/droidhen/fortconquer/units/Card;->setPosition(FF)V

    .line 504
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Lcom/droidhen/fortconquer/layer/DragLayer;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 505
    invoke-direct {p0, v0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->hasChosen(Lcom/droidhen/fortconquer/units/Card;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 506
    sget-object v4, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->spGrayCoverPool:Lcom/droidhen/fortconquer/kits/ObjectPool;

    invoke-interface {v4}, Lcom/droidhen/fortconquer/kits/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 507
    .local v1, "cover":Lorg/anddev/andengine/entity/primitive/Rectangle;
    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/units/Card;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 508
    invoke-virtual {v1, v7, v7}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    .line 509
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getWidthScaled()F

    move-result v4

    sub-float/2addr v4, v8

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getHeightScaled()F

    move-result v5

    sub-float/2addr v5, v8

    invoke-virtual {v1, v4, v5}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setSize(FF)V

    .line 499
    .end local v1    # "cover":Lorg/anddev/andengine/entity/primitive/Rectangle;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 514
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    :cond_7
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/droidhen/fortconquer/units/BlankCard;->get(Z)Lcom/droidhen/fortconquer/units/BlankCard;

    move-result-object v0

    .line 515
    .local v0, "card":Lcom/droidhen/fortconquer/units/BlankCard;
    invoke-virtual {v0, v9}, Lcom/droidhen/fortconquer/units/BlankCard;->setType(I)V

    .line 516
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/layer/DragLayer;->getChildCount()I

    move-result v4

    mul-int/lit16 v4, v4, 0xa5

    int-to-float v4, v4

    invoke-virtual {v0, v4, v6}, Lcom/droidhen/fortconquer/units/BlankCard;->setPosition(FF)V

    .line 517
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Lcom/droidhen/fortconquer/layer/DragLayer;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 513
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/BlankCard;
    :cond_8
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mCampAllLayer:[Lcom/droidhen/fortconquer/layer/DragLayer;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/layer/DragLayer;->getChildCount()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_7

    .line 512
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4
.end method

.method public updateCoinText()V
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->msEvolveCrystal:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->getEvolvePrice()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 752
    return-void
.end method
