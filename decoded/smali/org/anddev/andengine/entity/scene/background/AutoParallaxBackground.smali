.class public Lorg/anddev/andengine/entity/scene/background/AutoParallaxBackground;
.super Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;
.source "AutoParallaxBackground.java"


# instance fields
.field private mParallaxChangePerSecond:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "pRed"    # F
    .param p2, "pGreen"    # F
    .param p3, "pBlue"    # F
    .param p4, "pParallaxChangePerSecond"    # F

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;-><init>(FFF)V

    .line 29
    iput p4, p0, Lorg/anddev/andengine/entity/scene/background/AutoParallaxBackground;->mParallaxChangePerSecond:F

    .line 30
    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 2
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 46
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->onUpdate(F)V

    .line 48
    iget v0, p0, Lorg/anddev/andengine/entity/scene/background/AutoParallaxBackground;->mParallaxValue:F

    iget v1, p0, Lorg/anddev/andengine/entity/scene/background/AutoParallaxBackground;->mParallaxChangePerSecond:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/AutoParallaxBackground;->mParallaxValue:F

    .line 49
    return-void
.end method

.method public setParallaxChangePerSecond(F)V
    .locals 0
    .param p1, "pParallaxChangePerSecond"    # F

    .prologue
    .line 37
    iput p1, p0, Lorg/anddev/andengine/entity/scene/background/AutoParallaxBackground;->mParallaxChangePerSecond:F

    .line 38
    return-void
.end method
