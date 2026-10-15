.class public abstract Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;
.super Ljava/lang/Object;
.source "UICommonTextureMgr.java"


# static fields
.field public static fTotalCoin:Lorg/anddev/andengine/opengl/font/Font;

.field public static mrCardSlot:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field public static mrIconMine:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rArrowH:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rArrowV:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rBackground:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field public static rBgTop:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rBgTopTab:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rBtnClose:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field public static rBtnEvolve:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field public static rBtnHome:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field public static rBtnMarket:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field public static rBtnUpgrade:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field public static rCampIcon:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field public static rCardBlank:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field public static rCardCover:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rCardFrame:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field public static rCardSmall:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field public static rCoinBar:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field public static rFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field public static rHPBar:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rHPBarBg:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rHelpDrag:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rHelpFireBall:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rHelpHand:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rHelpStope:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rIconCoin:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rIconCoinCrystal:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field public static rIconCrystal:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rIconCrystalBig:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rLNew:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rLStage:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rNStage:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

.field public static rNumbers:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

.field public static rNumbersSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

.field public static rSelectCircle:Lcom/droidhen/andplugin/PlistTextureRegion;

.field public static rTab:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field public static sBackground:Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

.field public static spGrayCoverPool:Lcom/droidhen/fortconquer/kits/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/droidhen/fortconquer/kits/ObjectPool",
            "<",
            "Lorg/anddev/andengine/entity/primitive/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field public static tBackground:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private static tGuide:Lcom/droidhen/andplugin/PlistTexture;

.field private static tTotalCoinFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field public static tUICommon:Lcom/droidhen/andplugin/PlistTexture;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRegion()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 142
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "card_green.png"

    aput-object v2, v1, v4

    const-string v2, "card_blue.png"

    aput-object v2, v1, v3

    const-string v2, "card_purple.png"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rCardFrame:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 143
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "icon_biped.png"

    aput-object v2, v1, v4

    const-string v2, "icon_quad.png"

    aput-object v2, v1, v3

    const-string v2, "icon_dragon.png"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rCampIcon:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 144
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "card_green_s.png"

    aput-object v2, v1, v4

    const-string v2, "card_blue_s.png"

    aput-object v2, v1, v3

    const-string v2, "card_purple_s.png"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rCardSmall:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 145
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "tab_up.png"

    aput-object v2, v1, v4

    const-string v2, "tab_down.png"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rTab:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 146
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "icon_coin.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCoin:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 147
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "icon_crystal.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCrystal:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 148
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "icon_crystal_big.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCrystalBig:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 149
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "icon_coin.png"

    aput-object v2, v1, v4

    const-string v2, "icon_crystal.png"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCoinCrystal:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 150
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "coin_bar.png"

    aput-object v2, v1, v4

    const-string v2, "coin_bar_trans.png"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rCoinBar:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 151
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "n_card.png"

    invoke-static {v0, v1, v7, v3}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createTiledFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;II)Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rNumbers:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    .line 152
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "n_card_small.png"

    invoke-static {v0, v1, v7, v3}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createTiledFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;II)Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rNumbersSmall:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    .line 153
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "card_blank.png"

    aput-object v2, v1, v4

    const-string v2, "card_blank_long.png"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rCardBlank:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 154
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_stage.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rLStage:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 155
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "stage_number.png"

    invoke-static {v0, v1, v7, v3}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createTiledFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;II)Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rNStage:Lcom/droidhen/andplugin/PlistTiledTextureRegion;

    .line 156
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tBackground:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    const-string v2, "gfx/common/background.jpg"

    invoke-static {v0, v1, v2, v4, v4}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBackground:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 157
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "btn_menu_up.png"

    aput-object v2, v1, v4

    const-string v2, "btn_menu_down.png"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBtnHome:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 158
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "btn_close_up.png"

    aput-object v2, v1, v4

    const-string v2, "btn_close_down.png"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBtnClose:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 159
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "icon_upgrade.png"

    aput-object v2, v1, v4

    const-string v2, "icon_upgrade.png"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBtnUpgrade:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 160
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "icon_evolve.png"

    aput-object v2, v1, v4

    const-string v2, "icon_evolve.png"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBtnEvolve:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 161
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "icon_market.png"

    aput-object v2, v1, v4

    const-string v2, "icon_market.png"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBtnMarket:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 162
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "btn_back.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rSelectCircle:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 163
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "bg_top_tab.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBgTopTab:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 164
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "bg_top.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBgTop:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 165
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "mine_icon.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->mrIconMine:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 166
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "blank_slot.png"

    aput-object v2, v1, v4

    const-string v2, "lock_slot.png"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->mrCardSlot:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 167
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "label_new.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rLNew:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 168
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "unit_health.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHPBar:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 169
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "blood_bg.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHPBarBg:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 170
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "card_cover.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rCardCover:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 171
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "free_crystals_up.png"

    aput-object v2, v1, v4

    const-string v2, "free_crystals_down.png"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 172
    return-void
.end method

