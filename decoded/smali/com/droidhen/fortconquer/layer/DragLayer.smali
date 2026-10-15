.class public Lcom/droidhen/fortconquer/layer/DragLayer;
.super Lcom/droidhen/fortconquer/scenes/SmartEntity;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/layer/DragLayer$Vector;
    }
.end annotation


# instance fields
.field protected final A:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

.field protected D2V:F

.field protected final F_F:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

.field protected final F_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

.field protected final F_T:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

.field protected final M:F

.field protected final MOVE:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

.field protected final P_B_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

.field protected final P_F_F:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

.field protected final P_HOLD_DELAY:F

.field protected final P_HOLD_DOWN_DELAY:F

.field protected final P_K:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

.field protected final P_NORMAL_DELAY:F

.field protected final P_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

.field protected final P_SENSITIVE:F

.field protected final P_S_SENSITIVE:F

.field protected final P_TIME_SENSITIVE:J

.field protected final P_V_ATU:F

.field protected final P_V_STOP:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

.field protected final P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

.field protected final V:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

.field protected final cur:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

.field protected curMs:J

.field protected delay:F

.field protected enableDrag:Z

.field protected final grab:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

.field protected final init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

.field protected isScrolling:Z

.field protected final prev:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

.field protected prevMs:J

.field protected signal:I

.field protected final spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

.field protected final temp:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;


