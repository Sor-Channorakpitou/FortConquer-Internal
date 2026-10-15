.class public Lcom/droidhen/fortconquer/component/Guide;
.super Lcom/droidhen/fortconquer/scenes/SmartEntity;
.source "Guide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/component/Guide$STEP;
    }
.end annotation


# static fields
.field private static final HAS_INPUT_NAME_KEY:Ljava/lang/String; = "guide_input"

.field private static final STOR_KEY:Ljava/lang/String; = "guide_step"

.field public static curStep:I

.field private static fFont:Lorg/anddev/andengine/opengl/font/Font;

.field public static instance:Lcom/droidhen/fortconquer/component/Guide;

.field private static tFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;


# instance fields
.field private mArrowH:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

.field private mArrowV:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

.field public sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

.field public sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

.field private sCover2:Lcom/droidhen/fortconquer/component/CoverWithHole;

.field public sHand:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sHelpDrag:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sHelpFireball:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sHelpStope:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

.field private sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private sTip2:Lorg/anddev/andengine/entity/text/ChangeableText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, -0x1

    sput v0, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    .line 168
    return-void
.end method

.method private constructor <init>()V
    .locals 12

    .prologue
    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v11, -0x3e900000    # -15.0f

    const/high16 v5, 0x43700000    # 240.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>()V

    .line 90
    new-instance v0, Lcom/droidhen/fortconquer/component/Guide$1;

    const/high16 v4, 0x44480000    # 800.0f

    const/high16 v9, 0x41f00000    # 30.0f

    move-object v1, p0

    move v3, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v9}, Lcom/droidhen/fortconquer/component/Guide$1;-><init>(Lcom/droidhen/fortconquer/component/Guide;FFFFFFFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    .line 98
    new-instance v0, Lcom/droidhen/fortconquer/component/Guide$2;

    const/high16 v4, 0x44480000    # 800.0f

    const/high16 v9, 0x41f00000    # 30.0f

    move-object v1, p0

    move v3, v5

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v9}, Lcom/droidhen/fortconquer/component/Guide$2;-><init>(Lcom/droidhen/fortconquer/component/Guide;FFFFFFFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover2:Lcom/droidhen/fortconquer/component/CoverWithHole;

    .line 104
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rArrowV:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v2, v2, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 105
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rArrowH:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v2, v2, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 106
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHelpHand:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v2, v2, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sHand:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 107
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x42a00000    # 80.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHelpStope:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v3

    rsub-int v3, v3, 0x181

    int-to-float v3, v3

    sget-object v4, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHelpStope:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sHelpStope:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 108
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHelpFireBall:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v1

    rsub-int v1, v1, 0x30c

    int-to-float v1, v1

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHelpFireBall:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v3

    rsub-int v3, v3, 0x181

    int-to-float v3, v3

    sget-object v4, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHelpFireBall:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sHelpFireball:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 109
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHelpDrag:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v1

    rsub-int v1, v1, 0x30c

    int-to-float v1, v1

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHelpDrag:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v3

    rsub-int v3, v3, 0x168

    int-to-float v3, v3

    sget-object v4, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rHelpDrag:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sHelpDrag:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 111
    new-instance v1, Lorg/anddev/andengine/entity/text/ChangeableText;

    sget-object v4, Lcom/droidhen/fortconquer/component/Guide;->fFont:Lorg/anddev/andengine/opengl/font/Font;

    const-string v5, ""

    const/16 v6, 0x64

    move v3, v2

    invoke-direct/range {v1 .. v6}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 112
    new-instance v1, Lorg/anddev/andengine/entity/text/ChangeableText;

    sget-object v4, Lcom/droidhen/fortconquer/component/Guide;->fFont:Lorg/anddev/andengine/opengl/font/Font;

    const-string v5, ""

    const/16 v6, 0x64

    move v3, v2

    invoke-direct/range {v1 .. v6}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip2:Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 113
    new-instance v0, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    new-instance v1, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v4, 0x0

    new-instance v5, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    invoke-direct {v5, v10, v2, v11}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-direct {v5, v10, v2, v6}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    aput-object v5, v3, v4

    invoke-direct {v1, v3}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 114
    const/4 v3, -0x1

    invoke-direct {v0, v1, v3}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V

    .line 113
    iput-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->mArrowV:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    .line 115
    new-instance v0, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    new-instance v1, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v4, 0x0

    new-instance v5, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    invoke-direct {v5, v10, v11, v2}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-direct {v5, v10, v6, v2}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    aput-object v5, v3, v4

    invoke-direct {v1, v3}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 116
    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V

    .line 115
    iput-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->mArrowH:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    .line 117
    new-instance v0, Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v1

    const-string v2, "help_text_bg.png"

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/fortconquer/component/RoundRectangle;-><init>(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    .line 119
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->reattach()V

    .line 120
    return-void
.end method

.method public static clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    sget-object v0, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/component/Guide;->detachSelf()Z

    .line 157
    :cond_0
    sput-object v3, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    .line 158
    sget-object v0, Lcom/droidhen/fortconquer/component/Guide;->tFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/anddev/andengine/opengl/texture/Texture;

    const/4 v1, 0x0

    .line 159
    sget-object v2, Lcom/droidhen/fortconquer/component/Guide;->tFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->unloadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    .line 161
    :cond_1
    sput-object v3, Lcom/droidhen/fortconquer/component/Guide;->tFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 162
    return-void
.end method

.method private doInitStep()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 472
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->reattach()V

    .line 473
    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/component/Guide;->setVisible(Z)V

    .line 474
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setVisible(Z)V

    .line 475
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover2:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setVisible(Z)V

    .line 476
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 477
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 478
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sHand:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 479
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/component/RoundRectangle;->setVisible(Z)V

    .line 480
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sHelpStope:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 481
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sHelpFireball:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 482
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sHelpDrag:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 483
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 484
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip2:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 485
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSeen(Z)V

    .line 486
    return-void
.end method

.method private doStepBuy()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x42c20000    # 97.0f

    .line 392
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    iget-object v0, v1, Lcom/droidhen/fortconquer/GameActivity;->mShopScene:Lcom/droidhen/fortconquer/scenes/ShopScene;

    .line 393
    .local v0, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 394
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x44480000    # 800.0f

    const/high16 v3, 0x43f00000    # 480.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSize(FF)V

    .line 395
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v1, v5}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setVisible(Z)V

    .line 396
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v1, v4, v4}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHolePosition(FF)V

    .line 397
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x432c0000    # 172.0f

    const/high16 v3, 0x43930000    # 294.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHoleSize(FF)V

    .line 398
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 399
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleX()F

    move-result v2

    const/high16 v3, 0x43c80000    # 400.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleY()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x41c80000    # 25.0f

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 400
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->clearEntityModifiers()V

    .line 401
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->mArrowV:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 402
    return-object v0
