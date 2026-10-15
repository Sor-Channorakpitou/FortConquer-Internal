.class public Lorg/anddev/andengine/entity/particle/modifier/RotationModifier;
.super Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;
.source "RotationModifier.java"


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "pFromRotation"    # F
    .param p2, "pToRotation"    # F
    .param p3, "pFromTime"    # F
    .param p4, "pToTime"    # F

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;-><init>(FFFF)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onSetInitialValue(Lorg/anddev/andengine/entity/particle/Particle;F)V
    .locals 0
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pRotation"    # F

    .prologue
    .line 39
    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/particle/Particle;->setRotation(F)V

    .line 40
    return-void
.end method

.method protected onSetValue(Lorg/anddev/andengine/entity/particle/Particle;F)V
    .locals 0
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pRotation"    # F

    .prologue
    .line 44
    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/particle/Particle;->setRotation(F)V

    .line 45
    return-void
.end method
