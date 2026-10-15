.class public Lcom/droidhen/fortconquer/layer/GiftPackageDlg;
.super Lcom/droidhen/fortconquer/layer/Layer;
.source "GiftPackageDlg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/layer/GiftPackageDlg$GIFTTYPE;,
        Lcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;
    }
.end annotation


# static fields
.field private static instance:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

.field public static tDlg:Lcom/droidhen/andplugin/PlistTexture;

.field public static tDlgMore:Lcom/droidhen/andplugin/PlistTexture;


# instance fields
.field private callBack:Lcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;

.field private curX:F

.field private curY:F

.field private final giftPackageNumber:I

.field private msDlgBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

.field private parent:Lcom/droidhen/fortconquer/scenes/SmartScene;

.field private pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

.field private rBtnClose:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private rBtnOk:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private rGiftPackageBgFrame:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private rGiftPackageItemFrame:[Lcom/droidhen/andplugin/PlistTextureRegion;

.field private sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private sBtnClose:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sBtnCloseCheck:Lorg/anddev/andengine/entity/primitive/Rectangle;

.field private sBtnOk:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private sDynamicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private sGiftPackageBgFrame:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sGiftPackageItemFrame:[Lorg/anddev/andengine/entity/sprite/Sprite;

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
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->instance:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 75
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/Layer;-><init>()V

    .line 30
    iput v1, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->giftPackageNumber:I

    .line 34
    new-array v0, v1, [Lcom/droidhen/andplugin/PlistTextureRegion;

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->rGiftPackageItemFrame:[Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 35
    new-array v0, v1, [Lorg/anddev/andengine/entity/sprite/Sprite;

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sGiftPackageItemFrame:[Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->touchAreas:Ljava/util/List;

    .line 76
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->initRegion()V

    .line 77
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->initSprite()V

    .line 78
    invoke-direct {p0}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->attachEverything()V

    .line 79
    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 197
    invoke-static {}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->onClose()V

    return-void
.end method

.method static synthetic access$1(Lcom/droidhen/fortconquer/layer/GiftPackageDlg;)Lorg/anddev/andengine/entity/primitive/Rectangle;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBtnCloseCheck:Lorg/anddev/andengine/entity/primitive/Rectangle;

    return-object v0
.end method

.method static synthetic access$2()Lcom/droidhen/fortconquer/layer/GiftPackageDlg;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->instance:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

    return-object v0
.end method

.method static synthetic access$3(Lcom/droidhen/fortconquer/layer/GiftPackageDlg;)Lcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->callBack:Lcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;

    return-object v0
.end method

.method private attachEverything()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->msDlgBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 147
    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 148
    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sDynamicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sGiftPackageBgFrame:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 155
    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBtnClose:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 156
    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBtnOk:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 157
    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBtnClose:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setVisible(Z)V

    .line 158
    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBtnOk:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v1, v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setVisible(Z)V

    .line 159
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sGiftPackageItemFrame:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->instance:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->instance:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->detachSelf()Z

    .line 205
    :cond_0
    return-void
.end method

.method private initRegion()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 83
    sget-object v3, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->tDlgMore:Lcom/droidhen/andplugin/PlistTexture;

    const-string v4, "giftpackage_bg.png"

    invoke-static {v3, v4}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v3

    iput-object v3, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->rGiftPackageBgFrame:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x6

    if-lt v0, v3, :cond_0

    .line 95
    sget-object v3, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->tDlgMore:Lcom/droidhen/andplugin/PlistTexture;

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "btn_closed_up.png"

    aput-object v5, v4, v7

    const-string v5, "btn_closed_down.png"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v3

    iput-object v3, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->rBtnClose:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 96
    sget-object v3, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->tDlgMore:Lcom/droidhen/andplugin/PlistTexture;

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "btn_okay_up.png"

    aput-object v5, v4, v7

    const-string v5, "btn_okay_down.png"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v3

    iput-object v3, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->rBtnOk:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 97
    return-void

    .line 85
    :cond_0
    if-eqz v0, :cond_1

    if-ne v0, v6, :cond_2

    .line 86
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "giftpackage_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->rGiftPackageItemFrame:[Lcom/droidhen/andplugin/PlistTextureRegion;

    sget-object v4, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    invoke-static {v4, v2}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v4

    aput-object v4, v3, v0

    .line 84
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "path":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v0, -0x1

    .line 90
    .local v1, "index":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "giftpackage_2_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .restart local v2    # "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->rGiftPackageItemFrame:[Lcom/droidhen/andplugin/PlistTextureRegion;

    sget-object v4, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    invoke-static {v4, v2}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v4

    aput-object v4, v3, v0

    goto :goto_1
.end method

.method private initSprite()V
    .locals 7

    .prologue
    const/high16 v5, 0x42c20000    # 97.0f

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBasicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 101
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sDynamicLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 102
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x43160000    # 150.0f

    const/high16 v3, 0x429c0000    # 78.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->rGiftPackageBgFrame:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sGiftPackageBgFrame:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 104
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v0, 0x6

    if-lt v6, v0, :cond_0

    .line 108
    new-instance v0, Lorg/anddev/andengine/entity/primitive/Rectangle;

    const v1, 0x4412c000    # 587.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->rBtnClose:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->rBtnClose:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->getTileHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-direct {v0, v1, v5, v3, v4}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBtnCloseCheck:Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 109
    new-instance v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg$1;

    const/high16 v1, 0x44140000    # 592.0f

    const/high16 v3, 0x42cc0000    # 102.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->rBtnClose:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg$1;-><init>(Lcom/droidhen/fortconquer/layer/GiftPackageDlg;FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBtnClose:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 120
    new-instance v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg$2;

    const/high16 v1, 0x43a50000    # 330.0f

    const/high16 v3, 0x439b0000    # 310.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->rBtnOk:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg$2;-><init>(Lcom/droidhen/fortconquer/layer/GiftPackageDlg;FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBtnOk:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 132
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBtnOk:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setScale(F)V

    .line 133
    new-instance v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg$3;

    const/high16 v4, 0x44480000    # 800.0f

    const/high16 v5, 0x43f00000    # 480.0f

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg$3;-><init>(Lcom/droidhen/fortconquer/layer/GiftPackageDlg;FFFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->msDlgBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 140
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->msDlgBg:Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setColor(FFFF)V

    .line 141
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->touchAreas:Ljava/util/List;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBtnClose:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->touchAreas:Ljava/util/List;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBtnOk:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sGiftPackageItemFrame:[Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v3, 0x432d0000    # 173.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->rGiftPackageItemFrame:[Lcom/droidhen/andplugin/PlistTextureRegion;

    aget-object v4, v4, v6

    invoke-direct {v1, v3, v5, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aput-object v1, v0, v6

    .line 104
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static initTexture()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 54
    new-array v0, v13, [Ljava/lang/String;

    const-string v5, "giftpackage.png"

    aput-object v5, v0, v10

    const-string v5, "giftpackage_kr.png"

    aput-object v5, v0, v11

    const-string v5, "giftpackage_yn.png"

    aput-object v5, v0, v12

    .line 55
    .local v0, "dlgPic":[Ljava/lang/String;
    new-array v2, v13, [Ljava/lang/String;

    const-string v5, "giftpackage.plist"

    aput-object v5, v2, v10

    const-string v5, "giftpackage_kr.plist"

    aput-object v5, v2, v11

    const-string v5, "giftpackage_yn.plist"

    aput-object v5, v2, v12

    .line 56
    .local v2, "dlgPlist":[Ljava/lang/String;
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "gfx/unit_select/"

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v7

    aget-object v7, v0, v7

    .line 57
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v8

    aget-object v8, v2, v8

    sget-object v9, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 56
    invoke-static {v5, v6, v7, v8, v9}, Lcom/droidhen/andplugin/PlistTexture;->getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v5

    sput-object v5, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    .line 59
    new-array v1, v13, [Ljava/lang/String;

    const-string v5, "giftpackage_1.png"

    aput-object v5, v1, v10

    const-string v5, "giftpackage_1_kr.png"

    aput-object v5, v1, v11

    const-string v5, "giftpackage_1_yn.png"

    aput-object v5, v1, v12

    .line 60
    .local v1, "dlgPicMore":[Ljava/lang/String;
    new-array v3, v13, [Ljava/lang/String;

    const-string v5, "giftpackage_1.plist"

    aput-object v5, v3, v10

    const-string v5, "giftpackage_1_kr.plist"

    aput-object v5, v3, v11

    const-string v5, "giftpackage_1_yn.plist"

    aput-object v5, v3, v12

    .line 61
    .local v3, "dlgPlistMore":[Ljava/lang/String;
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "gfx/unit_select/"

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v7

    aget-object v7, v1, v7

    .line 62
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v8

    aget-object v8, v3, v8

    sget-object v9, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 61
    invoke-static {v5, v6, v7, v8, v9}, Lcom/droidhen/andplugin/PlistTexture;->getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v5

    sput-object v5, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->tDlgMore:Lcom/droidhen/andplugin/PlistTexture;

    .line 64
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v5

    invoke-virtual {v5}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v4

    .line 65
    .local v4, "tm":Lorg/anddev/andengine/opengl/texture/TextureManager;
    sget-object v5, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->tDlg:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v4, v5}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    .line 66
    sget-object v5, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->tDlgMore:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v4, v5}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    .line 67
    return-void
.end method

.method private static onClose()V
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->instance:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

    iget-object v0, v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->callBack:Lcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;->onCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->instance:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->detachSelf()Z

    .line 200
    :cond_0
    return-void
.end method

.method public static reinit()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->instance:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

    .line 73
    return-void
.end method

.method public static showDialog(Lcom/droidhen/fortconquer/scenes/SmartScene;IILcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;)V
    .locals 2
    .param p0, "parent"    # Lcom/droidhen/fortconquer/scenes/SmartScene;
    .param p1, "type"    # I
    .param p2, "dragonType"    # I
    .param p3, "callBack"    # Lcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;

    .prologue
    .line 162
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 163
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 164
    sget-object v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->instance:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->instance:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->detachSelf()Z

    .line 166
    :cond_0
    sget-object v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->instance:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

    iput-object p0, v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->parent:Lcom/droidhen/fortconquer/scenes/SmartScene;

    .line 167
    sget-object v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->instance:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 168
    sget-object v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->instance:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

    iput-object p3, v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->callBack:Lcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;

    .line 170
    sget-object v0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->instance:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->setType(II)V

    .line 171
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 223
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

    .line 233
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->curY:F

    .line 234
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->curX:F

    .line 235
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    iput-object v6, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 237
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->touchAreas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 256
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v5

    .line 238
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->touchAreas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 239
    .local v0, "area":Lorg/anddev/andengine/entity/sprite/BaseSprite;
    iget v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->curX:F

    iget v3, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->curY:F

    invoke-virtual {v0, v2, v3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 241
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    instance-of v2, v2, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-eqz v2, :cond_2

    .line 242
    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .end local v0    # "area":Lorg/anddev/andengine/entity/sprite/BaseSprite;
    invoke-virtual {v0, v5}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    .line 237
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    if-eqz v2, :cond_5

    .line 248
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    instance-of v2, v2, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-eqz v2, :cond_4

    .line 249
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    check-cast v2, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    .line 251
    :cond_4
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    iget v3, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->curX:F

    iget v4, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->curY:F

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 252
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v2, p1, p2, p3}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z

    .line 254
    :cond_5
    iput-object v6, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->pressedBtn:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    goto :goto_1
.end method

.method public onAttached()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->parent:Lcom/droidhen/fortconquer/scenes/SmartScene;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->parent:Lcom/droidhen/fortconquer/scenes/SmartScene;

    invoke-virtual {v0, p0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 212
    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->parent:Lcom/droidhen/fortconquer/scenes/SmartScene;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->parent:Lcom/droidhen/fortconquer/scenes/SmartScene;

    invoke-virtual {v0, p0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    .line 219
    :cond_0
    return-void
.end method

.method public setType(II)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x439b0000    # 310.0f

    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, "itemIndex":I
    if-eqz p1, :cond_0

    if-ne p1, v5, :cond_1

    .line 177
    :cond_0
    move v1, p1

    .line 182
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x6

    if-lt v0, v2, :cond_2

    .line 190
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 191
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBtnOk:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/high16 v3, 0x43dc0000    # 440.0f

    invoke-virtual {v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setPosition(FF)V

    .line 195
    :goto_2
    return-void

    .line 179
    .end local v0    # "i":I
    :cond_1
    add-int v2, p1, p2

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 183
    .restart local v0    # "i":I
    :cond_2
    if-ne v0, v1, :cond_3

    .line 184
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sGiftPackageItemFrame:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 182
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sGiftPackageItemFrame:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    goto :goto_3

    .line 193
    :cond_4
    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->sBtnOk:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    const/high16 v3, 0x43aa0000    # 340.0f

    invoke-virtual {v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setPosition(FF)V

    goto :goto_2
.end method