.end method

.method private doStepClose()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x44318000    # 710.0f

    .line 312
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    iget-object v0, v1, Lcom/droidhen/fortconquer/GameActivity;->mUnitEvolveScene:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    .line 313
    .local v0, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x44480000    # 800.0f

    const/high16 v3, 0x43f00000    # 480.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSize(FF)V

    .line 314
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v1, v6}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setVisible(Z)V

    .line 315
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v4, v2}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHolePosition(FF)V

    .line 316
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x42a80000    # 84.0f

    const/high16 v3, 0x42300000    # 44.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHoleSize(FF)V

    .line 317
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v1, v5}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSeen(Z)V

    .line 318
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 319
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    sub-float v2, v4, v2

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 320
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 321
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->clearEntityModifiers()V

    .line 322
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setFlippedHorizontal(Z)V

    .line 323
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->mArrowH:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 324
    return-object v0
.end method

.method private doStepComfirm()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 381
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    iget-object v0, v1, Lcom/droidhen/fortconquer/GameActivity;->mShopScene:Lcom/droidhen/fortconquer/scenes/ShopScene;

    .line 382
    .local v0, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 383
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setFlippedHorizontal(Z)V

    .line 384
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    const v2, 0x440fc000    # 575.0f

    const/high16 v3, 0x43940000    # 296.0f

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 385
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->clearEntityModifiers()V

    .line 386
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->mArrowH:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 387
    return-object v0
