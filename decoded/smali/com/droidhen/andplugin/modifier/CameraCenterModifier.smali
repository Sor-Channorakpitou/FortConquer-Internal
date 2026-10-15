.class public Lcom/droidhen/andplugin/modifier/CameraCenterModifier;
.super Lorg/anddev/andengine/util/modifier/BaseDurationModifier;
.source "CameraCenterModifier.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/BaseDurationModifier",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;",
        "Lorg/anddev/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# instance fields
.field private final camera:Lorg/anddev/andengine/engine/camera/Camera;

.field private initX:F

.field private initY:F

.field private final toX:F

.field private final toY:F


# direct methods
.method public constructor <init>(FLorg/anddev/andengine/engine/camera/Camera;FF)V
    .locals 1
    .param p1, "pDuration"    # F
    .param p2, "camera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p3, "toX"    # F
    .param p4, "toY"    # F

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(F)V

    .line 37
    iput-object p2, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->camera:Lorg/anddev/andengine/engine/camera/Camera;

    .line 38
    invoke-virtual {p2}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v0

    iput v0, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->initX:F

    .line 39
    invoke-virtual {p2}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v0

    iput v0, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->initY:F

    .line 40
    iput p3, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->toX:F

    .line 41
    iput p4, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->toY:F

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->mFinished:Z

    .line 43
    return-void
.end method

.method protected constructor <init>(Lcom/droidhen/andplugin/modifier/CameraCenterModifier;)V
    .locals 1
    .param p1, "pBaseModifier"    # Lcom/droidhen/andplugin/modifier/CameraCenterModifier;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseDurationModifier;)V

    .line 27
    iget-object v0, p1, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->camera:Lorg/anddev/andengine/engine/camera/Camera;

    iput-object v0, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->camera:Lorg/anddev/andengine/engine/camera/Camera;

    .line 28
    iget v0, p1, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->initX:F

    iput v0, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->initX:F

    .line 29
    iget v0, p1, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->initY:F

    iput v0, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->initY:F

    .line 30
    iget v0, p1, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->toX:F

    iput v0, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->toX:F

    .line 31
    iget v0, p1, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->toY:F

    iput v0, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->toY:F

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->mFinished:Z

    .line 33
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;

    invoke-direct {v0, p0}, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;-><init>(Lcom/droidhen/andplugin/modifier/CameraCenterModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1
    .param p1, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->camera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v0

    iput v0, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->initX:F

    .line 53
    iget-object v0, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->camera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v0

    iput v0, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->initY:F

    .line 54
    return-void
.end method

.method protected bridge synthetic onManagedUpdate(FLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V
    .locals 5
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->camera:Lorg/anddev/andengine/engine/camera/Camera;

    iget v1, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->initX:F

    iget v2, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->toX:F

    iget v3, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->initX:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->getSecondsElapsed()F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->mDuration:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->initY:F

    iget v3, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->toY:F

    iget v4, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->initY:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->getSecondsElapsed()F

    move-result v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->mDuration:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/engine/camera/Camera;->setCenter(FF)V

    .line 48
    return-void
.end method

.method public bridge synthetic onModifierFinished(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->onModifierFinished(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierFinished(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 3
    .param p1, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->camera:Lorg/anddev/andengine/engine/camera/Camera;

    iget v1, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->toX:F

    iget v2, p0, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;->toY:F

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/engine/camera/Camera;->setCenter(FF)V

    .line 58
    return-void
.end method
