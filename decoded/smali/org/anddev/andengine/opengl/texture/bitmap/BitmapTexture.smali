.class public abstract Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;
.super Lorg/anddev/andengine/opengl/texture/Texture;
.source "BitmapTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;
    }
.end annotation


# instance fields
.field private final mBitmapTextureFormat:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 2
    .param p1, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;)V
    .locals 2
    .param p1, "pBitmapTextureFormat"    # Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 1
    .param p1, "pBitmapTextureFormat"    # Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;
    .param p2, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V
    .locals 4
    .param p1, "pBitmapTextureFormat"    # Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;
    .param p2, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .param p3, "pTextureStateListener"    # Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->getPixelFormat()Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lorg/anddev/andengine/opengl/texture/Texture;-><init>(Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    .line 60
    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mBitmapTextureFormat:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    .line 62
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 63
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->onGetInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 72
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mWidth:I

    .line 73
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mHeight:I

    .line 75
    iget v2, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mWidth:I

    invoke-static {v2}, Lorg/anddev/andengine/util/MathUtils;->isPowerOfTwo(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mHeight:I

    invoke-static {v2}, Lorg/anddev/andengine/util/MathUtils;->isPowerOfTwo(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "pWidth and pHeight must be a power of 2!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :catchall_0
    move-exception v2

    .line 69
    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 70
    throw v2

    .line 78
    :cond_1
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mWidth:I

    return v0
.end method

.method protected abstract onGetInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected writeTextureToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xde1

    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mBitmapTextureFormat:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 103
    .local v6, "bitmapConfig":Landroid/graphics/Bitmap$Config;
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    iget-boolean v8, v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mPreMultipyAlpha:Z

    .line 105
    .local v8, "preMultipyAlpha":Z
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 106
    .local v7, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    iput-object v6, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 108
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->onGetInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 110
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    .line 111
    invoke-static {v1, v2, v3, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 116
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    return-void

    .line 113
    :cond_0
    iget-object v5, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    move-object v0, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/anddev/andengine/opengl/util/GLHelper;->glTexImage2D(Ljavax/microedition/khronos/opengles/GL10;IILandroid/graphics/Bitmap;ILorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)V

    goto :goto_0
.end method