.end method

.method private doStepDrag()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 440
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/GameActivity;->getCamera()Lorg/anddev/andengine/engine/camera/SmoothCamera;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->getHUD()Lorg/anddev/andengine/engine/camera/hud/HUD;

    move-result-object v0

    .line 441
    .local v0, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sHelpDrag:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 442
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sHand:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->clearEntityModifiers()V

    .line 443
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sHand:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43ff0000    # 510.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sHand:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 444
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sHand:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 445
    return-object v0
.end method

.method private doStepEvolve()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 329
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    iget-object v0, v1, Lcom/droidhen/fortconquer/GameActivity;->mUnitEvolveScene:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    .line 330
    .local v0, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x44480000    # 800.0f

    const/high16 v3, 0x43f00000    # 480.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSize(FF)V

    .line 331
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v1, v4}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setVisible(Z)V

    .line 332
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const v2, 0x441bc000    # 623.0f

    const v3, 0x43c88000    # 401.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHolePosition(FF)V

    .line 333
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x431c0000    # 156.0f

    const/high16 v3, 0x42640000    # 57.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHoleSize(FF)V

    .line 334
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSeen(Z)V

    .line 335
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 336
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    const v2, 0x44264000    # 665.0f

    const/high16 v3, 0x43be0000    # 380.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40a00000    # 5.0f

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 337
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->clearEntityModifiers()V

    .line 338
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->mArrowV:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 339
    return-object v0
.end method

.method private doStepEvolveSelect()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 344
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    iget-object v0, v1, Lcom/droidhen/fortconquer/GameActivity;->mUnitEvolveScene:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    .line 345
    .local v0, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 346
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x44480000    # 800.0f

    const/high16 v3, 0x43f00000    # 480.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSize(FF)V

    .line 347
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v1, v4}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setVisible(Z)V

    .line 348
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x42b80000    # 92.0f

    const/high16 v3, 0x42ba0000    # 93.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHolePosition(FF)V

    .line 349
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const v2, 0x44278000    # 670.0f

    const/high16 v3, 0x43720000    # 242.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHoleSize(FF)V

    .line 350
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 351
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleX()F

    move-result v2

    const/high16 v3, 0x432a0000    # 170.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleY()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40a00000    # 5.0f

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 352
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->clearEntityModifiers()V

    .line 353
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->mArrowV:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 354
    return-object v0
.end method

.method private doStepFinal()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 294
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    iget-object v0, v1, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 295
    .local v0, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v2, 0x7f050040

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v2, 0x4211999a    # 36.4f

    const v3, 0x43944000    # 296.5f

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 297
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip2:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v2, 0x7f050041

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip2:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getX()F

    move-result v2

    const v3, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    const v4, 0x4039999a    # 2.9f

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 299
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v1, v5}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 300
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip2:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v1, v5}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 301
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 302
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x42920000    # 73.0f

    .line 303
    const/high16 v3, 0x42b40000    # 90.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    .line 302
    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 304
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->clearEntityModifiers()V

    .line 305
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->mArrowV:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 306
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->saveProgress()V

    .line 307
    return-object v0
.end method

.method private doStepGameNext()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 423
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/GameActivity;->getCamera()Lorg/anddev/andengine/engine/camera/SmoothCamera;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->getHUD()Lorg/anddev/andengine/engine/camera/hud/HUD;

    move-result-object v0

    .line 424
    .local v0, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x44480000    # 800.0f

    const/high16 v3, 0x43f00000    # 480.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSize(FF)V

    .line 425
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v1, v4}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setVisible(Z)V

    .line 426
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x43f50000    # 490.0f

    const v3, 0x439d8000    # 315.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHolePosition(FF)V

    .line 427
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x431c0000    # 156.0f

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHoleSize(FF)V

    .line 428
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSeen(Z)V

    .line 429
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 430
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 431
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setFlippedHorizontal(Z)V

    .line 432
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    const v2, 0x4423c000    # 655.0f

    const v3, 0x439c8000    # 313.0f

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 433
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->clearEntityModifiers()V

    .line 434
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->mArrowH:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 435
    return-object v0
