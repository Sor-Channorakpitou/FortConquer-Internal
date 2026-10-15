.class public Lorg/anddev/andengine/entity/particle/initializer/ColorInitializer;
.super Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;
.source "ColorInitializer.java"


# direct methods
.method public constructor <init>(FFF)V
    .locals 7
    .param p1, "pRed"    # F
    .param p2, "pGreen"    # F
    .param p3, "pBlue"    # F

    .prologue
    .line 27
    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;-><init>(FFFFFF)V

    .line 28
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0
    .param p1, "pMinRed"    # F
    .param p2, "pMaxRed"    # F
    .param p3, "pMinGreen"    # F
    .param p4, "pMaxGreen"    # F
    .param p5, "pMinBlue"    # F
    .param p6, "pMaxBlue"    # F

    .prologue
    .line 31
    invoke-direct/range {p0 .. p6}, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;-><init>(FFFFFF)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;FFF)V
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