# direct methods
.method public constructor <init>(FF)V
    .locals 7
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    const/high16 v6, 0x42960000    # 75.0f

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v4, 0x41f00000    # 30.0f

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    .line 11
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-direct {v0, v2, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->cur:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 12
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-direct {v0, v2, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->prev:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 13
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-direct {v0, v2, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->grab:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 14
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-direct {v0, v2, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 15
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-direct {v0, v2, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->signal:I

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->isScrolling:Z

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->enableDrag:Z

    .line 20
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-direct {v0, v5, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_F_F:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 21
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_TIME_SENSITIVE:J

    .line 22
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-direct {v0, v2, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 23
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-direct {v0, v3, v3}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_V_STOP:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 24
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-direct {v0, v4, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_K:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 25
    const v0, 0x44a28000    # 1300.0f

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_V_ATU:F

    .line 26
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 27
    iput v4, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_SENSITIVE:F

    .line 28
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_S_SENSITIVE:F

    .line 29
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-direct {v0, v6, v6}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_B_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 31
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-direct {v0, v2, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_F:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 32
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-direct {v0, v2, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 33
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-direct {v0, v2, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_T:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 34
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-direct {v0, v2, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->V:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 35
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-direct {v0, v2, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->A:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 36
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-direct {v0, v2, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->MOVE:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 38
    new-instance v0, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-direct {v0, v2, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->temp:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 40
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->M:F

    .line 41
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->D2V:F

    .line 43
    iput v2, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->delay:F

    .line 44
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_HOLD_DELAY:F

    .line 45
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_HOLD_DOWN_DELAY:F

    .line 46
    iput v5, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_NORMAL_DELAY:F

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->prevMs:J

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->curMs:J

    .line 57
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(FF)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 58
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public isEnableDrag()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->enableDrag:Z

    return v0
.end method

.method public final onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 7
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    const v4, 0x44a28000    # 1300.0f

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 134
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->cur:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(FF)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->curMs:J

    .line 136
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iput v3, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->signal:I

    .line 138
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->delay:F

    .line 139
    iput-boolean v3, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->isScrolling:Z

    .line 140
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->prev:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->cur:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 141
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->grab:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->cur:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 142
    iget-wide v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->curMs:J

    iput-wide v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->prevMs:J

    .line 143
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer;->onPressDown(FF)V

    .line 176
    :cond_0
    :goto_0
    return v6

    .line 144
    :cond_1
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionMove()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->enableDrag:Z

    if-eqz v0, :cond_5

    .line 145
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->delay:F

    .line 146
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->isScrolling:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->temp:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->cur:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->prev:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->minus(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->multiply(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->getLength()F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 148
    iput-boolean v6, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->isScrolling:Z

    .line 150
    :cond_2
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->isScrolling:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->temp:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->cur:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->prev:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->minus(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->multiply(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->getLength()F

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 152
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->delay:F

    .line 154
    :cond_3
    iget-wide v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->curMs:J

    iget-wide v2, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->prevMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->V:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->temp:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->cur:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->prev:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->minus(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v1

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->multiply(F)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v1

    iget-wide v2, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->curMs:J

    iget-wide v4, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->prevMs:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->D2V:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->divideBy(F)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->add(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->multiply(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->divideBy(F)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 156
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->prev:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->cur:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 157
    iget-wide v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->curMs:J

    iput-wide v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->prevMs:J

    goto/16 :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->prev:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->cur:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 162
    iget-wide v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->curMs:J

    iput-wide v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->prevMs:J

    goto/16 :goto_0

    .line 164
    :cond_5
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer;->onPressUp(FF)V

    .line 166
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->isScrolling:Z

    if-nez v0, :cond_7

    .line 167
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer;->onClick(FF)V

    .line 173
    :cond_6
    :goto_1
    iput-boolean v3, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->isScrolling:Z

    .line 174
    iput v6, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->signal:I

    goto/16 :goto_0

    .line 169
    :cond_7
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->temp:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->V:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->getLength()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_6

    .line 170
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->V:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->unit()Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->multiply(F)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    goto :goto_1
.end method

.method protected onClick(FF)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 181
    return-void
.end method

.method protected final onManagedUpdate(F)V
    .locals 4
    .param p1, "pSecondsElapsed"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->delay:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->signal:I

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->V:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 78
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->A:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 79
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 81
    :cond_0
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->delay:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->signal:I

    if-nez v0, :cond_1

    .line 82
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->delay:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->delay:F

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->greatAbsOr(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_K:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->multiply(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->multiply(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->V:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_V_STOP:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->lessEqAbsAnd(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 92
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_F:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 96
    :goto_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_T:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 97
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_T:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->add(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 98
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_T:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_F:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->add(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 99
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_F:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_T:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_F_F:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->lessEqSqrt(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_T:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_T:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->V:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_V_STOP:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->lessAbsAnd(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->V:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->A:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_T:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->divideBy(F)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 106
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->V:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->A:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v1, p1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->multiply(F)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->add(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 107
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->greatAbsOr(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->V:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->sameDirection(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 109
    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->signal:I

    if-eqz v0, :cond_8

    .line 111
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->MOVE:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->unit()Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_B_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->multiply(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->add(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->multiply(F)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 115
    :goto_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->V:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->unit()Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_V_STOP:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->multiply(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 122
    :goto_3
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->MOVE:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->greatAbsOr(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iput-boolean v3, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->isScrolling:Z

    .line 125
    :cond_4
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/layer/DragLayer;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->MOVE:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/layer/DragLayer;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->MOVE:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v2, v2, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->y:F

    add-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer;->setPosition(FF)V

    .line 126
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->V:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->signal:I

    if-ne v0, v3, :cond_5

    .line 127
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/layer/DragLayer;->onStop()V

    .line 129
    :cond_5
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->onManagedUpdate(F)V

    .line 130
    return-void

    .line 88
    :cond_6
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    goto/16 :goto_0

    .line 94
    :cond_7
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_F:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->V:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_S:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->multiply(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->unit()Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_F_F:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->multiply(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->multiply(F)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    goto/16 :goto_1

    .line 113
    :cond_8
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->MOVE:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    goto :goto_2

    .line 117
    :cond_9
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->F_T:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->V:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_V_STOP:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->lessEqAbsAnd(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 118
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->V:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->P_ZERO:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 120
    :cond_a
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->MOVE:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->V:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(Lcom/droidhen/fortconquer/layer/DragLayer$Vector;)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->multiply(F)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    goto/16 :goto_3
.end method

.method protected onPressDown(FF)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 185
    return-void
.end method

.method protected onPressUp(FF)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 189
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public setEnableDrag(Z)V
    .locals 0
    .param p1, "enableDrag"    # Z

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->enableDrag:Z

    .line 351
    return-void
.end method

.method public final setPosition(FF)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->setPosition(FF)V

    .line 70
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/layer/DragLayer;->updateSpring()V

    .line 71
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "pVisible"    # Z

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->setVisible(Z)V

    .line 196
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/layer/DragLayer;->setIgnoreUpdate(Z)V

    .line 197
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected updateSpring()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/DragLayer;->spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v1, v1}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(FF)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 62
    return-void
.end method