.end method

.method private doStepInputName()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 8

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    .line 274
    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    .line 275
    .local v2, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v4, 0x44480000    # 800.0f

    const/high16 v5, 0x43f00000    # 480.0f

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSize(FF)V

    .line 276
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v3, v7}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setVisible(Z)V

    .line 277
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v4, 0x42580000    # 54.0f

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHolePosition(FF)V

    .line 278
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v4, 0x438c0000    # 280.0f

    const/high16 v5, 0x42900000    # 72.0f

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHoleSize(FF)V

    .line 279
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v3, v7}, Lcom/droidhen/fortconquer/component/RoundRectangle;->setVisible(Z)V

    .line 280
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    const/high16 v4, 0x42aa0000    # 85.0f

    const v5, 0x43b18000    # 355.0f

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/component/RoundRectangle;->setPosition(FF)V

    .line 281
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v4, 0x7f050043

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v3, v7}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 283
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    const v4, 0x441d8000    # 630.0f

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/component/RoundRectangle;->setSize(FF)V

    .line 284
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v1, v3

    .line 285
    .local v1, "paddingV":I
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v0, v3

    .line 286
    .local v0, "paddingH":I
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getX()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getY()F

    move-result v5

    int-to-float v6, v1

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 287
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v3

    const-string v4, "guide_input"

    invoke-static {v3, v4, v7}, Lcom/droidhen/fortconquer/CCPrefs;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 288
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 289
    return-object v2
.end method

.method private doStepMarket()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 407
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    iget-object v0, v1, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 408
    .local v0, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 409
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setFlippedHorizontal(Z)V

    .line 410
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x44480000    # 800.0f

    const/high16 v3, 0x43f00000    # 480.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSize(FF)V

    .line 411
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v1, v6}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setVisible(Z)V

    .line 412
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x44110000    # 580.0f

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHolePosition(FF)V

    .line 413
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x42d80000    # 108.0f

    const/high16 v3, 0x42fa0000    # 125.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHoleSize(FF)V

    .line 414
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleX()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleY()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleHeight()F

    move-result v4

    iget-object v5, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 415
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 416
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->clearEntityModifiers()V

    .line 417
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->mArrowH:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 418
    return-object v0
.end method

.method private doStepNeedEnergy()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    .line 216
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    .line 217
    .local v3, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v5, 0x44480000    # 800.0f

    const/high16 v6, 0x43f00000    # 480.0f

    invoke-virtual {v4, v5, v6}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSize(FF)V

    .line 218
    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v4, v7}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setVisible(Z)V

    .line 219
    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v5, 0x43d10000    # 418.0f

    const/high16 v6, 0x43220000    # 162.0f

    invoke-virtual {v4, v5, v6}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHolePosition(FF)V

    .line 220
    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v5, 0x43a00000    # 320.0f

    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {v4, v5, v6}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHoleSize(FF)V

    .line 221
    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v4, v7}, Lcom/droidhen/fortconquer/component/RoundRectangle;->setVisible(Z)V

    .line 222
    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    const/high16 v5, 0x423c0000    # 47.0f

    const/high16 v6, 0x43990000    # 306.0f

    invoke-virtual {v4, v5, v6}, Lcom/droidhen/fortconquer/component/RoundRectangle;->setPosition(FF)V

    .line 223
    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v5, 0x7f050044

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 224
    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4, v7}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 225
    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    const/high16 v5, 0x43af0000    # 350.0f

    const/high16 v6, 0x430c0000    # 140.0f

    invoke-virtual {v4, v5, v6}, Lcom/droidhen/fortconquer/component/RoundRectangle;->setSize(FF)V

    .line 226
    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v4, v9}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSeen(Z)V

    .line 227
    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    iget-object v4, v4, Lcom/droidhen/fortconquer/component/CoverWithHole;->frame:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v4, v7}, Lcom/droidhen/fortconquer/component/RoundRectangle;->setVisible(Z)V

    .line 228
    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/text/ChangeableText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    float-to-int v1, v4

    .line 229
    .local v1, "paddingV":I
    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    float-to-int v0, v4

    .line 230
    .local v0, "paddingH":I
    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v5, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getX()F

    move-result v5

    int-to-float v6, v0

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getY()F

    move-result v6

    int-to-float v7, v1

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 231
    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x42b00000    # 88.0f

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getY()F

    move-result v5

    const/high16 v6, 0x41700000    # 15.0f

    add-float/2addr v5, v6

    sget-object v6, Lcom/droidhen/fortconquer/GameActivity;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    iget-object v6, v6, Lcom/droidhen/fortconquer/scenes/StatusScene;->mrEnergy:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v2, v4, v5, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 232
    .local v2, "sIconEnergy":Lorg/anddev/andengine/entity/sprite/Sprite;
    invoke-virtual {p0, v2}, Lcom/droidhen/fortconquer/component/Guide;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 233
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->saveProgress()V

    .line 234
    return-object v3
