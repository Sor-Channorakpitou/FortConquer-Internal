.class public abstract Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;
.super Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;
.source "BaseDoubleValueSpanModifier.java"


# instance fields
.field private final mFromValueB:F

.field private final mSpanValueB:F

.field private final mToValueB:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 2
    .param p1, "pFromValueA"    # F
    .param p2, "pToValueA"    # F
    .param p3, "pFromValueB"    # F
    .param p4, "pToValueB"    # F
    .param p5, "pFromTime"    # F
    .param p6, "pToTime"    # F

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p5, p6}, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;-><init>(FFFF)V

    .line 32
    iput p3, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    .line 33
    iput p4, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;->mToValueB:F

    .line 35
    iget v0, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;->mToValueB:F

    iget v1, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;->mSpanValueB:F

    .line 36
    return-void
.end method


# virtual methods
.method protected final calculateValueB(F)F
    .locals 2
    .param p1, "pPercent"    # F

    .prologue
    .line 68
    iget v0, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    iget v1, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;->mSpanValueB:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public onSetInitialValue(Lorg/anddev/andengine/entity/particle/Particle;F)V
    .locals 1
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pValueA"    # F

    .prologue
    .line 55
    iget v0, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;->onSetInitialValues(Lorg/anddev/andengine/entity/particle/Particle;FF)V

    .line 56
    return-void
.end method

.method protected abstract onSetInitialValues(Lorg/anddev/andengine/entity/particle/Particle;FF)V
.end method

.method protected onSetValue(Lorg/anddev/andengine/entity/particle/Particle;F)V
    .locals 0
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pValue"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    return-void
.end method

.method protected onSetValueInternal(Lorg/anddev/andengine/entity/particle/Particle;F)V
    .locals 2
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pPercent"    # F

    .prologue
    .line 60
    invoke-super {p0, p2}, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->calculateValue(F)F

    move-result v0

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;->calculateValueB(F)F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;->onSetValues(Lorg/anddev/andengine/entity/particle/Particle;FF)V

    .line 61
    return-void
.end method

.method protected abstract onSetValues(Lorg/anddev/andengine/entity/particle/Particle;FF)V
.end method
