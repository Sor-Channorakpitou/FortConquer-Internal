.class public Lorg/anddev/andengine/entity/particle/modifier/OffCameraExpireModifier;
.super Ljava/lang/Object;
.source "OffCameraExpireModifier.java"

# interfaces
.implements Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;


# instance fields
.field private final mCamera:Lorg/anddev/andengine/engine/camera/Camera;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 0
    .param p1, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/anddev/andengine/entity/particle/modifier/OffCameraExpireModifier;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    .line 31
    return-void
.end method


# virtual methods
.method public getCamera()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/modifier/OffCameraExpireModifier;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method public onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;)V
    .locals 0
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;

    .prologue
    .line 48
    return-void
.end method

.method public onUpdateParticle(Lorg/anddev/andengine/entity/particle/Particle;)V
    .locals 1
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/modifier/OffCameraExpireModifier;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->isRectangularShapeVisible(Lorg/anddev/andengine/entity/shape/RectangularShape;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/anddev/andengine/entity/particle/Particle;->setDead(Z)V

    .line 55
    :cond_0
    return-void
.end method
