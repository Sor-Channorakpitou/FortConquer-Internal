.class public Lorg/anddev/andengine/entity/scene/SplashScene;
.super Lorg/anddev/andengine/entity/scene/Scene;
.source "SplashScene.java"


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 6
    .param p1, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p2, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 30
    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/scene/SplashScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FFF)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FFF)V
    .locals 7
    .param p1, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p2, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p3, "pDuration"    # F
    .param p4, "pScaleFrom"    # F
    .param p5, "pScaleTo"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 33
    invoke-direct {p0}, Lorg/anddev/andengine/entity/scene/Scene;-><init>()V

    .line 34
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getMinX()F

    move-result v1

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getMinY()F

    move-result v2

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getWidth()F

    move-result v3

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getHeight()F

    move-result v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 35
    .local v0, "loadingScreenSprite":Lorg/anddev/andengine/entity/sprite/Sprite;
    cmpl-float v1, p4, v6

    if-nez v1, :cond_0

    cmpl-float v1, p5, v6

    if-eqz v1, :cond_1

    .line 36
    :cond_0
    invoke-virtual {v0, p4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScale(F)V

    .line 37
    new-instance v1, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    sget-object v2, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    invoke-direct {v1, p3, p4, p5, v2}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 40
    :cond_1
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/scene/SplashScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 41
    return-void
.end method
