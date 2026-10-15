.class public Lorg/anddev/andengine/opengl/util/GLHelper;
.super Ljava/lang/Object;
.source "GLHelper.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$anddev$andengine$opengl$texture$Texture$PixelFormat:[I = null

.field public static final BYTES_PER_FLOAT:I = 0x4

.field public static final BYTES_PER_PIXEL_RGBA:I = 0x4

.field public static EXTENSIONS_DRAWTEXTURE:Z

.field public static EXTENSIONS_TEXTURE_NON_POWER_OF_TWO:Z

.field public static EXTENSIONS_VERTEXBUFFEROBJECTS:Z

.field private static final HARDWAREBUFFERID_CONTAINER:[I

.field private static final HARDWARETEXTUREID_CONTAINER:[I

.field private static final IS_LITTLE_ENDIAN:Z

.field private static sAlpha:F

.field private static sBlue:F

.field private static sCurrentDestinationBlendMode:I

.field private static sCurrentHardwareBufferID:I

.field private static sCurrentHardwareTextureID:I

.field private static sCurrentMatrix:I

.field private static sCurrentSourceBlendMode:I

.field private static sCurrentTextureFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

.field private static sCurrentVertexFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

.field private static sEnableBlend:Z

.field private static sEnableCulling:Z

.field private static sEnableDepthTest:Z

.field private static sEnableDither:Z

.field private static sEnableLightning:Z

.field private static sEnableMultisample:Z

.field private static sEnableScissorTest:Z

.field private static sEnableTexCoordArray:Z

.field private static sEnableTextures:Z

.field private static sEnableVertexArray:Z

.field private static sGreen:F

.field private static sLineWidth:F

.field private static sRed:F


# direct methods
.method static synthetic $SWITCH_TABLE$org$anddev$andengine$opengl$texture$Texture$PixelFormat()[I
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lorg/anddev/andengine/opengl/util/GLHelper;->$SWITCH_TABLE$org$anddev$andengine$opengl$texture$Texture$PixelFormat:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->values()[Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->AI_88:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->A_8:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->I_8:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGBA_4444:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGBA_5551:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGB_565:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->UNDEFINED:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lorg/anddev/andengine/opengl/util/GLHelper;->$SWITCH_TABLE$org$anddev$andengine$opengl$texture$Texture$PixelFormat:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->IS_LITTLE_ENDIAN:Z

    .line 37
    new-array v0, v1, [I

    sput-object v0, Lorg/anddev/andengine/opengl/util/GLHelper;->HARDWARETEXTUREID_CONTAINER:[I

    .line 38
    new-array v0, v1, [I

    sput-object v0, Lorg/anddev/andengine/opengl/util/GLHelper;->HARDWAREBUFFERID_CONTAINER:[I

    .line 44
    sput v4, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareBufferID:I

    .line 45
    sput v4, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareTextureID:I

    .line 46
    sput v4, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentMatrix:I

    .line 48
    sput v4, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentSourceBlendMode:I

    .line 49
    sput v4, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentDestinationBlendMode:I

    .line 51
    sput-object v6, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentVertexFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    .line 52
    sput-object v6, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentTextureFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    .line 54
    sput-boolean v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDither:Z

    .line 55
    sput-boolean v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableLightning:Z

    .line 56
    sput-boolean v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDepthTest:Z

    .line 57
    sput-boolean v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableMultisample:Z

    .line 59
    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableScissorTest:Z

    .line 60
    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableBlend:Z

    .line 61
    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableCulling:Z

    .line 62
    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTextures:Z

    .line 63
    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTexCoordArray:Z

    .line 64
    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableVertexArray:Z

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sLineWidth:F

    .line 68
    sput v5, Lorg/anddev/andengine/opengl/util/GLHelper;->sRed:F

    .line 69
    sput v5, Lorg/anddev/andengine/opengl/util/GLHelper;->sGreen:F

    .line 70
    sput v5, Lorg/anddev/andengine/opengl/util/GLHelper;->sBlue:F

    .line 71
    sput v5, Lorg/anddev/andengine/opengl/util/GLHelper;->sAlpha:F

    .line 73
    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    .line 74
    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_DRAWTEXTURE:Z

    .line 75
    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_TEXTURE_NON_POWER_OF_TWO:Z

    .line 27
    return-void

    :cond_0
    move v0, v2

    .line 35
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindBuffer(Ljavax/microedition/khronos/opengles/GL11;I)V
    .locals 1
    .param p0, "pGL11"    # Ljavax/microedition/khronos/opengles/GL11;
    .param p1, "pHardwareBufferID"    # I

    .prologue
    .line 294
    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareBufferID:I

    if-eq v0, p1, :cond_0

    .line 295
    sput p1, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareBufferID:I

    .line 296
    const v0, 0x8892

    invoke-interface {p0, v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 298
    :cond_0
    return-void
.end method

.method public static bindTexture(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "pHardwareTextureID"    # I

    .prologue
    .line 312
    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareTextureID:I

    if-eq v0, p1, :cond_0

    .line 313
    sput p1, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareTextureID:I

    .line 314
    const/16 v0, 0xde1

    invoke-interface {p0, v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 316
    :cond_0
    return-void
.end method

.method public static blendFunction(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "pSourceBlendMode"    # I
    .param p2, "pDestinationBlendMode"    # I

    .prologue
    .line 356
    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentSourceBlendMode:I

    if-ne v0, p1, :cond_0

    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentDestinationBlendMode:I

    if-eq v0, p2, :cond_1

    .line 357
    :cond_0
    sput p1, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentSourceBlendMode:I

    .line 358
    sput p2, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentDestinationBlendMode:I

    .line 359
    invoke-interface {p0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 361
    :cond_1
    return-void
.end method

.method public static bufferData(Ljavax/microedition/khronos/opengles/GL11;Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p0, "pGL11"    # Ljavax/microedition/khronos/opengles/GL11;
    .param p1, "pByteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "pUsage"    # I

    .prologue
    .line 405
    const v0, 0x8892

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-interface {p0, v0, v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 406
    return-void
.end method

.method public static checkGLError(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/opengl/GLException;
        }
    .end annotation

    .prologue
    .line 562
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 563
    .local v0, "err":I
    if-eqz v0, :cond_0

    .line 564
    new-instance v1, Landroid/opengl/GLException;

    invoke-direct {v1, v0}, Landroid/opengl/GLException;-><init>(I)V

    throw v1

    .line 566
    :cond_0
    return-void
.end method

.method private static convertARGB_8888toARGB_4444([I)[B
    .locals 10
    .param p0, "pPixelsARGB_8888"    # [I

    .prologue
    .line 502
    array-length v9, p0

    mul-int/lit8 v9, v9, 0x2

    new-array v7, v9, [B

    .line 503
    .local v7, "pixelsARGB_4444":[B
    sget-boolean v9, Lorg/anddev/andengine/opengl/util/GLHelper;->IS_LITTLE_ENDIAN:Z

    if-eqz v9, :cond_1

    .line 504
    array-length v9, p0

    add-int/lit8 v3, v9, -0x1

    .local v3, "i":I
    array-length v9, v7

    add-int/lit8 v4, v9, -0x1

    .local v4, "j":I
    move v5, v4

    .end local v4    # "j":I
    .local v5, "j":I
    :goto_0
    if-gez v3, :cond_0

    move v4, v5

    .line 534
    .end local v5    # "j":I
    .restart local v4    # "j":I
    :goto_1
    return-object v7

    .line 505
    .end local v4    # "j":I
    .restart local v5    # "j":I
    :cond_0
    aget v6, p0, v3

    .line 507
    .local v6, "pixel":I
    shr-int/lit8 v9, v6, 0x1c

    and-int/lit8 v0, v9, 0xf

    .line 508
    .local v0, "alpha":I
    shr-int/lit8 v9, v6, 0x10

    and-int/lit16 v8, v9, 0xf0

    .line 509
    .local v8, "red":I
    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v2, v9, 0xf0

    .line 510
    .local v2, "green":I
    and-int/lit8 v1, v6, 0xf

    .line 515
    .local v1, "blue":I
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "j":I
    .restart local v4    # "j":I
    or-int v9, v0, v8

    int-to-byte v9, v9

    aput-byte v9, v7, v5

    .line 516
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "j":I
    .restart local v5    # "j":I
    or-int v9, v2, v1

    int-to-byte v9, v9

    aput-byte v9, v7, v4

    .line 504
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 519
    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v2    # "green":I
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v6    # "pixel":I
    .end local v8    # "red":I
    :cond_1
    array-length v9, p0

    add-int/lit8 v3, v9, -0x1

    .restart local v3    # "i":I
    array-length v9, v7

    add-int/lit8 v4, v9, -0x1

    .restart local v4    # "j":I
    move v5, v4

    .end local v4    # "j":I
    .restart local v5    # "j":I
    :goto_2
    if-gez v3, :cond_2

    move v4, v5

    .end local v5    # "j":I
    .restart local v4    # "j":I
    goto :goto_1

    .line 520
    .end local v4    # "j":I
    .restart local v5    # "j":I
    :cond_2
    aget v6, p0, v3

    .line 522
    .restart local v6    # "pixel":I
    shr-int/lit8 v9, v6, 0x1c

    and-int/lit8 v0, v9, 0xf

    .line 523
    .restart local v0    # "alpha":I
    shr-int/lit8 v9, v6, 0x10

    and-int/lit16 v8, v9, 0xf0

    .line 524
    .restart local v8    # "red":I
    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v2, v9, 0xf0

    .line 525
    .restart local v2    # "green":I
    and-int/lit8 v1, v6, 0xf

    .line 530
    .restart local v1    # "blue":I
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "j":I
    .restart local v4    # "j":I
    or-int v9, v2, v1

    int-to-byte v9, v9

    aput-byte v9, v7, v5

    .line 531
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "j":I
    .restart local v5    # "j":I
    or-int v9, v0, v8

    int-to-byte v9, v9

    aput-byte v9, v7, v4

    .line 519
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method private static convertARGB_8888toA_8([I)[B
    .locals 3
    .param p0, "pPixelsARGB_8888"    # [I

    .prologue
    .line 538
    array-length v2, p0

    new-array v1, v2, [B

    .line 539
    .local v1, "pixelsA_8":[B
    sget-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->IS_LITTLE_ENDIAN:Z

    if-eqz v2, :cond_2

    .line 540
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 548
    :cond_0
    return-object v1

    .line 541
    :cond_1
    aget v2, p0, v0

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 540
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 544
    .end local v0    # "i":I
    :cond_2
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 545
    aget v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 544
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private static convertARGB_8888toRGBA_8888([I)[I
    .locals 4
    .param p0, "pPixelsARGB_8888"    # [I

    .prologue
    .line 451
    sget-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->IS_LITTLE_ENDIAN:Z

    if-eqz v2, :cond_2

    .line 452
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 464
    :cond_0
    return-object p0

    .line 453
    :cond_1
    aget v1, p0, v0

    .line 455
    .local v1, "pixel":I
    const v2, -0xff0100

    and-int/2addr v2, v1

    and-int/lit16 v3, v1, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/high16 v3, 0xff0000

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    aput v2, p0, v0

    .line 452
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 458
    .end local v0    # "i":I
    .end local v1    # "pixel":I
    :cond_2
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 459
    aget v1, p0, v0

    .line 461
    .restart local v1    # "pixel":I
    const v2, 0xffffff

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x8

    const/high16 v3, -0x1000000

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, p0, v0

    .line 458
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private static convertARGB_8888toRGB_565([I)[B
    .locals 10
    .param p0, "pPixelsARGB_8888"    # [I

    .prologue
    .line 468
    array-length v8, p0

    mul-int/lit8 v8, v8, 0x2

    new-array v6, v8, [B

    .line 469
    .local v6, "pixelsRGB_565":[B
    sget-boolean v8, Lorg/anddev/andengine/opengl/util/GLHelper;->IS_LITTLE_ENDIAN:Z

    if-eqz v8, :cond_1

    .line 470
    array-length v8, p0

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    array-length v8, v6

    add-int/lit8 v3, v8, -0x1

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_0
    if-gez v2, :cond_0

    move v3, v4

    .line 498
    .end local v4    # "j":I
    .restart local v3    # "j":I
    :goto_1
    return-object v6

    .line 471
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_0
    aget v5, p0, v2

    .line 473
    .local v5, "pixel":I
    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v7, v8, 0xff

    .line 474
    .local v7, "red":I
    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v1, v8, 0xff

    .line 475
    .local v1, "green":I
    and-int/lit16 v0, v5, 0xff

    .line 480
    .local v0, "blue":I
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    and-int/lit16 v8, v7, 0xf8

    shr-int/lit8 v9, v1, 0x5

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v4

    .line 481
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    shl-int/lit8 v8, v1, 0x3

    and-int/lit16 v8, v8, 0xe0

    shr-int/lit8 v9, v0, 0x3

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v3

    .line 470
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 484
    .end local v0    # "blue":I
    .end local v1    # "green":I
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v5    # "pixel":I
    .end local v7    # "red":I
    :cond_1
    array-length v8, p0

    add-int/lit8 v2, v8, -0x1

    .restart local v2    # "i":I
    array-length v8, v6

    add-int/lit8 v3, v8, -0x1

    .restart local v3    # "j":I
    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    :goto_2
    if-gez v2, :cond_2

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_1

    .line 485
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_2
    aget v5, p0, v2

    .line 487
    .restart local v5    # "pixel":I
    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v7, v8, 0xff

    .line 488
    .restart local v7    # "red":I
    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v1, v8, 0xff

    .line 489
    .restart local v1    # "green":I
    and-int/lit16 v0, v5, 0xff

    .line 494
    .restart local v0    # "blue":I
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    shl-int/lit8 v8, v1, 0x3

    and-int/lit16 v8, v8, 0xe0

    shr-int/lit8 v9, v0, 0x3

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v4

    .line 495
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    and-int/lit16 v8, v7, 0xf8

    shr-int/lit8 v9, v1, 0x5

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v3

    .line 484
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method public static deleteBuffer(Ljavax/microedition/khronos/opengles/GL11;I)V
    .locals 3
    .param p0, "pGL11"    # Ljavax/microedition/khronos/opengles/GL11;
    .param p1, "pHardwareBufferID"    # I

    .prologue
    const/4 v2, 0x0

    .line 301
    sget-object v0, Lorg/anddev/andengine/opengl/util/GLHelper;->HARDWAREBUFFERID_CONTAINER:[I

    aput p1, v0, v2

    .line 302
    const/4 v0, 0x1

    sget-object v1, Lorg/anddev/andengine/opengl/util/GLHelper;->HARDWAREBUFFERID_CONTAINER:[I

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 303
    return-void
.end method

.method public static deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 3
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "pHardwareTextureID"    # I

    .prologue
    const/4 v2, 0x0

    .line 329
    sget-object v0, Lorg/anddev/andengine/opengl/util/GLHelper;->HARDWARETEXTUREID_CONTAINER:[I

    aput p1, v0, v2

    .line 330
    const/4 v0, 0x1

    sget-object v1, Lorg/anddev/andengine/opengl/util/GLHelper;->HARDWARETEXTUREID_CONTAINER:[I

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 331
    return-void
.end method

.method public static disableBlend(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 208
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableBlend:Z

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableBlend:Z

    .line 210
    const/16 v0, 0xbe2

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 212
    :cond_0
    return-void
.end method

.method public static disableCulling(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 221
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableCulling:Z

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableCulling:Z

    .line 223
    const/16 v0, 0xb44

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 225
    :cond_0
    return-void
.end method

.method public static disableDepthTest(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 273
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDepthTest:Z

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDepthTest:Z

    .line 275
    const/16 v0, 0xb71

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 277
    :cond_0
    return-void
.end method

.method public static disableDither(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 260
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDither:Z

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDither:Z

    .line 262
    const/16 v0, 0xbd0

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 264
    :cond_0
    return-void
.end method

.method public static disableLightning(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 247
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableLightning:Z

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableLightning:Z

    .line 249
    const/16 v0, 0xb50

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 251
    :cond_0
    return-void
.end method

.method public static disableMultisample(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 286
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableMultisample:Z

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableMultisample:Z

    .line 288
    const v0, 0x809d

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 290
    :cond_0
    return-void
.end method

.method public static disableScissorTest(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 195
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableScissorTest:Z

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableScissorTest:Z

    .line 197
    const/16 v0, 0xc11

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 199
    :cond_0
    return-void
.end method

.method public static disableTexCoordArray(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 182
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTexCoordArray:Z

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTexCoordArray:Z

    .line 184
    const v0, 0x8078

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 186
    :cond_0
    return-void
.end method

.method public static disableTextures(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 234
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTextures:Z

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTextures:Z

    .line 236
    const/16 v0, 0xde1

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 238
    :cond_0
    return-void
.end method

.method public static disableVertexArray(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 169
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableVertexArray:Z

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableVertexArray:Z

    .line 171
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 173
    :cond_0
    return-void
.end method

.method public static enableBlend(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 202
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableBlend:Z

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableBlend:Z

    .line 204
    const/16 v0, 0xbe2

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public static enableCulling(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 215
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableCulling:Z

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableCulling:Z

    .line 217
    const/16 v0, 0xb44

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 219
    :cond_0
    return-void
.end method

.method public static enableDepthTest(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 267
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDepthTest:Z

    if-nez v0, :cond_0

    .line 268
    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDepthTest:Z

    .line 269
    const/16 v0, 0xb71

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 271
    :cond_0
    return-void
.end method

.method public static enableDither(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 254
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDither:Z

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDither:Z

    .line 256
    const/16 v0, 0xbd0

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 258
    :cond_0
    return-void
.end method

.method public static enableExtensions(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/options/RenderOptions;)V
    .locals 13
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "pRenderOptions"    # Lorg/anddev/andengine/engine/options/RenderOptions;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 116
    const/16 v9, 0x1f02

    invoke-interface {p0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, "version":Ljava/lang/String;
    const/16 v9, 0x1f01

    invoke-interface {p0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "renderer":Ljava/lang/String;
    const/16 v9, 0x1f03

    invoke-interface {p0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "extensions":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "RENDERER: "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    .line 121
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "VERSION: "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    .line 122
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "EXTENSIONS: "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    .line 124
    const-string v9, "1.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 125
    .local v2, "isOpenGL10":Z
    const-string v9, "2."

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 126
    .local v3, "isOpenGL2X":Z
    const-string v9, "PixelFlinger"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 127
    .local v4, "isSoftwareRenderer":Z
    const-string v9, "_vertex_buffer_object"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 128
    .local v6, "isVBOCapable":Z
    const-string v9, "draw_texture"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 129
    .local v1, "isDrawTextureCapable":Z
    const-string v9, "texture_npot"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 131
    .local v5, "isTextureNonPowerOfTwoCapable":Z
    invoke-virtual {p1}, Lorg/anddev/andengine/engine/options/RenderOptions;->isDisableExtensionVertexBufferObjects()Z

    move-result v9

    if-nez v9, :cond_2

    if-nez v4, :cond_2

    if-nez v6, :cond_0

    if-nez v2, :cond_2

    :cond_0
    move v9, v10

    :goto_0
    sput-boolean v9, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    .line 132
    invoke-virtual {p1}, Lorg/anddev/andengine/engine/options/RenderOptions;->isDisableExtensionVertexBufferObjects()Z

    move-result v9

    if-nez v9, :cond_3

    if-nez v1, :cond_1

    if-nez v2, :cond_3

    :cond_1
    move v9, v10

    :goto_1
    sput-boolean v9, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_DRAWTEXTURE:Z

    .line 133
    if-nez v5, :cond_4

    if-nez v3, :cond_4

    :goto_2
    sput-boolean v11, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_TEXTURE_NON_POWER_OF_TWO:Z

    .line 135
    invoke-static {}, Lorg/anddev/andengine/opengl/util/GLHelper;->hackBrokenDevices()V

    .line 136
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "EXTENSIONS_VERXTEXBUFFEROBJECTS = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v10, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    .line 137
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "EXTENSIONS_DRAWTEXTURE = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v10, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_DRAWTEXTURE:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    .line 138
    return-void

    :cond_2
    move v9, v11

    .line 131
    goto :goto_0

    :cond_3
    move v9, v11

    .line 132
    goto :goto_1

    :cond_4
    move v11, v10

    .line 133
    goto :goto_2
.end method

.method public static enableLightning(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 241
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableLightning:Z

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableLightning:Z

    .line 243
    const/16 v0, 0xb50

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 245
    :cond_0
    return-void
.end method

.method public static enableMultisample(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 280
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableMultisample:Z

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableMultisample:Z

    .line 282
    const v0, 0x809d

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 284
    :cond_0
    return-void
.end method

.method public static enableScissorTest(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 189
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableScissorTest:Z

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableScissorTest:Z

    .line 191
    const/16 v0, 0xc11

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 193
    :cond_0
    return-void
.end method

.method public static enableTexCoordArray(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 176
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTexCoordArray:Z

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTexCoordArray:Z

    .line 178
    const v0, 0x8078

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 180
    :cond_0
    return-void
.end method

.method public static enableTextures(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 228
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTextures:Z

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTextures:Z

    .line 230
    const/16 v0, 0xde1

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 232
    :cond_0
    return-void
.end method

.method public static enableVertexArray(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 163
    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableVertexArray:Z

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableVertexArray:Z

    .line 165
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 167
    :cond_0
    return-void
.end method

.method public static forceBindTexture(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "pHardwareTextureID"    # I

    .prologue
    .line 324
    sput p1, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareTextureID:I

    .line 325
    const/16 v0, 0xde1

    invoke-interface {p0, v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 326
    return-void
.end method

.method private static getPixels(Landroid/graphics/Bitmap;Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)Ljava/nio/Buffer;
    .locals 4
    .param p0, "pBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "pPixelFormat"    # Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    .prologue
    .line 434
    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->getPixelsARGB_8888(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    .line 436
    .local v0, "pixelsARGB_8888":[I
    invoke-static {}, Lorg/anddev/andengine/opengl/util/GLHelper;->$SWITCH_TABLE$org$anddev$andengine$opengl$texture$Texture$PixelFormat()[I

    move-result-object v1

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 446
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 438
    :pswitch_1
    invoke-static {v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->convertARGB_8888toRGB_565([I)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 444
    :goto_0
    return-object v1

    .line 440
    :pswitch_2
    invoke-static {v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->convertARGB_8888toRGBA_8888([I)[I

    move-result-object v1

    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    goto :goto_0

    .line 442
    :pswitch_3
    invoke-static {v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->convertARGB_8888toARGB_4444([I)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 444
    :pswitch_4
    invoke-static {v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->convertARGB_8888toA_8([I)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public static getPixelsARGB_8888(Landroid/graphics/Bitmap;)[I
    .locals 8
    .param p0, "pBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 552
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 553
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 555
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixelsARGB_8888":[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 556
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 558
    return-object v1
.end method

.method public static glTexImage2D(Ljavax/microedition/khronos/opengles/GL10;IILandroid/graphics/Bitmap;ILorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)V
    .locals 10
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "pTarget"    # I
    .param p2, "pLevel"    # I
    .param p3, "pBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "pBorder"    # I
    .param p5, "pPixelFormat"    # Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    .prologue
    .line 416
    invoke-static {p3, p5}, Lorg/anddev/andengine/opengl/util/GLHelper;->getPixels(Landroid/graphics/Bitmap;Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)Ljava/nio/Buffer;

    move-result-object v9

    .line 418
    .local v9, "pixelBuffer":Ljava/nio/Buffer;
    invoke-virtual {p5}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLFormat()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p5}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLFormat()I

    move-result v7

    invoke-virtual {p5}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLType()I

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p4

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 419
    return-void
.end method

.method public static glTexSubImage2D(Ljavax/microedition/khronos/opengles/GL10;IIIILandroid/graphics/Bitmap;Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)V
    .locals 10
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "pTarget"    # I
    .param p2, "pLevel"    # I
    .param p3, "pXOffset"    # I
    .param p4, "pYOffset"    # I
    .param p5, "pBitmap"    # Landroid/graphics/Bitmap;
    .param p6, "pPixelFormat"    # Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    .prologue
    .line 428
    invoke-static/range {p5 .. p6}, Lorg/anddev/andengine/opengl/util/GLHelper;->getPixels(Landroid/graphics/Bitmap;Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)Ljava/nio/Buffer;

    move-result-object v9

    .line 430
    .local v9, "pixelBuffer":Ljava/nio/Buffer;
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual/range {p6 .. p6}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLFormat()I

    move-result v7

    invoke-virtual/range {p6 .. p6}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLType()I

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 431
    return-void
.end method

.method private static hackBrokenDevices()V
    .locals 2

    .prologue
    .line 141
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "morrison"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    .line 150
    :cond_0
    return-void
.end method

.method public static lineWidth(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "pLineWidth"    # F

    .prologue
    .line 364
    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sLineWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 365
    sput p1, Lorg/anddev/andengine/opengl/util/GLHelper;->sLineWidth:F

    .line 366
    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 368
    :cond_0
    return-void
.end method

.method public static reset(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, -0x1

    .line 82
    sput v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareBufferID:I

    .line 83
    sput v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareTextureID:I

    .line 84
    sput v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentMatrix:I

    .line 86
    sput v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentSourceBlendMode:I

    .line 87
    sput v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentDestinationBlendMode:I

    .line 89
    sput-object v3, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentVertexFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    .line 90
    sput-object v3, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentTextureFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    .line 92
    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableDither(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 93
    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableLightning(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 94
    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableDepthTest(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 95
    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableMultisample(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 97
    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableBlend(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 98
    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableCulling(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 99
    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 100
    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableTexCoordArray(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 101
    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableVertexArray(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 103
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sLineWidth:F

    .line 105
    sput v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sRed:F

    .line 106
    sput v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sGreen:F

    .line 107
    sput v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sBlue:F

    .line 108
    sput v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sAlpha:F

    .line 110
    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    .line 111
    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_DRAWTEXTURE:Z

    .line 112
    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_TEXTURE_NON_POWER_OF_TWO:Z

    .line 113
    return-void
.end method

.method public static setColor(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "pRed"    # F
    .param p2, "pGreen"    # F
    .param p3, "pBlue"    # F
    .param p4, "pAlpha"    # F

    .prologue
    .line 153
    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sAlpha:F

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sRed:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sGreen:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sBlue:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    sput p4, Lorg/anddev/andengine/opengl/util/GLHelper;->sAlpha:F

    .line 155
    sput p1, Lorg/anddev/andengine/opengl/util/GLHelper;->sRed:F

    .line 156
    sput p2, Lorg/anddev/andengine/opengl/util/GLHelper;->sGreen:F

    .line 157
    sput p3, Lorg/anddev/andengine/opengl/util/GLHelper;->sBlue:F

    .line 158
    invoke-interface {p0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 160
    :cond_1
    return-void
.end method

.method public static setModelViewIdentityMatrix(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 392
    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->switchToModelViewMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 393
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 394
    return-void
.end method

.method public static setPerspectiveCorrectionHintFastest(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 401
    const/16 v0, 0xc50

    const/16 v1, 0x1101

    invoke-interface {p0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 402
    return-void
.end method

.method public static setProjectionIdentityMatrix(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 387
    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->switchToProjectionMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 388
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 389
    return-void
.end method

.method public static setShadeModelFlat(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 397
    const/16 v0, 0x1d00

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 398
    return-void
.end method

.method public static switchToModelViewMatrix(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v1, 0x1700

    .line 372
    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentMatrix:I

    if-eq v0, v1, :cond_0

    .line 373
    sput v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentMatrix:I

    .line 374
    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 376
    :cond_0
    return-void
.end method

.method public static switchToProjectionMatrix(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v1, 0x1701

    .line 380
    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentMatrix:I

    if-eq v0, v1, :cond_0

    .line 381
    sput v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentMatrix:I

    .line 382
    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 384
    :cond_0
    return-void
.end method

.method public static texCoordPointer(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/opengl/util/FastFloatBuffer;)V
    .locals 4
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "pTextureFloatBuffer"    # Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    .prologue
    .line 334
    sget-object v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentTextureFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    if-eq v0, p1, :cond_0

    .line 335
    sput-object p1, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentTextureFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    .line 336
    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p1, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p0, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 338
    :cond_0
    return-void
.end method

.method public static texCoordZeroPointer(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3
    .param p0, "pGL11"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    const/4 v2, 0x0

    .line 341
    const/4 v0, 0x2

    const/16 v1, 0x1406

    invoke-interface {p0, v0, v1, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 342
    return-void
.end method

.method public static vertexPointer(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/opengl/util/FastFloatBuffer;)V
    .locals 4
    .param p0, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "pVertexFloatBuffer"    # Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    .prologue
    .line 345
    sget-object v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentVertexFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    if-eq v0, p1, :cond_0

    .line 346
    sput-object p1, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentVertexFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    .line 347
    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p1, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p0, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 349
    :cond_0
    return-void
.end method

.method public static vertexZeroPointer(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3
    .param p0, "pGL11"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    const/4 v2, 0x0

    .line 352
    const/4 v0, 0x2

    const/16 v1, 0x1406

    invoke-interface {p0, v0, v1, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 353
    return-void
.end method
