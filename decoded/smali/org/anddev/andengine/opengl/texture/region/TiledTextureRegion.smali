.class public Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
.super Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
.source "TiledTextureRegion.java"


# instance fields
.field private mCurrentTileColumn:I

.field private mCurrentTileRow:I

.field private final mTileColumns:I

.field private final mTileCount:I

.field private final mTileRows:I


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIIIII)V
    .locals 3
    .param p1, "pTexture"    # Lorg/anddev/andengine/opengl/texture/ITexture;
    .param p2, "pTexturePositionX"    # I
    .param p3, "pTexturePositionY"    # I
    .param p4, "pWidth"    # I
    .param p5, "pHeight"    # I
    .param p6, "pTileColumns"    # I
    .param p7, "pTileRows"    # I

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct/range {p0 .. p5}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    .line 33
    iput p6, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTileColumns:I

    .line 34
    iput p7, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTileRows:I

    .line 35
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTileColumns:I

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTileRows:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTileCount:I

    .line 36
    iput v2, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileColumn:I

    .line 37
    iput v2, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileRow:I

    .line 39
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->initTextureBuffer()V

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->deepCopy()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 8

    .prologue
    .line 106
    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTexturePositionX()I

    move-result v2

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTexturePositionY()I

    move-result v3

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getHeight()I

    move-result v5

    iget v6, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTileColumns:I

    iget v7, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTileRows:I

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIIIII)V

    .line 107
    .local v0, "deepCopy":Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    iget v1, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileColumn:I

    iget v2, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileRow:I

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->setCurrentTileIndex(II)V

    .line 108
    return-object v0
.end method

.method public getCurrentTileColumn()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileColumn:I

    return v0
.end method

.method public getCurrentTileIndex()I
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileRow:I

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTileColumns:I

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileColumn:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentTileRow()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileRow:I

    return v0
.end method

.method public getTextureCoordinateX1()F
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTexturePositionOfCurrentTileX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v1}, Lorg/anddev/andengine/opengl/texture/ITexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTextureCoordinateX2()F
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTexturePositionOfCurrentTileX()I

    move-result v0

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v1}, Lorg/anddev/andengine/opengl/texture/ITexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTextureCoordinateY1()F
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTexturePositionOfCurrentTileY()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v1}, Lorg/anddev/andengine/opengl/texture/ITexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTextureCoordinateY2()F
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTexturePositionOfCurrentTileY()I

    move-result v0

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v1}, Lorg/anddev/andengine/opengl/texture/ITexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTexturePositionOfCurrentTileX()I
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTexturePositionX()I

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileColumn:I

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileWidth()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getTexturePositionOfCurrentTileY()I
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTexturePositionY()I

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileRow:I

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileHeight()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getTileCount()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTileCount:I

    return v0
.end method

.method public getTileHeight()I
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getHeight()I

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTileRows:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getTileWidth()I
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getWidth()I

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTileColumns:I

    div-int/2addr v0, v1

    return v0
.end method

.method protected initTextureBuffer()V
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTileRows:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTileColumns:I

    if-eqz v0, :cond_0

    .line 45
    invoke-super {p0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->initTextureBuffer()V

    .line 47
    :cond_0
    return-void
.end method

.method public nextTile()V
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getCurrentTileIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileCount()I

    move-result v2

    rem-int v0, v1, v2

    .line 137
    .local v0, "tileIndex":I
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->setCurrentTileIndex(I)V

    .line 138
    return-void
.end method

.method public setCurrentTileIndex(I)V
    .locals 3
    .param p1, "pTileIndex"    # I

    .prologue
    .line 86
    iget v1, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTileCount:I

    if-ge p1, v1, :cond_0

    .line 87
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mTileColumns:I

    .line 88
    .local v0, "tileColumns":I
    rem-int v1, p1, v0

    div-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->setCurrentTileIndex(II)V

    .line 90
    .end local v0    # "tileColumns":I
    :cond_0
    return-void
.end method

.method public setCurrentTileIndex(II)V
    .locals 1
    .param p1, "pTileColumn"    # I
    .param p2, "pTileRow"    # I

    .prologue
    .line 78
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileColumn:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileRow:I

    if-eq p2, v0, :cond_1

    .line 79
    :cond_0
    iput p1, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileColumn:I

    .line 80
    iput p2, p0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileRow:I

    .line 81
    invoke-super {p0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->updateTextureRegionBuffer()V

    .line 83
    :cond_1
    return-void
.end method
