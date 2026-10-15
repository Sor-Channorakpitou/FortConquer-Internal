.class public Lcom/droidhen/andplugin/ComposedAnimatedButton;
.super Lcom/droidhen/andplugin/ComposedAnimatedSprite;
.source "ComposedAnimatedButton.java"


# instance fields
.field private areaExtend:I

.field private clickTask:Ljava/lang/Runnable;

.field private enableAnimated:Z

.field private enableTask:Z

.field private grabed:Z

.field private offTileIndex:I


# direct methods
.method public constructor <init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pTiledTextureRegion"    # Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    .line 9
    iput-boolean v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->grabed:Z

    .line 11
    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->offTileIndex:I

    .line 13
    iput-boolean v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->enableAnimated:Z

    .line 15
    iput-boolean v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->enableTask:Z

    .line 17
    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->areaExtend:I

    .line 26
    return-void
.end method

.method public constructor <init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pTiledTextureRegion"    # Lcom/droidhen/andplugin/PlistComposedTextureRegion;
    .param p4, "clickTask"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    .line 9
    iput-boolean v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->grabed:Z

    .line 11
    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->offTileIndex:I

    .line 13
    iput-boolean v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->enableAnimated:Z

    .line 15
    iput-boolean v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->enableTask:Z

    .line 17
    iput v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->areaExtend:I

    .line 21
    iput-object p4, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->clickTask:Ljava/lang/Runnable;

    .line 22
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v0

    iget v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->areaExtend:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->areaExtend:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v0

    iget v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->areaExtend:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->areaExtend:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 53
    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAreaExtend()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->areaExtend:I

    return v0
.end method

.method public getClickTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->clickTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getOffTileIndex()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->offTileIndex:I

    return v0
.end method

.method public isEnableAnimated()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->enableAnimated:Z

    return v0
.end method

.method public isEnableTask()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->enableTask:Z

    return v0
.end method

.method public final onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 4
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    const/4 v3, 0x1

    .line 30
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    .line 31
    .local v0, "curX":F
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v1

    .line 32
    .local v1, "curY":F
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->onPressDown()V

    .line 34
    iput-boolean v3, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->grabed:Z

    .line 48
    :cond_0
    :goto_0
    return v3

    .line 35
    :cond_1
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36
    invoke-virtual {p0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->onPressUp()V

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->grabed:Z

    if-eqz v2, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->onClick()V

    .line 40
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->grabed:Z

    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionMove()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 43
    invoke-virtual {p0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->onPressDown()V

    goto :goto_0

    .line 45
    :cond_4
    invoke-virtual {p0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->onPressUp()V

    goto :goto_0
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->clickTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->enableTask:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->clickTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 79
    :cond_0
    return-void
.end method

.method public onPressDown()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->enableAnimated:Z

    if-eqz v0, :cond_0

    .line 68
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->offTileIndex:I

    rsub-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 69
    :cond_0
    return-void
.end method

.method public onPressUp()V
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->enableAnimated:Z

    if-eqz v0, :cond_0

    .line 73
    iget v0, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->offTileIndex:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setCurrentTileIndex(I)V

    .line 74
    :cond_0
    return-void
.end method

.method public setAreaExtend(I)V
    .locals 0
    .param p1, "areaExtend"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->areaExtend:I

    .line 111
    return-void
.end method

.method public setClickTask(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "clickTask"    # Ljava/lang/Runnable;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->clickTask:Ljava/lang/Runnable;

    .line 64
    return-void
.end method

.method public setEnableAnimated(Z)V
    .locals 0
    .param p1, "enableAnimated"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->enableAnimated:Z

    .line 95
    return-void
.end method

.method public setEnableTask(Z)V
    .locals 0
    .param p1, "enableTask"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->enableTask:Z

    .line 103
    return-void
.end method

.method public setOffTileIndex(I)V
    .locals 0
    .param p1, "offTileIndex"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/droidhen/andplugin/ComposedAnimatedButton;->offTileIndex:I

    .line 87
    return-void
.end method