.end method

.method private doStepSelect()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 7

    .prologue
    const/high16 v4, 0x44480000    # 800.0f

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v3, 0x43700000    # 240.0f

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 490
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    iget-object v0, v1, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 491
    .local v0, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 492
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover2:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 493
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v1, v4, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSize(FF)V

    .line 494
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover2:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v1, v4, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSize(FF)V

    .line 495
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v1, v2, v2}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setPosition(FF)V

    .line 496
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover2:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setPosition(FF)V

    .line 497
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const v2, 0x43988000    # 305.0f

    const/high16 v3, 0x43160000    # 150.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHoleSize(FF)V

    .line 498
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x42540000    # 53.0f

    .line 499
    const/high16 v3, 0x42a00000    # 80.0f

    .line 498
    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHolePosition(FF)V

    .line 500
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover2:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x43640000    # 228.0f

    const/high16 v3, 0x429c0000    # 78.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHoleSize(FF)V

    .line 501
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover2:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x436e0000    # 238.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover2:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v2, v3

    const v3, 0x43c78000    # 399.0f

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover2:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHolePosition(FF)V

    .line 502
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->clearEntityModifiers()V

    .line 503
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleX()F

    move-result v2

    add-float/2addr v2, v6

    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleY()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v6

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 504
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->mArrowV:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 505
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v2, 0x7f05003f

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    const/high16 v2, 0x42700000    # 60.0f

    const/high16 v3, 0x43820000    # 260.0f

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 507
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v1, v5}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setVisible(Z)V

    .line 508
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover2:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v1, v5}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setVisible(Z)V

    .line 509
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 510
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v1, v5}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 511
    return-object v0
.end method

.method private doStepStart()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    .line 458
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    iget-object v0, v1, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 459
    .local v0, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 460
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v1, v4}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setVisible(Z)V

    .line 461
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x44480000    # 800.0f

    const/high16 v3, 0x43f00000    # 480.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSize(FF)V

    .line 462
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x42be0000    # 95.0f

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHoleSize(FF)V

    .line 463
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x442f0000    # 700.0f

    const v3, 0x43c58000    # 395.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHolePosition(FF)V

    .line 464
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 465
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->clearEntityModifiers()V

    .line 466
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleX()F

    move-result v2

    add-float/2addr v2, v5

    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleY()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 467
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->mArrowV:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 468
    return-object v0
.end method

.method private doStepStope()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 450
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/GameActivity;->getCamera()Lorg/anddev/andengine/engine/camera/SmoothCamera;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->getHUD()Lorg/anddev/andengine/engine/camera/hud/HUD;

    move-result-object v0

    .line 451
    .local v0, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sHelpStope:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 452
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sHelpFireball:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 453
    return-object v0
.end method

