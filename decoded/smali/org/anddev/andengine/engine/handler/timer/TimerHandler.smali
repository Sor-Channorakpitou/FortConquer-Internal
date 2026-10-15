.class public Lorg/anddev/andengine/engine/handler/timer/TimerHandler;
.super Ljava/lang/Object;
.source "TimerHandler.java"

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;


# instance fields
.field private mAutoReset:Z

.field protected final mTimerCallback:Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;

.field private mTimerCallbackTriggered:Z

.field private mTimerSeconds:F

.field private mTimerSecondsElapsed:F


# direct methods
.method public constructor <init>(FLorg/anddev/andengine/engine/handler/timer/ITimerCallback;)V
    .locals 1
    .param p1, "pTimerSeconds"    # F
    .param p2, "pTimerCallback"    # Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;-><init>(FZLorg/anddev/andengine/engine/handler/timer/ITimerCallback;)V

    .line 33
    return-void
.end method

.method public constructor <init>(FZLorg/anddev/andengine/engine/handler/timer/ITimerCallback;)V
    .locals 0
    .param p1, "pTimerSeconds"    # F
    .param p2, "pAutoReset"    # Z
    .param p3, "pTimerCallback"    # Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    .line 37
    iput-boolean p2, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mAutoReset:Z

    .line 38
    iput-object p3, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerCallback:Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;

    .line 39
    return-void
.end method


# virtual methods
.method public getTimerSeconds()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    return v0
.end method

.method public getTimerSecondsElapsed()F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    return v0
.end method

.method public isAutoReset()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mAutoReset:Z

    return v0
.end method

.method public isTimerCallbackTriggered()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerCallbackTriggered:Z

    return v0
.end method

.method public onUpdate(F)V
    .locals 2
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mAutoReset:Z

    if-eqz v0, :cond_2

    .line 80
    iget v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    .line 81
    :goto_0
    iget v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    iget v1, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    .line 94
    :cond_0
    :goto_1
    return-void

    .line 82
    :cond_1
    iget v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    iget v1, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    .line 83
    iget-object v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerCallback:Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;

    invoke-interface {v0, p0}, Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;->onTimePassed(Lorg/anddev/andengine/engine/handler/timer/TimerHandler;)V

    goto :goto_0

    .line 86
    :cond_2
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerCallbackTriggered:Z

    if-nez v0, :cond_0

    .line 87
    iget v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    .line 88
    iget v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    iget v1, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerCallbackTriggered:Z

    .line 90
    iget-object v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerCallback:Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;

    invoke-interface {v0, p0}, Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;->onTimePassed(Lorg/anddev/andengine/engine/handler/timer/TimerHandler;)V

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerCallbackTriggered:Z

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    .line 100
    return-void
.end method

.method public setAutoReset(Z)V
    .locals 0
    .param p1, "pAutoReset"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mAutoReset:Z

    .line 51
    return-void
.end method

.method public setTimerCallbackTriggered(Z)V
    .locals 0
    .param p1, "pTimerCallbackTriggered"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerCallbackTriggered:Z

    .line 71
    return-void
.end method

.method public setTimerSeconds(F)V
    .locals 0
    .param p1, "pTimerSeconds"    # F

    .prologue
    .line 54
    iput p1, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    .line 55
    return-void
.end method
