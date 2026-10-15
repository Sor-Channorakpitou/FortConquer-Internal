.class public Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;
.super Lcom/droidhen/fortconquer/layer/GameDlg;
.source "ArenaCompleteDlg.java"


# instance fields
.field private fInfoB1:Lorg/anddev/andengine/opengl/font/Font;

.field private fInfoB2:Lorg/anddev/andengine/opengl/font/Font;

.field private fInfoB3:Lorg/anddev/andengine/opengl/font/Font;

.field private fInfoG:Lorg/anddev/andengine/opengl/font/Font;

.field private mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

.field private mCoinNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private mCoinSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private mCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private mCrystalSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private mEnemyNameText:Lorg/anddev/andengine/entity/text/Text;

.field private mLevelUpTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private mLevelupSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private mLoseSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private mLoseTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private mLostTips:Lorg/anddev/andengine/entity/text/Text;

.field private mPlayerExpText:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private mPlayerLevelText:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private mPlayerNameText:Lorg/anddev/andengine/entity/text/Text;

.field private mRewardText:Lorg/anddev/andengine/entity/text/Text;

.field protected mRiverSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mRiverTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field protected mSmallVSSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mSmallVSTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private mWinSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private mWinTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private mXPNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private mXPSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private mXPTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private mrFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mrProcessBar:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrProcessBarBg:Lcom/droidhen/andplugin/PlistTextureRegion;

.field protected msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msProcessBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

.field private msProcessBarBg:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field protected rCompleteBg:Lcom/droidhen/andplugin/PlistTextureRegion;

.field protected rLMore:Lcom/droidhen/andplugin/PlistTextureRegion;

.field protected rLNext:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private sBLMore:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sBLNext:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sBg:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected sBtnL:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field protected sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field protected sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private tInfoFontB1:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private tInfoFontB2:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private tInfoFontB3:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private tInfoFontG:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;


# direct methods
.method public constructor <init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V
    .locals 0
    .param p1, "pArenaScene"    # Lcom/droidhen/fortconquer/scenes/ArenaScene;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/GameDlg;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    .line 85
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->init()V

    .line 86
    return-void
.end method


# virtual methods
.method protected attachEverything()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnL:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBLMore:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 168
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBLNext:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 169
    return-void
.end method

.method protected clear()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnL:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    .line 174
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    .line 175
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    .line 176
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->detachChildren()V

    .line 177
    return-void
.end method

