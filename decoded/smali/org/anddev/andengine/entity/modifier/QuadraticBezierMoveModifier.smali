.class public Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;
.super Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;
.source "QuadraticBezierMoveModifier.java"


# instance fields
.field private final mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

.field private final mX1:F

.field private final mX2:F

.field private final mX3:F

.field private final mY1:F

.field private final mY2:F

.field private final mY3:F


# direct methods
.method public constructor <init>(FFFFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .param p1, "pDuration"    # F
    .param p2, "pX1"    # F
    .param p3, "pY1"    # F
    .param p4, "pX2"    # F
    .param p5, "pY2"    # F
    .param p6, "pX3"    # F
    .param p7, "pY3"    # F
    .param p8, "pEaseFunction"    # Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;-><init>(F)V

    .line 38
    iput p2, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX1:F

    .line 39
    iput p3, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY1:F

    .line 40
    iput p4, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX2:F

    .line 41
    iput p5, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY2:F

    .line 42
    iput p6, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX3:F

    .line 43
    iput p7, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY3:F

    .line 45
    iput-object p8, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;
    .locals 9

    .prologue
    .line 50
    new-instance v0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;

    iget v1, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mDuration:F

    iget v2, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX1:F

    iget v3, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY1:F

    iget v4, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX2:F

    iget v5, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY2:F

    iget v6, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX3:F

    iget v7, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY3:F

    iget-object v8, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    invoke-direct/range {v0 .. v8}, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;-><init>(FFFFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 82
    return-void
.end method

.method protected bridge synthetic onManagedUpdate(FLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V
    .locals 10
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 63
    iget-object v7, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->getSecondsElapsed()F

    move-result v8

    iget v9, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mDuration:F

    invoke-interface {v7, v8, v9}, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->getPercentage(FF)F

    move-result v0

    .line 65
    .local v0, "percentageDone":F
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v2, v7, v0

    .line 66
    .local v2, "u":F
    mul-float v1, v0, v0

    .line 67
    .local v1, "tt":F
    mul-float v4, v2, v2

    .line 69
    .local v4, "uu":F
    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v2

    mul-float v3, v7, v0

    .line 73
    .local v3, "ut2":F
    iget v7, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX1:F

    mul-float/2addr v7, v4

    iget v8, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX2:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget v8, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX3:F

    mul-float/2addr v8, v1

    add-float v5, v7, v8

    .line 74
    .local v5, "x":F
    iget v7, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY1:F

    mul-float/2addr v7, v4

    iget v8, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY2:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget v8, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY3:F

    mul-float/2addr v8, v1

    add-float v6, v7, v8

    .line 76
    .local v6, "y":F
    invoke-interface {p2, v5, v6}, Lorg/anddev/andengine/entity/IEntity;->setPosition(FF)V

    .line 77
    return-void
.end method
