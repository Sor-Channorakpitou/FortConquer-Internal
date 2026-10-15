.class public Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;
.super Lcom/droidhen/fortconquer/layer/GameDlg;
.source "OfferWallAdDlg.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# instance fields
.field private btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

.field protected rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field protected rCompleteBg:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private sBg:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sBtnDownload:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sBtnLater:Lcom/droidhen/andplugin/ComposedAnimatedSprite;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/StatusScene;)V
    .locals 1
    .param p1, "statusScene"    # Lcom/droidhen/fortconquer/scenes/StatusScene;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/GameDlg;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 59
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->init()V

    .line 60
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    .line 61
    return-void
.end method

.method private getChosenBtn(FF)Lcom/droidhen/andplugin/ComposedAnimatedSprite;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnDownload:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnDownload:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 229
    :goto_0
    return-object v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnLater:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnLater:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    goto :goto_0

    .line 229
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initBtns()V
    .locals 12

    .prologue
    const/16 v11, 0xff

    const/high16 v3, 0x41e00000    # 28.0f

    const/4 v4, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 120
    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v2, 0x100

    const/16 v5, 0x100

    sget-object v8, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v1, v2, v5, v8}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    .line 121
    .local v1, "btnFontAtlas":Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    const/4 v2, 0x2

    invoke-static {v2, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v11, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    .local v0, "btnFont":Lorg/anddev/andengine/opengl/font/Font;
    new-array v2, v4, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 122
    aput-object v1, v2, v10

    invoke-static {v2}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    new-array v2, v4, [Lorg/anddev/andengine/opengl/font/Font;

    .line 123
    aput-object v0, v2, v10

    invoke-static {v2}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 125
    new-instance v2, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    rsub-int v4, v4, 0x190

    add-int/lit8 v4, v4, -0x6e

    int-to-float v4, v4

    const v5, 0x439d8000    # 315.0f

    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v2, v4, v5, v8}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnDownload:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 126
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnDownload:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 127
    new-instance v6, Lorg/anddev/andengine/entity/text/Text;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnDownload:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnDownload:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v4

    div-float/2addr v4, v9

    add-float/2addr v2, v4

    sub-float/2addr v2, v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnDownload:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnDownload:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v5}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeight()F

    move-result v5

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    const/high16 v5, 0x41600000    # 14.0f

    sub-float/2addr v4, v5

    const v5, 0x7f050079

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v8}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v2, v4, v0, v5}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    .line 128
    .local v6, "getLabel":Lorg/anddev/andengine/entity/text/Text;
    invoke-virtual {p0, v6}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 130
    new-instance v2, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    rsub-int v4, v4, 0x190

    add-int/lit8 v4, v4, 0x6e

    int-to-float v4, v4

    const v5, 0x439d8000    # 315.0f

    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v8}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v8

    invoke-direct {v2, v4, v5, v8}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnLater:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 131
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnLater:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 132
    new-instance v7, Lorg/anddev/andengine/entity/text/Text;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnLater:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnDownload:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v4

    div-float/2addr v4, v9

    add-float/2addr v2, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnLater:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnDownload:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeight()F

    move-result v4

    div-float/2addr v4, v9

    add-float/2addr v3, v4

    const/high16 v4, 0x41600000    # 14.0f

    sub-float/2addr v3, v4

    const v4, 0x7f05007a

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v2, v3, v0, v4}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    .line 133
    .local v7, "laterLabel":Lorg/anddev/andengine/entity/text/Text;
    invoke-virtual {p0, v7}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 134
    return-void
.end method

