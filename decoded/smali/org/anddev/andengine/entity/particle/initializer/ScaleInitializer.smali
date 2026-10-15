.class public Lorg/anddev/andengine/entity/particle/initializer/ScaleInitializer;
.super Lorg/anddev/andengine/entity/particle/initializer/BaseSingleValueInitializer;
.source "ScaleInitializer.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "pScale"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1, p1}, Lorg/anddev/andengine/entity/particle/initializer/ScaleInitializer;-><init>(FF)V

    .line 28
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "pMinScale"    # F
    .param p2, "pMaxScale"    # F

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/particle/initializer/BaseSingleValueInitializer;-><init>(FF)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;F)V
    .locals 0
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pScale"    # F

    .prologue
    .line 44
    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/particle/Particle;->setScale(F)V

    .line 45
    return-void
.end method
