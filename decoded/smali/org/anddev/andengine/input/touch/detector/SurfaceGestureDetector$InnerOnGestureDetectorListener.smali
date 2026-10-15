.class Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SurfaceGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerOnGestureDetectorListener"
.end annotation


# instance fields
.field private final mSwipeMinDistance:F

.field final synthetic this$0:Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;F)V
    .locals 0
    .param p2, "pSwipeMinDistance"    # F

    .prologue
    .line 85
    iput-object p1, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->this$0:Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 86
    iput p2, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->mSwipeMinDistance:F

    .line 87
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "pMotionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->this$0:Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;

    invoke-virtual {v0}, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;->onDoubleTap()Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "pMotionEventStart"    # Landroid/view/MotionEvent;
    .param p2, "pMotionEventEnd"    # Landroid/view/MotionEvent;
    .param p3, "pVelocityX"    # F
    .param p4, "pVelocityY"    # F

    .prologue
    const/4 v2, 0x0

    .line 109
    iget v1, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->mSwipeMinDistance:F

    .line 111
    .local v1, "swipeMinDistance":F
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 113
    .local v0, "isHorizontalFling":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v3, v1

    if-lez v3, :cond_2

    .line 115
    iget-object v2, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->this$0:Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;

    invoke-virtual {v2}, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;->onSwipeLeft()Z

    move-result v2

    .line 127
    :cond_0
    :goto_1
    return v2

    .end local v0    # "isHorizontalFling":Z
    :cond_1
    move v0, v2

    .line 111
    goto :goto_0

    .line 116
    .restart local v0    # "isHorizontalFling":Z
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    .line 117
    iget-object v2, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->this$0:Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;

    invoke-virtual {v2}, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;->onSwipeRight()Z

    move-result v2

    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v3, v1

    if-lez v3, :cond_4

    .line 121
    iget-object v2, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->this$0:Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;

    invoke-virtual {v2}, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;->onSwipeUp()Z

    move-result v2

    goto :goto_1

    .line 122
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    .line 123
    iget-object v2, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->this$0:Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;

    invoke-virtual {v2}, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;->onSwipeDown()Z

    move-result v2

    goto :goto_1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "pMotionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->this$0:Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;

    invoke-virtual {v0}, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;->onSingleTap()Z

    move-result v0

    return v0
.end method
