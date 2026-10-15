.class public abstract Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
.super Ljava/lang/Object;
.source "BaseTextureRegion.java"


# instance fields
.field protected mHeight:I

.field protected final mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

.field protected mTexturePositionX:I

.field protected mTexturePositionY:I

.field protected final mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V
    .locals 3
    .param p1, "pTexture"    # Lorg/anddev/andengine/opengl/texture/ITexture;
    .param p2, "pTexturePositionX"    # I
    .param p3, "pTexturePositionY"    # I
    .param p4, "pWidth"    # I
    .param p5, "pHeight"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    .line 44
    iput p2, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexturePositionX:I

    .line 45
    iput p3, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexturePositionY:I

    .line 46
    iput p4, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mWidth:I

    .line 47
    iput p5, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mHeight:I

    .line 49
    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    const v1, 0x88e4

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;-><init>(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;IZ)V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    .line 51
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->initTextureBuffer()V

    .line 52
    return-void
.end method


# virtual methods
.method protected abstract deepCopy()Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mHeight:I

    return v0
.end method

.method public getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    return-object v0
.end method

.method public getTextureBuffer()Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    return-object v0
.end method

.method public abstract getTextureCoordinateX1()F
.end method

.method public abstract getTextureCoordinateX2()F
.end method

.method public abstract getTextureCoordinateY1()F
.end method

.method public abstract getTextureCoordinateY2()F
.end method

.method public getTexturePositionX()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexturePositionX:I

    return v0
.end method

.method public getTexturePositionY()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexturePositionY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mWidth:I

    return v0
.end method

.method protected initTextureBuffer()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->updateTextureRegionBuffer()V

    .line 56
    return-void
.end method

.method public isFlippedHorizontal()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->isFlippedHorizontal()Z

    move-result v0

    return v0
.end method

.method public isFlippedVertical()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->isFlippedVertical()Z

    move-result v0

    return v0
.end method

.method public isTextureRegionBufferManaged()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->isManaged()Z

    move-result v0

    return v0
.end method

.method public onApply(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 149
    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v1, p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 151
    sget-boolean v1, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 152
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 154
    .local v0, "gl11":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->selectOnHardware(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 155
    invoke-static {v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->texCoordZeroPointer(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 159
    .end local v0    # "gl11":Ljavax/microedition/khronos/opengles/GL11;
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->getFloatBuffer()Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/anddev/andengine/opengl/util/GLHelper;->texCoordPointer(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/opengl/util/FastFloatBuffer;)V

    goto :goto_0
.end method

.method public setFlippedHorizontal(Z)V
    .locals 1
    .param p1, "pFlippedHorizontal"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->setFlippedHorizontal(Z)V

    .line 110
    return-void
.end method

.method public setFlippedVertical(Z)V
    .locals 1
    .param p1, "pFlippedVertical"    # Z

    .prologue
    .line 117
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->setFlippedVertical(Z)V

    .line 118
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "pHeight"    # I

    .prologue
    .line 78
    iput p1, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mHeight:I

    .line 79
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->updateTextureRegionBuffer()V

    .line 80
    return-void
.end method

.method public setTexturePosition(II)V
    .locals 0
    .param p1, "pTexturePositionX"    # I
    .param p2, "pTexturePositionY"    # I

    .prologue
    .line 83
    iput p1, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexturePositionX:I

    .line 84
    iput p2, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexturePositionY:I

    .line 85
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->updateTextureRegionBuffer()V

    .line 86
    return-void
.end method

.method public setTextureRegionBufferManaged(Z)V
    .locals 1
    .param p1, "pTextureRegionBufferManaged"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->setManaged(Z)V

    .line 129
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "pWidth"    # I

    .prologue
    .line 73
    iput p1, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mWidth:I

    .line 74
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->updateTextureRegionBuffer()V

    .line 75
    return-void
.end method

.method protected updateTextureRegionBuffer()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->update()V

    .line 146
    return-void
.end method
