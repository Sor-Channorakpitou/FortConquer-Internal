.class public Lorg/anddev/andengine/entity/particle/modifier/ScaleModifier;
.super Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;
.source "ScaleModifier.java"


# direct methods
.method public constructor <init>(FFFF)V
    .locals 7
    .param p1, "pFromScale"    # F
    .param p2, "pToScale"    # F
    .param p3, "pFromTime"    # F
    .param p4, "pToTime"    # F

    .prologue
    .line 26
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/particle/modifier/ScaleModifier;-><init>(FFFFFF)V

    .line 27
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0
    .param p1, "pFromScaleX"    # F
    .param p2, "pToScaleX"    # F
    .param p3, "pFromScaleY"    # F
    .param p4, "pToScaleY"    # F
    .param p5, "pFromTime"    # F
    .param p6, "pToTime"    # F

    .prologue
    .line 30
    invoke-direct/range {p0 .. p6}, Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFF)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onSetInitialValues(Lorg/anddev/andengine/entity/particle/Particle;FF)V
    .locals 0
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pScaleX"    # F
    .param p3, "pScaleY"    # F

    .prologue
    .line 43
    invoke-virtual {p1, p2, p3}, Lorg/anddev/andengine/entity/particle/Particle;->setScale(FF)V

    .line 44
    return-void
.end method

.method protected onSetValues(Lorg/anddev/andengine/entity/particle/Particle;FF)V
    .locals 0
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pScaleX"    # F
    .param p3, "pScaleY"    # F

    .prologue
    .line 48
    invoke-virtual {p1, p2, p3}, Lorg/anddev/andengine/entity/particle/Particle;->setScale(FF)V

    .line 49
    return-void
.end method
