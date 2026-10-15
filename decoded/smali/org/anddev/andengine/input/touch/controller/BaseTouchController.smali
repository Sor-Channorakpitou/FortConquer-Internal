.class public abstract Lorg/anddev/andengine/input/touch/controller/BaseTouchController;
.super Ljava/lang/Object;
.source "BaseTouchController.java"

# interfaces
.implements Lorg/anddev/andengine/input/touch/controller/ITouchController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;
    }
.end annotation


# instance fields
.field private mRunOnUpdateThread:Z

.field private mTouchEventCallback:Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;

.field private final mTouchEventRunnablePoolUpdateHandler:Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler",
            "<",
            "Lorg/anddev/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController$1;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/input/touch/controller/BaseTouchController$1;-><init>(Lorg/anddev/andengine/input/touch/controller/BaseTouchController;)V

    iput-object v0, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mTouchEventRunnablePoolUpdateHandler:Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lorg/anddev/andengine/input/touch/controller/BaseTouchController;)Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mTouchEventCallback:Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;

    return-object v0
.end method


# virtual methods
.method public applyTouchOptions(Lorg/anddev/andengine/engine/options/TouchOptions;)V
    .locals 1
    .param p1, "pTouchOptions"    # Lorg/anddev/andengine/engine/options/TouchOptions;

    .prologue
    .line 98
    invoke-virtual {p1}, Lorg/anddev/andengine/engine/options/TouchOptions;->isRunOnUpdateThread()Z

    move-result v0

    iput-boolean v0, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mRunOnUpdateThread:Z

    .line 99
    return-void
.end method

.method protected fireTouchEvent(FFIILandroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pAction"    # I
    .param p4, "pPointerID"    # I
    .param p5, "pMotionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 75
    iget-boolean v3, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mRunOnUpdateThread:Z

    if-eqz v3, :cond_0

    .line 76
    invoke-static {p5}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p1, p2, p3, p4, v3}, Lorg/anddev/andengine/input/touch/TouchEvent;->obtain(FFIILandroid/view/MotionEvent;)Lorg/anddev/andengine/input/touch/TouchEvent;

    move-result-object v1

    .line 78
    .local v1, "touchEvent":Lorg/anddev/andengine/input/touch/TouchEvent;
    iget-object v3, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mTouchEventRunnablePoolUpdateHandler:Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;

    invoke-virtual {v3}, Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;->obtainPoolItem()Lorg/anddev/andengine/util/pool/PoolItem;

    move-result-object v2

    check-cast v2, Lorg/anddev/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;

    .line 79
    .local v2, "touchEventRunnablePoolItem":Lorg/anddev/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;
    invoke-virtual {v2, v1}, Lorg/anddev/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;->set(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    .line 80
    iget-object v3, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mTouchEventRunnablePoolUpdateHandler:Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;

    invoke-virtual {v3, v2}, Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;->postPoolItem(Lorg/anddev/andengine/util/pool/PoolItem;)V

    .line 82
    const/4 v0, 0x1

    .line 89
    .end local v2    # "touchEventRunnablePoolItem":Lorg/anddev/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;
    .local v0, "handled":Z
    :goto_0
    return v0

    .line 84
    .end local v0    # "handled":Z
    .end local v1    # "touchEvent":Lorg/anddev/andengine/input/touch/TouchEvent;
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lorg/anddev/andengine/input/touch/TouchEvent;->obtain(FFIILandroid/view/MotionEvent;)Lorg/anddev/andengine/input/touch/TouchEvent;

    move-result-object v1

    .line 85
    .restart local v1    # "touchEvent":Lorg/anddev/andengine/input/touch/TouchEvent;
    iget-object v3, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mTouchEventCallback:Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;

    invoke-interface {v3, v1}, Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;->onTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    .line 86
    .restart local v0    # "handled":Z
    invoke-virtual {v1}, Lorg/anddev/andengine/input/touch/TouchEvent;->recycle()V

    goto :goto_0
.end method

.method public onUpdate(F)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mRunOnUpdateThread:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mTouchEventRunnablePoolUpdateHandler:Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;->onUpdate(F)V

    .line 70
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mRunOnUpdateThread:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mTouchEventRunnablePoolUpdateHandler:Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;->reset()V

    .line 63
    :cond_0
    return-void
.end method

.method public setTouchEventCallback(Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;)V
    .locals 0
    .param p1, "pTouchEventCallback"    # Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;

    .prologue
    .line 51
    iput-object p1, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mTouchEventCallback:Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;

    .line 52
    return-void
.end method
