.class public Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;
.super Lcom/droidhen/fortconquer/layer/GameDlg;
.source "StageCompleteDlg.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# static fields
.field static final BASE_X:I = 0x123

.field static final COIN_SCALE:F = 0.75f

.field static final MARGIN:I = 0x3

.field static final NUM_SCALE:F = 0.8f


# instance fields
.field private bIsInfoUpdated:Z

.field private btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private fFieldFont:Lorg/anddev/andengine/opengl/font/Font;

.field private fFieldFontSmall:Lorg/anddev/andengine/opengl/font/Font;

.field private fInfoB:Lorg/anddev/andengine/opengl/font/Font;

.field private fInfoBS:Lorg/anddev/andengine/opengl/font/Font;

.field private fInfoG:Lorg/anddev/andengine/opengl/font/Font;

.field private fInfoGS:Lorg/anddev/andengine/opengl/font/Font;

.field protected mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

.field private mLevelUpTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private mLevelupSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private mLvCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private mLvCrystalSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private mPopCardLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private mXPNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private mrFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field protected rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field protected rCompleteBg:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private rInfo:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private rLEvolve:Lcom/droidhen/andplugin/PlistTextureRegion;

.field protected rLMore:Lcom/droidhen/andplugin/PlistTextureRegion;

.field protected rLNext:Lcom/droidhen/andplugin/PlistTextureRegion;

.field protected rLRetry:Lcom/droidhen/andplugin/PlistTextureRegion;

.field protected rLReward:Lcom/droidhen/andplugin/PlistTextureRegion;

.field protected rLTitle:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field protected rLTry:Lcom/droidhen/andplugin/PlistTextureRegion;

.field protected rNumber:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

.field private rNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

