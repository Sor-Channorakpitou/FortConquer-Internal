.class public Lcom/droidhen/fortconquer/scenes/SmartEntity;
.super Lorg/anddev/andengine/entity/Entity;
.source "SmartEntity.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0, v0}, Lorg/anddev/andengine/entity/Entity;-><init>(FF)V

    .line 13
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/Entity;-><init>(FF)V

    .line 18
    return-void
.end method


# virtual methods
.method public declared-synchronized attachChild(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->detachSelf()Z

    .line 24
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized attachChild(Lorg/anddev/andengine/entity/IEntity;I)Z
    .locals 1
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p2, "pIndex"    # I

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->detachSelf()Z

    .line 31
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/Entity;->attachChild(Lorg/anddev/andengine/entity/IEntity;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 1
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method
