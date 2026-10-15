.class public abstract Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;
.super Lorg/anddev/andengine/entity/particle/initializer/BaseSingleValueInitializer;
.source "BaseDoubleValueInitializer.java"


# instance fields
.field protected mMaxValueB:F

.field protected mMinValueB:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "pMinValueA"    # F
    .param p2, "pMaxValueA"    # F
    .param p3, "pMinValueB"    # F
    .param p4, "pMaxValueB"    # F

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/particle/initializer/BaseSingleValueInitializer;-><init>(FF)V

    .line 32
    iput p3, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->mMinValueB:F

    .line 33
    iput p4, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->mMaxValueB:F

    .line 34
    return-void
.end method

.method private final getRandomValueB()F
    .locals 3

    .prologue
    .line 56
    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->mMinValueB:F

    iget v1, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->mMaxValueB:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 57
    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->mMaxValueB:F

    .line 59
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->mMaxValueB:F

    iget v2, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->mMinValueB:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->mMinValueB:F

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;F)V
    .locals 1
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pValueA"    # F

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->getRandomValueB()F

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;FF)V

    .line 49
    return-void
.end method

.method protected abstract onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;FF)V
.end method
