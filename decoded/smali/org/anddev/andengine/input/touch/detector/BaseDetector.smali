.class public abstract Lorg/anddev/andengine/input/touch/detector/BaseDetector;
.super Ljava/lang/Object;
.source "BaseDetector.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/input/touch/detector/BaseDetector;->mEnabled:Z

    .line 14
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/anddev/andengine/input/touch/detector/BaseDetector;->mEnabled:Z

    return v0
.end method

.method protected abstract onManagedTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 49
    invoke-virtual {p0, p2}, Lorg/anddev/andengine/input/touch/detector/BaseDetector;->onTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    return v0
.end method

.method public final onTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/anddev/andengine/input/touch/detector/BaseDetector;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/input/touch/detector/BaseDetector;->onManagedTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "pEnabled"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lorg/anddev/andengine/input/touch/detector/BaseDetector;->mEnabled:Z

    .line 39
    return-void
.end method
