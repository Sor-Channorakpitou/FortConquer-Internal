.class public Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;
.super Lorg/anddev/andengine/util/modifier/BaseDurationModifier;
.source "ReuseMoveModifier.java"

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


# static fields
.field public static final MAX_DURATION:F = 15.0f


# instance fields
.field private duration:F

.field private fromX:F

.field private fromY:F

.field private speed:F

.field private toX:F

.field private toY:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1
    .param p1, "toX"    # F
    .param p2, "toY"    # F
    .param p3, "speed"    # F

    .prologue
    .line 38
    const/high16 v0, 0x41700000    # 15.0f

    invoke-direct {p0, v0}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(F)V

    .line 39
    iput p1, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->toX:F

    .line 40
    iput p2, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->toY:F

    .line 41
    iput p3, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->speed:F

    .line 42
    return-void
.end method

.method private constructor <init>(Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;)V
    .locals 1
    .param p1, "pBaseModifier"    # Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseDurationModifier;)V

    .line 32
    iget v0, p1, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->toX:F

    iput v0, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->toX:F

    .line 33
    iget v0, p1, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->toX:F

    iput v0, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->toY:F

    .line 34
    iget v0, p1, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->speed:F

    iput v0, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->speed:F

    .line 35
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
    .line 69
    const/4 v0, 0x0

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
    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 8
    .param p1, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 61
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->getX()F

    move-result v1

    iput v1, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->fromX:F

    .line 62
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->getY()F

    move-result v1

    iput v1, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->fromY:F

    .line 63
    iget v1, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->toX:F

    iget v2, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->fromX:F

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v1, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->toY:F

    iget v4, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->fromY:F

    sub-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 64
    .local v0, "distance":F
    iget v1, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->speed:F

    div-float v1, v0, v1

    iput v1, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->duration:F

    .line 65
    return-void
.end method

.method protected bridge synthetic onManagedUpdate(FLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V
    .locals 4
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->getSecondsElapsed()F

    move-result v0

    iget v1, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->duration:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 47
    iget v0, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->toX:F

    iget v1, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->toY:F

    invoke-interface {p2, v0, v1}, Lorg/anddev/andengine/entity/IEntity;->setPosition(FF)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->mFinished:Z

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iget v0, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->fromX:F

    iget v1, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->toX:F

    iget v2, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->fromX:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->getSecondsElapsed()F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->duration:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->fromY:F

    iget v2, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->toY:F

    iget v3, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->fromY:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->getSecondsElapsed()F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->duration:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-interface {p2, v0, v1}, Lorg/anddev/andengine/entity/IEntity;->setPosition(FF)V

    goto :goto_0
.end method

.method public reset(FF)V
    .locals 0
    .param p1, "toX"    # F
    .param p2, "toY"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->toX:F

    .line 56
    iput p2, p0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->toY:F

    .line 57
    invoke-super {p0}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->reset()V

    .line 58
    return-void
.end method