.method private initCrystalsInfo()V
    .locals 10

    .prologue
    const/16 v8, 0x100

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 83
    new-instance v7, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x43a50000    # 330.0f

    const/high16 v3, 0x43820000    # 260.0f

    sget-object v5, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCrystal:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v7, v2, v3, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 84
    .local v7, "crystalSprite":Lorg/anddev/andengine/entity/sprite/Sprite;
    invoke-virtual {p0, v7}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 86
    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v2, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v1, v8, v8, v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    .line 87
    .local v1, "crystalAmountFontAtlas":Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    const/4 v2, 0x2

    invoke-static {v2, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x42100000    # 36.0f

    const/16 v5, 0xff

    const/16 v8, 0xd9

    invoke-static {v5, v8, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    .local v0, "crystalAmountFont":Lorg/anddev/andengine/opengl/font/Font;
    new-array v2, v4, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 88
    aput-object v1, v2, v9

    invoke-static {v2}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    new-array v2, v4, [Lorg/anddev/andengine/opengl/font/Font;

    .line 89
    aput-object v0, v2, v9

    invoke-static {v2}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 90
    new-instance v6, Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    add-float/2addr v2, v3

    invoke-virtual {v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/droidhen/fortconquer/GameActivity;->sAdData:Lcom/gamepromote/offerwall/AdData;

    invoke-virtual {v5}, Lcom/gamepromote/offerwall/AdData;->getReward()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v2, v3, v0, v4}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    .line 91
    .local v6, "crystalAmountLabel":Lorg/anddev/andengine/entity/text/Text;
    invoke-virtual {p0, v6}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 92
    return-void
.end method

.method private initGameIcon()V
    .locals 11

    .prologue
    const/16 v4, 0x200

    const/4 v2, 0x0

    .line 137
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v9, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->sGameIcon:Lcom/moreexchange/model/Icon;

    invoke-virtual {v3}, Lcom/moreexchange/model/Icon;->getBitmapFromFile()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v3, v5, v10, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 139
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 140
    .local v6, "byteArray":[B
    new-instance v7, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;

    invoke-direct {v7, v6}, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;-><init>([B)V

    .line 142
    .local v7, "iconAtlasSource":Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;
    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v3, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v1, v4, v4, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    .line 143
    .local v1, "iconAtlas":Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->clearTextureAtlasSources()V

    .line 144
    invoke-virtual {v1, v7, v2, v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 145
    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    .line 146
    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    const/16 v5, 0x134

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    .line 147
    .local v0, "iconRegion":Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    invoke-virtual {v7}, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->setWidth(I)V

    .line 148
    invoke-virtual {v7}, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->setHeight(I)V

    .line 150
    new-instance v8, Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    rsub-int v2, v2, 0xe6

    int-to-float v2, v2

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    rsub-int v3, v3, 0xc8

    int-to-float v3, v3

    invoke-direct {v8, v2, v3, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 151
    .local v8, "iconSprite":Lorg/anddev/andengine/entity/sprite/Sprite;
    invoke-virtual {p0, v8}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 152
    return-void
.end method

.method private initGameInfoLabels()V
    .locals 15

    .prologue
    const/high16 v14, 0x43a50000    # 330.0f

    const/16 v8, 0x100

    const/16 v9, 0xff

    const/4 v13, 0x0

    const/4 v4, 0x1

    .line 95
    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v2, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v1, v8, v8, v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    .line 96
    .local v1, "gameNameFontAtlas":Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    const/4 v2, 0x2

    invoke-static {v2, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41e00000    # 28.0f

    const/16 v7, 0xd9

    invoke-static {v9, v7, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    .local v0, "gameNameFont":Lorg/anddev/andengine/opengl/font/Font;
    new-array v2, v4, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 97
    aput-object v1, v2, v13

    invoke-static {v2}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    new-array v2, v4, [Lorg/anddev/andengine/opengl/font/Font;

    .line 98
    aput-object v0, v2, v13

    invoke-static {v2}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 99
    new-instance v12, Lorg/anddev/andengine/entity/text/Text;

    const/high16 v2, 0x43200000    # 160.0f

    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->sAdData:Lcom/gamepromote/offerwall/AdData;

    invoke-virtual {v3}, Lcom/gamepromote/offerwall/AdData;->getGame()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v14, v2, v0, v3}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    .line 100
    .local v12, "gameNameLabel":Lorg/anddev/andengine/entity/text/Text;
    invoke-virtual {p0, v12}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 102
    new-instance v6, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v2, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v6, v8, v8, v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    .line 103
    .local v6, "actionFontAtlas":Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    new-instance v5, Lorg/anddev/andengine/opengl/font/Font;

    const/4 v2, 0x2

    invoke-static {v2, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v7

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    .local v5, "actionFont":Lorg/anddev/andengine/opengl/font/Font;
    new-array v2, v4, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 104
    aput-object v6, v2, v13

    invoke-static {v2}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    new-array v2, v4, [Lorg/anddev/andengine/opengl/font/Font;

    .line 105
    aput-object v5, v2, v13

    invoke-static {v2}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 106
    new-instance v11, Lorg/anddev/andengine/entity/text/Text;

    const/high16 v2, 0x43480000    # 200.0f

    const v3, 0x7f05007b

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v14, v2, v5, v3}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    .line 107
    .local v11, "actionLabel":Lorg/anddev/andengine/entity/text/Text;
    invoke-virtual {p0, v11}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 108
    return-void
.end method

.method private initTitle()V
    .locals 9

    .prologue
    const/16 v3, 0x100

    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 111
    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v2, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v1, v3, v3, v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    .line 112
    .local v1, "titleFontAtlas":Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    const/4 v2, 0x2

    invoke-static {v2, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x42100000    # 36.0f

    const/16 v5, 0xff

    const/16 v7, 0xae

    invoke-static {v5, v7, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    .local v0, "titleFont":Lorg/anddev/andengine/opengl/font/Font;
    new-array v2, v4, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 113
    aput-object v1, v2, v8

    invoke-static {v2}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    new-array v2, v4, [Lorg/anddev/andengine/opengl/font/Font;

    .line 114
    aput-object v0, v2, v8

    invoke-static {v2}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 115
    new-instance v6, Lorg/anddev/andengine/entity/text/Text;

    const/high16 v2, 0x43a50000    # 330.0f

    const/high16 v3, 0x42860000    # 67.0f

    const v4, 0x7f050078

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v2, v3, v0, v4}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    .line 116
    .local v6, "newGamesLabel":Lorg/anddev/andengine/entity/text/Text;
    invoke-virtual {p0, v6}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 117
    return-void
.end method

.method private onClick(Lcom/droidhen/andplugin/ComposedAnimatedSprite;)V
    .locals 2
    .param p1, "btnChosen"    # Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnDownload:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-ne p1, v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->clear()V

    .line 208
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sInstance:Lcom/droidhen/fortconquer/GameActivity;

    new-instance v1, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg$1;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg$1;-><init>(Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;)V

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBtnLater:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-ne p1, v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->clear()V

    goto :goto_0
.end method


# virtual methods
.method protected attachEverything()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->detachSelf()Z

    .line 165
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->registerHandlers()V

    .line 166
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->registerTouchAreas()V

    .line 167
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/droidhen/fortconquer/scenes/StatusScene;->mOfferWallAdDlg:Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;

    .line 168
    return-void
.end method

.method protected final initRegion()V
    .locals 4

    .prologue
    .line 64
    invoke-super {p0}, Lcom/droidhen/fortconquer/layer/GameDlg;->initRegion()V

    .line 65
    sget-object v0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "btn_up.png"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "btn_down.png"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 66
    sget-object v0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "complete_bg.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->rCompleteBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 67
    return-void
.end method

.method protected initSprite()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 73
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->rCompleteBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x190

    int-to-float v1, v1

    const/high16 v2, 0x42040000    # 33.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->rCompleteBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 74
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->sBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 75
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->initTitle()V

    .line 76
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->initGameIcon()V

    .line 77
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->initGameInfoLabels()V

    .line 78
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->initBtns()V

    .line 79
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->initCrystalsInfo()V

    .line 80
    return-void
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 7
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 174
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    .line 175
    .local v0, "curX":F
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v1

    .line 176
    .local v1, "curY":F
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    invoke-direct {p0, v0, v1}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->getChosenBtn(FF)Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    move-result-object v2

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 178
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    instance-of v2, v2, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    if-nez v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v5}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 199
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z

    .line 202
    :cond_1
    return v5

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z

    .line 183
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    instance-of v2, v2, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    if-nez v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 185
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-direct {p0, v2}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->onClick(Lcom/droidhen/andplugin/ComposedAnimatedSprite;)V

    .line 193
    :goto_1
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 195
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    goto :goto_0

    .line 188
    :cond_3
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v5}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    goto :goto_1

    .line 191
    :cond_4
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    goto :goto_1
.end method

.method protected declared-synchronized setupLevelCompleteMenu()V
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
