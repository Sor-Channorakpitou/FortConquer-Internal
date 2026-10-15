.class public Lcom/droidhen/fortconquer/scenes/UpgradeScene;
.super Lcom/droidhen/fortconquer/scenes/ButtonSupportScene;
.source "UpgradeScene.java"


# instance fields
.field private fBlueB:Lorg/anddev/andengine/opengl/font/Font;

.field private fBlueS:Lorg/anddev/andengine/opengl/font/Font;

.field private fOrange:Lorg/anddev/andengine/opengl/font/Font;

.field private fWhite:Lorg/anddev/andengine/opengl/font/Font;

.field private isInDlg:Z

.field private final mBackTask:Ljava/lang/Runnable;

.field private rBtnUpgrade:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private rFrame:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private rIconStope:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private rIconWall:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private rLStope:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private rLWall:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private sBtnStope:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private sBtnWall:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private sFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sIconCoinL:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sIconCoinR:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sIconStope:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sIconWall:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sLStope:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sLWall:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

.field private sTopBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

.field private tFontBlueB:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private tFontBlueS:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private tFontOrange:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private tFontWhite:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private tUI:Lcom/droidhen/andplugin/PlistTexture;

.field private upgradeStope:Ljava/lang/Runnable;

.field private upgradeWall:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 2
    .param p1, "shootTheAppleGame"    # Lcom/droidhen/fortconquer/GameActivity;

    .prologue
    const/4 v1, 0x1

    .line 119
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/ButtonSupportScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->isInDlg:Z

    .line 57
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UpgradeScene$1;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/UpgradeScene$1;-><init>(Lcom/droidhen/fortconquer/scenes/UpgradeScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->upgradeWall:Ljava/lang/Runnable;

    .line 86
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UpgradeScene$2;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/UpgradeScene$2;-><init>(Lcom/droidhen/fortconquer/scenes/UpgradeScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->upgradeStope:Ljava/lang/Runnable;

    .line 317
    new-instance v0, Lcom/droidhen/fortconquer/scenes/UpgradeScene$3;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/UpgradeScene$3;-><init>(Lcom/droidhen/fortconquer/scenes/UpgradeScene;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->mBackTask:Ljava/lang/Runnable;

    .line 120
    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->setTouchAreaBindingEnabled(Z)V

    .line 121
    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->setOnSceneTouchListenerBindingEnabled(Z)V

    .line 122
    return-void
.end method

.method static synthetic access$0(Lcom/droidhen/fortconquer/scenes/UpgradeScene;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->isInDlg:Z

    return-void
.end method

.method static synthetic access$1(Lcom/droidhen/fortconquer/scenes/UpgradeScene;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->updateText()V

    return-void
.end method

.method static synthetic access$2(Lcom/droidhen/fortconquer/scenes/UpgradeScene;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->isInDlg:Z

    return v0
.end method

.method private updateText()V
    .locals 11

    .prologue
    const/4 v10, 0x7

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 224
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, v6

    const v1, 0x7f05005f

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getFortLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v9

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 226
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, v7

    const v1, 0x7f050060

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getCurLvFortHealth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Player;->getFortLevel()I

    move-result v0

    const/16 v1, 0x3e7

    if-ge v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, v8

    const v1, 0x7f050061

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getCurLvFortHealth()I

    move-result v3

    add-int/lit16 v3, v3, 0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    div-float/2addr v2, v9

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 233
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    div-float/2addr v2, v9

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getInitialY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 234
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->getFortUpgradeMoney()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Player;->getFortUpgradeMoney()I

    move-result v0

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getCoins()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setColor(FFF)V

    .line 240
    :goto_1
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->getCityWallUpRequire()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 241
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnWall:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v6}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setEnableAnimated(Z)V

    .line 242
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnWall:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v6}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setEnableTask(Z)V

    .line 243
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnWall:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v8}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 244
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, v8

    const v1, 0x7f050064

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->getCityWallUpRequire()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    div-float/2addr v2, v9

    add-float/2addr v1, v2

    .line 246
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getInitialY()F

    move-result v2

    const/high16 v3, 0x41b00000    # 22.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getHeight()F

    move-result v3

    div-float/2addr v3, v9

    sub-float/2addr v2, v3

    .line 245
    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 247
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 248
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 249
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconCoinL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 258
    :goto_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const v1, 0x7f05005f

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getMineralsLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v9

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 260
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const v1, 0x7f050062

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getMineralsPerMin()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Player;->getMineralsLevel()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_3

    .line 262
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, v10

    const v1, 0x7f050063

    new-array v2, v7, [Ljava/lang/Object;

    .line 263
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getMineralsPerMin()I

    move-result v3

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v4

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v5

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Player;->getMineralsLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/droidhen/fortconquer/units/Player;->getNextLvIncrPerMin(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 262
    invoke-static {v1, v2}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 267
    :goto_3
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    div-float/2addr v2, v9

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 268
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, v10

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    div-float/2addr v2, v9

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getInitialY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 269
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->getMineralsUpgradeMoney()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Player;->getMineralsUpgradeMoney()I

    move-result v0

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getCrystals()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 271
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setColor(FFF)V

    .line 275
    :goto_4
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->getStopeUpRequire()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 276
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnStope:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v6}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setEnableAnimated(Z)V

    .line 277
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnStope:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v6}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setEnableTask(Z)V

    .line 278
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnStope:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v8}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 279
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, v10

    const v1, 0x7f050064

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->getStopeUpRequire()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, v10

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    div-float/2addr v2, v9

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getInitialY()F

    move-result v2

    const/high16 v3, 0x41b00000    # 22.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getHeight()F

    move-result v3

    div-float/2addr v3, v9

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 281
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 282
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 283
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconCoinR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 292
    :goto_5
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, v8

    const v1, 0x7f05005d

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setColor(FFF)V

    goto/16 :goto_1

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnWall:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v7}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setEnableAnimated(Z)V

    .line 252
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnWall:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v7}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setEnableTask(Z)V

    .line 253
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnWall:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v6}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 254
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 255
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 256
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconCoinL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    goto/16 :goto_2

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, v10

    const v1, 0x7f05005e

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 273
    :cond_4
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setColor(FFF)V

    goto/16 :goto_4

    .line 285
    :cond_5
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnStope:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v7}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setEnableAnimated(Z)V

    .line 286
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnStope:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v7}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setEnableTask(Z)V

    .line 287
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnStope:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v6}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 288
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 289
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 290
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconCoinR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    goto/16 :goto_5
.end method


