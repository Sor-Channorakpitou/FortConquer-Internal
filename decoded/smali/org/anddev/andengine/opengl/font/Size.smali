.class Lorg/anddev/andengine/opengl/font/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private mHeight:F

.field private mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0, v0}, Lorg/anddev/andengine/opengl/font/Size;-><init>(FF)V

    .line 28
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "pWidth"    # F
    .param p2, "pHeight"    # F

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/opengl/font/Size;->setWidth(F)V

    .line 32
    invoke-virtual {p0, p2}, Lorg/anddev/andengine/opengl/font/Size;->setHeight(F)V

    .line 33
    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/anddev/andengine/opengl/font/Size;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/anddev/andengine/opengl/font/Size;->mWidth:F

    return v0
.end method

.method public set(II)V
    .locals 1
    .param p1, "pWidth"    # I
    .param p2, "pHeight"    # I

    .prologue
    .line 56
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/opengl/font/Size;->setWidth(F)V

    .line 57
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/opengl/font/Size;->setHeight(F)V

    .line 58
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 48
    iput p1, p0, Lorg/anddev/andengine/opengl/font/Size;->mHeight:F

    .line 49
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 40
    iput p1, p0, Lorg/anddev/andengine/opengl/font/Size;->mWidth:F

    .line 41
    return-void
.end method
