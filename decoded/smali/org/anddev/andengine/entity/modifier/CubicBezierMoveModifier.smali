.class public Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;
.super Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;
.source "CubicBezierMoveModifier.java"


# instance fields
.field private final mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

.field private final mX1:F

.field private final mX2:F

.field private final mX3:F

.field private final mX4:F

.field private final mY1:F

.field private final mY2:F

.field private final mY3:F

.field private final mY4:F


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
    .line 51
    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;-><init>(F)V

    .line 53
    iput p2, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX1:F

    .line 54
    iput p3, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY1:F

    .line 55
    iput p4, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX2:F

    .line 56
    iput p5, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY2:F

    .line 57
    iput p6, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX3:F

    .line 58
    iput p7, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY3:F

    .line 59
    iput p8, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX4:F

    .line 60
    iput p9, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY4:F

    .line 62
    iput-object p10, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    .line 63
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;
    .locals 11

    .prologue
    .line 67
    new-instance v0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;

    iget v1, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mDuration:F

    iget v2, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX1:F

    iget v3, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY1:F

    iget v4, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX2:F

    iget v5, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY2:F

    iget v6, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX3:F

    iget v7, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY3:F

    iget v8, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX4:F

    iget v9, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY4:F

    iget-object v10, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    invoke-direct/range {v0 .. v10}, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;-><init>(FFFFFFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;

    move-result-object v0

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
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 103
    return-void
.end method

.method protected bridge synthetic onManagedUpdate(FLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V
    .locals 13
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 80
    iget-object v10, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->getSecondsElapsed()F

    move-result v11

    iget v12, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mDuration:F

    invoke-interface {v10, v11, v12}, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->getPercentage(FF)F

    move-result v0

    .line 82
    .local v0, "percentageDone":F
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v3, v10, v0

    .line 83
    .local v3, "u":F
    mul-float v1, v0, v0

    .line 84
    .local v1, "tt":F
    mul-float v6, v3, v3

    .line 85
    .local v6, "uu":F
    mul-float v7, v6, v3

    .line 86
    .local v7, "uuu":F
    mul-float v2, v1, v0

    .line 88
    .local v2, "ttt":F
    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v10, v6

    mul-float v4, v10, v0

    .line 89
    .local v4, "ut3":F
    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v10, v3

    mul-float v5, v10, v1

    .line 94
    .local v5, "utt3":F
    iget v10, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX1:F

    mul-float/2addr v10, v7

    iget v11, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX2:F

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    iget v11, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX3:F

    mul-float/2addr v11, v5

    add-float/2addr v10, v11

    iget v11, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX4:F

    mul-float/2addr v11, v2

    add-float v8, v10, v11

    .line 95
    .local v8, "x":F
    iget v10, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY1:F

    mul-float/2addr v10, v7

    iget v11, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY2:F

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    iget v11, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY3:F

    mul-float/2addr v11, v5

    add-float/2addr v10, v11

    iget v11, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY4:F

    mul-float/2addr v11, v2

    add-float v9, v10, v11

    .line 97
    .local v9, "y":F
    invoke-interface {p2, v8, v9}, Lorg/anddev/andengine/entity/IEntity;->setPosition(FF)V

    .line 98
    return-void
.end method
