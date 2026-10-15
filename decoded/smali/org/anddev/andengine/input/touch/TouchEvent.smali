.class public Lorg/anddev/andengine/input/touch/TouchEvent;
.super Ljava/lang/Object;
.source "TouchEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_UP:I = 0x1

.field private static final TOUCHEVENT_POOL:Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;


# instance fields
.field protected mAction:I

.field protected mMotionEvent:Landroid/view/MotionEvent;

.field protected mPointerID:I

.field protected mX:F

.field protected mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;-><init>(Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;)V

    sput-object v0, Lorg/anddev/andengine/input/touch/TouchEvent;->TOUCHEVENT_POOL:Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(FFIILandroid/view/MotionEvent;)Lorg/anddev/andengine/input/touch/TouchEvent;
    .locals 6
    .param p0, "pX"    # F
    .param p1, "pY"    # F
    .param p2, "pAction"    # I
    .param p3, "pPointerID"    # I
    .param p4, "pMotionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 45
    sget-object v1, Lorg/anddev/andengine/input/touch/TouchEvent;->TOUCHEVENT_POOL:Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;

    invoke-virtual {v1}, Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;->obtainPoolItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/input/touch/TouchEvent;

    .local v0, "touchEvent":Lorg/anddev/andengine/input/touch/TouchEvent;
    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 46
    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/input/touch/TouchEvent;->set(FFIILandroid/view/MotionEvent;)V

    .line 47
    return-object v0
.end method

.method public static recycle(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 1
    .param p0, "pTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 63
    sget-object v0, Lorg/anddev/andengine/input/touch/TouchEvent;->TOUCHEVENT_POOL:Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;->recyclePoolItem(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method private set(FFIILandroid/view/MotionEvent;)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pAction"    # I
    .param p4, "pPointerID"    # I
    .param p5, "pMotionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 51
    iput p1, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mX:F

    .line 52
    iput p2, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mY:F

    .line 53
    iput p3, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mAction:I

    .line 54
    iput p4, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mPointerID:I

    .line 55
    iput-object p5, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    .line 56
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mAction:I

    return v0
.end method

.method public getMotionEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getPointerID()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mPointerID:I

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mY:F

    return v0
.end method

.method public isActionCancel()Z
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionDown()Z
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mAction:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionMove()Z
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionOutside()Z
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mAction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionUp()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 101
    iget v1, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mAction:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offset(FF)V
    .locals 1
    .param p1, "pDeltaX"    # F
    .param p2, "pDeltaY"    # F

    .prologue
    .line 84
    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mX:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mX:F

    .line 85
    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mY:F

    add-float/2addr v0, p2

    iput v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mY:F

    .line 86
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/anddev/andengine/input/touch/TouchEvent;->TOUCHEVENT_POOL:Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;->recyclePoolItem(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public set(FF)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 79
    iput p1, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mX:F

    .line 80
    iput p2, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mY:F

    .line 81
    return-void
.end method
