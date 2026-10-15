.class public Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;
.super Lorg/anddev/andengine/util/modifier/BaseDurationModifier;
.source "AcceleratedMoveModifier.java"

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
.field private V:F

.field private VX:F

.field private VY:F

.field private accelerationX:F

.field private accelerationY:F

.field private fromX:F

.field private fromY:F

.field private toX:F

.field private toY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "toX"    # F
    .param p2, "toY"    # F
    .param p3, "duration"    # F
    .param p4, "speed"    # F

    .prologue
    .line 42
    invoke-direct {p0, p3}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(F)V

    .line 43
    iput p1, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->toX:F

    .line 44
    iput p2, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->toY:F

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->mFinished:Z

    .line 46
    iput p4, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->V:F

    .line 47
    return-void
.end method

.method private constructor <init>(Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;)V
    .locals 1
    .param p1, "pBaseModifier"    # Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseDurationModifier;)V

    .line 36
    iget v0, p1, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->toX:F

    iput v0, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->toX:F

    .line 37
    iget v0, p1, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->toX:F

    iput v0, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->toY:F

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->mFinished:Z

    .line 39
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
    .line 75
    new-instance v0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;

    invoke-direct {v0, p0}, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;-><init>(Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;)V

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
    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 8
    .param p1, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 62
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->getX()F

    move-result v2

    iput v2, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->fromX:F

    .line 63
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->getY()F

    move-result v2

    iput v2, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->fromY:F

    .line 64
    iget v2, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->toX:F

    iget v3, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->fromX:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v4, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->toY:F

    iget v5, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->fromY:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    .line 65
    .local v1, "distance":F
    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->V:F

    iget v4, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->mDuration:F

    mul-float/2addr v3, v4

    sub-float v3, v1, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->mDuration:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->mDuration:F

    div-float v0, v2, v3

    .line 66
    .local v0, "acceleration":F
    iget v2, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->toX:F

    iget v3, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->fromX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    div-float/2addr v2, v1

    iput v2, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->accelerationX:F

    .line 67
    iget v2, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->toY:F

    iget v3, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->fromY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    div-float/2addr v2, v1

    iput v2, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->accelerationY:F

    .line 68
    iget v2, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->V:F

    iget v3, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->toX:F

    iget v4, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->fromX:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    iput v2, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->VX:F

    .line 69
    iget v2, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->V:F

    iget v3, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->toY:F

    iget v4, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->fromY:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    iput v2, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->VY:F

    .line 70
    return-void
.end method

.method protected bridge synthetic onManagedUpdate(FLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V
    .locals 5
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 51
    iget v0, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->fromX:F

    iget v1, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->VX:F

    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->getSecondsElapsed()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->accelerationX:F

    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->getSecondsElapsed()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->getSecondsElapsed()F

    move-result v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 52
    iget v1, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->fromY:F

    iget v2, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->VY:F

    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->getSecondsElapsed()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->accelerationY:F

    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->getSecondsElapsed()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->getSecondsElapsed()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 51
    invoke-interface {p2, v0, v1}, Lorg/anddev/andengine/entity/IEntity;->setPosition(FF)V

    .line 53
    return-void
.end method

.method protected bridge synthetic onModifierFinished(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->onModifierFinished(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onModifierFinished(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 2
    .param p1, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 57
    iget v0, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->toX:F

    iget v1, p0, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;->toY:F

    invoke-interface {p1, v0, v1}, Lorg/anddev/andengine/entity/IEntity;->setPosition(FF)V

    .line 58
    return-void
.end method
