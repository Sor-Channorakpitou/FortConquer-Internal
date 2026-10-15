.class public Lcom/droidhen/fortconquer/scenes/CoinStoreScene;
.super Lcom/droidhen/fortconquer/scenes/SmartScene;
.source "CoinStoreScene.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# static fields
.field private static final NUMBER:[I

.field public static final PRICE:[I

.field public static final sTaskShowTapjoyOffers:Ljava/lang/Runnable;


# instance fields
.field private _payload:Ljava/lang/String;

.field public bStoreFromWorld:Z

.field btnSelected:Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

.field private fDoscount:Lorg/anddev/andengine/opengl/font/Font;

.field private fTotalCoin:Lorg/anddev/andengine/opengl/font/Font;

.field private mBgTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private mCurItems:[Ljava/lang/String;

.field protected mStoreBgSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mStoreBgTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field protected mStoreCoin2TextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field protected mStoreCoinSelectedSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mStoreCoinSelectedTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field protected mStoreCoinSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mStorePriceSprite:[Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected mStorePriceTextureRegion:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field protected mStoreTexture:Lcom/droidhen/andplugin/PlistTexture;

.field protected mrBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mrDiscount:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private mrFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mrIcon:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mrLabel:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

.field private mrTitle:Lcom/droidhen/andplugin/PlistTextureRegion;

.field private msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

.field private msDiscount:[Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msDiscountLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

.field private msGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

.field private msIcon:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private msLabel:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

.field private msNumber:[Lcom/droidhen/fortconquer/kits/NumberSprite;

.field private msPrice:[Lorg/anddev/andengine/entity/text/Text;

.field private msTExtra:[Lorg/anddev/andengine/entity/text/Text;

.field private msTRates:[Lorg/anddev/andengine/entity/text/ChangeableText;

.field private msTitle:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private msTopBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

.field private tDiscountFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private tTotalCoinFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mStoreCoins:[I

    sput-object v0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->NUMBER:[I

    .line 102
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->PRICE:[I

    .line 351
    new-instance v0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene$1;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene$1;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->sTaskShowTapjoyOffers:Ljava/lang/Runnable;

    .line 355
    return-void

    .line 102
    :array_0
    .array-data 4
        0x12b
        0x3e7
        0x1387
        0x12b
        0x3e7
        0x1387
    .end array-data
.end method

.method public constructor <init>(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 2
    .param p1, "shootTheAppleGame"    # Lcom/droidhen/fortconquer/GameActivity;

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    .line 104
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mStoreItems:[Ljava/lang/String;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mCurItems:[Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->_payload:Ljava/lang/String;

    .line 282
    iput-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->btnSelected:Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    .line 114
    return-void
.end method

.method private detachDiscount()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msDiscountLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msDiscountLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->hasParent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msDiscountLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachSelf()Z

    goto :goto_0
.end method

.method private initDiscount()V
    .locals 14

    .prologue
    const/high16 v13, 0x40600000    # 3.5f

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 157
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrDiscount:Lcom/droidhen/andplugin/PlistTextureRegion;

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mStoreTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "discount.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrDiscount:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 159
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v1, 0x200

    const/16 v2, 0x80

    sget-object v3, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->tDiscountFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    new-array v0, v4, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 160
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->tDiscountFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    .line 161
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->tDiscountFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/4 v2, 0x2

    invoke-static {v2, v10}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41900000    # 18.0f

    .line 162
    const/16 v5, 0x60

    const/4 v8, 0x6

    const/16 v9, 0xb

    invoke-static {v5, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    .line 161
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->fDoscount:Lorg/anddev/andengine/opengl/font/Font;

    new-array v0, v4, [Lorg/anddev/andengine/opengl/font/Font;

    .line 163
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->fDoscount:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 165
    new-instance v0, Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msDiscountLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    .line 167
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/anddev/andengine/entity/sprite/Sprite;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msDiscount:[Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 168
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msDiscount:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v0, v0

    new-array v0, v0, [Lorg/anddev/andengine/entity/text/ChangeableText;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTRates:[Lorg/anddev/andengine/entity/text/ChangeableText;

    .line 169
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msDiscount:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v0, v0

    new-array v0, v0, [Lorg/anddev/andengine/entity/text/Text;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTExtra:[Lorg/anddev/andengine/entity/text/Text;

    .line 171
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msDiscount:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v0, v0

    if-lt v7, v0, :cond_2

    .line 183
    .end local v7    # "i":I
    :cond_0
    const/4 v6, 0x0

    .line 184
    .local v6, "discountRate":I
    sget-object v0, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->DST_PURCHASE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    invoke-static {v0}, Lcom/droidhen/fortconquer/kits/DiscountManager;->getInstance(Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;)Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/DiscountManager;->inDiscountTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    sget-object v0, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->DST_PURCHASE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    invoke-static {v0}, Lcom/droidhen/fortconquer/kits/DiscountManager;->getInstance(Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;)Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/kits/DiscountManager;->getDiscountRate()I

    move-result v6

    .line 187
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msDiscount:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v0, v0

    if-lt v7, v0, :cond_3

    .line 192
    return-void

    .line 172
    .end local v6    # "discountRate":I
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msDiscount:[Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrDiscount:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v3}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v13

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrDiscount:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v13

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrDiscount:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v1, v2, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aput-object v1, v0, v7

    .line 173
    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTRates:[Lorg/anddev/andengine/entity/text/ChangeableText;

    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrDiscount:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x2

    int-to-float v2, v1

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->fDoscount:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, "20%"

    const/4 v5, 0x4

    move v1, v11

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    aput-object v0, v8, v7

    .line 174
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTRates:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, v7

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setRotation(F)V

    .line 175
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTExtra:[Lorg/anddev/andengine/entity/text/Text;

    new-instance v1, Lorg/anddev/andengine/entity/text/Text;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrDiscount:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/PlistTextureRegion;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->fDoscount:Lorg/anddev/andengine/opengl/font/Font;

    const-string v4, "Extra"

    invoke-direct {v1, v11, v2, v3, v4}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    aput-object v1, v0, v7

    .line 176
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msDiscount:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTRates:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 177
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msDiscount:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTExtra:[Lorg/anddev/andengine/entity/text/Text;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 178
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTExtra:[Lorg/anddev/andengine/entity/text/Text;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrDiscount:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTExtra:[Lorg/anddev/andengine/entity/text/Text;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v12

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTExtra:[Lorg/anddev/andengine/entity/text/Text;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/Text;->setPosition(FF)V

    .line 179
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msDiscount:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v0, v0, v7

    const/high16 v1, -0x3e100000    # -30.0f

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setRotation(F)V

    .line 180
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msDiscountLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msDiscount:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 171
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 188
    .restart local v6    # "discountRate":I
    :cond_3
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTRates:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTRates:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrDiscount:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTRates:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v12

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTRates:[Lorg/anddev/andengine/entity/text/ChangeableText;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/ChangeableText;->setPosition(FF)V

    .line 187
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1
.end method

.method private onBtnClicked(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V
    .locals 4
    .param p1, "btn"    # Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    .prologue
    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 330
    :goto_1
    return-void

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mCurItems:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->_payload:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/fortconquer/GameActivity;->requestPurchaseItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 323
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private onBtnDown(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V
    .locals 2
    .param p1, "btn"    # Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->btnSelected:Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    .line 308
    instance-of v1, p1, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 309
    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 310
    .local v0, "sprite":Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    .line 312
    .end local v0    # "sprite":Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    :cond_0
    return-void
.end method

.method private onBtnUp(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V
    .locals 2
    .param p1, "btn"    # Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    .prologue
    .line 315
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->btnSelected:Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    .line 316
    instance-of v1, p1, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 317
    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 318
    .local v0, "sprite":Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    .line 320
    .end local v0    # "sprite":Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    :cond_0
    return-void
.end method


# virtual methods
.method public IsTexturesLoaded()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method protected attachEverything()V
    .locals 2

    .prologue
    .line 233
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mStoreBgSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 234
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTitle:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 243
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTopBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 244
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 245
    return-void

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 237
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msIcon:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 238
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msLabel:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 239
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msPrice:[Lorg/anddev/andengine/entity/text/Text;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 240
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msNumber:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected createBGAndSprites()V
    .locals 13

    .prologue
    const/high16 v12, 0x42a60000    # 83.0f

    const/high16 v11, 0x41700000    # 15.0f

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x6

    .line 203
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mStoreBgTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v10, v10, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mStoreBgSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 204
    new-array v0, v2, [Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 205
    new-array v0, v2, [Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msIcon:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 206
    new-array v0, v2, [Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msLabel:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .line 207
    new-array v0, v2, [Lorg/anddev/andengine/entity/text/Text;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msPrice:[Lorg/anddev/andengine/entity/text/Text;

    .line 208
    new-array v0, v2, [Lcom/droidhen/fortconquer/kits/NumberSprite;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msNumber:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    .line 209
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrTitle:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistTextureRegion;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x190

    int-to-float v1, v1

    const/high16 v2, 0x41c80000    # 25.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrTitle:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTitle:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 210
    new-instance v0, Lcom/droidhen/fortconquer/component/CoinBarEntity;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/droidhen/fortconquer/component/CoinBarEntity;-><init>(Lcom/droidhen/fortconquer/scenes/SmartScene;I)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msTopBar:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    .line 211
    const/high16 v7, 0x41800000    # 16.0f

    .line 212
    .local v7, "additionalY":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    array-length v0, v0

    if-lt v8, v0, :cond_0

    .line 223
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->spGrayCoverPool:Lcom/droidhen/fortconquer/kits/ObjectPool;

    invoke-interface {v0}, Lcom/droidhen/fortconquer/kits/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/primitive/Rectangle;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 224
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setAlpha(F)V

    .line 225
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v0, v10, v10}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    .line 226
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msGrayCover:Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/high16 v1, 0x44480000    # 800.0f

    const/high16 v2, 0x43f00000    # 480.0f

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setSize(FF)V

    .line 228
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    const/high16 v1, 0x439b0000    # 310.0f

    const/high16 v2, 0x42a40000    # 82.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    sget-object v4, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->sTaskShowTapjoyOffers:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    .line 229
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    new-instance v1, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    div-int/lit8 v2, v8, 0x3

    mul-int/lit16 v2, v2, 0x172

    add-int/lit8 v2, v2, 0x2c

    int-to-float v2, v2

    rem-int/lit8 v3, v8, 0x3

    mul-int/lit8 v3, v3, 0x78

    add-int/lit8 v3, v3, 0x71

    int-to-float v3, v3

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    aput-object v1, v0, v8

    .line 214
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msIcon:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    new-instance v1, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrIcon:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    aput-object v1, v0, v8

    .line 215
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msLabel:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    new-instance v1, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v2

    add-float/2addr v2, v12

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v3

    const/high16 v4, 0x42400000    # 48.0f

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrLabel:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v4}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    aput-object v1, v0, v8

    .line 216
    iget-object v9, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msNumber:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    new-instance v0, Lcom/droidhen/fortconquer/kits/NumberSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v1

    add-float/2addr v1, v12

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v2

    add-float/2addr v2, v11

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mStoreTexture:Lcom/droidhen/andplugin/PlistTexture;

    const/4 v4, 0x3

    if-ge v8, v4, :cond_1

    const-string v4, "n_coins.png"

    :goto_1
    const/16 v5, 0x9

    invoke-direct/range {v0 .. v6}, Lcom/droidhen/fortconquer/kits/NumberSprite;-><init>(FFLcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;IZ)V

    aput-object v0, v9, v8

    .line 217
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msPrice:[Lorg/anddev/andengine/entity/text/Text;

    new-instance v1, Lorg/anddev/andengine/entity/text/Text;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v2

    const/high16 v3, 0x43760000    # 246.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getY()F

    move-result v3

    add-float/2addr v3, v11

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->fTotalCoin:Lorg/anddev/andengine/opengl/font/Font;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "$"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->PRICE:[I

    aget v9, v9, v8

    div-int/lit8 v9, v9, 0x64

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v9, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->PRICE:[I

    aget v9, v9, v8

    rem-int/lit8 v9, v9, 0x64

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V

    aput-object v1, v0, v8

    .line 218
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msPrice:[Lorg/anddev/andengine/entity/text/Text;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getX()F

    move-result v1

    const/high16 v2, 0x43960000    # 300.0f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msPrice:[Lorg/anddev/andengine/entity/text/Text;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msPrice:[Lorg/anddev/andengine/entity/text/Text;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/text/Text;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/text/Text;->setPosition(FF)V

    .line 219
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msIcon:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v1, v0, v8

    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mIsCoins:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 220
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msLabel:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v1, v0, v8

    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mIsCoins:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1, v0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 221
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msNumber:[Lcom/droidhen/fortconquer/kits/NumberSprite;

    aget-object v0, v0, v8

    sget-object v1, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->NUMBER:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/kits/NumberSprite;->setNumberDirect(I)V

    .line 212
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 216
    :cond_1
    const-string v4, "n_crystal.png"

    goto/16 :goto_1

    :cond_2
    move v0, v6

    .line 219
    goto :goto_2

    :cond_3
    move v0, v6

    .line 220
    goto :goto_3
.end method

.method protected initTextureRegions()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 146
    new-instance v6, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    const-string v1, "gfx/bg/bg2.jpg"

    invoke-direct {v6, v0, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    .local v6, "bitmapTextureAtlasSource":Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mBgTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {v0, v6, v7, v7}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V

    .line 148
    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mBgTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v2, 0xdc

    const/4 v3, 0x5

    const/16 v4, 0x320

    const/16 v5, 0x1e0

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mStoreBgTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 149
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mStoreTexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "btn_up.png"

    aput-object v2, v1, v7

    const-string v2, "btn_down.png"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrBtn:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 150
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mStoreTexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "icon_coins.png"

    aput-object v2, v1, v7

    const-string v2, "icon_crystal.png"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrIcon:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 151
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mStoreTexture:Lcom/droidhen/andplugin/PlistTexture;

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "z_coins.png"

    aput-object v2, v1, v7

    const-string v2, "z_crystal.png"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createComposedFromAsset(Lcom/droidhen/andplugin/PlistTexture;[Ljava/lang/String;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrLabel:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 152
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mStoreTexture:Lcom/droidhen/andplugin/PlistTexture;

    const-string v1, "z_coins_store.png"

    invoke-static {v0, v1}, Lcom/droidhen/andplugin/PlistTextureRegionFactory;->createFromAsset(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrTitle:Lcom/droidhen/andplugin/PlistTextureRegion;

    .line 153
    sget-object v0, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mrFreeCrystals:Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .line 154
    return-void
.end method

.method protected initTextures()V
    .locals 11

    .prologue
    const/16 v10, 0x200

    const/4 v1, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 124
    new-array v6, v1, [Ljava/lang/String;

    const-string v0, "coin_shop.png"

    aput-object v0, v6, v8

    const-string v0, "coin_shop.png"

    aput-object v0, v6, v4

    const-string v0, "coin_shop_yn.png"

    aput-object v0, v6, v9

    .line 125
    .local v6, "storePic":[Ljava/lang/String;
    new-array v7, v1, [Ljava/lang/String;

    const-string v0, "coin_shop.plist"

    aput-object v0, v7, v8

    const-string v0, "coin_shop.plist"

    aput-object v0, v7, v4

    const-string v0, "coin_shop_yn.plist"

    aput-object v0, v7, v9

    .line 126
    .local v7, "storePlist":[Ljava/lang/String;
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 127
    const-string v1, "gfx/store/"

    .line 128
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v2

    aget-object v2, v6, v2

    .line 129
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getLocale()I

    move-result v3

    aget-object v3, v7, v3

    .line 130
    sget-object v5, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 126
    invoke-static {v0, v1, v2, v3, v5}, Lcom/droidhen/andplugin/PlistTexture;->getPlistTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mStoreTexture:Lcom/droidhen/andplugin/PlistTexture;

    .line 132
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v1, 0x400

    sget-object v2, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v1, v10, v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mBgTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mTexturesAL:Ljava/util/ArrayList;

    .line 134
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mTexturesAL:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mBgTexture:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mTexturesAL:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mStoreTexture:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mTexturesAL:Ljava/util/ArrayList;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->tUICommon:Lcom/droidhen/andplugin/PlistTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v1, 0x80

    sget-object v2, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v10, v1, v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->tTotalCoinFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    new-array v0, v4, [Lorg/anddev/andengine/opengl/texture/Texture;

    .line 139
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->tTotalCoinFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    .line 140
    new-instance v0, Lorg/anddev/andengine/opengl/font/Font;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->tTotalCoinFont:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v9, v8}, Lcom/droidhen/fortconquer/AppContext;->getTypeFace(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/Font;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->fTotalCoin:Lorg/anddev/andengine/opengl/font/Font;

    new-array v0, v4, [Lorg/anddev/andengine/opengl/font/Font;

    .line 141
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->fTotalCoin:Lorg/anddev/andengine/opengl/font/Font;

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V

    .line 142
    return-void
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;FF)Z
    .locals 1
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchArea"    # Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;
    .param p3, "pTouchAreaLocalX"    # F
    .param p4, "pTouchAreaLocalY"    # F

    .prologue
    .line 295
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-direct {p0, p2}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->onBtnDown(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 303
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 297
    :cond_1
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->btnSelected:Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    if-ne v0, p2, :cond_2

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    invoke-direct {p0, p2}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->onBtnClicked(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->btnSelected:Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    invoke-direct {p0, v0}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->onBtnUp(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "pKeyCode"    # I
    .param p2, "pEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 334
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    :cond_0
    const/4 v0, 0x0

    .line 348
    :goto_0
    return v0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    new-instance v1, Lcom/droidhen/fortconquer/scenes/CoinStoreScene$2;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene$2;-><init>(Lcom/droidhen/fortconquer/scenes/CoinStoreScene;)V

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 348
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 286
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->btnSelected:Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    invoke-direct {p0, v0}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->onBtnUp(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 289
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected registerHandlers()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0, p0}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->setOnAreaTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;)V

    .line 119
    invoke-virtual {p0, p0}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    .line 120
    return-void
.end method

.method protected registerTouchAreas()V
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 254
    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msBtnBuy:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setupScene()V
    .locals 3

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->swithToScene()V

    .line 263
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 264
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 265
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playBGMusic()V

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "discountRate":I
    sget-object v1, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->DST_PURCHASE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    invoke-static {v1}, Lcom/droidhen/fortconquer/kits/DiscountManager;->getInstance(Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;)Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/kits/DiscountManager;->inDiscountTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->initDiscount()V

    .line 270
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mDiscountItems:[Ljava/lang/String;

    iput-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mCurItems:[Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->msDiscountLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 272
    sget-object v1, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->DST_PURCHASE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    invoke-static {v1}, Lcom/droidhen/fortconquer/kits/DiscountManager;->getInstance(Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;)Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/kits/DiscountManager;->getDiscountRate()I

    move-result v0

    .line 277
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->_payload:Ljava/lang/String;

    .line 279
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/GameActivity;->CheckAndHideAD()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 274
    :cond_0
    :try_start_1
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mStoreItems:[Ljava/lang/String;

    iput-object v1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->mCurItems:[Ljava/lang/String;

    .line 275
    invoke-direct {p0}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->detachDiscount()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 262
    .end local v0    # "discountRate":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
