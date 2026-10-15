.class public abstract Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;
.super Lorg/anddev/andengine/opengl/texture/Texture;
.source "ETC1Texture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;
    }
.end annotation


# instance fields
.field private mETC1TextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;-><init>(Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V
    .locals 1
    .param p1, "pTextureStateListener"    # Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {p0, v0, p1}, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;-><init>(Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 1
    .param p1, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;-><init>(Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V
    .locals 3
    .param p1, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .param p2, "pTextureStateListener"    # Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGB_565:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-direct {p0, v1, p1, p2}, Lorg/anddev/andengine/opengl/texture/Texture;-><init>(Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 60
    new-instance v1, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lorg/anddev/andengine/util/StreamUtils;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;-><init>([B)V

    iput-object v1, p0, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;->mETC1TextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-static {v0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 64
    return-void

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    invoke-static {v0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 63
    throw v1
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;->mETC1TextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;->getHeight()I

    move-result v0

    return v0
.end method

.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;->mETC1TextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;->getWidth()I

    move-result v0

    return v0
.end method

.method protected writeTextureToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 89
    .local v5, "inputStream":Ljava/io/InputStream;
    const/16 v0, 0xde1

    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;->mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLFormat()I

    move-result v3

    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;->mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLType()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILjava/io/InputStream;)V

    .line 90
    return-void
.end method
