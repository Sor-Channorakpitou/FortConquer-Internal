.class public Lorg/anddev/andengine/engine/options/resolutionpolicy/RelativeResolutionPolicy;
.super Lorg/anddev/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;
.source "RelativeResolutionPolicy.java"


# instance fields
.field private final mHeightScale:F

.field private final mWidthScale:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "pScale"    # F

    .prologue
    .line 31
    invoke-direct {p0, p1, p1}, Lorg/anddev/andengine/engine/options/resolutionpolicy/RelativeResolutionPolicy;-><init>(FF)V

    .line 32
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "pWidthScale"    # F
    .param p2, "pHeightScale"    # F

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/anddev/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;-><init>()V

    .line 35
    iput p1, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/RelativeResolutionPolicy;->mWidthScale:F

    .line 36
    iput p2, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/RelativeResolutionPolicy;->mHeightScale:F

    .line 37
    return-void
.end method


# virtual methods
.method public onMeasure(Lorg/anddev/andengine/opengl/view/RenderSurfaceView;II)V
    .locals 4
    .param p1, "pRenderSurfaceView"    # Lorg/anddev/andengine/opengl/view/RenderSurfaceView;
    .param p2, "pWidthMeasureSpec"    # I
    .param p3, "pHeightMeasureSpec"    # I

    .prologue
    .line 48
    invoke-static {p2, p3}, Lorg/anddev/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;->throwOnNotMeasureSpecEXACTLY(II)V

    .line 50
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/RelativeResolutionPolicy;->mWidthScale:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 51
    .local v1, "measuredWidth":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/RelativeResolutionPolicy;->mHeightScale:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 53
    .local v0, "measuredHeight":I
    invoke-virtual {p1, v1, v0}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->setMeasuredDimensionProxy(II)V

    .line 54
    return-void
.end method