.field private rPercent:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private sBLEvolve:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sBLMore:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sBLNext:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sBLRetry:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sBg:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sBtnL:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sBtnOkay:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sCoin:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sCoinSmalls:[Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sCrystal:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sCrystalSmalls:[Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sFailLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private sFields:[Lorg/anddev/andengine/entity/text/Text;

.field private sInfo:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private sInfoBg:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sInfoClose:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private sInfoLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private sLReward:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sLTitle:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sLTry:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sLine:Lorg/anddev/andengine/entity/primitive/Rectangle;

.field private sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

.field protected sPassLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private sPercent:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sTArea:[Lorg/anddev/andengine/entity/text/ChangeableText;

.field private sTBottom:Lorg/anddev/andengine/entity/text/Text;

.field private sTBottom2:Lorg/anddev/andengine/entity/text/Text;

.field private sTCrystal:[Lorg/anddev/andengine/entity/text/ChangeableText;

.field private sTHead:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private sTNum:[Lorg/anddev/andengine/entity/text/ChangeableText;

.field private sTTableHead:[Lorg/anddev/andengine/entity/text/Text;

.field private tFieldFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private tFieldFontSamll:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private tInfoFontB:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private tInfoFontBS:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private tInfoFontG:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private tInfoFontGS:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V
    .locals 11
    .param p1, "pGameScene"    # Lcom/droidhen/fortconquer/scenes/GameScene;

    .prologue
    const/16 v10, 0xff

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/16 v2, 0x100

    const/4 v4, 0x1

    .line 121
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/GameDlg;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 123
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v2, v2, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tFieldFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 124
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v2, v2, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tFieldFontSamll:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 125
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v2, v2, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tInfoFontG:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 126
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v2, v2, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tInfoFontB:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 127
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v2, v2, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tInfoFontBS:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 128
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v2, v2, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tInfoFontGS:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 129
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tFieldFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v9, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41e00000    # 28.0f

    const/16 v5, 0x24

    const/16 v6, 0x67

    const/16 v7, 0xfe

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fFieldFont:Lorg/anddev/andengine/opengl/font/Font;

    .line 130
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 131
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tFieldFontSamll:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v9, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41900000    # 18.0f

    const/16 v5, 0x24

    const/16 v6, 0x67

    const/16 v7, 0xfe

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fFieldFontSmall:Lorg/anddev/andengine/opengl/font/Font;

    .line 135
    :goto_0
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tInfoFontG:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v4, v8}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41c00000    # 24.0f

    const/16 v5, 0xf6

    invoke-static {v8, v5, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fInfoG:Lorg/anddev/andengine/opengl/font/Font;

    .line 136
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tInfoFontGS:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v9, v8}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41b00000    # 22.0f

    const/16 v5, 0xf6

    invoke-static {v8, v5, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fInfoGS:Lorg/anddev/andengine/opengl/font/Font;

    .line 137
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tInfoFontB:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v9, v8}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41b00000    # 22.0f

    const/16 v5, 0xa8

    invoke-static {v8, v5, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fInfoB:Lorg/anddev/andengine/opengl/font/Font;

    .line 138
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tInfoFontBS:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v9, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    const/16 v5, 0xa8

    invoke-static {v8, v5, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fInfoBS:Lorg/anddev/andengine/opengl/font/Font;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 139
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tFieldFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tFieldFontSamll:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tInfoFontG:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v9

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tInfoFontB:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tInfoFontBS:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tInfoFontGS:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/anddev/andengine/opengl/font/Font;

    .line 140
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fFieldFont:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fFieldFontSmall:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fInfoG:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v9

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fInfoB:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fInfoBS:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fInfoGS:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 141
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 142
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->init()V

    .line 143
    return-void

    .line 133
    :cond_0
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tFieldFontSamll:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v9, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    const/16 v5, 0x24

    const/16 v6, 0x67

    const/16 v7, 0xfe

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fFieldFontSmall:Lorg/anddev/andengine/opengl/font/Font;

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;)V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->updateInfo()V

    return-void
.end method

.method static synthetic access$1(Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;)Lcom/droidhen/fortconquer/scenes/SmartEntity;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;)Lcom/droidhen/fortconquer/scenes/SmartEntity;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mPopCardLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;)Lcom/droidhen/andplugin/ComposedAnimatedButton;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnOkay:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    return-object v0
.end method

.method static synthetic access$4(Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;Lcom/droidhen/andplugin/ComposedAnimatedButton;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnOkay:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    return-void
.end method

.method private getChosenBtn(FF)Lcom/droidhen/andplugin/ComposedAnimatedSprite;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 626
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnOkay:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnOkay:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnOkay:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 655
    :goto_0
    return-object v0

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    goto :goto_0

    .line 635
    :cond_1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 636
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 637
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnL:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnL:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    goto :goto_0

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 641
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    goto :goto_0

    .line 643
    :cond_3
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 644
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    goto :goto_0

    .line 646
    :cond_4
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfo:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 647
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfo:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    goto :goto_0

    .line 650
    :cond_5
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoClose:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 651
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoClose:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    goto :goto_0

    .line 655
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onClick(Lcom/droidhen/andplugin/ComposedAnimatedSprite;)V
    .locals 2
    .param p1, "btnChosen"    # Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .prologue
    const/16 v1, 0xb

    .line 544
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnL:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-ne p1, v0, :cond_1

    .line 545
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->openMoreGameScreen()V

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-ne p1, v0, :cond_3

    .line 547
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Enemy;->lost()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mUnitEvolveScene:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->popNewCard(Lcom/droidhen/fortconquer/scenes/SmartScene;)V

    goto :goto_0

    .line 550
    :cond_2
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->clear()V

    .line 551
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mUnitEvolveScene:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->setupScene()V

    goto :goto_0

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-ne p1, v0, :cond_0

    .line 554
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Enemy;->lost()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 555
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->popNewCard(Lcom/droidhen/fortconquer/scenes/SmartScene;)V

    goto :goto_0

    .line 557
    :cond_4
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->clear()V

    .line 558
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->setupScene()V

    goto :goto_0
.end method

.method private setInfoRow(Ljava/lang/String;IFIZ)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "health"    # F
    .param p4, "num"    # I
    .param p5, "visible"    # Z

    .prologue
    const v7, 0x7f050076

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 482
    if-eqz p5, :cond_0

    .line 483
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTArea:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%.0f"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 488
    :goto_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTNum:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, p2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTNum:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTCrystal:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTNum:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTNum:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 490
    if-gt p4, v6, :cond_2

    .line 491
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTCrystal:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, p2

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v7, v1}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 496
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTArea:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, p2

    invoke-virtual {v0, p5}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 497
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTNum:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, p2

    invoke-virtual {v0, p5}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 498
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTCrystal:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, p2

    invoke-virtual {v0, p5}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 499
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTArea:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%.1f"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTCrystal:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, p2

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v7, v1}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateInfo()V
    .locals 15

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->bIsInfoUpdated:Z

    if-nez v0, :cond_1

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->bIsInfoUpdated:Z

    .line 451
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->getBaseCrystal(I)I

    move-result v10

    .line 452
    .local v10, "baseCrystals":I
    add-int/lit8 v12, v10, 0x1

    .line 453
    .local v12, "max":I
    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 454
    const/16 v0, 0xa

    if-lt v12, v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTHead:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v1, 0x7f05006b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "450"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "\u221e"

    aput-object v7, v4, v5

    invoke-static {v1, v4}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 461
    :goto_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTHead:Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x43c80000    # 400.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTHead:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTHead:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 462
    const/4 v3, 0x0

    .line 463
    .local v3, "health":F
    const/4 v2, 0x0

    .line 464
    .local v2, "num":I
    move v6, v12

    .local v6, "i":I
    :goto_1
    const/4 v0, 0x1

    if-ge v6, v0, :cond_4

    .line 472
    const/16 v0, 0xb

    if-ge v2, v0, :cond_0

    .line 473
    const-string v1, "<"

    add-int/lit8 v13, v2, 0x1

    .end local v2    # "num":I
    .local v13, "num":I
    add-int/lit8 v4, v10, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->setInfoRow(Ljava/lang/String;IFIZ)V

    move v2, v13

    .line 475
    .end local v13    # "num":I
    .restart local v2    # "num":I
    :cond_0
    move v6, v2

    :goto_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTArea:[Lorg/anddev/andengine/entity/text/ChangeableText;

    array-length v0, v0

    if-lt v6, v0, :cond_6

    .line 479
    .end local v2    # "num":I
    .end local v3    # "health":F
    .end local v6    # "i":I
    .end local v10    # "baseCrystals":I
    .end local v12    # "max":I
    :cond_1
    return-void

    .line 457
    .restart local v10    # "baseCrystals":I
    .restart local v12    # "max":I
    :cond_2
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/lit8 v14, v0, -0x1

    .line 458
    .local v14, "stage":I
    rem-int/lit8 v0, v14, 0x32

    sub-int v11, v14, v0

    .line 459
    .local v11, "cst":I
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTHead:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v4, 0x7f05006b

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-nez v11, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    const/4 v0, 0x1

    add-int/lit8 v7, v11, 0x31

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v0

    invoke-static {v4, v5}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v11

    goto :goto_3

    .line 465
    .end local v11    # "cst":I
    .end local v14    # "stage":I
    .restart local v2    # "num":I
    .restart local v3    # "health":F
    .restart local v6    # "i":I
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    add-int/lit8 v1, v6, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    int-to-float v1, v10

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42480000    # 50.0f

    add-float v3, v0, v1

    .line 466
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_5

    .line 464
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 469
    :cond_5
    const-string v1, ""

    add-int v4, v6, v10

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->setInfoRow(Ljava/lang/String;IFIZ)V

    .line 470
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 476
    :cond_6
    const-string v5, "<"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->setInfoRow(Ljava/lang/String;IFIZ)V

    .line 475
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected attachEverything()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x4

    .line 386
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 387
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 389
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sPassLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 390
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFailLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 392
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnL:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 393
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 395
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 396
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCoin:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 397
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCrystal:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 399
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnL:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBLMore:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 400
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBLEvolve:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 402
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sPassLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sLReward:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 403
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sPassLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sPercent:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 404
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFailLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sLTry:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 410
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCoinSmalls:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 414
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCrystalSmalls:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 418
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFailLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 420
    const/4 v0, 0x0

    :goto_3
    if-lt v0, v4, :cond_3

    .line 423
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    aget-object v1, v1, v4

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 424
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 425
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfo:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 426
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 427
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sLTitle:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 428
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sPassLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sXP:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 429
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sPassLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mXPNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 431
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 432
    return-void

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sPassLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sPassLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCoinSmalls:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 415
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sPassLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCrystalSmalls:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 421
    :cond_3
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sPassLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->detachSelf()Z

    .line 504
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/engine/camera/hud/HUD;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    .line 505
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUIBottomSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/engine/camera/hud/HUD;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 506
    return-void
.end method

.method protected final initRegion()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 146
    invoke-super {p0}, Lcom/droidhen/fortconquer/layer/GameDlg;->initRegion()V

    .line 147
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "percent.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rPercent:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 148
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "btn_up.png"

    aput-object v2, v1, v4

    const-string v2, "btn_down.png"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 149
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "z_stage_complete.png"

    aput-object v2, v1, v4

    const-string v2, "z_game_over.png"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLTitle:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 150
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "info.png"

    aput-object v2, v1, v4

    const-string v2, "info_closed.png"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rInfo:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 151
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_reward.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLReward:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 152
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_try.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLTry:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 153
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_more.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLMore:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 154
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_next.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLNext:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 155
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_retry.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLRetry:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 157
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_evolve.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLEvolve:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 158
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "complete_bg.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rCompleteBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 159
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_number.png"

    invoke-static {v0, v1, v6, v3}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createTiledFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;II)Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumber:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    .line 160
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_number_small.png"

    invoke-static {v0, v1, v6, v3}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createTiledFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;II)Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    .line 161
    sget-object v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "level-up.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mLevelUpTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 163
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mrFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 164
    return-void
.end method

.method protected initSprite()V
    .locals 15

    .prologue
    .line 168
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sPassLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 169
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFailLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 170
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 171
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rCompleteBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x190

    int-to-float v1, v1

    const/high16 v2, 0x42040000    # 33.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rCompleteBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 172
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rCompleteBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x190

    int-to-float v1, v1

    const/high16 v2, 0x42040000    # 33.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rCompleteBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 173
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->setVisible(Z)V

    .line 174
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x190

    int-to-float v1, v1

    const v2, 0x439d8000    # 315.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 175
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnL:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 176
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x41600000    # 14.0f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 177
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLTitle:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x190

    int-to-float v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLTitle:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sLTitle:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 178
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rInfo:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x42180000    # 38.0f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    const/high16 v3, 0x428c0000    # 70.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rInfo:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    new-instance v4, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$1;

    invoke-direct {v4, p0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$1;-><init>(Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfo:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 185
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfo:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setEnableAnimated(Z)V

    .line 186
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfo:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setAreaExtend(I)V

    .line 187
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfo:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfo:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rInfo:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v3

    new-instance v4, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$2;

    invoke-direct {v4, p0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$2;-><init>(Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoClose:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 193
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoClose:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setEnableAnimated(Z)V

    .line 194
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoClose:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 195
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoClose:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setAreaExtend(I)V

    .line 196
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x43160000    # 150.0f

    const/high16 v2, 0x43020000    # 130.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLReward:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sLReward:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 197
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x43250000    # 165.0f

    const/high16 v2, 0x43160000    # 150.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLTry:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sLTry:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 199
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnL:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLMore:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnL:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLMore:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLMore:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBLMore:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 200
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLNext:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLNext:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLNext:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBLNext:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 201
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLRetry:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLRetry:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLRetry:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBLRetry:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 202
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLEvolve:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLEvolve:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rLEvolve:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBLEvolve:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 204
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/anddev/andengine/entity/text/Text;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    .line 206
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x43930000    # 294.0f

    const/high16 v2, 0x43820000    # 260.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCoin:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCoin:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 207
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v1, 0x43ee8000    # 477.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCoin:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCrystal:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCrystal:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 209
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v1, 0x0

    new-instance v2, Lorg/anddev/andengine/entity/text/Text;

    const/high16 v3, 0x436e0000    # 238.0f

    const/high16 v4, 0x43480000    # 200.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fFieldFontSmall:Lorg/anddev/andengine/opengl/font/Font;

    const v6, 0x7f050066

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v6, v14}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 210
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v1, 0x1

    new-instance v2, Lorg/anddev/andengine/entity/text/Text;

    const/high16 v3, 0x435b0000    # 219.0f

    const/high16 v4, 0x43610000    # 225.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fFieldFontSmall:Lorg/anddev/andengine/opengl/font/Font;

    const v6, 0x7f050067

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v6, v14}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 211
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v1, 0x2

    new-instance v2, Lorg/anddev/andengine/entity/text/Text;

    const/high16 v3, 0x43530000    # 211.0f

    const/high16 v4, 0x437a0000    # 250.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fFieldFontSmall:Lorg/anddev/andengine/opengl/font/Font;

    const v6, 0x7f050068

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v6, v14}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 212
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v1, 0x3

    new-instance v2, Lorg/anddev/andengine/entity/text/Text;

    const/high16 v3, 0x432c0000    # 172.0f

    const v4, 0x438f8000    # 287.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fFieldFont:Lorg/anddev/andengine/opengl/font/Font;

    const v6, 0x7f050069

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v6, v14}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 213
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v1, 0x4

    new-instance v2, Lorg/anddev/andengine/entity/text/Text;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sLTry:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x437e0000    # 254.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fFieldFont:Lorg/anddev/andengine/opengl/font/Font;

    const v6, 0x7f05006a

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v6, v14}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 215
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/droidhen/fortconquer/kits/NumberSprite;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 217
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCrystal:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    add-float v13, v0, v1

    .line 218
    .local v13, "w":F
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v14, 0x0

    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const v1, 0x43918000    # 291.0f

    add-float/2addr v1, v13

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    aput-object v0, v6, v14

    .line 219
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v14, 0x1

    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const v1, 0x43918000    # 291.0f

    add-float/2addr v1, v13

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    aput-object v0, v6, v14

    .line 220
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v14, 0x2

    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const v1, 0x43918000    # 291.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    const/16 v4, 0x8

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    aput-object v0, v6, v14

    .line 221
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v14, 0x3

    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const v1, 0x43918000    # 291.0f

    add-float/2addr v1, v13

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    aput-object v0, v6, v14

    .line 222
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v14, 0x4

    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const v1, 0x43918000    # 291.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    aput-object v0, v6, v14

    .line 224
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v14, 0x5

    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/high16 v1, 0x43930000    # 294.0f

    const/high16 v2, 0x43030000    # 131.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumber:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    aput-object v0, v6, v14

    .line 225
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v14, 0x6

    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/high16 v1, 0x43e00000    # 448.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumber:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    const/16 v4, 0x8

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    aput-object v0, v6, v14

    .line 226
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setScaleCenter(FF)V

    .line 227
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setScaleCenter(FF)V

    .line 228
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setScale(F)V

    .line 229
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setScale(F)V

    .line 230
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x43610000    # 225.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rPercent:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sPercent:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 231
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sPercent:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumber:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setHeight(F)V

    .line 233
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v14, 0x7

    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const v1, 0x43a28000    # 325.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumber:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumber:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    const/16 v4, 0x8

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    aput-object v0, v6, v14

    .line 234
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/16 v14, 0x8

    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const v1, 0x43948000    # 297.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumber:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumber:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    aput-object v0, v6, v14

    .line 236
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const v1, 0x43918000    # 291.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getInitialY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/Text;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/Text;->setPosition(FF)V

    .line 237
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const v1, 0x43918000    # 291.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getInitialY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/Text;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/Text;->setPosition(FF)V

    .line 238
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const v1, 0x43918000    # 291.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getInitialY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/Text;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/Text;->setPosition(FF)V

    .line 239
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const v1, 0x43918000    # 291.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getInitialY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/Text;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/Text;->setPosition(FF)V

    .line 240
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sLTry:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getInitialY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/Text;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/Text;->setPosition(FF)V

    .line 242
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/anddev/andengine/entity/sprite/Sprite;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCoinSmalls:[Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 243
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/anddev/andengine/entity/sprite/Sprite;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCrystalSmalls:[Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 245
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCoinSmalls:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v0, v0

    if-lt v11, v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 257
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoClose:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 258
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x43960000    # 300.0f

    const/high16 v2, 0x42f00000    # 120.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fInfoBS:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, ""

    const/16 v5, 0x40

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTHead:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 259
    new-instance v0, Lorg/anddev/andengine/entity/text/Text;

    const/high16 v1, 0x43960000    # 300.0f

    const/high16 v2, 0x43ae0000    # 348.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fInfoBS:Lorg/anddev/andengine/opengl/font/Font;

    const v4, 0x7f05006c

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTBottom:Lorg/anddev/andengine/entity/text/Text;

    .line 260
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTBottom:Lorg/anddev/andengine/entity/text/Text;

    const/high16 v1, 0x43c80000    # 400.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTBottom:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTBottom:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/Text;->setPosition(FF)V

    .line 261
    new-instance v0, Lorg/anddev/andengine/entity/text/Text;

    const/high16 v1, 0x43960000    # 300.0f

    const/high16 v2, 0x43c80000    # 400.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fInfoBS:Lorg/anddev/andengine/opengl/font/Font;

    const v4, 0x7f05006d

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTBottom2:Lorg/anddev/andengine/entity/text/Text;

    .line 262
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTBottom2:Lorg/anddev/andengine/entity/text/Text;

    const/high16 v1, 0x43c80000    # 400.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTBottom2:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTBottom:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTBottom:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/Text;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/Text;->setPosition(FF)V

    .line 263
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTHead:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 264
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTBottom:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 265
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTBottom2:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 266
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/anddev/andengine/entity/text/Text;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTTableHead:[Lorg/anddev/andengine/entity/text/Text;

    .line 267
    const/16 v8, 0x14

    .line 268
    .local v8, "MarginLeft":I
    const/16 v7, 0x1a4

    .line 269
    .local v7, "Len":I
    const/4 v0, 0x4

    new-array v10, v0, [I

    fill-array-data v10, :array_0

    .line 270
    .local v10, "X":[I
    const/4 v11, 0x0

    :goto_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTTableHead:[Lorg/anddev/andengine/entity/text/Text;

    array-length v0, v0

    if-lt v11, v0, :cond_2

    .line 274
    new-instance v0, Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/high16 v1, 0x43250000    # 165.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTTableHead:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTTableHead:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/Text;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x43eb0000    # 470.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sLine:Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 275
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sLine:Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/4 v1, 0x0

    const v2, 0x3f76f6f7

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setColor(FFF)V

    .line 276
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sLine:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 278
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/anddev/andengine/entity/text/ChangeableText;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTArea:[Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 279
    const/16 v9, 0x19

    .line 280
    .local v9, "MarginTop":I
    const/4 v11, 0x0

    :goto_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTArea:[Lorg/anddev/andengine/entity/text/ChangeableText;

    array-length v0, v0

    if-lt v11, v0, :cond_4

    .line 285
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/anddev/andengine/entity/text/ChangeableText;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTCrystal:[Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 286
    const/4 v11, 0x0

    :goto_3
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTCrystal:[Lorg/anddev/andengine/entity/text/ChangeableText;

    array-length v0, v0

    if-lt v11, v0, :cond_5

    .line 291
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/anddev/andengine/entity/text/ChangeableText;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTNum:[Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 292
    const/4 v11, 0x0

    :goto_4
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTNum:[Lorg/anddev/andengine/entity/text/ChangeableText;

    array-length v0, v0

    if-lt v11, v0, :cond_6

    .line 297
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x44010000    # 516.0f

    const/high16 v2, 0x43220000    # 162.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mLevelUpTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mLevelupSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 298
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v1, 0x440c4000    # 561.0f

    const/high16 v2, 0x436e0000    # 238.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCrystal:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mLvCrystalSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 299
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const v1, 0x44138000    # 590.0f

    const/high16 v2, 0x43720000    # 242.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mMainUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v4, "mine_number.png"

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mLvCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 300
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/high16 v1, 0x43910000    # 290.0f

    const/high16 v2, 0x433a0000    # 186.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumberSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mXPNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 302
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/high16 v1, 0x44180000    # 608.0f

    const/high16 v2, 0x43d10000    # 418.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mrFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    sget-object v4, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->sTaskShowTapjoyOffers:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 303
    return-void

    .line 246
    .end local v7    # "Len":I
    .end local v8    # "MarginLeft":I
    .end local v9    # "MarginTop":I
    .end local v10    # "X":[I
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/text/Text;->getInitialY()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/text/Text;->getHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v12, v0, v1

    .line 247
    .local v12, "vm":F
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCoinSmalls:[Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x43930000    # 294.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCoin:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v12, v3

    sget-object v4, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCoin:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v1, v2, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aput-object v1, v0, v11

    .line 248
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCoinSmalls:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v0, v0, v11

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScale(F)V

    .line 249
    if-lez v11, :cond_1

    .line 250
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCrystalSmalls:[Lorg/anddev/andengine/entity/sprite/Sprite;

    add-int/lit8 v1, v11, -0x1

    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v3, 0x43930000    # 294.0f

    sget-object v4, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCrystal:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v12, v4

    sget-object v5, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCrystal:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aput-object v2, v0, v1

    .line 251
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCrystalSmalls:[Lorg/anddev/andengine/entity/sprite/Sprite;

    add-int/lit8 v1, v11, -0x1

    aget-object v0, v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScale(F)V

    .line 245
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 271
    .end local v12    # "vm":F
    .restart local v7    # "Len":I
    .restart local v8    # "MarginLeft":I
    .restart local v10    # "X":[I
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTTableHead:[Lorg/anddev/andengine/entity/text/Text;

    new-instance v2, Lorg/anddev/andengine/entity/text/Text;

    aget v0, v10, v11

    int-to-float v3, v0

    const/high16 v4, 0x43160000    # 150.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fInfoG:Lorg/anddev/andengine/opengl/font/Font;

    rem-int/lit8 v0, v11, 0x2

    if-nez v0, :cond_3

    const v0, 0x7f050073

    :goto_5
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    aput-object v2, v1, v11

    .line 272
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTTableHead:[Lorg/anddev/andengine/entity/text/Text;

    aget-object v1, v1, v11

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 270
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 271
    :cond_3
    const v0, 0x7f05006e

    goto :goto_5

    .line 281
    .restart local v9    # "MarginTop":I
    :cond_4
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTArea:[Lorg/anddev/andengine/entity/text/ChangeableText;

    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    rem-int/lit8 v1, v11, 0x2

    mul-int/lit8 v1, v1, 0x2

    aget v1, v10, v1

    int-to-float v1, v1

    div-int/lit8 v2, v11, 0x2

    mul-int/lit8 v2, v2, 0x19

    add-int/lit16 v2, v2, 0xb4

    int-to-float v2, v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fInfoGS:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, ""

    const/4 v5, 0x6

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    aput-object v0, v6, v11

    .line 282
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTArea:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v1, v1, v11

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 280
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 287
    :cond_5
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTCrystal:[Lorg/anddev/andengine/entity/text/ChangeableText;

    new-instance v1, Lorg/anddev/andengine/entity/text/ChangeableText;

    rem-int/lit8 v2, v11, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, v10, v2

    add-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTArea:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fInfoB:Lorg/anddev/andengine/opengl/font/Font;

    const v5, 0x7f050076

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    aput-object v1, v0, v11

    .line 288
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTCrystal:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v1, v1, v11

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 286
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 293
    :cond_6
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTNum:[Lorg/anddev/andengine/entity/text/ChangeableText;

    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    rem-int/lit8 v1, v11, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v1, v10, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTArea:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->fInfoGS:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, ""

    const/4 v5, 0x5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    aput-object v0, v6, v11

    .line 294
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sTNum:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v1, v1, v11

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 292
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 269
    :array_0
    .array-data 4
        0xd2
        0x12c
        0x1a4
        0x1fe
    .end array-data
.end method

.method isNewCardPoped()Z
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mPopCardLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mPopCardLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 7
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 512
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    .line 513
    .local v0, "curX":F
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v1

    .line 514
    .local v1, "curY":F
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 515
    invoke-direct {p0, v0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->getChosenBtn(FF)Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    move-result-object v2

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 516
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    instance-of v2, v2, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    if-nez v2, :cond_0

    .line 517
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v5}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 537
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-eqz v2, :cond_1

    .line 538
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z

    .line 540
    :cond_1
    return v5

    .line 519
    :cond_2
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-eqz v2, :cond_0

    .line 520
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z

    .line 521
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    instance-of v2, v2, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    if-nez v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 523
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 524
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-direct {p0, v2}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->onClick(Lcom/droidhen/andplugin/ComposedAnimatedSprite;)V

    .line 531
    :goto_1
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 533
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    goto :goto_0

    .line 526
    :cond_3
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v5}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    goto :goto_1

    .line 529
    :cond_4
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->btnChosen:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    goto :goto_1
.end method

.method popNewCard(Lcom/droidhen/fortconquer/scenes/SmartScene;)V
    .locals 21
    .param p1, "scene"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    .line 571
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "gfx/unit_evolve/"

    .line 572
    const-string v8, "evolve.png"

    const-string v9, "evolve.plist"

    sget-object v20, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 571
    move-object/from16 v0, v20

    invoke-static {v6, v7, v8, v9, v0}, Lcom/droidhen/andplugin/PlistTexture;->getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v10

    .line 573
    .local v10, "starTexture":Lcom/droidhen/andplugin/PlistTexture;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->setVisible(Z)V

    .line 574
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/GameActivity;->getCamera()Lorg/anddev/andengine/engine/camera/SmoothCamera;

    move-result-object v6

    const/high16 v7, 0x44160000    # 600.0f

    const/high16 v8, 0x43700000    # 240.0f

    invoke-virtual {v6, v7, v8}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->setCenter(FF)V

    .line 575
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v6

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/units/Player;->genFirstFreeDragon()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v13

    .line 576
    .local v13, "card":Lcom/droidhen/fortconquer/units/Card;
    new-instance v6, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v6}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mPopCardLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 577
    new-instance v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v6, 0x100

    const/16 v7, 0x100

    sget-object v8, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v2, v6, v7, v8}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    .line 578
    .local v2, "fontTexture":Lorg/anddev/andengine/opengl/texture/Texture;
    new-instance v1, Lorg/anddev/andengine/opengl/font/Font;

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v3

    const/high16 v4, 0x42300000    # 44.0f

    const/4 v5, 0x1

    const/16 v6, 0xf6

    const/16 v7, 0xe6

    const/16 v8, 0x8f

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    .line 579
    .local v1, "font":Lorg/anddev/andengine/opengl/font/Font;
    new-instance v4, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v6, 0x200

    const/16 v7, 0x100

    sget-object v8, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v4, v6, v7, v8}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    .line 580
    .local v4, "fontTextureS":Lorg/anddev/andengine/opengl/texture/Texture;
    new-instance v3, Lorg/anddev/andengine/opengl/font/Font;

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v5

    const/high16 v6, 0x41d00000    # 26.0f

    const/4 v7, 0x1

    const/16 v8, 0xf6

    const/16 v9, 0xe6

    const/16 v20, 0x8f

    move/from16 v0, v20

    invoke-static {v8, v9, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-direct/range {v3 .. v8}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    .local v3, "fontS":Lorg/anddev/andengine/opengl/font/Font;
    const/4 v6, 0x3

    new-array v6, v6, [Lorg/anddev/andengine/opengl/texture/Texture;

    const/4 v7, 0x0

    .line 581
    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    aput-object v10, v6, v7

    invoke-static {v6}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/anddev/andengine/opengl/font/Font;

    const/4 v7, 0x0

    .line 582
    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v6}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 583
    new-instance v18, Lorg/anddev/andengine/entity/text/Text;

    const/high16 v6, 0x43b40000    # 360.0f

    const/high16 v7, 0x42d80000    # 108.0f

    const v8, 0x7f05006f

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v7, v1, v8}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    .line 584
    .local v18, "text":Lorg/anddev/andengine/entity/text/Text;
    new-instance v19, Lorg/anddev/andengine/entity/text/Text;

    .line 585
    invoke-virtual/range {v18 .. v18}, Lorg/anddev/andengine/entity/text/Text;->getX()F

    move-result v6

    .line 586
    invoke-virtual/range {v18 .. v18}, Lorg/anddev/andengine/entity/text/Text;->getY()F

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lorg/anddev/andengine/entity/text/Text;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x41200000    # 10.0f

    add-float/2addr v7, v8

    .line 588
    const v8, 0x7f050070

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 584
    move-object/from16 v0, v19

    invoke-direct {v0, v6, v7, v3, v8}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    .line 590
    .local v19, "textS":Lorg/anddev/andengine/entity/text/Text;
    new-instance v6, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/high16 v7, 0x440c0000    # 560.0f

    const/high16 v8, 0x43af0000    # 350.0f

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v9}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnOkay:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 591
    sget-object v6, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v7, "z_okay.png"

    invoke-static {v6, v7}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v16

    .line 592
    .local v16, "rLOkay":Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    new-instance v11, Lorg/anddev/andengine/entity/sprite/Sprite;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnOkay:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v6}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getWidth()F

    move-result v6

    invoke-virtual/range {v16 .. v16}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnOkay:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v7}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getHeight()F

    move-result v7

    invoke-virtual/range {v16 .. v16}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move-object/from16 v0, v16

    invoke-direct {v11, v6, v7, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 593
    .local v11, "LOkay":Lorg/anddev/andengine/entity/sprite/Sprite;
    new-instance v5, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$3;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v8, v2

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$3;-><init>(Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;Lcom/droidhen/fortconquer/scenes/SmartScene;Lorg/anddev/andengine/opengl/texture/Texture;Lorg/anddev/andengine/opengl/texture/Texture;Lcom/droidhen/andplugin/PlistTexture;)V

    .line 605
    .local v5, "task":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnOkay:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v6, v5}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setClickTask(Ljava/lang/Runnable;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnOkay:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v6, v11}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 607
    const-string v6, "star_ray.png"

    invoke-static {v10, v6}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v17

    .line 608
    .local v17, "rStarRay":Lcom/droidhen/andplugin/PlistTextureRegion;
    const/16 v12, 0xaa

    .line 609
    .local v12, "X":I
    new-instance v15, Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    rsub-int v6, v6, 0xaa

    int-to-float v6, v6

    invoke-virtual/range {v17 .. v17}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    rsub-int v7, v7, 0xf0

    int-to-float v7, v7

    move-object/from16 v0, v17

    invoke-direct {v15, v6, v7, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 610
    .local v15, "msStarRay":Lorg/anddev/andengine/entity/sprite/Sprite;
    new-instance v14, Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x44480000    # 800.0f

    const/high16 v9, 0x43f00000    # 480.0f

    invoke-direct {v14, v6, v7, v8, v9}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    .line 611
    .local v14, "cover":Lorg/anddev/andengine/entity/primitive/Rectangle;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x3f333333    # 0.7f

    invoke-virtual {v14, v6, v7, v8, v9}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setColor(FFFF)V

    .line 612
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mPopCardLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v6, v14}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mPopCardLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v6, v15}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mPopCardLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v6, v13}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mPopCardLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mPopCardLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 618
    const/high16 v6, 0x432a0000    # 170.0f

    invoke-virtual {v13}, Lcom/droidhen/fortconquer/units/Card;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x43700000    # 240.0f

    invoke-virtual {v13}, Lcom/droidhen/fortconquer/units/Card;->getHeight()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v13, v6, v7}, Lcom/droidhen/fortconquer/units/Card;->setPosition(FF)V

    .line 620
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mPopCardLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnOkay:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v6, v7}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 621
    sget-object v6, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnOkay:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v6, v7}, Lcom/droidhen/fortconquer/scenes/GameScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 622
    sget-object v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mPopCardLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v6, v7}, Lorg/anddev/andengine/engine/camera/hud/HUD;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 623
    return-void
.end method

.method protected declared-synchronized setupLevelCompleteMenu()V
    .locals 2

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 446
    :goto_0
    monitor-exit p0

    return-void

    .line 437
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->hideMainUI()V

    .line 438
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->setVisible(Z)V

    .line 441
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->showLevelCompleteUI()V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->bIsInfoUpdated:Z

    .line 443
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sInfoLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->setVisible(Z)V

    .line 444
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->CheckAndShowAD()V

    .line 445
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized showLevelCompleteUI()V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x4

    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sPassLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->setVisible(Z)V

    .line 307
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFailLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->setVisible(Z)V

    .line 308
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v5}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->detachChildren()V

    .line 309
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getLastStageCoins()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 310
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getLastStageCrystals()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 311
    const/4 v4, 0x0

    .line 312
    .local v4, "vm":F
    const/4 v3, 0x0

    .line 313
    .local v3, "vb":F
    const/4 v0, 0x0

    .line 314
    .local v0, "coin_X":F
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v5, v5, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Enemy;->lost()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 315
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getLastStageKill()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 316
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v6

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/units/Player;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v6

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/units/Fort;->getHealth()F

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v7

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Player;->getFort()Lcom/droidhen/fortconquer/units/Fort;

    move-result-object v7

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Fort;->getInitHealth()F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 318
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    sget-object v6, Lcom/droidhen/fortconquer/units/Player;->sLastStageReward:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 319
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    sget-object v6, Lcom/droidhen/fortconquer/units/Player;->sLastStageReward:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 320
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    sget-object v6, Lcom/droidhen/fortconquer/units/Player;->sLastStageReward:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 321
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    sget-object v6, Lcom/droidhen/fortconquer/units/Player;->sLastStageReward:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 322
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    sget-object v6, Lcom/droidhen/fortconquer/units/Player;->sLastStageReward:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 323
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sPercent:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v8, 0x6

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40a00000    # 5.0f

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v8, 0x6

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 324
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sLTitle:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 325
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sPassLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->setVisible(Z)V

    .line 326
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBLNext:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v5, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 327
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/text/Text;->getInitialY()F

    move-result v5

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/text/Text;->getHeight()F

    move-result v6

    div-float/2addr v6, v10

    sub-float v4, v5, v6

    .line 328
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/text/Text;->getInitialY()F

    move-result v3

    .line 329
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCoin:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->getInitialX()F

    move-result v0

    .line 331
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getLvUpReward()I

    move-result v2

    .line 332
    .local v2, "pCrystals":I
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mLvCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v5, v2}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 333
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerExp()I

    move-result v5

    rem-int/lit8 v5, v5, 0x64

    if-gt v5, v9, :cond_2

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerExp()I

    move-result v5

    const v6, 0xc350

    if-ge v5, v6, :cond_2

    .line 335
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mLevelupSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v5}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 336
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mLevelupSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 337
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mLvCrystalSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v5}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 338
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mLvCrystalSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 339
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mLvCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {p0, v5}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 340
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mLvCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setVisible(Z)V

    .line 341
    invoke-static {v2}, Lcom/droidhen/fortconquer/units/Player;->changeCrystals(I)Z

    .line 356
    .end local v2    # "pCrystals":I
    :goto_0
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCoin:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCoin:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v6

    div-float/2addr v6, v10

    sub-float v6, v4, v6

    invoke-virtual {v5, v0, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 357
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCoin:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCoin:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->rNumber:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    invoke-virtual {v7}, Lcom/droidhen/andplugin/PlistTiledTextureRegion;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-virtual {v5, v6, v7}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setPosition(FF)V

    .line 358
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCrystal:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v8, 0x7

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x42200000    # 40.0f

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCoin:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 359
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCrystal:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCrystal:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v8, 0x7

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setPosition(FF)V

    .line 360
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/16 v7, 0x8

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setPosition(FF)V

    .line 361
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/16 v7, 0x8

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setPosition(FF)V

    .line 362
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCrystalSmalls:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v5, v5

    if-lt v1, v5, :cond_4

    .line 365
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sXP:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCrystal:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v6

    const/high16 v7, 0x40a00000    # 5.0f

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sNumbers:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getHeight()F

    move-result v8

    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sXP:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v9}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 366
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mXPNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sXP:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sXP:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40a00000    # 5.0f

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sXP:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sXP:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v8}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v8

    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mXPNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v9}, Lcom/droidhen/fortconquer/kits/NumberSprite;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setPosition(FF)V

    .line 367
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mXPNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 368
    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    invoke-virtual {v5, p0}, Lorg/anddev/andengine/engine/camera/hud/HUD;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 369
    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v6, v6, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUIBottomSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v5, v6}, Lorg/anddev/andengine/engine/camera/hud/HUD;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    .line 370
    sget-object v5, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    invoke-virtual {v5, p0}, Lorg/anddev/andengine/engine/camera/hud/HUD;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    .line 371
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v5

    if-gt v5, v11, :cond_0

    .line 372
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/droidhen/fortconquer/component/Guide;->jump(I)V

    .line 373
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    .line 374
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v5, v5, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Enemy;->lost()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 375
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->saveProgress()V

    .line 378
    :cond_0
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v5, v5, Lcom/droidhen/fortconquer/scenes/GameScene;->mEnemy:Lcom/droidhen/fortconquer/units/Enemy;

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Enemy;->lost()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 379
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/GameActivity;->openMoreGameInterval()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :cond_1
    monitor-exit p0

    return-void

    .line 344
    .end local v1    # "i":I
    .restart local v2    # "pCrystals":I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mLevelupSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 345
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mLvCrystalSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 346
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->mLvCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setVisible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 306
    .end local v0    # "coin_X":F
    .end local v2    # "pCrystals":I
    .end local v3    # "vb":F
    .end local v4    # "vm":F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 349
    .restart local v0    # "coin_X":F
    .restart local v3    # "vb":F
    .restart local v4    # "vm":F
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sLTitle:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 350
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFailLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->setVisible(Z)V

    .line 351
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sBLRetry:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v5, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 352
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/text/Text;->getInitialY()F

    move-result v5

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/text/Text;->getHeight()F

    move-result v6

    div-float/2addr v6, v10

    sub-float v4, v5, v6

    .line 353
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/text/Text;->getInitialY()F

    move-result v3

    .line 354
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/text/Text;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sFields:[Lorg/anddev/andengine/entity/text/Text;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/text/Text;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40400000    # 3.0f

    add-float v0, v5, v6

    goto/16 :goto_0

    .line 363
    .restart local v1    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCrystalSmalls:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCrystal:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->sCrystalSmalls:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method
