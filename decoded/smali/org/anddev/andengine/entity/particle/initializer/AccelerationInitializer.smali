.class public Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;
.super Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;
.source "AccelerationInitializer.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "pAcceleration"    # F

    .prologue
    .line 26
    invoke-direct {p0, p1, p1}, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;-><init>(FF)V

    .line 27
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "pAccelerationX"    # F
    .param p2, "pAccelerationY"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1, p1, p2, p2}, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;-><init>(FFFF)V

    .line 31
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "pMinAccelerationX"    # F
    .param p2, "pMaxAccelerationX"    # F
    .param p3, "pMinAccelerationY"    # F
    .param p4, "pMaxAccelerationY"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;-><init>(FFFF)V

    .line 35
    return-void
.end method


# virtual methods
.method public getMaxAccelerationX()F
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;->mMaxValue:F

    return v0
.end method

.method public getMaxAccelerationY()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;->mMaxValueB:F

    return v0
.end method

.method public getMinAccelerationX()F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;->mMinValue:F

    return v0
.end method

.method public getMinAccelerationY()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;->mMinValueB:F

    return v0
.end method

.method public onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;FF)V
    .locals 1
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pAccelerationX"    # F
    .param p3, "pAccelerationY"    # F

    .prologue
    .line 90
    invoke-virtual {p1}, Lorg/anddev/andengine/entity/particle/Particle;->getPhysicsHandler()Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->accelerate(FF)V

    .line 91
    return-void
.end method

.method public setAcceleration(FFFF)V
    .locals 0
    .param p1, "pMinAccelerationX"    # F
    .param p2, "pMaxAccelerationX"    # F
    .param p3, "pMinAccelerationY"    # F
    .param p4, "pMaxAccelerationY"    # F

    .prologue
    .line 78
    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;->mMinValue:F

    .line 79
    iput p2, p0, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;->mMaxValue:F

    .line 80
    iput p3, p0, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;->mMinValueB:F

    .line 81
    iput p4, p0, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;->mMaxValueB:F

    .line 82
    return-void
.end method

.method public setAccelerationX(F)V
    .locals 0
    .param p1, "pAccelerationX"    # F

    .prologue
    .line 58
    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;->mMinValue:F

    .line 59
    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;->mMaxValue:F

    .line 60
    return-void
.end method

.method public setAccelerationX(FF)V
    .locals 0
    .param p1, "pMinAccelerationX"    # F
    .param p2, "pMaxAccelerationX"    # F

    .prologue
    .line 68
    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;->mMinValue:F

    .line 69
    iput p2, p0, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;->mMaxValue:F

    .line 70
    return-void
.end method

.method public setAccelerationY(F)V
    .locals 0
    .param p1, "pAccelerationY"    # F

    .prologue
    .line 63
    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;->mMinValueB:F

    .line 64
    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;->mMaxValueB:F

    .line 65
    return-void
.end method

.method public setAccelerationY(FF)V
    .locals 0
    .param p1, "pMinAccelerationY"    # F
    .param p2, "pMaxAccelerationY"    # F

    .prologue
    .line 73
    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;->mMinValueB:F

    .line 74
    iput p2, p0, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;->mMaxValueB:F

    .line 75
    return-void
.end method