.method private doStepToArena()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x1

    .line 256
    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    .line 257
    .local v2, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v4, 0x44480000    # 800.0f

    const/high16 v5, 0x43f00000    # 480.0f

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSize(FF)V

    .line 258
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v3, v6}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setVisible(Z)V

    .line 259
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v4, 0x43d10000    # 418.0f

    const/high16 v5, 0x43220000    # 162.0f

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHolePosition(FF)V

    .line 260
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v4, 0x43a00000    # 320.0f

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHoleSize(FF)V

    .line 261
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v3, v6}, Lcom/droidhen/fortconquer/component/RoundRectangle;->setVisible(Z)V

    .line 262
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    const/high16 v4, 0x423c0000    # 47.0f

    const v5, 0x43898000    # 275.0f

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/component/RoundRectangle;->setPosition(FF)V

    .line 263
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v4, 0x7f050045

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 264
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v3, v6}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 265
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    const/high16 v4, 0x43af0000    # 350.0f

    const/high16 v5, 0x432a0000    # 170.0f

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/component/RoundRectangle;->setSize(FF)V

    .line 266
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    float-to-int v1, v3

    .line 267
    .local v1, "paddingV":I
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    float-to-int v0, v3

    .line 268
    .local v0, "paddingH":I
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getX()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getY()F

    move-result v5

    int-to-float v6, v1

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 269
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 270
    return-object v2
.end method

.method private doStepToEvolve()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 7

    .prologue
    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v6, 0x1

    .line 359
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    iget-object v0, v1, Lcom/droidhen/fortconquer/GameActivity;->mShopScene:Lcom/droidhen/fortconquer/scenes/ShopScene;

    .line 360
    .local v0, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sCurrentScene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    if-eq v1, v0, :cond_0

    .line 361
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v1

    iget-object v0, v1, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 362
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x43fb0000    # 502.0f

    const/high16 v3, 0x43690000    # 233.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHolePosition(FF)V

    .line 363
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x42d80000    # 108.0f

    const/high16 v3, 0x42fa0000    # 125.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHoleSize(FF)V

    .line 368
    :goto_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 369
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x44480000    # 800.0f

    const/high16 v3, 0x43f00000    # 480.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSize(FF)V

    .line 370
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v1, v6}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setVisible(Z)V

    .line 371
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleX()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleWidth()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleY()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleHeight()F

    move-result v4

    iget-object v5, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 372
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 373
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->clearEntityModifiers()V

    .line 374
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->setFlippedHorizontal(Z)V

    .line 375
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/component/Guide;->mArrowH:Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 376
    return-object v0

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x42d00000    # 104.0f

    invoke-virtual {v1, v2, v4}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHolePosition(FF)V

    .line 366
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v2, 0x42a00000    # 80.0f

    const/high16 v3, 0x42a20000    # 81.0f

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHoleSize(FF)V

    goto :goto_0
.end method

.method private doStepToLocal()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x1

    .line 238
    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    .line 239
    .local v2, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v4, 0x44480000    # 800.0f

    const/high16 v5, 0x43f00000    # 480.0f

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setSize(FF)V

    .line 240
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v3, v6}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setVisible(Z)V

    .line 241
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, 0x43200000    # 160.0f

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHolePosition(FF)V

    .line 242
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    const/high16 v4, 0x43a00000    # 320.0f

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setHoleSize(FF)V

    .line 243
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v3, v6}, Lcom/droidhen/fortconquer/component/RoundRectangle;->setVisible(Z)V

    .line 244
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    const/high16 v4, 0x43ca0000    # 404.0f

    const/high16 v5, 0x43990000    # 306.0f

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/component/RoundRectangle;->setPosition(FF)V

    .line 245
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    const v4, 0x7f050042

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/droidhen/fortconquer/AppContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 246
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v3, v6}, Lorg/anddev/andengine/entity/text/ChangeableText;->setVisible(Z)V

    .line 247
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    const/high16 v4, 0x43af0000    # 350.0f

    const/high16 v5, 0x430c0000    # 140.0f

    invoke-virtual {v3, v4, v5}, Lcom/droidhen/fortconquer/component/RoundRectangle;->setSize(FF)V

    .line 248
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    float-to-int v1, v3

    .line 249
    .local v1, "paddingV":I
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    float-to-int v0, v3

    .line 250
    .local v0, "paddingH":I
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v4, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getX()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/component/RoundRectangle;->getY()F

    move-result v5

    int-to-float v6, v1

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 251
    iget-object v3, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 252
    return-object v2
.end method

