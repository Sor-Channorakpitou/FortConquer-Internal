.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;
.super Ljava/lang/Object;
.source "BitmapTextureAtlasTextureRegionFactory.java"


# static fields
.field private static sAssetBasePath:Ljava/lang/String;

.field private static sCreateTextureRegionBuffersManaged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    sput-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromAsset(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 3
    .param p0, "pBitmapTextureAtlas"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pAssetPath"    # Ljava/lang/String;
    .param p3, "pTexturePositionX"    # I
    .param p4, "pTexturePositionY"    # I

    .prologue
    .line 75
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    .local v0, "bitmapTextureAtlasSource":Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    invoke-static {p0, v0, p3, p4}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v1

    return-object v1
.end method

.method public static createFromAsset(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 3
    .param p0, "pBuildableBitmapTextureAtlas"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pAssetPath"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    .local v0, "bitmapTextureAtlasSource":Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    invoke-static {p0, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v1

    return-object v1
.end method

.method public static createFromResource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;III)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 2
    .param p0, "pBitmapTextureAtlas"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pDrawableResourceID"    # I
    .param p3, "pTexturePositionX"    # I
    .param p4, "pTexturePositionY"    # I

    .prologue
    .line 86
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    invoke-direct {v0, p1, p2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;-><init>(Landroid/content/Context;I)V

    .line 87
    .local v0, "bitmapTextureAtlasSource":Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    invoke-static {p0, v0, p3, p4}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v1

    return-object v1
.end method

.method public static createFromResource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/Context;I)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 2
    .param p0, "pBuildableBitmapTextureAtlas"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pDrawableResourceID"    # I

    .prologue
    .line 119
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    invoke-direct {v0, p1, p2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;-><init>(Landroid/content/Context;I)V

    .line 120
    .local v0, "bitmapTextureAtlasSource":Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    invoke-static {p0, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v1

    return-object v1
.end method

.method public static createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 1
    .param p0, "pBitmapTextureAtlas"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .param p1, "pBitmapTextureAtlasSource"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .param p2, "pTexturePositionX"    # I
    .param p3, "pTexturePositionY"    # I

    .prologue
    .line 96
    sget-boolean v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sCreateTextureRegionBuffersManaged:Z

    invoke-static {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/opengl/texture/region/TextureRegionFactory;->createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIZ)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 1
    .param p0, "pBuildableBitmapTextureAtlas"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;
    .param p1, "pBitmapTextureAtlasSource"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    .prologue
    .line 130
    sget-boolean v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sCreateTextureRegionBuffersManaged:Z

    invoke-static {p0, p1, v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory;->createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;Z)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createTiledFromAsset(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;IIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 6
    .param p0, "pBitmapTextureAtlas"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pAssetPath"    # Ljava/lang/String;
    .param p3, "pTexturePositionX"    # I
    .param p4, "pTexturePositionY"    # I
    .param p5, "pTileColumns"    # I
    .param p6, "pTileRows"    # I

    .prologue
    .line 80
    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .local v1, "bitmapTextureAtlasSource":Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 81
    invoke-static/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createTiledFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;IIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createTiledFromAsset(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 3
    .param p0, "pBuildableBitmapTextureAtlas"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pAssetPath"    # Ljava/lang/String;
    .param p3, "pTileColumns"    # I
    .param p4, "pTileRows"    # I

    .prologue
    .line 113
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    .local v0, "bitmapTextureAtlasSource":Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    invoke-static {p0, v0, p3, p4}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createTiledFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v1

    return-object v1
.end method

.method public static createTiledFromResource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;IIIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 6
    .param p0, "pBitmapTextureAtlas"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pDrawableResourceID"    # I
    .param p3, "pTexturePositionX"    # I
    .param p4, "pTexturePositionY"    # I
    .param p5, "pTileColumns"    # I
    .param p6, "pTileRows"    # I

    .prologue
    .line 91
    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    invoke-direct {v1, p1, p2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;-><init>(Landroid/content/Context;I)V

    .local v1, "bitmapTextureAtlasSource":Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 92
    invoke-static/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createTiledFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;IIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createTiledFromResource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/Context;III)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 2
    .param p0, "pBuildableBitmapTextureAtlas"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pDrawableResourceID"    # I
    .param p3, "pTileColumns"    # I
    .param p4, "pTileRows"    # I

    .prologue
    .line 124
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    invoke-direct {v0, p1, p2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;-><init>(Landroid/content/Context;I)V

    .line 125
    .local v0, "bitmapTextureAtlasSource":Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    invoke-static {p0, v0, p3, p4}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createTiledFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v1

    return-object v1
.end method

.method public static createTiledFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;IIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 7
    .param p0, "pBitmapTextureAtlas"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .param p1, "pBitmapTextureAtlasSource"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .param p2, "pTexturePositionX"    # I
    .param p3, "pTexturePositionY"    # I
    .param p4, "pTileColumns"    # I
    .param p5, "pTileRows"    # I

    .prologue
    .line 100
    sget-boolean v6, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sCreateTextureRegionBuffersManaged:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/anddev/andengine/opengl/texture/region/TextureRegionFactory;->createTiledFromSource(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIIIZ)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createTiledFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 1
    .param p0, "pBuildableBitmapTextureAtlas"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;
    .param p1, "pBitmapTextureAtlasSource"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .param p2, "pTileColumns"    # I
    .param p3, "pTileRows"    # I

    .prologue
    .line 134
    sget-boolean v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sCreateTextureRegionBuffersManaged:Z

    invoke-static {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory;->createTiledFromSource(Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIZ)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 58
    const-string v0, ""

    invoke-static {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->setAssetBasePath(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->setCreateTextureRegionBuffersManaged(Z)V

    .line 60
    return-void
.end method

.method public static setAssetBasePath(Ljava/lang/String;)V
    .locals 2
    .param p0, "pAssetBasePath"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    :cond_0
    sput-object p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    .line 51
    return-void

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pAssetBasePath must end with \'/\' or be lenght zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setCreateTextureRegionBuffersManaged(Z)V
    .locals 0
    .param p0, "pCreateTextureRegionBuffersManaged"    # Z

    .prologue
    .line 54
    sput-boolean p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sCreateTextureRegionBuffersManaged:Z

    .line 55
    return-void
.end method