# virtual methods
.method public IsTexturesLoaded()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tUI:Lcom/droidhen/andplugin/PlistTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tUI:Lcom/droidhen/andplugin/PlistTexture;

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

.method protected attachEverything()V
    .locals 2

    .prologue
    .line 199
    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->sBackground:Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->setBackground(Lorg/anddev/andengine/entity/scene/background/IBackground;)V

    .line 200
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTopBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 201
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 202
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 203
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconWall:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 204
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconStope:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 205
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnWall:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 206
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnStope:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 207
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sLWall:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 208
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sLStope:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 209
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconCoinL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 210
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconCoinR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 214
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected createBGAndSprites()V
    .locals 11

    .prologue
    .line 159
    new-instance v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/droidhen/fortconquer/component/CoinBarEntity;-><init>(Lcom/droidhen/fortconquer/scenes/SmartScene;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTopBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    .line 160
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rFrame:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v1

    rsub-int v1, v1, 0x181

    int-to-float v1, v1

    const/high16 v2, 0x42aa0000    # 85.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rFrame:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 161
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v1, 0x43cf8000    # 415.0f

    const/high16 v2, 0x42aa0000    # 85.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rFrame:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 162
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rIconWall:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x43300000    # 176.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rIconWall:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconWall:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 163
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rIconStope:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconWall:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rIconStope:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconStope:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 164
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconWall:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getScaleYMakeup()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleY(F)V

    .line 165
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconStope:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getScaleYMakeup()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleY(F)V

    .line 166
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rBtnUpgrade:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x43ab0000    # 342.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rBtnUpgrade:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->upgradeWall:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnWall:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 167
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rBtnUpgrade:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnWall:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rBtnUpgrade:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->upgradeStope:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnStope:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 169
    const/16 v7, 0x62

    .line 170
    .local v7, "iLWallY":I
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 171
    const/16 v7, 0x5e

    .line 173
    :cond_0
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rLWall:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v2, v7

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rLWall:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sLWall:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 175
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sFrameR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rLStope:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sLWall:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rLStope:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sLStope:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 177
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/anddev/andengine/entity/text/ChangeableText;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 178
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v8, 0x0

    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x434b0000    # 203.0f

    const/high16 v2, 0x43020000    # 130.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fBlueB:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, ""

    const/16 v5, 0x8

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    aput-object v0, v6, v8

    .line 179
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v8, 0x1

    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x43440000    # 196.0f

    const/high16 v2, 0x431c0000    # 156.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fBlueS:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, ""

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    aput-object v0, v6, v8

    .line 180
    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v9, 0x2

    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x43440000    # 196.0f

    const/high16 v2, 0x43910000    # 290.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fOrange:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, ""

    sget-object v5, Lorg/anddev/andengine/util/HorizontalAlign;->CENTER:Lorg/anddev/andengine/util/HorizontalAlign;

    const/16 v6, 0x28

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;Lorg/anddev/andengine/util/HorizontalAlign;I)V

    aput-object v0, v8, v9

    .line 181
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x3

    new-instance v2, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v3, 0x43310000    # 177.0f

    const/high16 v4, 0x439f0000    # 318.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fWhite:Lorg/anddev/andengine/opengl/font/Font;

    const v6, 0x7f050065

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, ": "

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 182
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v8, 0x4

    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->getX()F

    move-result v1

    const/high16 v2, 0x42980000    # 76.0f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fWhite:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, ""

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    aput-object v0, v6, v8

    .line 184
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v8, 0x5

    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x44020000    # 520.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fBlueB:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, ""

    const/16 v5, 0x8

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    aput-object v0, v6, v8

    .line 185
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v8, 0x6

    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x43fa0000    # 500.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fBlueS:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, ""

    const/16 v5, 0x14

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    aput-object v0, v6, v8

    .line 186
    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v9, 0x7

    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const v1, 0x4402c000    # 523.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fOrange:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, ""

    sget-object v5, Lorg/anddev/andengine/util/HorizontalAlign;->CENTER:Lorg/anddev/andengine/util/HorizontalAlign;

    const/16 v6, 0x28

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;Lorg/anddev/andengine/util/HorizontalAlign;I)V

    aput-object v0, v8, v9

    .line 187
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/16 v1, 0x8

    new-instance v2, Lorg/anddev/andengine/entity/text/ChangeableText;

    const v3, 0x44004000    # 513.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fWhite:Lorg/anddev/andengine/opengl/font/Font;

    const v6, 0x7f050065

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, ": "

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 188
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/16 v8, 0x9

    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->getX()F

    move-result v1

    const/high16 v2, 0x42980000    # 76.0f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fWhite:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, ""

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    aput-object v0, v6, v8

    .line 190
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->getX()F

    move-result v1

    sget-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCoin:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 191
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getHeight()F

    move-result v3

    sget-object v4, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCoin:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCoin:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 190
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconCoinL:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 192
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->getX()F

    move-result v1

    sget-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCrystal:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconCoinL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCrystal:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconCoinR:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 193
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconCoinR:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 194
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sIconCoinL:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTexts:[Lorg/anddev/andengine/entity/text/ChangeableText;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 195
    return-void
.end method

.method public getCityWallUpRequire()I
    .locals 1

    .prologue
    .line 310
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Player;->getFortLevel()I

    move-result v0

    add-int/lit8 v0, v0, -0x9

    mul-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public getStopeUpRequire()I
    .locals 1

    .prologue
    .line 314
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Player;->getMineralsLevel()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public initTextureRegions()V
    .locals 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tUI:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "upgrade_bg.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rFrame:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 150
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tUI:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "icon_wall.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rIconWall:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 151
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tUI:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "icon_stope.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rIconStope:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 152
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tUI:Lcom/droidhen/andplugin/PlistTexture;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "btn_upgrade_up.png"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "btn_upgrade_down.png"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "btn_upgrade_disable.png"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rBtnUpgrade:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 153
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tUI:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_city_wall.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rLWall:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 154
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tUI:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_stope.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->rLStope:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 155
    return-void
.end method

.method public initTextures()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/16 v8, 0x100

    const/4 v4, 0x1

    .line 126
    new-array v6, v12, [Ljava/lang/String;

    const-string v0, "upgrade.png"

    aput-object v0, v6, v10

    const-string v0, "upgrade_kr.png"

    aput-object v0, v6, v4

    const-string v0, "upgrade_yn.png"

    aput-object v0, v6, v11

    .line 127
    .local v6, "upgradePic":[Ljava/lang/String;
    new-array v7, v12, [Ljava/lang/String;

    const-string v0, "upgrade.plist"

    aput-object v0, v7, v10

    const-string v0, "upgrade_kr.plist"

    aput-object v0, v7, v4

    const-string v0, "upgrade_yn.plist"

    aput-object v0, v7, v11

    .line 128
    .local v7, "upgradePlist":[Ljava/lang/String;
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "gfx/unit_evolve/"

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v2

    aget-object v2, v6, v2

    .line 129
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v3

    aget-object v3, v7, v3

    sget-object v5, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 128
    invoke-static {v0, v1, v2, v3, v5}, Lcom/droidhen/andplugin/PlistTexture;->getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tUI:Lcom/droidhen/andplugin/PlistTexture;

    .line 130
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v8, v8, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tFontBlueB:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 131
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v8, v8, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tFontBlueS:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 132
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v8, v8, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tFontOrange:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 133
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v8, v8, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tFontWhite:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 134
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tFontBlueB:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v10

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tFontBlueS:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tFontOrange:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v11

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tFontWhite:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v12

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    .line 135
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tFontBlueB:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v11, v10}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41d00000    # 26.0f

    const/16 v5, 0xb

    const/16 v8, 0xec

    const/16 v9, 0xf2

    invoke-static {v5, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fBlueB:Lorg/anddev/andengine/opengl/font/Font;

    .line 136
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tFontBlueS:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v11, v10}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    const/16 v5, 0xb

    const/16 v8, 0xec

    const/16 v9, 0xf2

    invoke-static {v5, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fBlueS:Lorg/anddev/andengine/opengl/font/Font;

    .line 137
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tFontOrange:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v11, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    const/16 v5, 0xfd

    const/16 v8, 0x66

    const/16 v9, 0xb

    invoke-static {v5, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fOrange:Lorg/anddev/andengine/opengl/font/Font;

    .line 138
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tFontWhite:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v4, v10}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fWhite:Lorg/anddev/andengine/opengl/font/Font;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/anddev/andengine/opengl/font/Font;

    .line 139
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fBlueB:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v10

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fBlueS:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fOrange:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v11

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->fWhite:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v12

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->mTexturesAL:Ljava/util/ArrayList;

    .line 141
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->mTexturesAL:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->tUI:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tBackground:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "pKeyCode"    # I
    .param p2, "pEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 330
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    :cond_0
    const/4 v0, 0x0

    .line 335
    :goto_0
    return v0

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->mBackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 335
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected registerTouchAreas()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnWall:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 219
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sBtnStope:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 220
    return-void
.end method

.method public setupScene()V
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->swithToScene()V

    .line 296
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 297
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 298
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playBGMusic()V

    .line 299
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->updateText()V

    .line 300
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->sTopBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->updateText()V

    .line 301
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UpgradeScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->CheckAndShowAD()V

    .line 302
    return-void
.end method
