.class public Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;
.super Ljava/lang/Object;
.source "ParallaxBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParallaxEntity"
.end annotation


# instance fields
.field final mParallaxFactor:F

.field final mShape:Lorg/anddev/andengine/entity/shape/Shape;


# direct methods
.method public constructor <init>(FLorg/anddev/andengine/entity/shape/Shape;)V
    .locals 0
    .param p1, "pParallaxFactor"    # F
    .param p2, "pShape"    # Lorg/anddev/andengine/entity/shape/Shape;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->mParallaxFactor:F

    .line 103
    iput-object p2, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->mShape:Lorg/anddev/andengine/entity/shape/Shape;

    .line 104
    return-void
.end method


# virtual methods
.method public onDraw(Ljavax/microedition/khronos/opengles/GL10;FLorg/anddev/andengine/engine/camera/Camera;)V
    .locals 6
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pParallaxValue"    # F
    .param p3, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    const/4 v5, 0x0

    .line 119
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 121
    invoke-virtual {p3}, Lorg/anddev/andengine/engine/camera/Camera;->getWidth()F

    move-result v1

    .line 122
    .local v1, "cameraWidth":F
    iget-object v4, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->mShape:Lorg/anddev/andengine/entity/shape/Shape;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/shape/Shape;->getWidthScaled()F

    move-result v3

    .line 123
    .local v3, "shapeWidthScaled":F
    iget v4, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->mParallaxFactor:F

    mul-float/2addr v4, p2

    rem-float v0, v4, v3

    .line 125
    .local v0, "baseOffset":F
    :goto_0
    cmpl-float v4, v0, v5

    if-gtz v4, :cond_1

    .line 128
    invoke-interface {p1, v0, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 130
    move v2, v0

    .line 133
    .local v2, "currentMaxX":F
    :cond_0
    iget-object v4, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->mShape:Lorg/anddev/andengine/entity/shape/Shape;

    invoke-virtual {v4, p1, p3}, Lorg/anddev/andengine/entity/shape/Shape;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 134
    invoke-interface {p1, v3, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 135
    add-float/2addr v2, v3

    .line 136
    cmpg-float v4, v2, v1

    if-ltz v4, :cond_0

    .line 138
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 139
    return-void

    .line 126
    .end local v2    # "currentMaxX":F
    :cond_1
    sub-float/2addr v0, v3

    goto :goto_0
.end method
