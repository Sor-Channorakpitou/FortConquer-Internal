.class public Lorg/anddev/andengine/engine/options/resolutionpolicy/FixedResolutionPolicy;
.super Lorg/anddev/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;
.source "FixedResolutionPolicy.java"


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "pWidth"    # I
    .param p2, "pHeight"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/anddev/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;-><init>()V

    .line 29
    iput p1, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/FixedResolutionPolicy;->mWidth:I

    .line 30
    iput p2, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/FixedResolutionPolicy;->mHeight:I

    .line 31
    return-void
.end method


# virtual methods
.method public onMeasure(Lorg/anddev/andengine/opengl/view/RenderSurfaceView;II)V
    .locals 2
    .param p1, "pRenderSurfaceView"    # Lorg/anddev/andengine/opengl/view/RenderSurfaceView;
    .param p2, "pWidthMeasureSpec"    # I
    .param p3, "pHeightMeasureSpec"    # I

    .prologue
    .line 43
    iget v0, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/FixedResolutionPolicy;->mWidth:I

    iget v1, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/FixedResolutionPolicy;->mHeight:I

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->setMeasuredDimensionProxy(II)V

    .line 44
    return-void
.end method
