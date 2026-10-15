.class public Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;
.super Lorg/anddev/andengine/entity/particle/initializer/BaseSingleValueInitializer;
.source "RotationInitializer.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "pRotation"    # F

    .prologue
    .line 26
    invoke-direct {p0, p1, p1}, Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;-><init>(FF)V

    .line 27
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "pMinRotation"    # F
    .param p2, "pMaxRotation"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/particle/initializer/BaseSingleValueInitializer;-><init>(FF)V

    .line 31
    return-void
.end method


# virtual methods
.method public getMaxRotation()F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;->mMaxValue:F

    return v0
.end method

.method public getMinRotation()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;->mMinValue:F

    return v0
.end method

.method public onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;F)V
    .locals 0
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pRotation"    # F

    .prologue
    .line 61
    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/particle/Particle;->setRotation(F)V

    .line 62
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "pRotation"    # F

    .prologue
    .line 46
    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;->mMinValue:F

    .line 47
    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;->mMaxValue:F

    .line 48
    return-void
.end method

.method public setRotation(FF)V
    .locals 0
    .param p1, "pMinRotation"    # F
    .param p2, "pMaxRotation"    # F

    .prologue
    .line 51
    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;->mMinValue:F

    .line 52
    iput p2, p0, Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;->mMaxValue:F

    .line 53
    return-void
.end method