.method public static getCurrentStep()I
    .locals 1

    .prologue
    .line 542
    sget v0, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    return v0
.end method

.method public static hasGuideDone()Z
    .locals 2

    .prologue
    .line 171
    sget v0, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasShowInputName()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v2

    const-string v3, "guide_input"

    invoke-static {v2, v3, v1}, Lcom/droidhen/fortconquer/CCPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static hide()V
    .locals 2

    .prologue
    .line 558
    sget-object v0, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    if-eqz v0, :cond_0

    .line 559
    sget-object v0, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/component/Guide;->setVisible(Z)V

    .line 561
    :cond_0
    return-void
.end method

.method public static isConcerned()Z
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 575
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentScene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    .line 576
    .local v0, "current":Lcom/droidhen/fortconquer/scenes/SmartScene;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->hasGuideDone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 590
    :cond_0
    :goto_0
    return v1

    .line 579
    :cond_1
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    if-ne v0, v3, :cond_3

    .line 580
    sget v3, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    add-int/lit8 v3, v3, 0x1

    if-eq v3, v2, :cond_2

    sget v3, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    sget v3, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    sget v3, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 581
    :cond_3
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-ne v0, v3, :cond_5

    .line 582
    sget v3, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    sget v3, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    sget v3, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 583
    :cond_5
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mShopScene:Lcom/droidhen/fortconquer/scenes/ShopScene;

    if-ne v0, v3, :cond_7

    .line 584
    sget v3, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x7

    if-eq v3, v4, :cond_6

    sget v3, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x8

    if-eq v3, v4, :cond_6

    sget v3, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0

    .line 585
    :cond_7
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mUnitEvolveScene:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    if-ne v0, v3, :cond_9

    .line 586
    sget v3, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_8

    sget v3, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    :cond_8
    move v1, v2

    goto :goto_0

    .line 587
    :cond_9
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    if-ne v0, v3, :cond_0

    .line 588
    sget v3, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xe

    if-eq v3, v4, :cond_a

    sget v3, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    add-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a

    sget v3, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    add-int/lit8 v3, v3, 0x1

    const/16 v4, -0x64

    if-eq v3, v4, :cond_a

    sget v3, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    :cond_a
    move v1, v2

    goto/16 :goto_0
.end method

.method public static isHide()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 564
    sget-object v1, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    if-eqz v1, :cond_0

    .line 565
    sget-object v1, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/component/Guide;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 567
    :cond_0
    return v0
.end method

.method public static jump(I)V
    .locals 0
    .param p0, "step"    # I

    .prologue
    .line 550
    sput p0, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    .line 551
    return-void
.end method

.method private reattach()V
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/component/Guide;->detachChildren()V

    .line 124
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/Guide;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 125
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sCover2:Lcom/droidhen/fortconquer/component/CoverWithHole;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/Guide;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 126
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/Guide;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 127
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sArrowH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/Guide;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 128
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sHand:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/Guide;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 129
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sHelpStope:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/Guide;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 130
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sHelpFireball:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/Guide;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 131
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sHelpDrag:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/Guide;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 132
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sTextBg:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/Guide;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 133
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/Guide;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 134
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/Guide;->sTip2:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/component/Guide;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 135
    return-void
.end method

