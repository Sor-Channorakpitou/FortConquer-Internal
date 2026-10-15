.class public Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;
.super Lorg/anddev/andengine/entity/sprite/Sprite;
.source "SpriteFreeRotation.java"


# instance fields
.field protected mHostSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

.field public mRotationCenterX2:F

.field public mRotationCenterY2:F


# direct methods
.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected applyRotation(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v3, 0x0

    .line 29
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;->mHostSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;->mHostSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getRotation()F

    move-result v0

    .line 33
    .local v0, "rotation2":F
    cmpl-float v1, v0, v3

    if-eqz v1, :cond_0

    .line 34
    iget v1, p0, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;->mRotationCenterX2:F

    iget v2, p0, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;->mRotationCenterY2:F

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 35
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v3, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 36
    iget v1, p0, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;->mRotationCenterX2:F

    neg-float v1, v1

    iget v2, p0, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;->mRotationCenterY2:F

    neg-float v2, v2

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 40
    .end local v0    # "rotation2":F
    :cond_0
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;->applyRotation(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 41
    return-void
.end method

.method public getHostSprite()Lorg/anddev/andengine/entity/sprite/BaseSprite;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;->mHostSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    return-object v0
.end method

.method public setHostSprite(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V
    .locals 0
    .param p1, "pHostSprite"    # Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;->mHostSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .line 49
    return-void
.end method

.method public setRotationCenter2(FF)V
    .locals 0
    .param p1, "rotationCenterX2"    # F
    .param p2, "rotationCenterY2"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;->mRotationCenterX2:F

    .line 54
    iput p2, p0, Lcom/droidhen/fortconquer/scenes/SpriteFreeRotation;->mRotationCenterY2:F

    .line 55
    return-void
.end method
