.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;
.super Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;
.source "BuildableBitmapTextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas",
        "<",
        "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;",
        "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "pWidth"    # I
    .param p2, "pHeight"    # I

    .prologue
    .line 36
    sget-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    invoke-direct {p0, p1, p2, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;)V

    .line 37
    return-void
.end method

.method public constructor <init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 6
    .param p1, "pWidth"    # I
    .param p2, "pHeight"    # I
    .param p3, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 77
    sget-object v3, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 78
    return-void
.end method

.method public constructor <init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .locals 6
    .param p1, "pWidth"    # I
    .param p2, "pHeight"    # I
    .param p3, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/anddev/andengine/opengl/texture/TextureOptions;",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<",
            "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 99
    .local p4, "pTextureStateListener":Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;, "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    sget-object v3, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 100
    return-void
.end method

.method public constructor <init>(IILorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .locals 6
    .param p1, "pWidth"    # I
    .param p2, "pHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<",
            "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p3, "pTextureStateListener":Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;, "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    sget-object v3, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    sget-object v4, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 57
    return-void
.end method

.method public constructor <init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;)V
    .locals 6
    .param p1, "pWidth"    # I
    .param p2, "pHeight"    # I
    .param p3, "pBitmapTextureFormat"    # Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    .prologue
    .line 45
    sget-object v4, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 46
    return-void
.end method

.method public constructor <init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 6
    .param p1, "pWidth"    # I
    .param p2, "pHeight"    # I
    .param p3, "pBitmapTextureFormat"    # Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;
    .param p4, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 88
    return-void
.end method

.method public constructor <init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .locals 6
    .param p1, "pWidth"    # I
    .param p2, "pHeight"    # I
    .param p3, "pBitmapTextureFormat"    # Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;
    .param p4, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;",
            "Lorg/anddev/andengine/opengl/texture/TextureOptions;",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<",
            "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 110
    .local p5, "pTextureStateListener":Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;, "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    invoke-direct {p0, v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;)V

    .line 111
    return-void
.end method

.method public constructor <init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .locals 6
    .param p1, "pWidth"    # I
    .param p2, "pHeight"    # I
    .param p3, "pBitmapTextureFormat"    # Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<",
            "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p4, "pTextureStateListener":Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;, "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    sget-object v4, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 67
    return-void
.end method
