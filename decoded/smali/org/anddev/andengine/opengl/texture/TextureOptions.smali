.class public Lorg/anddev/andengine/opengl/texture/TextureOptions;
.super Ljava/lang/Object;
.source "TextureOptions.java"


# static fields
.field public static final BILINEAR:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field public static final BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field public static final DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field public static final NEAREST:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field public static final NEAREST_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field public static final REPEATING_BILINEAR:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field public static final REPEATING_BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field public static final REPEATING_NEAREST:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field public static final REPEATING_NEAREST_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;


# instance fields
.field public final mMagFilter:I

.field public final mMinFilter:I

.field public final mPreMultipyAlpha:Z

.field public final mWrapS:F

.field public final mWrapT:F


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const v3, 0x812f

    const/16 v14, 0x2901

    const/16 v7, 0x2601

    const/16 v1, 0x2600

    .line 17
    new-instance v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->NEAREST:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 18
    new-instance v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move v8, v7

    move v9, v3

    move v10, v3

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/anddev/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 19
    new-instance v8, Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move v9, v1

    move v10, v1

    move v11, v14

    move v12, v14

    move v13, v5

    invoke-direct/range {v8 .. v13}, Lorg/anddev/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v8, Lorg/anddev/andengine/opengl/texture/TextureOptions;->REPEATING_NEAREST:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 20
    new-instance v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move v8, v7

    move v9, v14

    move v10, v14

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/anddev/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;->REPEATING_BILINEAR:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 22
    new-instance v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;

    const/4 v5, 0x1

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->NEAREST_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 23
    new-instance v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;

    const/4 v11, 0x1

    move v8, v7

    move v9, v3

    move v10, v3

    invoke-direct/range {v6 .. v11}, Lorg/anddev/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 24
    new-instance v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;

    const/4 v5, 0x1

    move v2, v1

    move v3, v14

    move v4, v14

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->REPEATING_NEAREST_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 25
    new-instance v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;

    const/4 v11, 0x1

    move v8, v7

    move v9, v14

    move v10, v14

    invoke-direct/range {v6 .. v11}, Lorg/anddev/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;->REPEATING_BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 27
    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->NEAREST_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    sput-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    .line 12
    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 1
    .param p1, "pMinFilter"    # I
    .param p2, "pMagFilter"    # I
    .param p3, "pWrapT"    # I
    .param p4, "pWrapS"    # I
    .param p5, "pPreMultiplyAlpha"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mMinFilter:I

    .line 45
    iput p2, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mMagFilter:I

    .line 46
    int-to-float v0, p3

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mWrapT:F

    .line 47
    int-to-float v0, p4

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mWrapS:F

    .line 48
    iput-boolean p5, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mPreMultipyAlpha:Z

    .line 49
    return-void
.end method


# virtual methods
.method public apply(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v2, 0xde1

    .line 64
    const/16 v0, 0x2801

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mMinFilter:I

    int-to-float v1, v1

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 65
    const/16 v0, 0x2800

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mMagFilter:I

    int-to-float v1, v1

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 66
    const/16 v0, 0x2802

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mWrapS:F

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 67
    const/16 v0, 0x2803

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mWrapT:F

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 68
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x46040000    # 8448.0f

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 69
    return-void
.end method
