.class public Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;
.super Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;
.source "VelocityInitializer.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "pVelocity"    # F

    .prologue
    .line 26
    invoke-direct {p0, p1, p1, p1, p1}, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;-><init>(FFFF)V

    .line 27
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "pVelocityX"    # F
    .param p2, "pVelocityY"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1, p1, p2, p2}, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;-><init>(FFFF)V

    .line 31
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "pMinVelocityX"    # F
    .param p2, "pMaxVelocityX"    # F
    .param p3, "pMinVelocityY"    # F
    .param p4, "pMaxVelocityY"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;-><init>(FFFF)V

    .line 35
    return-void
.end method


# virtual methods
.method public getMaxVelocityX()F
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMaxValue:F

    return v0
.end method

.method public getMaxVelocityY()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMaxValueB:F

    return v0
.end method

.method public getMinVelocityX()F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMinValue:F

    return v0
.end method

.method public getMinVelocityY()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMinValueB:F

    return v0
.end method

.method public onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;FF)V
    .locals 1
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pVelocityX"    # F
    .param p3, "pVelocityY"    # F

    .prologue
    .line 90
    invoke-virtual {p1}, Lorg/anddev/andengine/entity/particle/Particle;->getPhysicsHandler()Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->setVelocity(FF)V

    .line 91
    return-void
.end method

.method public setVelocity(FFFF)V
    .locals 0
    .param p1, "pMinVelocityX"    # F
    .param p2, "pMaxVelocityX"    # F
    .param p3, "pMinVelocityY"    # F
    .param p4, "pMaxVelocityY"    # F

    .prologue
    .line 78
    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMinValue:F

    .line 79
    iput p2, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMaxValue:F

    .line 80
    iput p3, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMinValueB:F

    .line 81
    iput p4, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMaxValueB:F

    .line 82
    return-void
.end method

.method public setVelocityX(F)V
    .locals 0
    .param p1, "pVelocityX"    # F

    .prologue
    .line 58
    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMinValue:F

    .line 59
    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMaxValue:F

    .line 60
    return-void
.end method

.method public setVelocityX(FF)V
    .locals 0
    .param p1, "pMinVelocityX"    # F
    .param p2, "pMaxVelocityX"    # F

    .prologue
    .line 68
    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMinValue:F

    .line 69
    iput p2, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMaxValue:F

    .line 70
    return-void
.end method

.method public setVelocityY(F)V
    .locals 0
    .param p1, "pVelocityY"    # F

    .prologue
    .line 63
    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMinValueB:F

    .line 64
    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMaxValueB:F

    .line 65
    return-void
.end method

.method public setVelocityY(FF)V
    .locals 0
    .param p1, "pMinVelocityY"    # F
    .param p2, "pMaxVelocityY"    # F

    .prologue
    .line 73
    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMinValueB:F

    .line 74
    iput p2, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMaxValueB:F

    .line 75
    return-void
.end method
