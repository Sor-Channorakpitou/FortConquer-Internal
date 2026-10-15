.class public abstract Lcom/droidhen/fortconquer/layer/GameDlg;
.super Lcom/droidhen/fortconquer/layer/Layer;
.source "GameDlg.java"


# static fields
.field public static tGameDlg:Lcom/droidhen/andplugin/PlistTexture;


# instance fields
.field private rXP:Lcom/droidhen/andplugin/PlistTextureRegion;

.field protected sGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

.field protected sXP:Lorg/anddev/andengine/entity/sprite/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/Layer;-><init>()V

    return-void
.end method

.method public static initTexture()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "game_dlg.png"

    aput-object v2, v0, v3

    const-string v2, "game_dlg_kr.png"

    aput-object v2, v0, v4

    const-string v2, "game_dlg_yn.png"

    aput-object v2, v0, v5

    .line 22
    .local v0, "dlgPic":[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "game_dlg.plist"

    aput-object v2, v1, v3

    const-string v2, "game_dlg_kr.plist"

    aput-object v2, v1, v4

    const-string v2, "game_dlg_yn.plist"

    aput-object v2, v1, v5

    .line 23
    .local v1, "dlgPlist":[Ljava/lang/String;
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "gfx/game_common/"

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v4

    aget-object v4, v0, v4

    .line 24
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v5

    aget-object v5, v1, v5

    sget-object v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 23
    invoke-static {v2, v3, v4, v5, v6}, Lcom/droidhen/andplugin/PlistTexture;->getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v2

    sput-object v2, Lcom/droidhen/fortconquer/layer/GameDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    .line 25
    return-void
.end method


# virtual methods
.method protected abstract attachEverything()V
.end method

.method public final init()V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/layer/GameDlg;->initRegion()V

    .line 29
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/layer/GameDlg;->initSprite()V

    .line 30
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/layer/GameDlg;->attachEverything()V

    .line 31
    return-void
.end method

.method protected initRegion()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v1, -0x3e600000    # -20.0f

    .line 34
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->spGrayCoverPool:Lcom/droidhen/fortconquer/kits/ObjectPool;

    invoke-interface {v0}, Lcom/droidhen/fortconquer/kits/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/primitive/Rectangle;

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/GameDlg;->sGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 35
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/GameDlg;->sGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v0, v1, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    .line 36
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/GameDlg;->sGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/high16 v1, 0x44520000    # 840.0f

    const/high16 v2, 0x44020000    # 520.0f

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setSize(FF)V

    .line 37
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/GameDlg;->sGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setAlpha(F)V

    .line 39
    sget-object v0, Lcom/droidhen/fortconquer/layer/GameDlg;->tGameDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "xp_s.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/GameDlg;->rXP:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 40
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/GameDlg;->rXP:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v3, v3, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/GameDlg;->sXP:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 41
    return-void
.end method

.method protected abstract initSprite()V
.end method

.method public onAttached()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
