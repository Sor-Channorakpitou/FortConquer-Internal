.class public abstract Lorg/anddev/andengine/entity/particle/modifier/BaseTripleValueSpanModifier;
.super Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;
.source "BaseTripleValueSpanModifier.java"


# instance fields
.field private final mFromValueC:F

.field private final mSpanValueC:F

.field private final mToValueC:F


# direct methods
.method public constructor <init>(FFFFFFFF)V
    .locals 7
    .param p1, "pFromValueA"    # F
    .param p2, "pToValueA"    # F
    .param p3, "pFromValueB"    # F
    .param p4, "pToValueB"    # F
    .param p5, "pFromValueC"    # F
    .param p6, "pToValueC"    # F
    .param p7, "pFromTime"    # F
    .param p8, "pToTime"    # F

    .prologue
    .line 31
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p7

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFF)V

    .line 32
    iput p5, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseTripleValueSpanModifier;->mFromValueC:F

    .line 33
    iput p6, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseTripleValueSpanModifier;->mToValueC:F

    .line 35
    iget v0, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseTripleValueSpanModifier;->mToValueC:F

    iget v1, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseTripleValueSpanModifier;->mFromValueC:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseTripleValueSpanModifier;->mSpanValueC:F

    .line 36
    return-void
.end method

.method private final calculateValueC(F)F
    .locals 2
    .param p1, "pPercent"    # F

    .prologue
    .line 68
    iget v0, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseTripleValueSpanModifier;->mFromValueC:F

    iget v1, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseTripleValueSpanModifier;->mSpanValueC:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public onSetInitialValues(Lorg/anddev/andengine/entity/particle/Particle;FF)V
    .locals 1
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pValueA"    # F
    .param p3, "pValueB"    # F

    .prologue
    .line 55
    iget v0, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseTripleValueSpanModifier;->mFromValueC:F

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/entity/particle/modifier/BaseTripleValueSpanModifier;->onSetInitialValues(Lorg/anddev/andengine/entity/particle/Particle;FFF)V

    .line 56
    return-void
.end method

.method protected abstract onSetInitialValues(Lorg/anddev/andengine/entity/particle/Particle;FFF)V
.end method

.method protected onSetValueInternal(Lorg/anddev/andengine/entity/particle/Particle;F)V
    .locals 3
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pPercent"    # F

    .prologue
    .line 60
    invoke-super {p0, p2}, Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;->calculateValue(F)F

    move-result v0

    invoke-super {p0, p2}, Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;->calculateValueB(F)F

    move-result v1

    invoke-direct {p0, p2}, Lorg/anddev/andengine/entity/particle/modifier/BaseTripleValueSpanModifier;->calculateValueC(F)F

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/anddev/andengine/entity/particle/modifier/BaseTripleValueSpanModifier;->onSetValues(Lorg/anddev/andengine/entity/particle/Particle;FFF)V

    .line 61
    return-void
.end method

.method protected onSetValues(Lorg/anddev/andengine/entity/particle/Particle;FF)V
    .locals 0
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pValueA"    # F
    .param p3, "pValueB"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    return-void
.end method

.method protected abstract onSetValues(Lorg/anddev/andengine/entity/particle/Particle;FFF)V
.end method