.method public static createSprite()V
    .locals 4

    .prologue
    const/high16 v2, -0x3f600000    # -5.0f

    .line 175
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rBackground:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v2, v2, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 176
    .local v0, "sprite":Lorg/anddev/andengine/entity/sprite/Sprite;
    const v1, 0x444a8000    # 810.0f

    const/high16 v2, 0x43f50000    # 490.0f

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setSize(FF)V

    .line 177
    new-instance v1, Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

    invoke-direct {v1, v0}, Lorg/anddev/andengine/entity/scene/background/SpriteBackground;-><init>(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    sput-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->sBackground:Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

    .line 178
    new-instance v1, Lcom/droidhen/fortconquer/kits/GreedPool;

    new-instance v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr$1;

    invoke-direct {v2}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr$1;-><init>()V

    .line 185
    const/4 v3, 0x3

    .line 178
    invoke-direct {v1, v2, v3}, Lcom/droidhen/fortconquer/kits/GreedPool;-><init>(Lcom/droidhen/fortconquer/kits/ObjectGenerator;I)V

    sput-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->spGrayCoverPool:Lcom/droidhen/fortconquer/kits/ObjectPool;

    .line 186
    return-void
.end method

.method public static createTexture()V
    .locals 11

    .prologue
    const/16 v10, 0x200

    const/4 v1, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 126
    new-array v6, v1, [Ljava/lang/String;

    const-string v0, "ui_common.png"

    aput-object v0, v6, v8

    const-string v0, "ui_common.png"

    aput-object v0, v6, v4

    const-string v0, "ui_common_yn.png"

    aput-object v0, v6, v9

    .line 127
    .local v6, "commonPic":[Ljava/lang/String;
    new-array v7, v1, [Ljava/lang/String;

    const-string v0, "ui_common.plist"

    aput-object v0, v7, v8

    const-string v0, "ui_common.plist"

    aput-object v0, v7, v4

    const-string v0, "ui_common_yn.plist"

    aput-object v0, v7, v9

    .line 128
    .local v7, "commonPlist":[Ljava/lang/String;
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "gfx/common/"

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

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    .line 130
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v1, 0x100

    sget-object v2, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v10, v1, v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tBackground:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 132
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tTotalCoinFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    if-eqz v0, :cond_0

    new-array v0, v4, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 133
    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tTotalCoinFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->unloadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    .line 135
    :cond_0
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v1, 0x80

    sget-object v2, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v10, v1, v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tTotalCoinFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    new-array v0, v4, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 136
    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tTotalCoinFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    .line 137
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tTotalCoinFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v9, v8}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41d00000    # 26.0f

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->fTotalCoin:Lorg/anddev/andengine/opengl/font/Font;

    new-array v0, v4, [Lorg/anddev/andengine/opengl/font/Font;

    .line 138
    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->fTotalCoin:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 139
    return-void
.end method

.method public static getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    sget-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tGuide:Lcom/droidhen/andplugin/PlistTexture;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->hasGuideDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "guide.png"

    aput-object v2, v0, v3

    const-string v2, "guide_kr.png"

    aput-object v2, v0, v4

    const-string v2, "guide_yn.png"

    aput-object v2, v0, v5

    .line 191
    .local v0, "guidePic":[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "guide.plist"

    aput-object v2, v1, v3

    const-string v2, "guide_kr.plist"

    aput-object v2, v1, v4

    const-string v2, "guide_yn.plist"

    aput-object v2, v1, v5

    .line 192
    .local v1, "guildPlist":[Ljava/lang/String;
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "gfx/common/"

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v4

    aget-object v4, v0, v4

    .line 193
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v5

    aget-object v5, v1, v5

    sget-object v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 192
    invoke-static {v2, v3, v4, v5, v6}, Lcom/droidhen/andplugin/PlistTexture;->getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v2

    sput-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tGuide:Lcom/droidhen/andplugin/PlistTexture;

    .line 194
    sget-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tGuide:Lcom/droidhen/andplugin/PlistTexture;

    const-string v3, "arrow_v.png"

    invoke-static {v2, v3}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v2

    sput-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rArrowV:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 195
    sget-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tGuide:Lcom/droidhen/andplugin/PlistTexture;

    const-string v3, "arrow_h.png"

    invoke-static {v2, v3}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v2

    sput-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rArrowH:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 196
    sget-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tGuide:Lcom/droidhen/andplugin/PlistTexture;

    const-string v3, "help_stope.png"

    invoke-static {v2, v3}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v2

    sput-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHelpStope:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 197
    sget-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tGuide:Lcom/droidhen/andplugin/PlistTexture;

    const-string v3, "help_fireball.png"

    invoke-static {v2, v3}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v2

    sput-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHelpFireBall:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 198
    sget-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tGuide:Lcom/droidhen/andplugin/PlistTexture;

    const-string v3, "help_drag.png"

    invoke-static {v2, v3}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v2

    sput-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHelpDrag:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 199
    sget-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tGuide:Lcom/droidhen/andplugin/PlistTexture;

    const-string v3, "help_hand.png"

    invoke-static {v2, v3}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v2

    sput-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHelpHand:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 201
    :cond_0
    sget-object v2, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tGuide:Lcom/droidhen/andplugin/PlistTexture;

    return-object v2
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tGuide:Lcom/droidhen/andplugin/PlistTexture;

    .line 120
    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->createTexture()V

    .line 121
    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->createRegion()V

    .line 122
    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->createSprite()V

    .line 123
    return-void
.end method
