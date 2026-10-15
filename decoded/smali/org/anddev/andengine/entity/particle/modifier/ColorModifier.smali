.class public Lorg/anddev/andengine/entity/particle/modifier/ColorModifier;
.super Lorg/anddev/andengine/entity/particle/modifier/BaseTripleValueSpanModifier;
.source "ColorModifier.java"


# direct methods
.method public constructor <init>(FFFFFFFF)V
    .locals 0
    .param p1, "pFromRed"    # F
    .param p2, "pToRed"    # F
    .param p3, "pFromGreen"    # F
    .param p4, "pToGreen"    # F
    .param p5, "pFromBlue"    # F
    .param p6, "pToBlue"    # F
    .param p7, "pFromTime"    # F
    .param p8, "pToTime"    # F

    .prologue
    .line 26
    invoke-direct/range {p0 .. p8}, Lorg/anddev/andengine/entity/particle/modifier/BaseTripleValueSpanModifier;-><init>(FFFFFFFF)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onSetInitialValues(Lorg/anddev/andengine/entity/particle/Particle;FFF)V
    .locals 0
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pRed"    # F
    .param p3, "pGreen"    # F
    .param p4, "pBlue"    # F

    .prologue
    .line 39
    invoke-virtual {p1, p2, p3, p4}, Lorg/anddev/andengine/entity/particle/Particle;->setColor(FFF)V

    .line 40
    return-void
.end method

.method protected onSetValues(Lorg/anddev/andengine/entity/particle/Particle;FFF)V
    .locals 0
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pRed"    # F
    .param p3, "pGreen"    # F
    .param p4, "pBlue"    # F

    .prologue
    .line 44
    invoke-virtual {p1, p2, p3, p4}, Lorg/anddev/andengine/entity/particle/Particle;->setColor(FFF)V

    .line 45
    return-void
.end method
