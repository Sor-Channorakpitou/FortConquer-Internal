.class public Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;
.super Ljava/lang/Object;
.source "TMXTileSet.java"

# interfaces
.implements Lorg/anddev/andengine/entity/layer/tiled/tmx/util/constants/TMXConstants;


# instance fields
.field private mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private final mFirstGlobalTileID:I

.field private mImageSource:Ljava/lang/String;

.field private final mMargin:I

.field private final mName:Ljava/lang/String;

.field private final mSpacing:I

.field private final mTMXTileProperties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field private final mTileHeight:I

.field private final mTileWidth:I

.field private mTilesHorizontal:I

.field private mTilesVertical:I


# direct methods
.method constructor <init>(ILorg/xml/sax/Attributes;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 3
    .param p1, "pFirstGlobalTileID"    # I
    .param p2, "pAttributes"    # Lorg/xml/sax/Attributes;
    .param p3, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTMXTileProperties:Landroid/util/SparseArray;

    .line 64
    iput p1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mFirstGlobalTileID:I

    .line 65
    const-string v0, ""

    const-string v1, "name"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mName:Ljava/lang/String;

    .line 66
    const-string v0, "tilewidth"

    invoke-static {p2, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileWidth:I

    .line 67
    const-string v0, "tileheight"

    invoke-static {p2, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileHeight:I

    .line 68
    const-string v0, "spacing"

    invoke-static {p2, v0, v2}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mSpacing:I

    .line 69
    const-string v0, "margin"

    invoke-static {p2, v0, v2}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mMargin:I

    .line 71
    iput-object p3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 72
    return-void
.end method

.method constructor <init>(Lorg/xml/sax/Attributes;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 2
    .param p1, "pAttributes"    # Lorg/xml/sax/Attributes;
    .param p2, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .prologue
    .line 60
    const-string v0, "firstgid"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;-><init>(ILorg/xml/sax/Attributes;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V

    .line 61
    return-void
.end method

.method private static determineCount(IIII)I
    .locals 3
    .param p0, "pTotalExtent"    # I
    .param p1, "pTileExtent"    # I
    .param p2, "pMargin"    # I
    .param p3, "pSpacing"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "count":I
    move v1, p0

    .line 167
    .local v1, "remainingExtent":I
    mul-int/lit8 v2, p2, 0x2

    sub-int/2addr v1, v2

    .line 169
    :goto_0
    if-gtz v1, :cond_0

    .line 175
    return v0

    .line 170
    :cond_0
    sub-int/2addr v1, p1

    .line 171
    sub-int/2addr v1, p3

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addTMXTileProperty(ILorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;)V
    .locals 3
    .param p1, "pLocalTileID"    # I
    .param p2, "pTMXTileProperty"    # Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;

    .prologue
    .line 142
    iget-object v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTMXTileProperties:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    .line 143
    .local v0, "existingProperties":Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;, "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties<Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;>;"
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;->add(Ljava/lang/Object;)Z

    .line 150
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    invoke-direct {v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;-><init>()V

    .line 147
    .local v1, "newProperties":Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;, "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties<Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;>;"
    invoke-virtual {v1, p2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTMXTileProperties:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getBitmapTextureAtlas()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    return-object v0
.end method

.method public final getFirstGlobalTileID()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mFirstGlobalTileID:I

    return v0
.end method

.method public getImageSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mImageSource:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTMXTileProperties()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTMXTileProperties:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getTMXTilePropertiesFromGlobalTileID(I)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;
    .locals 2
    .param p1, "pGlobalTileID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mFirstGlobalTileID:I

    sub-int v0, p1, v1

    .line 138
    .local v0, "localTileID":I
    iget-object v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTMXTileProperties:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    return-object v1
.end method

.method public getTextureRegionFromGlobalTileID(I)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 9
    .param p1, "pGlobalTileID"    # I

    .prologue
    .line 153
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mFirstGlobalTileID:I

    sub-int v6, p1, v0

    .line 154
    .local v6, "localTileID":I
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTilesHorizontal:I

    rem-int v7, v6, v0

    .line 155
    .local v7, "tileColumn":I
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTilesHorizontal:I

    div-int v8, v6, v0

    .line 157
    .local v8, "tileRow":I
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mMargin:I

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mSpacing:I

    iget v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileWidth:I

    add-int/2addr v1, v4

    mul-int/2addr v1, v7

    add-int v2, v0, v1

    .line 158
    .local v2, "texturePositionX":I
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mMargin:I

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mSpacing:I

    iget v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileHeight:I

    add-int/2addr v1, v4

    mul-int/2addr v1, v8

    add-int v3, v0, v1

    .line 160
    .local v3, "texturePositionY":I
    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    iget v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileWidth:I

    iget v5, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileHeight:I

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    return-object v0
.end method

.method public final getTileHeight()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileHeight:I

    return v0
.end method

.method public final getTileWidth()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileWidth:I

    return v0
.end method

.method public setImageSource(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/xml/sax/Attributes;)V
    .locals 9
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTextureManager"    # Lorg/anddev/andengine/opengl/texture/TextureManager;
    .param p3, "pAttributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 99
    const-string v4, ""

    const-string v5, "source"

    invoke-interface {p3, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mImageSource:Ljava/lang/String;

    .line 101
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    iget-object v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mImageSource:Ljava/lang/String;

    invoke-direct {v0, p1, v4}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    .local v0, "assetBitmapTextureAtlasSource":Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->getWidth()I

    move-result v4

    iget v5, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileWidth:I

    iget v6, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mMargin:I

    iget v7, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mSpacing:I

    invoke-static {v4, v5, v6, v7}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->determineCount(IIII)I

    move-result v4

    iput v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTilesHorizontal:I

    .line 103
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->getHeight()I

    move-result v4

    iget v5, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileHeight:I

    iget v6, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mMargin:I

    iget v7, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mSpacing:I

    invoke-static {v4, v5, v6, v7}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->determineCount(IIII)I

    move-result v4

    iput v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTilesVertical:I

    .line 104
    sget-object v4, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    iget-object v5, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-static {v4, v0, v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasFactory;->createForTextureAtlasSourceSize(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    move-result-object v4

    iput-object v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 106
    const-string v4, "trans"

    const/4 v5, 0x0

    invoke-static {p3, v4, v5}, Lorg/anddev/andengine/util/SAXUtils;->getAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "transparentColor":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 108
    iget-object v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v4, v0, v8, v8}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 117
    :goto_0
    iget-object v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {p2, v4}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    .line 118
    return-void

    .line 111
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_1

    move-object v4, v3

    :goto_1
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 112
    .local v1, "color":I
    iget-object v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    new-instance v5, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;

    invoke-static {}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;->getDefaultInstance()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;

    move-result-object v6

    invoke-direct {v5, v0, v6, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v1    # "color":I
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal value: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' for attribute \'trans\' supplied!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 111
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method