.method protected final initRegion()V
    .locals 11

    .prologue
    const/16 v10, 0xff

    const/16 v9, 0x80

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 89
    invoke-super {p0}, Lcom/droidhen/fortconquer/layer/GameDlg;->initRegion()V

    .line 90
    sget-object v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_win.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mWinTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 91
    sget-object v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_lose.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mLoseTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 92
    sget-object v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "process_bar.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mrProcessBar:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 93
    sget-object v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "process_bar_bg.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mrProcessBarBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 94
    sget-object v0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "xp_s.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mXPTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 95
    sget-object v0, Lcom/droidhen/fortconquer/layer/GameDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "level-up.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mLevelUpTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 96
    sget-object v0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "btn_up.png"

    aput-object v2, v1, v7

    const-string v2, "btn_down.png"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 97
    sget-object v0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_more.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->rLMore:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 98
    sget-object v0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_next.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->rLNext:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 99
    sget-object v0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "complete_bg.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->rCompleteBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 100
    sget-object v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_wave.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mRiverTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 101
    sget-object v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_vs_new.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mSmallVSTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 103
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v1, 0x100

    const/16 v2, 0x100

    sget-object v3, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->tInfoFontG:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 104
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->tInfoFontG:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v7, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41c00000    # 24.0f

    const/16 v5, 0xc5

    const/16 v6, 0x23

    invoke-static {v10, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->fInfoG:Lorg/anddev/andengine/opengl/font/Font;

    .line 105
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v9, v9, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->tInfoFontB1:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 106
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->tInfoFontB1:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v8, v7}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41d00000    # 26.0f

    const/16 v5, 0x24

    const/16 v6, 0x67

    invoke-static {v5, v6, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->fInfoB1:Lorg/anddev/andengine/opengl/font/Font;

    .line 107
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v9, v9, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->tInfoFontB2:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 108
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->tInfoFontB2:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v8, v7}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41b00000    # 22.0f

    const/16 v5, 0x24

    const/16 v6, 0x67

    invoke-static {v5, v6, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->fInfoB2:Lorg/anddev/andengine/opengl/font/Font;

    .line 109
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v1, 0x100

    sget-object v2, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v1, v9, v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->tInfoFontB3:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 110
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->tInfoFontB3:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v4, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41880000    # 17.0f

    const/16 v5, 0x24

    const/16 v6, 0x67

    invoke-static {v5, v6, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->fInfoB3:Lorg/anddev/andengine/opengl/font/Font;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 111
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->tInfoFontG:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->tInfoFontB1:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->tInfoFontB2:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v8

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->tInfoFontB3:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/anddev/andengine/opengl/font/Font;

    .line 112
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->fInfoG:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->fInfoB1:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->fInfoB2:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v8

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->fInfoB3:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 114
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mrFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 115
    return-void
.end method

.method protected initSprite()V
    .locals 12

    .prologue
    const/high16 v11, 0x43820000    # 260.0f

    const/high16 v10, 0x43490000    # 201.0f

    const/high16 v1, 0x43220000    # 162.0f

    const/high16 v2, 0x432f0000    # 175.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 120
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->rCompleteBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    rsub-int v3, v3, 0x190

    int-to-float v3, v3

    const/high16 v4, 0x42040000    # 33.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->rCompleteBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 121
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v3, 0x43938000    # 295.0f

    const/high16 v4, 0x42680000    # 58.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mWinTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mWinSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 122
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v3, 0x43938000    # 295.0f

    const/high16 v4, 0x42680000    # 58.0f

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mLoseTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mLoseSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 123
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->fInfoB1:Lorg/anddev/andengine/opengl/font/Font;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Level:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mPlayerLevelText:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 124
    new-instance v3, Lorg/anddev/andengine/entity/text/ChangeableText;

    const v4, 0x44104000    # 577.0f

    sget-object v6, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mFontGreen:Lorg/anddev/andengine/opengl/font/Font;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerExp()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getNexLvExp()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mPlayerExpText:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 125
    new-instance v0, Lcom/droidhen/fortconquer/component/TripleBarEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mrProcessBar:Lcom/droidhen/andplugin/PlistTextureRegion;

    const/16 v4, 0xb

    const/16 v5, 0xa

    invoke-direct {v0, v3, v4, v5}, Lcom/droidhen/fortconquer/component/TripleBarEntity;-><init>(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;II)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->msProcessBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    .line 126
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->msProcessBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-virtual {v0, v11, v2}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPosition(FF)V

    .line 127
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->msProcessBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPercentDirect(F)V

    .line 128
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mrProcessBarBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v11, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->msProcessBarBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 129
    new-instance v0, Lorg/anddev/andengine/entity/text/Text;

    const/high16 v2, 0x43520000    # 210.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->fInfoB2:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, "Reward:"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mRewardText:Lorg/anddev/andengine/entity/text/Text;

    .line 130
    new-instance v0, Lorg/anddev/andengine/entity/text/Text;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->fInfoB3:Lorg/anddev/andengine/opengl/font/Font;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    const v4, 0x7f05004e

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v11, v2, v3}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mLostTips:Lorg/anddev/andengine/entity/text/Text;

    .line 131
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x43be0000    # 380.0f

    const/high16 v2, 0x434d0000    # 205.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mXPTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mXPSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 132
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x43800000    # 256.0f

    sget-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCoin:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v10, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mCoinSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 133
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v1, 0x4409c000    # 551.0f

    const/high16 v2, 0x43860000    # 268.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCrystal:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mCrystalSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 134
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/high16 v1, 0x43cd0000    # 410.0f

    sget-object v3, Lcom/droidhen/fortconquer/layer/GameDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v4, "z_number.png"

    const/4 v5, 0x2

    const/4 v6, 0x1

    move v2, v10

    invoke-direct/range {v0 .. v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mXPNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 135
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/high16 v1, 0x438f0000    # 286.0f

    sget-object v3, Lcom/droidhen/fortconquer/layer/GameDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v4, "z_number.png"

    const/4 v5, 0x4

    const/4 v6, 0x1

    move v2, v10

    invoke-direct/range {v0 .. v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mCoinNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 136
    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/high16 v1, 0x44110000    # 580.0f

    const/high16 v2, 0x43880000    # 272.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/GameSceneTextureMgr;->mMainUITexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v4, "mine_number.png"

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 137
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x43fd0000    # 506.0f

    const/high16 v2, 0x43400000    # 192.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mLevelUpTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mLevelupSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 139
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x190

    int-to-float v1, v1

    const/high16 v2, 0x43a00000    # 320.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 140
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x42480000    # 50.0f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    new-instance v4, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg$1;

    invoke-direct {v4, p0}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg$1;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnL:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 147
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x41600000    # 14.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x42480000    # 50.0f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnM:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->rBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v3

    new-instance v4, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg$2;

    invoke-direct {v4, p0}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg$2;-><init>(Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 156
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnL:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->rLMore:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v9

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnL:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->rLMore:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v9

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->rLMore:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBLMore:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 157
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->rLNext:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v9

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->rLNext:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v9

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->rLNext:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBLNext:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 158
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x43010000    # 129.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mRiverTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mRiverSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 159
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x43b90000    # 370.0f

    const/high16 v2, 0x42e20000    # 113.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mSmallVSTR:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mSmallVSSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 161
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const v1, 0x4419c000    # 615.0f

    const/high16 v2, 0x41700000    # 15.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mrFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    sget-object v4, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->sTaskShowTapjoyOffers:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 162
    return-void
.end method

.method protected showArenaCompleteDlg()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0xf

    const/4 v10, 0x3

    const/high16 v9, 0x43020000    # 130.0f

    const/high16 v8, 0x42c80000    # 100.0f

    .line 181
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v4

    invoke-virtual {v4}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v4

    sget-object v5, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    if-eq v4, v5, :cond_0

    .line 253
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 185
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 186
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mRiverSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 187
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mSmallVSSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 188
    new-instance v4, Lorg/anddev/andengine/entity/text/Text;

    const v5, 0x43878000    # 271.0f

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->fInfoG:Lorg/anddev/andengine/opengl/font/Font;

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v9, v6, v7}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mPlayerNameText:Lorg/anddev/andengine/entity/text/Text;

    .line 189
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mPlayerNameText:Lorg/anddev/andengine/entity/text/Text;

    const/high16 v5, 0x43ae0000    # 348.0f

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mPlayerNameText:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/text/Text;->getWidth()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5, v9}, Lorg/anddev/andengine/entity/text/Text;->setPosition(FF)V

    .line 190
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, v4, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyName:Ljava/lang/String;

    .line 191
    .local v1, "enemyName":Ljava/lang/String;
    const/16 v2, 0xc

    .line 192
    .local v2, "nameEnd":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 193
    :cond_1
    invoke-virtual {v1, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "shortName":Ljava/lang/String;
    new-instance v4, Lorg/anddev/andengine/entity/text/Text;

    const/high16 v5, 0x43de0000    # 444.0f

    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->fInfoG:Lorg/anddev/andengine/opengl/font/Font;

    invoke-direct {v4, v5, v9, v6, v3}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mEnemyNameText:Lorg/anddev/andengine/entity/text/Text;

    .line 195
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mPlayerNameText:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 196
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mEnemyNameText:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 197
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->msProcessBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerExp()I

    move-result v5

    rem-int/lit8 v5, v5, 0x64

    int-to-float v5, v5

    div-float/2addr v5, v8

    mul-float/2addr v5, v8

    invoke-virtual {v4, v5}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPercentDirect(F)V

    .line 198
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget v4, v4, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v4, v10, :cond_6

    .line 200
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mWinSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 201
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mXPNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v4, v11}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 202
    invoke-static {v11}, Lcom/droidhen/fortconquer/units/Player;->updatePlayerExp(I)V

    .line 203
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->updateArenaWon()V

    .line 204
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerLevel()I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v0, v4, 0x5a

    .line 205
    .local v0, "coins":I
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mCoinNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v4, v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 206
    invoke-static {v0}, Lcom/droidhen/fortconquer/units/Player;->changeCoins(I)Z

    .line 207
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerExp()I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    const/16 v5, 0xe

    if-gt v4, v5, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->showLevelupReward()V

    .line 211
    :cond_2
    invoke-static {v12}, Lcom/droidhen/fortconquer/units/Player;->setArenaLostLasted(I)V

    .line 231
    .end local v0    # "coins":I
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mPlayerLevelText:Lorg/anddev/andengine/entity/text/ChangeableText;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Level:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 232
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mPlayerExpText:Lorg/anddev/andengine/entity/text/ChangeableText;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerExp()I

    move-result v6

    rem-int/lit8 v6, v6, 0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerExp()I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    if-ge v4, v11, :cond_4

    .line 234
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->msProcessBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPercentDirect(F)V

    .line 235
    :cond_4
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->msProcessBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerExp()I

    move-result v5

    rem-int/lit8 v5, v5, 0x64

    int-to-float v5, v5

    div-float/2addr v5, v8

    mul-float/2addr v5, v8

    invoke-virtual {v4, v5}, Lcom/droidhen/fortconquer/component/TripleBarEntity;->setPercent(F)V

    .line 236
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mPlayerLevelText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 237
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->msProcessBarBg:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 238
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->msProcessBar:Lcom/droidhen/fortconquer/component/TripleBarEntity;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 239
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mPlayerExpText:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 240
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mXPSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 241
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mXPNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 242
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mRewardText:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 243
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mCoinSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 244
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mCoinNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 245
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnL:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 246
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 247
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v4, v4, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/GameActivity;->CheckAndShowAD()V

    .line 248
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget v4, v4, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v4, v10, :cond_5

    .line 249
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/GameActivity;->openMoreGameInterval()V

    .line 252
    :cond_5
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    goto/16 :goto_0

    .line 213
    :cond_6
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget v4, v4, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    iget-object v5, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 214
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mXPNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 215
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/droidhen/fortconquer/units/Player;->updatePlayerExp(I)V

    .line 216
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->updateArenaLost()V

    .line 217
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getStamCost()I

    move-result v0

    .line 218
    .restart local v0    # "coins":I
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mCoinNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v4, v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 219
    invoke-static {v0}, Lcom/droidhen/fortconquer/units/Player;->changeCoins(I)Z

    .line 220
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mLoseSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 221
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerExp()I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    if-gtz v4, :cond_7

    .line 223
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->showLevelupReward()V

    .line 225
    :cond_7
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getArenaLostLasted()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/droidhen/fortconquer/units/Player;->setArenaLostLasted(I)V

    .line 226
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getArenaLostLasted()I

    move-result v4

    if-lt v4, v10, :cond_3

    .line 228
    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mLostTips:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {p0, v4}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    goto/16 :goto_1
.end method

.method public showLevelupReward()V
    .locals 3

    .prologue
    .line 256
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerExp()I

    move-result v1

    const v2, 0xc350

    if-lt v1, v2, :cond_0

    .line 264
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getLvUpReward()I

    move-result v0

    .line 259
    .local v0, "pCrystals":I
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {v1, v0}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 260
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mLevelupSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 261
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mCrystalSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 262
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->mCrystalNumber:Lcom/droidhen/fortconquer/kits/NumberSprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 263
    invoke-static {v0}, Lcom/droidhen/fortconquer/units/Player;->changeCrystals(I)Z

    goto :goto_0
.end method
