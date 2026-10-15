.class public Lorg/anddev/andengine/entity/particle/Particle;
.super Lorg/anddev/andengine/entity/sprite/Sprite;
.source "Particle.java"


# instance fields
.field mDead:Z

.field private mDeathTime:F

.field private mLifeTime:F

.field private final mPhysicsHandler:Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;


# direct methods
.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 25
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDeathTime:F

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDead:Z

    .line 27
    new-instance v0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;-><init>(Lorg/anddev/andengine/entity/IEntity;)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mPhysicsHandler:Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mLifeTime:F

    .line 36
    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p4, "pRectangleVertexBuffer"    # Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V

    .line 25
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDeathTime:F

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDead:Z

    .line 27
    new-instance v0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;-><init>(Lorg/anddev/andengine/entity/IEntity;)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mPhysicsHandler:Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mLifeTime:F

    .line 41
    return-void
.end method


# virtual methods
.method public getDeathTime()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDeathTime:F

    return v0
.end method

.method public getLifeTime()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mLifeTime:F

    return v0
.end method

.method public getPhysicsHandler()Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mPhysicsHandler:Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;

    return-object v0
.end method

.method public isDead()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDead:Z

    return v0
.end method

.method protected onManagedUpdate(F)V
    .locals 2
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 77
    iget-boolean v1, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDead:Z

    if-nez v1, :cond_0

    .line 78
    iget v1, p0, Lorg/anddev/andengine/entity/particle/Particle;->mLifeTime:F

    add-float/2addr v1, p1

    iput v1, p0, Lorg/anddev/andengine/entity/particle/Particle;->mLifeTime:F

    .line 79
    iget-object v1, p0, Lorg/anddev/andengine/entity/particle/Particle;->mPhysicsHandler:Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;

    invoke-virtual {v1, p1}, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->onUpdate(F)V

    .line 80
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;->onManagedUpdate(F)V

    .line 81
    iget v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDeathTime:F

    .line 82
    .local v0, "deathTime":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/anddev/andengine/entity/particle/Particle;->mLifeTime:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/entity/particle/Particle;->setDead(Z)V

    .line 86
    .end local v0    # "deathTime":F
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lorg/anddev/andengine/entity/sprite/Sprite;->reset()V

    .line 95
    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mPhysicsHandler:Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->reset()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDead:Z

    .line 97
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDeathTime:F

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mLifeTime:F

    .line 99
    return-void
.end method

.method public setDead(Z)V
    .locals 0
    .param p1, "pDead"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDead:Z

    .line 65
    return-void
.end method

.method public setDeathTime(F)V
    .locals 0
    .param p1, "pDeathTime"    # F

    .prologue
    .line 56
    iput p1, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDeathTime:F

    .line 57
    return-void
.end method
