.class public Lorg/anddev/andengine/entity/modifier/RotateCubicBezierMoveModifier;
.super Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;
.source "RotateCubicBezierMoveModifier.java"


# direct methods
.method public constructor <init>(FFFFFFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pX1"    # F
    .param p3, "pY1"    # F
    .param p4, "pX2"    # F
    .param p5, "pY2"    # F
    .param p6, "pX3"    # F
    .param p7, "pY3"    # F
    .param p8, "pX4"    # F
    .param p9, "pY4"    # F
    .param p10, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 22
    invoke-direct/range {p0 .. p10}, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;-><init>(FFFFFFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V
    .locals 6
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 27
    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getX()F

    move-result v2

    .line 28
    .local v2, "startX":F
    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getY()F

    move-result v3

    .line 30
    .local v3, "startY":F
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V

    .line 32
    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getX()F

    move-result v4

    sub-float v0, v4, v2

    .line 33
    .local v0, "deltaX":F
    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getY()F

    move-result v4

    sub-float v1, v4, v3

    .line 35
    .local v1, "deltaY":F
    invoke-static {v1, v0}, Lorg/anddev/andengine/util/MathUtils;->atan2(FF)F

    move-result v4

    invoke-static {v4}, Lorg/anddev/andengine/util/MathUtils;->radToDeg(F)F

    move-result v4

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v4, v5

    invoke-interface {p2, v4}, Lorg/anddev/andengine/entity/IEntity;->setRotation(F)V

    .line 36
    return-void
.end method
