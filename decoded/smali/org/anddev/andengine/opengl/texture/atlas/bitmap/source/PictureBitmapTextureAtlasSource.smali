.class public abstract Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;
.super Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;
.source "PictureBitmapTextureAtlasSource.java"

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;


# instance fields
.field protected final mHeight:I

.field protected final mPicture:Landroid/graphics/Picture;

.field protected final mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Picture;)V
    .locals 1
    .param p1, "pPicture"    # Landroid/graphics/Picture;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;-><init>(Landroid/graphics/Picture;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Picture;II)V
    .locals 6
    .param p1, "pPicture"    # Landroid/graphics/Picture;
    .param p2, "pTexturePositionX"    # I
    .param p3, "pTexturePositionY"    # I

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;-><init>(Landroid/graphics/Picture;IIII)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Picture;IIF)V
    .locals 6
    .param p1, "pPicture"    # Landroid/graphics/Picture;
    .param p2, "pTexturePositionX"    # I
    .param p3, "pTexturePositionY"    # I
    .param p4, "pScale"    # F

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;-><init>(Landroid/graphics/Picture;IIII)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Picture;IIII)V
    .locals 0
    .param p1, "pPicture"    # Landroid/graphics/Picture;
    .param p2, "pTexturePositionX"    # I
    .param p3, "pTexturePositionY"    # I
    .param p4, "pWidth"    # I
    .param p5, "pHeight"    # I

    .prologue
    .line 48
    invoke-direct {p0, p2, p3}, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;-><init>(II)V

    .line 49
    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mPicture:Landroid/graphics/Picture;

    .line 50
    iput p4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mWidth:I

    .line 51
    iput p5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mHeight:I

    .line 52
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public abstract deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mWidth:I

    return v0
.end method

.method public onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "pBitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v7, 0x0

    .line 77
    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mPicture:Landroid/graphics/Picture;

    .line 78
    .local v2, "picture":Landroid/graphics/Picture;
    if-nez v2, :cond_0

    .line 79
    const-string v5, "Failed loading Bitmap in PictureBitmapTextureAtlasSource."

    invoke-static {v5}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 83
    :cond_0
    iget v5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mWidth:I

    iget v6, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mHeight:I

    invoke-static {v5, v6, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mWidth:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v6}, Landroid/graphics/Picture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 87
    .local v3, "scaleX":F
    iget v5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mHeight:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v6}, Landroid/graphics/Picture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 88
    .local v4, "scaleY":F
    invoke-virtual {v1, v3, v4, v7, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 90
    invoke-virtual {v2, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
