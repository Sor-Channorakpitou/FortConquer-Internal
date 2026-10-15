.class public Lorg/anddev/andengine/entity/scene/background/ColorBackground;
.super Lorg/anddev/andengine/entity/scene/background/BaseBackground;
.source "ColorBackground.java"


# instance fields
.field private mAlpha:F

.field private mBlue:F

.field private mColorEnabled:Z

.field private mGreen:F

.field private mRed:F


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lorg/anddev/andengine/entity/scene/background/BaseBackground;-><init>()V

    .line 25
    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mRed:F

    .line 26
    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mGreen:F

    .line 27
    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mBlue:F

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mAlpha:F

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mColorEnabled:Z

    .line 38
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .param p1, "pRed"    # F
    .param p2, "pGreen"    # F
    .param p3, "pBlue"    # F

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lorg/anddev/andengine/entity/scene/background/BaseBackground;-><init>()V

    .line 25
    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mRed:F

    .line 26
    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mGreen:F

    .line 27
    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mBlue:F

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mAlpha:F

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mColorEnabled:Z

    .line 41
    iput p1, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mRed:F

    .line 42
    iput p2, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mGreen:F

    .line 43
    iput p3, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mBlue:F

    .line 44
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "pRed"    # F
    .param p2, "pGreen"    # F
    .param p3, "pBlue"    # F
    .param p4, "pAlpha"    # F

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lorg/anddev/andengine/entity/scene/background/BaseBackground;-><init>()V

    .line 25
    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mRed:F

    .line 26
    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mGreen:F

    .line 27
    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mBlue:F

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mAlpha:F

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mColorEnabled:Z

    .line 47
    iput p1, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mRed:F

    .line 48
    iput p2, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mGreen:F

    .line 49
    iput p3, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mBlue:F

    .line 50
    iput p4, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mAlpha:F

    .line 51
    return-void
.end method


# virtual methods
.method public isColorEnabled()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mColorEnabled:Z

    return v0
.end method

.method public onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 4
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mColorEnabled:Z

    if-eqz v0, :cond_0

    .line 118
    iget v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mRed:F

    iget v1, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mGreen:F

    iget v2, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mBlue:F

    iget v3, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mAlpha:F

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 119
    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 121
    :cond_0
    return-void
.end method

.method public setColor(FFF)V
    .locals 0
    .param p1, "pRed"    # F
    .param p2, "pGreen"    # F
    .param p3, "pBlue"    # F

    .prologue
    .line 65
    iput p1, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mRed:F

    .line 66
    iput p2, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mGreen:F

    .line 67
    iput p3, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mBlue:F

    .line 68
    return-void
.end method

.method public setColor(FFFF)V
    .locals 0
    .param p1, "pRed"    # F
    .param p2, "pGreen"    # F
    .param p3, "pBlue"    # F
    .param p4, "pAlpha"    # F

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->setColor(FFF)V

    .line 80
    iput p4, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mAlpha:F

    .line 81
    return-void
.end method

.method public setColor(III)V
    .locals 4
    .param p1, "pRed"    # I
    .param p2, "pGreen"    # I
    .param p3, "pBlue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 90
    int-to-float v0, p1

    div-float/2addr v0, v3

    int-to-float v1, p2

    div-float/2addr v1, v3

    int-to-float v2, p3

    div-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->setColor(FFF)V

    .line 91
    return-void
.end method

.method public setColor(IIII)V
    .locals 5
    .param p1, "pRed"    # I
    .param p2, "pGreen"    # I
    .param p3, "pBlue"    # I
    .param p4, "pAlpha"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 100
    int-to-float v0, p1

    div-float/2addr v0, v4

    int-to-float v1, p2

    div-float/2addr v1, v4

    int-to-float v2, p3

    div-float/2addr v2, v4

    int-to-float v3, p4

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->setColor(FFFF)V

    .line 101
    return-void
.end method

.method public setColorEnabled(Z)V
    .locals 0
    .param p1, "pColorEnabled"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mColorEnabled:Z

    .line 105
    return-void
.end method
