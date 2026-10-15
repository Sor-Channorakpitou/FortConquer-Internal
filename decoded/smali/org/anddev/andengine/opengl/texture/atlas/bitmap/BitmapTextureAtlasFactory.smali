.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasFactory;
.super Ljava/lang/Object;
.source "BitmapTextureAtlasFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createForTextureAtlasSourceSize(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .locals 1
    .param p0, "pBitmapTextureFormat"    # Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;
    .param p1, "pBitmapTextureAtlasSource"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    .prologue
    .line 40
    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-static {p0, p1, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasFactory;->createForTextureAtlasSourceSize(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    move-result-object v0

    return-object v0
.end method

.method public static createForTextureAtlasSourceSize(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .locals 5
    .param p0, "pBitmapTextureFormat"    # Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;
    .param p1, "pBitmapTextureAtlasSource"    # Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .param p2, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .prologue
    .line 44
    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getWidth()I

    move-result v1

    .line 45
    .local v1, "textureSourceWidth":I
    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getHeight()I

    move-result v0

    .line 46
    .local v0, "textureSourceHeight":I
    new-instance v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v1}, Lorg/anddev/andengine/util/MathUtils;->nextPowerOfTwo(I)I

    move-result v3

    invoke-static {v0}, Lorg/anddev/andengine/util/MathUtils;->nextPowerOfTwo(I)I

    move-result v4

    invoke-direct {v2, v3, v4, p0, p2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V

    return-object v2
.end method

.method public static createForTextureAtlasSourceSize(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .locals 1
    .param p0, "pBitmapTextureFormat"    # Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;
    .param p1, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .prologue
    .line 30
    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-static {p0, p1, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasFactory;->createForTextureRegionSize(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    move-result-object v0

    return-object v0
.end method

.method public static createForTextureRegionSize(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .locals 5
    .param p0, "pBitmapTextureFormat"    # Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;
    .param p1, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p2, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .prologue
    .line 34
    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v1

    .line 35
    .local v1, "textureRegionWidth":I
    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getHeight()I

    move-result v0

    .line 36
    .local v0, "textureRegionHeight":I
    new-instance v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v1}, Lorg/anddev/andengine/util/MathUtils;->nextPowerOfTwo(I)I

    move-result v3

    invoke-static {v0}, Lorg/anddev/andengine/util/MathUtils;->nextPowerOfTwo(I)I

    move-result v4

    invoke-direct {v2, v3, v4, p0, p2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V

    return-object v2
.end method
