.class public Lorg/anddev/andengine/entity/scene/popup/PopupScene;
.super Lorg/anddev/andengine/entity/scene/CameraScene;
.source "PopupScene.java"


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/Scene;F)V
    .locals 1
    .param p1, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p2, "pParentScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p3, "pDurationSeconds"    # F

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/entity/scene/popup/PopupScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/Scene;FLjava/lang/Runnable;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/Scene;FLjava/lang/Runnable;)V
    .locals 2
    .param p1, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p2, "pParentScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p3, "pDurationSeconds"    # F
    .param p4, "pRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/scene/CameraScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 35
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/scene/popup/PopupScene;->setBackgroundEnabled(Z)V

    .line 37
    invoke-virtual {p2, p0, v0, v1, v1}, Lorg/anddev/andengine/entity/scene/Scene;->setChildScene(Lorg/anddev/andengine/entity/scene/Scene;ZZZ)V

    .line 39
    new-instance v0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;

    new-instance v1, Lorg/anddev/andengine/entity/scene/popup/PopupScene$1;

    invoke-direct {v1, p0, p2, p4}, Lorg/anddev/andengine/entity/scene/popup/PopupScene$1;-><init>(Lorg/anddev/andengine/entity/scene/popup/PopupScene;Lorg/anddev/andengine/entity/scene/Scene;Ljava/lang/Runnable;)V

    invoke-direct {v0, p3, v1}, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;-><init>(FLorg/anddev/andengine/engine/handler/timer/ITimerCallback;)V

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/scene/popup/PopupScene;->registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V

    .line 49
    return-void
.end method
