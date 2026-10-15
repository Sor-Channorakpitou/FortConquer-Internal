.class public abstract Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;
.super Lorg/anddev/andengine/opengl/texture/Texture;
.source "PVRTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;,
        Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;
    }
.end annotation


# static fields
.field public static final FLAG_ALPHA:I = 0x8000

.field public static final FLAG_BUMPMAP:I = 0x400

.field public static final FLAG_CUBEMAP:I = 0x1000

.field public static final FLAG_FALSEMIPCOL:I = 0x2000

.field public static final FLAG_MIPMAP:I = 0x100

.field public static final FLAG_TILING:I = 0x800

.field public static final FLAG_TWIDDLE:I = 0x200

.field public static final FLAG_VERTICALFLIP:I = 0x10000

.field public static final FLAG_VOLUME:I = 0x4000


# instance fields
.field private final mPVRTextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;)V
    .locals 2
    .param p1, "pPVRTextureFormat"    # Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V
    .locals 1
    .param p1, "pPVRTextureFormat"    # Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;
    .param p2, "pTextureStateListener"    # Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {p0, p1, v0, p2}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 1
    .param p1, "pPVRTextureFormat"    # Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;
    .param p2, "pTextureOptions"    # Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V
    .locals 4
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
    .line 67
    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->getPixelFormat()Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lorg/anddev/andengine/opengl/texture/Texture;-><init>(Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 72
    new-instance v1, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    const/16 v2, 0x34

    invoke-static {v0, v2}, Lorg/anddev/andengine/util/StreamUtils;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;-><init>([B)V

    iput-object v1, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-static {v0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 77
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->getWidth()I

    move-result v1

    invoke-static {v1}, Lorg/anddev/andengine/util/MathUtils;->isPowerOfTwo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->getHeight()I

    move-result v1

    invoke-static {v1}, Lorg/anddev/andengine/util/MathUtils;->isPowerOfTwo(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mWidth and mHeight must be a power of 2!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :catchall_0
    move-exception v1

    .line 74
    invoke-static {v0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 75
    throw v1

    .line 81
    :cond_1
    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getPVRTextureFormat()Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->getPixelFormat()Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    move-result-object v1

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->getPixelFormat()Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Other PVRTextureFormat: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    invoke-virtual {v3}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getPVRTextureFormat()Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->getPixelFormat()Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' found than expected: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->getPixelFormat()Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_2
    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getPVRTextureFormat()Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->isCompressed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid PVRTextureFormat: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    invoke-virtual {v3}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getPVRTextureFormat()Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->mUpdateOnHardwareNeeded:Z

    .line 90
    return-void
.end method


# virtual methods
.method protected generateHardwareTextureID(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 124
    const/16 v0, 0xcf5

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    .line 127
    invoke-super {p0, p1}, Lorg/anddev/andengine/opengl/texture/Texture;->generateHardwareTextureID(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 128
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getHeight()I

    move-result v0

    return v0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->onGetInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getPVRDataBuffer()Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 176
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Lorg/anddev/andengine/util/ByteBufferOutputStream;

    const/16 v2, 0x400

    const/high16 v3, 0x80000

    invoke-direct {v1, v2, v3}, Lorg/anddev/andengine/util/ByteBufferOutputStream;-><init>(II)V

    .line 177
    .local v1, "os":Lorg/anddev/andengine/util/ByteBufferOutputStream;
    invoke-static {v0, v1}, Lorg/anddev/andengine/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 178
    invoke-virtual {v1}, Lorg/anddev/andengine/util/ByteBufferOutputStream;->toByteBuffer()Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 180
    invoke-static {v0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 178
    return-object v2

    .line 179
    .end local v1    # "os":Lorg/anddev/andengine/util/ByteBufferOutputStream;
    :catchall_0
    move-exception v2

    .line 180
    invoke-static {v0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 181
    throw v2
.end method

.method public getPVRTextureHeader()Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getWidth()I

    move-result v0

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
    .locals 15
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->getPVRDataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 134
    .local v14, "pvrDataBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->getWidth()I

    move-result v4

    .line 135
    .local v4, "width":I
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->getHeight()I

    move-result v5

    .line 137
    .local v5, "height":I
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getDataLength()I

    move-result v13

    .line 138
    .local v13, "dataLength":I
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLFormat()I

    move-result v3

    .line 139
    .local v3, "glFormat":I
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLType()I

    move-result v8

    .line 141
    .local v8, "glType":I
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getBitsPerPixel()I

    move-result v0

    div-int/lit8 v10, v0, 0x8

    .line 144
    .local v10, "bytesPerPixel":I
    const/4 v2, 0x0

    .line 145
    .local v2, "mipmapLevel":I
    const/4 v11, 0x0

    .line 146
    .local v11, "currentPixelDataOffset":I
    :goto_0
    if-lt v11, v13, :cond_0

    .line 167
    return-void

    .line 147
    :cond_0
    mul-int v0, v4, v5

    mul-int v12, v0, v10

    .line 149
    .local v12, "currentPixelDataSize":I
    if-lez v2, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v4}, Lorg/anddev/andengine/util/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 150
    :cond_1
    const-string v0, "Mipmap level \'%u\' is not squared. Width: \'%u\', height: \'%u\'. Texture won\'t render correctly."

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->w(Ljava/lang/String;)V

    .line 153
    :cond_2
    add-int/lit8 v0, v11, 0x34

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    add-int/lit8 v0, v11, 0x34

    add-int/2addr v0, v12

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 155
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 157
    .local v9, "pixelBuffer":Ljava/nio/ByteBuffer;
    const/16 v1, 0xde1

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v7, v3

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 159
    add-int/2addr v11, v12

    .line 162
    shr-int/lit8 v0, v4, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 163
    shr-int/lit8 v0, v5, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
