.class public Lcom/droidhen/fortconquer/layer/ComfirmDlg;
.super Lcom/droidhen/fortconquer/layer/Layer;
.source "ComfirmDlg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;,
        Lcom/droidhen/fortconquer/layer/ComfirmDlg$TYPE;
    }
.end annotation


# static fields
.field private static instance:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

.field public static tDlg:Lcom/droidhen/andplugin/PlistTexture;


# instance fields
.field private callBack:Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

.field private curX:F

.field private curY:F

.field private fRemark:Lorg/anddev/andengine/opengl/font/Font;

.field private msDlgBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

.field private parent:Lcom/droidhen/fortconquer/scenes/SmartScene;

.field private pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

.field private rBtnCancel:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private rBtnClose:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private rBtnOk:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private rDlgFrame:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private rIcons:[Lcom/droidhen/andplugin/PlistTextureRegion;

.field private rLabel:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private rTitle:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private sBtnCancel:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sBtnClose:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sBtnCloseCheck:Lorg/anddev/andengine/entity/primitive/Rectangle;

.field private sBtnOk:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sDlgFrame:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sDynamicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private sIconMoney:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sIcons:[Lorg/anddev/andengine/entity/Entity;

.field private sLabel:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private sTPrice:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private sTitle:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private tRemarkFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private touchAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/anddev/andengine/entity/sprite/BaseSprite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->instance:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    const/16 v2, 0x100

    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 110
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/Layer;-><init>()V

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/droidhen/andplugin/PlistTextureRegion;

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rIcons:[Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/anddev/andengine/entity/Entity;

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIcons:[Lorg/anddev/andengine/entity/Entity;

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->touchAreas:Ljava/util/List;

    .line 111
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v2, v2, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->tRemarkFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    new-array v0, v4, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 112
    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->tRemarkFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    .line 113
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->tRemarkFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/4 v2, 0x2

    invoke-static {v2, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41c00000    # 24.0f

    const/16 v5, 0x45

    const/16 v6, 0xe3

    const/16 v7, 0xee

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->fRemark:Lorg/anddev/andengine/opengl/font/Font;

    new-array v0, v4, [Lorg/anddev/andengine/opengl/font/Font;

    .line 114
    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->fRemark:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 115
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->initRegion()V

    .line 116
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->initSprite()V

    .line 117
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->attachEverything()V

    .line 118
    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 334
    invoke-static {}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->onClose()V

    return-void
.end method

.method static synthetic access$1(Lcom/droidhen/fortconquer/layer/ComfirmDlg;)Lorg/anddev/andengine/entity/primitive/Rectangle;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBtnCloseCheck:Lorg/anddev/andengine/entity/primitive/Rectangle;

    return-object v0
.end method

.method static synthetic access$2()Lcom/droidhen/fortconquer/layer/ComfirmDlg;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->instance:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    return-object v0
.end method

.method static synthetic access$3(Lcom/droidhen/fortconquer/layer/ComfirmDlg;)Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->callBack:Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

    return-object v0
.end method

.method private attachEverything()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->msDlgBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 196
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 197
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sDynamicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 198
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sDlgFrame:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 199
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBtnClose:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 200
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBtnOk:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 201
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBtnCancel:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 202
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTitle:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 203
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 204
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 205
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTPrice:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 206
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIconMoney:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 207
    return-void
.end method

.method public static cancel()V
    .locals 2

    .prologue
    .line 330
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->instance:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    iget-object v0, v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->callBack:Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;->onCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->instance:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->detachSelf()Z

    .line 332
    :cond_0
    return-void
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->instance:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->instance:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->detachSelf()Z

    .line 342
    :cond_0
    return-void
.end method

.method private initRegion()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "dlg_frame.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rDlgFrame:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 125
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "btn_closed_up.png"

    aput-object v2, v1, v3

    const-string v2, "btn_closed_down.png"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rBtnClose:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 126
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "btn_okay_up.png"

    aput-object v2, v1, v3

    const-string v2, "btn_okay_down.png"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rBtnOk:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 127
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "btn_cancel_up.png"

    aput-object v2, v1, v3

    const-string v2, "btn_cancel_down.png"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rBtnCancel:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 128
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rIcons:[Lcom/droidhen/andplugin/PlistTextureRegion;

    sget-object v1, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    const-string v2, "icon_unlock.png"

    invoke-static {v1, v2}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v1

    aput-object v1, v0, v3

    .line 129
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rIcons:[Lcom/droidhen/andplugin/PlistTextureRegion;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v2, "icon_stope.png"

    invoke-static {v1, v2}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v1

    aput-object v1, v0, v4

    .line 130
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rIcons:[Lcom/droidhen/andplugin/PlistTextureRegion;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    const-string v2, "icon_wall.png"

    invoke-static {v1, v2}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v1

    aput-object v1, v0, v5

    .line 131
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "z_troops_slot.png"

    aput-object v2, v1, v3

    const-string v2, "z_stope.png"

    aput-object v2, v1, v4

    const-string v2, "z_city_wall.png"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rLabel:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 132
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "title_unlock.png"

    aput-object v2, v1, v3

    const-string v2, "title_upgrade.png"

    aput-object v2, v1, v4

    .line 133
    const-string v2, "title_upgrade.png"

    aput-object v2, v1, v5

    const-string v2, "title_arena.png"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "title_sell.png"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "title_buy.png"

    aput-object v3, v1, v2

    .line 132
    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rTitle:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 134
    return-void
.end method

.method private initSprite()V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x0

    const/high16 v4, 0x433e0000    # 190.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 137
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 138
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sDynamicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 139
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x43160000    # 150.0f

    const/high16 v2, 0x429c0000    # 78.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rDlgFrame:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sDlgFrame:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 140
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIcons:[Lorg/anddev/andengine/entity/Entity;

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x43160000    # 150.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rIcons:[Lcom/droidhen/andplugin/PlistTextureRegion;

    aget-object v3, v3, v8

    invoke-direct {v1, v4, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aput-object v1, v0, v8

    .line 141
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIcons:[Lorg/anddev/andengine/entity/Entity;

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x43200000    # 160.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rIcons:[Lcom/droidhen/andplugin/PlistTextureRegion;

    aget-object v3, v3, v6

    invoke-direct {v1, v4, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aput-object v1, v0, v6

    .line 142
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIcons:[Lorg/anddev/andengine/entity/Entity;

    aget-object v0, v0, v6

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getScaleYMakeup()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/Entity;->setScaleY(F)V

    .line 143
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIcons:[Lorg/anddev/andengine/entity/Entity;

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x43200000    # 160.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rIcons:[Lcom/droidhen/andplugin/PlistTextureRegion;

    aget-object v3, v3, v5

    invoke-direct {v1, v4, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aput-object v1, v0, v5

    .line 144
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIcons:[Lorg/anddev/andengine/entity/Entity;

    aget-object v0, v0, v5

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getScaleYMakeup()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/Entity;->setScaleY(F)V

    .line 145
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const v1, 0x43a08000    # 321.0f

    const/high16 v2, 0x431e0000    # 158.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rLabel:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sLabel:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 146
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rTitle:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x190

    int-to-float v1, v1

    const/high16 v2, 0x42bc0000    # 94.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rTitle:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTitle:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 147
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sLabel:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x43520000    # 210.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->fRemark:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, ""

    const/16 v5, 0x32

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 148
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->getX()F

    move-result v1

    const/high16 v2, 0x43870000    # 270.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->fRemark:Lorg/anddev/andengine/opengl/font/Font;

    const v4, 0x7f050071

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, ": "

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 149
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/high16 v1, 0x43a50000    # 330.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCoinCrystal:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIconMoney:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 150
    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v1, 0x43a50000    # 330.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->fRemark:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, ""

    const/16 v5, 0x9

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTPrice:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 151
    new-instance v0, Lorg/anddev/andengine/entity/primitive/Rectangle;

    const v1, 0x4412c000    # 587.0f

    const/high16 v2, 0x42c20000    # 97.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rBtnClose:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rBtnClose:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBtnCloseCheck:Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 152
    new-instance v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg$1;

    const/high16 v1, 0x44140000    # 592.0f

    const/high16 v2, 0x42cc0000    # 102.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rBtnClose:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/droidhen/fortconquer/layer/ComfirmDlg$1;-><init>(Lcom/droidhen/fortconquer/layer/ComfirmDlg;FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBtnClose:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 162
    new-instance v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg$2;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rBtnCancel:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v1

    rsub-int v1, v1, 0x181

    int-to-float v1, v1

    const/high16 v2, 0x439b0000    # 310.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rBtnCancel:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/droidhen/fortconquer/layer/ComfirmDlg$2;-><init>(Lcom/droidhen/fortconquer/layer/ComfirmDlg;FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBtnCancel:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 170
    new-instance v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg$3;

    const v1, 0x43cf8000    # 415.0f

    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBtnCancel:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->rBtnOk:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/droidhen/fortconquer/layer/ComfirmDlg$3;-><init>(Lcom/droidhen/fortconquer/layer/ComfirmDlg;FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBtnOk:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 181
    new-instance v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg$4;

    const/high16 v4, 0x44480000    # 800.0f

    const/high16 v5, 0x43f00000    # 480.0f

    move-object v1, p0

    move v2, v7

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/layer/ComfirmDlg$4;-><init>(Lcom/droidhen/fortconquer/layer/ComfirmDlg;FFFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->msDlgBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 188
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->msDlgBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v7, v7, v7, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setColor(FFFF)V

    .line 189
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->touchAreas:Ljava/util/List;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBtnClose:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->touchAreas:Ljava/util/List;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBtnCancel:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->touchAreas:Ljava/util/List;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBtnOk:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public static initTexture()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "dlg.png"

    aput-object v2, v0, v3

    const-string v2, "dlg_kr.png"

    aput-object v2, v0, v4

    const-string v2, "dlg_yn.png"

    aput-object v2, v0, v5

    .line 103
    .local v0, "dlgPic":[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "dlg.plist"

    aput-object v2, v1, v3

    const-string v2, "dlg_kr.plist"

    aput-object v2, v1, v4

    const-string v2, "dlg_yn.plist"

    aput-object v2, v1, v5

    .line 104
    .local v1, "dlgPlist":[Ljava/lang/String;
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "gfx/unit_select/"

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v4

    aget-object v4, v0, v4

    .line 105
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v5

    aget-object v5, v1, v5

    sget-object v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 104
    invoke-static {v2, v3, v4, v5, v6}, Lcom/droidhen/andplugin/PlistTexture;->getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v2

    sput-object v2, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    .line 106
    return-void
.end method

.method private static onClose()V
    .locals 2

    .prologue
    .line 335
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->instance:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    iget-object v0, v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->callBack:Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;->onCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->instance:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->detachSelf()Z

    .line 337
    :cond_0
    return-void
.end method

.method public static reinit()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->instance:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    .line 122
    return-void
.end method

.method public static showDialog(Lcom/droidhen/fortconquer/scenes/SmartScene;ILorg/anddev/andengine/entity/Entity;Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;)V
    .locals 3
    .param p0, "parent"    # Lcom/droidhen/fortconquer/scenes/SmartScene;
    .param p1, "type"    # I
    .param p2, "item"    # Lorg/anddev/andengine/entity/Entity;
    .param p3, "callBack"    # Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

    .prologue
    const/4 v2, 0x0

    .line 210
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 211
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 212
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->instance:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->instance:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->detachSelf()Z

    .line 214
    :cond_0
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->instance:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    iput-object p0, v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->parent:Lcom/droidhen/fortconquer/scenes/SmartScene;

    .line 215
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->instance:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 216
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->instance:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    iput-object p3, v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->callBack:Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

    .line 217
    if-eqz p2, :cond_1

    .line 218
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->instance:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    iget-object v0, v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIcons:[Lorg/anddev/andengine/entity/Entity;

    aput-object p2, v0, p1

    .line 219
    instance-of v0, p2, Lcom/droidhen/fortconquer/units/Card;

    if-eqz v0, :cond_1

    .line 221
    const/high16 v0, 0x43480000    # 200.0f

    const/high16 v1, 0x43200000    # 160.0f

    invoke-virtual {p2, v0, v1}, Lorg/anddev/andengine/entity/Entity;->setPosition(FF)V

    .line 222
    invoke-virtual {p2, v2, v2}, Lorg/anddev/andengine/entity/Entity;->setScaleCenter(FF)V

    .line 223
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p2, v0}, Lorg/anddev/andengine/entity/Entity;->setScale(F)V

    .line 226
    :cond_1
    sget-object v0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->instance:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    invoke-virtual {v0, p1}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->setType(I)V

    .line 227
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 7
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 370
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->curY:F

    .line 371
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->curX:F

    .line 372
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 373
    iput-object v6, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 374
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->touchAreas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 393
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v5

    .line 375
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->touchAreas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 376
    .local v0, "area":Lorg/anddev/andengine/entity/sprite/BaseSprite;
    iget v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->curX:F

    iget v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->curY:F

    invoke-virtual {v0, v2, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 377
    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 378
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    instance-of v2, v2, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-eqz v2, :cond_2

    .line 379
    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .end local v0    # "area":Lorg/anddev/andengine/entity/sprite/BaseSprite;
    invoke-virtual {v0, v5}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    .line 374
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    if-eqz v2, :cond_5

    .line 385
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    instance-of v2, v2, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-eqz v2, :cond_4

    .line 386
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    check-cast v2, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    .line 388
    :cond_4
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->curX:F

    iget v4, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->curY:F

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 389
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v2, p1, p2, p3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z

    .line 391
    :cond_5
    iput-object v6, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    goto :goto_1
.end method

.method public onAttached()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->parent:Lcom/droidhen/fortconquer/scenes/SmartScene;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->parent:Lcom/droidhen/fortconquer/scenes/SmartScene;

    invoke-virtual {v0, p0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 349
    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->parent:Lcom/droidhen/fortconquer/scenes/SmartScene;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->parent:Lcom/droidhen/fortconquer/scenes/SmartScene;

    invoke-virtual {v0, p0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    .line 356
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 11
    .param p1, "type"    # I

    .prologue
    const/high16 v10, 0x40a00000    # 5.0f

    const/4 v9, 0x2

    const/high16 v7, 0x41f00000    # 30.0f

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 230
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sDynamicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 231
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIconMoney:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 232
    if-gt p1, v9, :cond_0

    .line 233
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sDynamicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sLabel:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 234
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sLabel:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, p1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 236
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getInitialY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 237
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v3, 0x3e8a8a8b

    const v4, 0x3f63e3e4

    const v5, 0x3f6eeeef

    invoke-virtual {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/text/ChangeableText;->setColor(FFF)V

    .line 238
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getInitialY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 239
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v3, 0x7f050071

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, ": "

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2, v8}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 241
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTPrice:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2, v8}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 242
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIconMoney:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v8}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setVisible(Z)V

    .line 243
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBtnOk:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 244
    packed-switch p1, :pswitch_data_0

    .line 322
    :goto_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIcons:[Lorg/anddev/andengine/entity/Entity;

    aget-object v2, v2, p1

    if-eqz v2, :cond_1

    .line 323
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sDynamicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIcons:[Lorg/anddev/andengine/entity/Entity;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIconMoney:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, v10

    iget-object v4, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v4

    sub-float/2addr v4, v10

    invoke-virtual {v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setPosition(FF)V

    .line 325
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTPrice:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIconMoney:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIconMoney:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 326
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTitle:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, p1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 327
    return-void

    .line 246
    :pswitch_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v3, 0x7f050051

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v5

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Player;->getBagNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v5

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Player;->getBagNumber()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTPrice:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getUnlockPackMoney()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    :pswitch_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIconMoney:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v8}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 251
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Player;->getMineralsLevel()I

    move-result v2

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_2

    .line 253
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v3, 0x7f050052

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v5

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Player;->getMineralsPerMin()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 254
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v5

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Player;->getMineralsPerMin()I

    move-result v5

    .line 255
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v6

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v7

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Player;->getMineralsLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/droidhen/fortconquer/units/Player;->getNextLvIncrPerMin(I)I

    move-result v6

    .line 254
    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 253
    invoke-static {v3, v4}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTPrice:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getMineralsUpgradeMoney()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :cond_2
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v3, 0x7f050053

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTPrice:Lorg/anddev/andengine/entity/text/ChangeableText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :pswitch_2
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Player;->getFortLevel()I

    move-result v2

    const/16 v3, 0x3e7

    if-ge v2, v3, :cond_3

    .line 266
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v3, 0x7f050054

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v5

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Player;->getCurLvFortHealth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 267
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v5

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Player;->getCurLvFortHealth()I

    move-result v5

    add-int/lit16 v5, v5, 0x1f4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 266
    invoke-static {v3, v4}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTPrice:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getFortUpgradeMoney()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :cond_3
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v3, 0x7f050055

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTPrice:Lorg/anddev/andengine/entity/text/ChangeableText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 276
    :pswitch_3
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Player;->getAllCards()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v8, :cond_4

    .line 277
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v3, 0x7f050057

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 278
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBtnOk:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v8}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 279
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2, v6}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 280
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTPrice:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2, v6}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 281
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIconMoney:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setVisible(Z)V

    .line 285
    :goto_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v3, 0x7f050072

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, ": "

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIcons:[Lorg/anddev/andengine/entity/Entity;

    aget-object v1, v2, p1

    check-cast v1, Lcom/droidhen/fortconquer/units/Card;

    .line 287
    .local v1, "sellCard":Lcom/droidhen/fortconquer/units/Card;
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTPrice:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Card;->getRecycleValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 288
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getInitialY()F

    move-result v4

    sub-float/2addr v4, v7

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 289
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getInitialY()F

    move-result v4

    sub-float/2addr v4, v7

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    goto/16 :goto_0

    .line 283
    .end local v1    # "sellCard":Lcom/droidhen/fortconquer/units/Card;
    :cond_4
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v3, 0x7f050056

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 292
    :pswitch_4
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v3, 0x7f050058

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIcons:[Lorg/anddev/andengine/entity/Entity;

    aget-object v0, v2, p1

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 294
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->useCrystalToBuy()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 295
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIconMoney:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v8}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 296
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTPrice:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 300
    :goto_2
    instance-of v2, v0, Lcom/droidhen/fortconquer/units/TroopsCard;

    if-eqz v2, :cond_5

    .line 301
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v3, 0x7f050059

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 303
    :cond_5
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Player;->getAllCards()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x28

    if-ge v2, v3, :cond_6

    .line 304
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIcons:[Lorg/anddev/andengine/entity/Entity;

    aget-object v2, v2, p1

    instance-of v2, v2, Lcom/droidhen/fortconquer/units/TroopsCard;

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v2

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Player;->getAllCards()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_7

    .line 306
    :cond_6
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v3, 0x7f05005a

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sBtnOk:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v8}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 308
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2, v6}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 309
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTPrice:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2, v6}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 310
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIconMoney:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setVisible(Z)V

    .line 313
    :cond_7
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getInitialY()F

    move-result v4

    sub-float/2addr v4, v7

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 314
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTCost:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getInitialY()F

    move-result v4

    sub-float/2addr v4, v7

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    goto/16 :goto_0

    .line 298
    :cond_8
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTPrice:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 317
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    :pswitch_5
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v3, 0x7f05005b

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sRemark:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getInitialY()F

    move-result v4

    const/high16 v5, 0x42200000    # 40.0f

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 319
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sIconMoney:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v8}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 320
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->sTPrice:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getArenaCrystalCost()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
