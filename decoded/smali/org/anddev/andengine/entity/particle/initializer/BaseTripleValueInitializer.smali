.class public abstract Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;
.super Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;
.source "BaseTripleValueInitializer.java"


# instance fields
.field protected mMaxValueC:F

.field protected mMinValueC:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0
    .param p1, "pMinValueA"    # F
    .param p2, "pMaxValueA"    # F
    .param p3, "pMinValueB"    # F
    .param p4, "pMaxValueB"    # F
    .param p5, "pMinValueC"    # F
    .param p6, "pMaxValueC"    # F

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;-><init>(FFFF)V

    .line 32
    iput p5, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->mMinValueC:F

    .line 33
    iput p6, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->mMaxValueC:F

    .line 34
    return-void
.end method

.method private final getRandomValueC()F
    .locals 3

    .prologue
    .line 56
    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->mMinValueC:F

    iget v1, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->mMaxValueC:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 57
    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->mMaxValueC:F

    .line 59
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->mMaxValueC:F

    iget v2, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->mMinValueC:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->mMinValueC:F

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;FF)V
    .locals 1
    .param p1, "pParticle"    # Lorg/anddev/andengine/entity/particle/Particle;
    .param p2, "pValueA"    # F
    .param p3, "pValueB"    # F

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->getRandomValueC()F

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;FFF)V

    .line 49
    return-void
.end method

.method protected abstract onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;FFF)V
.end method
