.class public Lorg/anddev/andengine/entity/text/TickerText;
.super Lorg/anddev/andengine/entity/text/Text;
.source "TickerText.java"


# instance fields
.field private mCharactersPerSecond:F

.field private mCharactersVisible:I

.field private mDuration:F

.field private mReverse:Z

.field private mSecondsElapsed:F


# direct methods
.method public constructor <init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;Lorg/anddev/andengine/util/HorizontalAlign;F)V
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pFont"    # Lorg/anddev/andengine/opengl/font/Font;
    .param p4, "pText"    # Ljava/lang/String;
    .param p5, "pHorizontalAlign"    # Lorg/anddev/andengine/util/HorizontalAlign;
    .param p6, "pCharactersPerSecond"    # F

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct/range {p0 .. p5}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;Lorg/anddev/andengine/util/HorizontalAlign;)V

    .line 28
    iput v1, p0, Lorg/anddev/andengine/entity/text/TickerText;->mCharactersVisible:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/entity/text/TickerText;->mSecondsElapsed:F

    .line 31
    iput-boolean v1, p0, Lorg/anddev/andengine/entity/text/TickerText;->mReverse:Z

    .line 41
    invoke-virtual {p0, p6}, Lorg/anddev/andengine/entity/text/TickerText;->setCharactersPerSecond(F)V

    .line 42
    return-void
.end method


# virtual methods
.method protected drawVertices(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 3
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 91
    const/4 v0, 0x4

    const/4 v1, 0x0

    iget v2, p0, Lorg/anddev/andengine/entity/text/TickerText;->mCharactersVisible:I

    mul-int/lit8 v2, v2, 0x6

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 92
    return-void
.end method

.method public getCharactersPerSecond()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/anddev/andengine/entity/text/TickerText;->mCharactersPerSecond:F

    return v0
.end method

.method public getCharactersVisible()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lorg/anddev/andengine/entity/text/TickerText;->mCharactersVisible:I

    return v0
.end method

.method public isReverse()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/text/TickerText;->mReverse:Z

    return v0
.end method

.method protected onManagedUpdate(F)V
    .locals 2
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 75
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/text/Text;->onManagedUpdate(F)V

    .line 76
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/text/TickerText;->mReverse:Z

    if-eqz v0, :cond_1

    .line 77
    iget v0, p0, Lorg/anddev/andengine/entity/text/TickerText;->mCharactersVisible:I

    iget v1, p0, Lorg/anddev/andengine/entity/text/TickerText;->mCharactersMaximum:I

    if-ge v0, v1, :cond_0

    .line 78
    const/4 v0, 0x0

    iget v1, p0, Lorg/anddev/andengine/entity/text/TickerText;->mSecondsElapsed:F

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/text/TickerText;->mSecondsElapsed:F

    .line 79
    iget v0, p0, Lorg/anddev/andengine/entity/text/TickerText;->mSecondsElapsed:F

    iget v1, p0, Lorg/anddev/andengine/entity/text/TickerText;->mCharactersPerSecond:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/anddev/andengine/entity/text/TickerText;->mCharactersVisible:I

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget v0, p0, Lorg/anddev/andengine/entity/text/TickerText;->mCharactersVisible:I

    iget v1, p0, Lorg/anddev/andengine/entity/text/TickerText;->mCharactersMaximum:I

    if-ge v0, v1, :cond_0

    .line 83
    iget v0, p0, Lorg/anddev/andengine/entity/text/TickerText;->mDuration:F

    iget v1, p0, Lorg/anddev/andengine/entity/text/TickerText;->mSecondsElapsed:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/text/TickerText;->mSecondsElapsed:F

    .line 84
    iget v0, p0, Lorg/anddev/andengine/entity/text/TickerText;->mSecondsElapsed:F

    iget v1, p0, Lorg/anddev/andengine/entity/text/TickerText;->mCharactersPerSecond:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/anddev/andengine/entity/text/TickerText;->mCharactersVisible:I

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-super {p0}, Lorg/anddev/andengine/entity/text/Text;->reset()V

    .line 98
    iput v1, p0, Lorg/anddev/andengine/entity/text/TickerText;->mCharactersVisible:I

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/entity/text/TickerText;->mSecondsElapsed:F

    .line 100
    iput-boolean v1, p0, Lorg/anddev/andengine/entity/text/TickerText;->mReverse:Z

    .line 101
    return-void
.end method

.method public setCharactersPerSecond(F)V
    .locals 2
    .param p1, "pCharactersPerSecond"    # F

    .prologue
    .line 61
    iput p1, p0, Lorg/anddev/andengine/entity/text/TickerText;->mCharactersPerSecond:F

    .line 62
    iget v0, p0, Lorg/anddev/andengine/entity/text/TickerText;->mCharactersMaximum:I

    int-to-float v0, v0

    iget v1, p0, Lorg/anddev/andengine/entity/text/TickerText;->mCharactersPerSecond:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/entity/text/TickerText;->mDuration:F

    .line 63
    return-void
.end method

.method public setReverse(Z)V
    .locals 0
    .param p1, "pReverse"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lorg/anddev/andengine/entity/text/TickerText;->mReverse:Z

    .line 54
    return-void
.end method