.method public static reinit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 141
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->clear()V

    .line 142
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->reloadStep()V

    .line 143
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->hasGuideDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v1, 0x200

    const/16 v2, 0x100

    sget-object v3, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    sput-object v0, Lcom/droidhen/fortconquer/component/Guide;->tFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    new-array v0, v4, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 145
    sget-object v1, Lcom/droidhen/fortconquer/component/Guide;->tFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    .line 147
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    sget-object v1, Lcom/droidhen/fortconquer/component/Guide;->tFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/4 v2, 0x2

    invoke-static {v2, v4}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    .line 148
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x1a

    :goto_0
    int-to-float v3, v3

    const/16 v5, -0x100

    .line 147
    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    sput-object v0, Lcom/droidhen/fortconquer/component/Guide;->fFont:Lorg/anddev/andengine/opengl/font/Font;

    new-array v0, v4, [Lorg/anddev/andengine/opengl/font/Font;

    .line 149
    sget-object v1, Lcom/droidhen/fortconquer/component/Guide;->fFont:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 151
    :cond_0
    return-void

    .line 148
    :cond_1
    const/16 v3, 0x16

    goto :goto_0
.end method

.method public static reloadStep()V
    .locals 3

    .prologue
    .line 165
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    const-string v1, "guide_step"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/droidhen/fortconquer/CCPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    .line 166
    return-void
.end method

.method public static saveProgress()V
    .locals 3

    .prologue
    .line 554
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    const-string v1, "guide_step"

    sget v2, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    invoke-static {v0, v1, v2}, Lcom/droidhen/fortconquer/CCPrefs;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 555
    return-void
.end method

.method public static shouldLoadTexture(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z
    .locals 1
    .param p0, "current"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    .line 571
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->hasGuideDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static showGuide(I)Z
    .locals 1
    .param p0, "step"    # I

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(IZ)Z

    move-result v0

    return v0
.end method

.method public static showGuide(IZ)Z
    .locals 4
    .param p0, "step"    # I
    .param p1, "force"    # Z

    .prologue
    const/4 v1, 0x0

    .line 519
    sget-object v2, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    if-nez v2, :cond_2

    .line 520
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->hasGuideDone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 538
    :cond_0
    :goto_0
    return v1

    .line 522
    :cond_1
    const-class v2, Lcom/droidhen/fortconquer/component/Guide;

    monitor-enter v2

    .line 523
    :try_start_0
    new-instance v3, Lcom/droidhen/fortconquer/component/Guide;

    invoke-direct {v3}, Lcom/droidhen/fortconquer/component/Guide;-><init>()V

    sput-object v3, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    .line 522
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :cond_2
    sget v2, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p0, :cond_4

    .line 527
    sput p0, Lcom/droidhen/fortconquer/component/Guide;->curStep:I

    .line 532
    :cond_3
    sget-object v2, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/component/Guide;->detachSelf()Z

    .line 533
    sget-object v2, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    invoke-virtual {v2, p0}, Lcom/droidhen/fortconquer/component/Guide;->update(I)Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    .line 534
    .local v0, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    if-eqz v0, :cond_0

    .line 535
    sget-object v1, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 536
    const/4 v1, 0x1

    goto :goto_0

    .line 522
    .end local v0    # "scene":Lorg/anddev/andengine/entity/scene/Scene;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 528
    :cond_4
    const/16 v2, -0x64

    if-eq p0, v2, :cond_3

    if-nez p1, :cond_3

    goto :goto_0
.end method


# virtual methods
.method public update(I)Lorg/anddev/andengine/entity/scene/Scene;
    .locals 1
    .param p1, "curStep"    # I

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doInitStep()V

    .line 176
    sparse-switch p1, :sswitch_data_0

    .line 212
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 178
    :sswitch_0
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doStepSelect()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0

    .line 180
    :sswitch_1
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doStepStart()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0

    .line 182
    :sswitch_2
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doStepStope()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0

    .line 184
    :sswitch_3
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doStepDrag()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0

    .line 186
    :sswitch_4
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doStepGameNext()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0

    .line 188
    :sswitch_5
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doStepMarket()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0

    .line 190
    :sswitch_6
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doStepBuy()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0

    .line 192
    :sswitch_7
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doStepComfirm()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0

    .line 194
    :sswitch_8
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doStepToEvolve()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0

    .line 196
    :sswitch_9
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doStepEvolveSelect()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0

    .line 198
    :sswitch_a
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doStepEvolve()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0

    .line 200
    :sswitch_b
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doStepClose()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0

    .line 202
    :sswitch_c
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doStepFinal()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0

    .line 204
    :sswitch_d
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doStepInputName()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0

    .line 206
    :sswitch_e
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doStepToArena()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0

    .line 208
    :sswitch_f
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doStepToLocal()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0

    .line 210
    :sswitch_10
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/Guide;->doStepNeedEnergy()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0

    .line 176
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_d
        0x0 -> :sswitch_f
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_e
        0xf -> :sswitch_10
    .end sparse-switch
.end method
