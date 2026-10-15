.class public abstract Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;
.super Lorg/anddev/andengine/opengl/texture/Texture;
.source "TextureAtlas.java"

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
        ">",
        "Lorg/anddev/andengine/opengl/texture/Texture;",
        "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mHeight:I

.field protected final mTextureAtlasSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mWidth:I


# direct methods
.method public constructor <init>(IILorg/anddev/andengine/opengl/texture/Texture$PixelFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .locals 2
    .param p1, "pWidth"    # I
    .param p2, "pHeight"    # I
    .param p3, "pPixelFormat"    # Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;
    .param p4, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;",
            "Lorg/anddev/andengine/opengl/texture/TextureOptions;",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    .local p5, "pTextureAtlasStateListener":Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;, "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<TT;>;"
    invoke-direct {p0, p3, p4, p5}, Lorg/anddev/andengine/opengl/texture/Texture;-><init>(Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mTextureAtlasSources:Ljava/util/ArrayList;

    .line 38
    invoke-static {p1}, Lorg/anddev/andengine/util/MathUtils;->isPowerOfTwo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/anddev/andengine/util/MathUtils;->isPowerOfTwo(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pWidth and pHeight must be a power of 2!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    iput p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mWidth:I

    .line 42
    iput p2, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mHeight:I

    .line 43
    return-void
.end method

.method private checkTextureAtlasSourcePosition(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V
    .locals 3
    .param p2, "pTexturePositionX"    # I
    .param p3, "pTexturePositionY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    .local p1, "pTextureAtlasSource":Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;, "TT;"
    if-gez p2, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal negative pTexturePositionX supplied: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    if-gez p3, :cond_1

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal negative pTexturePositionY supplied: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 107
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Supplied pTextureAtlasSource must not exceed bounds of Texture."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_3
    return-void
.end method


# virtual methods
.method public addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V
    .locals 1
    .param p2, "pTexturePositionX"    # I
    .param p3, "pTexturePositionY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    .local p1, "pTextureAtlasSource":Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;, "TT;"
    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->checkTextureAtlasSourcePosition(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V

    .line 72
    invoke-interface {p1, p2}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->setTexturePositionX(I)V

    .line 73
    invoke-interface {p1, p3}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->setTexturePositionY(I)V

    .line 74
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mTextureAtlasSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mUpdateOnHardwareNeeded:Z

    .line 76
    return-void
.end method

.method public clearTextureAtlasSources()V
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mTextureAtlasSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mUpdateOnHardwareNeeded:Z

    .line 95
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mHeight:I

    return v0
.end method

.method public bridge synthetic getTextureStateListener()Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->getTextureStateListener()Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;

    move-result-object v0

    return-object v0
.end method

.method public getTextureStateListener()Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    invoke-super {p0}, Lorg/anddev/andengine/opengl/texture/Texture;->getTextureStateListener()Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mWidth:I

    return v0
.end method

.method public removeTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V
    .locals 4
    .param p2, "pTexturePositionX"    # I
    .param p3, "pTexturePositionY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    .local p1, "pTextureAtlasSource":Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;, "TT;"
    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mTextureAtlasSources:Ljava/util/ArrayList;

    .line 81
    .local v2, "textureSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 89
    :goto_1
    return-void

    .line 82
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    .line 83
    .local v1, "textureSource":Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;, "TT;"
    if-ne v1, p1, :cond_1

    invoke-interface {v1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getTexturePositionX()I

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-interface {v1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getTexturePositionY()I

    move-result v3

    if-ne v3, p3, :cond_1

    .line 84
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 85
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mUpdateOnHardwareNeeded:Z

    goto :goto_1

    .line 81
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
