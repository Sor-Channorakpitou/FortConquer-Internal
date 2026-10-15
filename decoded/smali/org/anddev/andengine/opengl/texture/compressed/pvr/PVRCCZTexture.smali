.class public abstract Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;
.super Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;
.source "PVRCCZTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;,
        Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;
    }
.end annotation


# instance fields
.field private mCCZHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;)V
    .locals 0
    .param p1, "pPVRTextureFormat"    # Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V
    .locals 0
    .param p1, "pPVRTextureFormat"    # Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;
    .param p2, "pTextureStateListener"    # Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 0
    .param p1, "pPVRTextureFormat"    # Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;
    .param p2, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V
    .locals 0
    .param p1, "pPVRTextureFormat"    # Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;
    .param p2, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .param p3, "pTextureStateListener"    # Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected final getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;->onGetInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 65
    .local v0, "inputStream":Ljava/io/InputStream;
    new-instance v1, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lorg/anddev/andengine/util/StreamUtils;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;-><init>([B)V

    iput-object v1, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;->mCCZHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;

    .line 67
    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;->mCCZHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->getCCZCompressionFormat()Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->wrap(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method protected getPVRDataBuffer()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 74
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;->mCCZHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->getUncompressedSize()I

    move-result v2

    new-array v0, v2, [B

    .line 75
    .local v0, "data":[B
    invoke-static {v1, v0}, Lorg/anddev/andengine/util/StreamUtils;->copy(Ljava/io/InputStream;[B)V

    .line 76
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 78
    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 76
    return-object v2

    .line 77
    .end local v0    # "data":[B
    :catchall_0
    move-exception v2

    .line 78
    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 79
    throw v2
.end method
