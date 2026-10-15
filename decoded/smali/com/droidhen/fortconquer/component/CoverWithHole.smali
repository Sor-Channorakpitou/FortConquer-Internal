.class public Lcom/droidhen/fortconquer/component/CoverWithHole;
.super Lcom/droidhen/fortconquer/scenes/SmartEntity;
.source "CoverWithHole.java"


# static fields
.field private static final PADDING:I = 0xb


# instance fields
.field private covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

.field public frame:Lcom/droidhen/fortconquer/component/RoundRectangle;

.field private mHeight:F

.field private mHoleH:F

.field private mHoleW:F

.field private mHoleX:F

.field private mHoleY:F

.field private mWidth:F


# direct methods
.method public constructor <init>(FFFFFFFF)V
    .locals 7
    .param p1, "coverX"    # F
    .param p2, "coverY"    # F
    .param p3, "coverW"    # F
    .param p4, "coverH"    # F
    .param p5, "holeX"    # F
    .param p6, "holeY"    # F
    .param p7, "holeW"    # F
    .param p8, "holeH"    # F

    .prologue
    const/4 v6, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->frame:Lcom/droidhen/fortconquer/component/RoundRectangle;

    .line 28
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/anddev/andengine/entity/primitive/Rectangle;

    iput-object v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    .line 32
    iput p3, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mWidth:F

    .line 33
    iput p4, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHeight:F

    .line 34
    iput p5, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleX:F

    .line 35
    iput p6, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleY:F

    .line 36
    iput p7, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleW:F

    .line 37
    iput p8, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleH:F

    .line 39
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/4 v2, 0x0

    new-instance v3, Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-direct {v3, v6, v6, p3, p6}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    aput-object v3, v1, v2

    .line 40
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/4 v2, 0x1

    new-instance v3, Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-direct {v3, v6, p6, p5, p8}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    aput-object v3, v1, v2

    .line 41
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/4 v2, 0x2

    new-instance v3, Lorg/anddev/andengine/entity/primitive/Rectangle;

    add-float v4, p5, p7

    sub-float v5, p3, p5

    sub-float/2addr v5, p7

    invoke-direct {v3, v4, p6, v5, p8}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    aput-object v3, v1, v2

    .line 42
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/4 v2, 0x3

    new-instance v3, Lorg/anddev/andengine/entity/primitive/Rectangle;

    add-float v4, p6, p8

    sub-float v5, p4, p6

    sub-float/2addr v5, p8

    invoke-direct {v3, v6, v4, p3, v5}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    aput-object v3, v1, v2

    .line 43
    new-instance v1, Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-static {}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->getGuideTexture()Lcom/droidhen/andplugin/PlistTexture;

    move-result-object v2

    const-string v3, "frame.png"

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Lcom/droidhen/fortconquer/component/RoundRectangle;-><init>(Lcom/droidhen/andplugin/PlistTexture;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->frame:Lcom/droidhen/fortconquer/component/RoundRectangle;

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->frame:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/component/CoverWithHole;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 49
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, v6, v6, v6, v1}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setColor(FFFF)V

    .line 50
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/CoverWithHole;->updateCovers()V

    .line 51
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/component/CoverWithHole;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateCovers()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v4, 0x41300000    # 11.0f

    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleY:F

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setHeight(F)V

    .line 61
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v0, v0, v2

    iget v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleY:F

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    .line 62
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v0, v0, v2

    iget v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleX:F

    iget v2, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleH:F

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setSize(FF)V

    .line 63
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v0, v0, v6

    iget v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleX:F

    iget v2, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleW:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleY:F

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    .line 64
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v0, v0, v6

    iget v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mWidth:F

    iget v2, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleW:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleH:F

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setSize(FF)V

    .line 65
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleY:F

    iget v2, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleH:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    .line 66
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mWidth:F

    iget v2, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHeight:F

    iget v3, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleY:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleH:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setSize(FF)V

    .line 68
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->frame:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleWidth()F

    move-result v1

    add-float/2addr v1, v5

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleHeight()F

    move-result v2

    add-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/component/RoundRectangle;->setSize(FF)V

    .line 69
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->frame:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleX()F

    move-result v1

    sub-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/component/CoverWithHole;->getHoleY()F

    move-result v2

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/component/RoundRectangle;->setPosition(FF)V

    .line 70
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 3
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    const/4 v1, 0x0

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 160
    :cond_0
    :goto_1
    return v1

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/component/CoverWithHole;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/component/CoverWithHole;->hasParent()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .line 155
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHeight:F

    return v0
.end method

.method public getHoleHeight()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleH:F

    return v0
.end method

.method public getHoleWidth()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleW:F

    return v0
.end method

.method public getHoleX()F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleX:F

    return v0
.end method

.method public getHoleY()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleY:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mWidth:F

    return v0
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 1
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public setColor(FFFF)V
    .locals 2
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 57
    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->covers:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setColor(FFFF)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "pHeight"    # F

    .prologue
    .line 87
    iput p1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHeight:F

    .line 88
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/CoverWithHole;->updateCovers()V

    .line 89
    return-void
.end method

.method public setHoleHeight(F)V
    .locals 0
    .param p1, "holeH"    # F

    .prologue
    .line 111
    iput p1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleH:F

    .line 112
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/CoverWithHole;->updateCovers()V

    .line 113
    return-void
.end method

.method public setHolePosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 140
    iput p1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleX:F

    .line 141
    iput p2, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleY:F

    .line 142
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/CoverWithHole;->updateCovers()V

    .line 143
    return-void
.end method

.method public setHoleSize(FF)V
    .locals 0
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 116
    iput p1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleW:F

    .line 117
    iput p2, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleH:F

    .line 118
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/CoverWithHole;->updateCovers()V

    .line 119
    return-void
.end method

.method public setHoleWidth(F)V
    .locals 0
    .param p1, "holeW"    # F

    .prologue
    .line 102
    iput p1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleW:F

    .line 103
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/CoverWithHole;->updateCovers()V

    .line 104
    return-void
.end method

.method public setHoleX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 126
    iput p1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleX:F

    .line 127
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/CoverWithHole;->updateCovers()V

    .line 128
    return-void
.end method

.method public setHoleY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 135
    iput p1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHoleY:F

    .line 136
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/CoverWithHole;->updateCovers()V

    .line 137
    return-void
.end method

.method public setSeen(Z)V
    .locals 2
    .param p1, "seen"    # Z

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->frame:Lcom/droidhen/fortconquer/component/RoundRectangle;

    invoke-virtual {v0, p1}, Lcom/droidhen/fortconquer/component/RoundRectangle;->setVisible(Z)V

    .line 78
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/droidhen/fortconquer/component/CoverWithHole;->setColor(FFFF)V

    .line 79
    return-void

    :cond_0
    move v0, v1

    .line 78
    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "pWidth"    # F
    .param p2, "pHeight"    # F

    .prologue
    .line 92
    iput p1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mWidth:F

    .line 93
    iput p2, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mHeight:F

    .line 94
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/CoverWithHole;->updateCovers()V

    .line 95
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "pWidth"    # F

    .prologue
    .line 82
    iput p1, p0, Lcom/droidhen/fortconquer/component/CoverWithHole;->mWidth:F

    .line 83
    invoke-direct {p0}, Lcom/droidhen/fortconquer/component/CoverWithHole;->updateCovers()V

    .line 84
    return-void
.end method
