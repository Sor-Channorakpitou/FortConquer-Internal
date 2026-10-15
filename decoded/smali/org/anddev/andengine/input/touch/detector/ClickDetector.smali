.class public Lorg/anddev/andengine/input/touch/detector/ClickDetector;
.super Lorg/anddev/andengine/input/touch/detector/BaseDetector;
.source "ClickDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;
    }
.end annotation


# static fields
.field private static final TRIGGER_CLICK_MAXIMUM_MILLISECONDS_DEFAULT:J = 0xc8L


# instance fields
.field private final mClickDetectorListener:Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;

.field private mDownTimeMilliseconds:J

.field private mTriggerClickMaximumMilliseconds:J


# direct methods
.method public constructor <init>(JLorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;)V
    .locals 3
    .param p1, "pTriggerClickMaximumMilliseconds"    # J
    .param p3, "pClickDetectorListener"    # Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/anddev/andengine/input/touch/detector/BaseDetector;-><init>()V

    .line 28
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mDownTimeMilliseconds:J

    .line 39
    iput-wide p1, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mTriggerClickMaximumMilliseconds:J

    .line 40
    iput-object p3, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mClickDetectorListener:Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;)V
    .locals 2
    .param p1, "pClickDetectorListener"    # Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;

    .prologue
    .line 35
    const-wide/16 v0, 0xc8

    invoke-direct {p0, v0, v1, p1}, Lorg/anddev/andengine/input/touch/detector/ClickDetector;-><init>(JLorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getTriggerClickMaximumMilliseconds()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mTriggerClickMaximumMilliseconds:J

    return-wide v0
.end method

.method public onManagedTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 8
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    const/4 v2, 0x1

    .line 61
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 75
    :pswitch_0
    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    .line 63
    :pswitch_1
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mDownTimeMilliseconds:J

    goto :goto_0

    .line 67
    :pswitch_2
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 69
    .local v0, "upTimeMilliseconds":J
    iget-wide v4, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mDownTimeMilliseconds:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mTriggerClickMaximumMilliseconds:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 70
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mDownTimeMilliseconds:J

    .line 71
    iget-object v3, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mClickDetectorListener:Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;

    invoke-interface {v3, p0, p1}, Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;->onClick(Lorg/anddev/andengine/input/touch/detector/ClickDetector;Lorg/anddev/andengine/input/touch/TouchEvent;)V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setTriggerClickMaximumMilliseconds(J)V
    .locals 1
    .param p1, "pClickMaximumMilliseconds"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mTriggerClickMaximumMilliseconds:J

    .line 53
    return-void
.end method
