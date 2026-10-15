.class public Lorg/anddev/andengine/entity/scene/Scene;
.super Lorg/anddev/andengine/entity/Entity;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;,
        Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;,
        Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;
    }
.end annotation


# static fields
.field private static final TOUCHAREAS_CAPACITY_DEFAULT:I = 0x4


# instance fields
.field private mBackground:Lorg/anddev/andengine/entity/scene/background/IBackground;

.field private mBackgroundEnabled:Z

.field protected mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

.field private mChildSceneModalDraw:Z

.field private mChildSceneModalTouch:Z

.field private mChildSceneModalUpdate:Z

.field private mOnAreaTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;

.field private mOnAreaTouchTraversalBackToFront:Z

.field private mOnSceneTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

.field private mOnSceneTouchListenerBindingEnabled:Z

.field private final mOnSceneTouchListenerBindings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mParentScene:Lorg/anddev/andengine/entity/scene/Scene;

.field private final mRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

.field private mSecondsElapsedTotal:F

.field private mTouchAreaBindingEnabled:Z

.field private final mTouchAreaBindings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;",
            ">;"
        }
    .end annotation
.end field

.field protected mTouchAreas:Lorg/anddev/andengine/util/SmartList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/SmartList",
            "<",
            "Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;-><init>()V

    .line 49
    new-instance v0, Lorg/anddev/andengine/util/SmartList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/anddev/andengine/util/SmartList;-><init>(I)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreas:Lorg/anddev/andengine/util/SmartList;

    .line 51
    new-instance v0, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    invoke-direct {v0}, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    .line 57
    new-instance v0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;

    invoke-direct {v0, v2, v2, v2}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;-><init>(FFF)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackground:Lorg/anddev/andengine/entity/scene/background/IBackground;

    .line 58
    iput-boolean v4, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackgroundEnabled:Z

    .line 60
    iput-boolean v4, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchTraversalBackToFront:Z

    .line 62
    iput-boolean v3, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindingEnabled:Z

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    .line 64
    iput-boolean v3, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingEnabled:Z

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "pChildCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 76
    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;-><init>()V

    .line 49
    new-instance v1, Lorg/anddev/andengine/util/SmartList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/anddev/andengine/util/SmartList;-><init>(I)V

    iput-object v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreas:Lorg/anddev/andengine/util/SmartList;

    .line 51
    new-instance v1, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    invoke-direct {v1}, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;-><init>()V

    iput-object v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    .line 57
    new-instance v1, Lorg/anddev/andengine/entity/scene/background/ColorBackground;

    invoke-direct {v1, v3, v3, v3}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;-><init>(FFF)V

    iput-object v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackground:Lorg/anddev/andengine/entity/scene/background/IBackground;

    .line 58
    iput-boolean v5, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackgroundEnabled:Z

    .line 60
    iput-boolean v5, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchTraversalBackToFront:Z

    .line 62
    iput-boolean v4, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindingEnabled:Z

    .line 63
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    .line 64
    iput-boolean v4, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingEnabled:Z

    .line 65
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 80
    return-void

    .line 78
    :cond_0
    new-instance v1, Lorg/anddev/andengine/entity/Entity;

    invoke-direct {v1}, Lorg/anddev/andengine/entity/Entity;-><init>()V

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private onAreaTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;FFLorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "sceneTouchEventX"    # F
    .param p3, "sceneTouchEventY"    # F
    .param p4, "touchArea"    # Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    .prologue
    .line 370
    invoke-interface {p4, p2, p3}, Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;->convertSceneToLocalCoordinates(FF)[F

    move-result-object v1

    .line 371
    .local v1, "touchAreaLocalCoordinates":[F
    const/4 v4, 0x0

    aget v2, v1, v4

    .line 372
    .local v2, "touchAreaLocalX":F
    const/4 v4, 0x1

    aget v3, v1, v4

    .line 374
    .local v3, "touchAreaLocalY":F
    invoke-interface {p4, p1, v2, v3}, Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;->onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z

    move-result v0

    .line 375
    .local v0, "handledSelf":Z
    if-eqz v0, :cond_0

    .line 376
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 380
    :goto_0
    return-object v4

    .line 377
    :cond_0
    iget-object v4, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;

    if-eqz v4, :cond_1

    .line 378
    iget-object v4, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;

    invoke-interface {v4, p1, p4, v2, v3}, Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;->onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;FF)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 380
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setParentScene(Lorg/anddev/andengine/entity/scene/Scene;)V
    .locals 0
    .param p1, "pParentScene"    # Lorg/anddev/andengine/entity/scene/Scene;

    .prologue
    .line 131
    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mParentScene:Lorg/anddev/andengine/entity/scene/Scene;

    .line 132
    return-void
.end method


# virtual methods
.method public back()V
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/Scene;->clearChildScene()V

    .line 431
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mParentScene:Lorg/anddev/andengine/entity/scene/Scene;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mParentScene:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/scene/Scene;->clearChildScene()V

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mParentScene:Lorg/anddev/andengine/entity/scene/Scene;

    .line 435
    :cond_0
    return-void
.end method

.method public clearChildScene()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    .line 160
    return-void
.end method

.method public clearTouchAreas()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreas:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/SmartList;->clear()V

    .line 422
    return-void
.end method

.method public getBackground()Lorg/anddev/andengine/entity/scene/background/IBackground;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackground:Lorg/anddev/andengine/entity/scene/background/IBackground;

    return-object v0
.end method

.method public getChildScene()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    return-object v0
.end method

.method public getOnAreaTouchListener()Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;

    return-object v0
.end method

.method public getOnSceneTouchListener()Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

    return-object v0
.end method

.method public getSecondsElapsedTotal()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mSecondsElapsedTotal:F

    return v0
.end method

.method public getTouchAreas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreas:Lorg/anddev/andengine/util/SmartList;

    return-object v0
.end method

.method public hasChildScene()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnAreaTouchListener()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnSceneTouchListener()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBackgroundEnabled()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackgroundEnabled:Z

    return v0
.end method

.method public isOnSceneTouchListenerBindingEnabled()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingEnabled:Z

    return v0
.end method

.method public isTouchAreaBindingEnabled()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindingEnabled:Z

    return v0
.end method

.method protected onChildSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 385
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/scene/Scene;->onSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    return v0
.end method

.method protected onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 2
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 220
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    .line 222
    .local v0, "childScene":Lorg/anddev/andengine/entity/scene/Scene;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildSceneModalDraw:Z

    if-nez v1, :cond_2

    .line 223
    :cond_0
    iget-boolean v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackgroundEnabled:Z

    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {p2, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onApplySceneBackgroundMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 225
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->setModelViewIdentityMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 227
    iget-object v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackground:Lorg/anddev/andengine/entity/scene/background/IBackground;

    invoke-interface {v1, p1, p2}, Lorg/anddev/andengine/entity/scene/background/IBackground;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 230
    :cond_1
    invoke-virtual {p2, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onApplySceneMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 231
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->setModelViewIdentityMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 233
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/Entity;->onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 236
    :cond_2
    if-eqz v0, :cond_3

    .line 237
    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/Scene;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 239
    :cond_3
    return-void
.end method

.method protected onManagedUpdate(F)V
    .locals 2
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 243
    iget v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mSecondsElapsedTotal:F

    add-float/2addr v1, p1

    iput v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mSecondsElapsedTotal:F

    .line 245
    iget-object v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    invoke-virtual {v1, p1}, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;->onUpdate(F)V

    .line 247
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    .line 248
    .local v0, "childScene":Lorg/anddev/andengine/entity/scene/Scene;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildSceneModalUpdate:Z

    if-nez v1, :cond_1

    .line 249
    :cond_0
    iget-object v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackground:Lorg/anddev/andengine/entity/scene/background/IBackground;

    invoke-interface {v1, p1}, Lorg/anddev/andengine/entity/scene/background/IBackground;->onUpdate(F)V

    .line 250
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/Entity;->onManagedUpdate(F)V

    .line 253
    :cond_1
    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/scene/Scene;->onUpdate(F)V

    .line 256
    :cond_2
    return-void
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 20
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 259
    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v3

    .line 260
    .local v3, "action":I
    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v10

    .line 262
    .local v10, "isActionDown":Z
    if-nez v10, :cond_1

    .line 263
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

    .line 265
    .local v4, "boundOnSceneTouchListener":Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;
    if-eqz v4, :cond_0

    .line 267
    packed-switch v3, :pswitch_data_0

    .line 272
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;->onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 273
    .local v7, "handled":Ljava/lang/Boolean;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 274
    const/16 v17, 0x1

    .line 365
    .end local v4    # "boundOnSceneTouchListener":Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;
    .end local v7    # "handled":Ljava/lang/Boolean;
    :goto_1
    return v17

    .line 270
    .restart local v4    # "boundOnSceneTouchListener":Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 278
    .end local v4    # "boundOnSceneTouchListener":Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindingEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 279
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    .line 280
    .local v14, "touchAreaBindings":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    .line 283
    .local v5, "boundTouchArea":Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;
    if-eqz v5, :cond_1

    .line 284
    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v11

    .line 285
    .local v11, "sceneTouchEventX":F
    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v12

    .line 288
    .local v12, "sceneTouchEventY":F
    packed-switch v3, :pswitch_data_1

    .line 293
    :goto_2
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12, v5}, Lorg/anddev/andengine/entity/scene/Scene;->onAreaTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;FFLorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Ljava/lang/Boolean;

    move-result-object v7

    .line 294
    .restart local v7    # "handled":Ljava/lang/Boolean;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 295
    const/16 v17, 0x1

    goto :goto_1

    .line 291
    .end local v7    # "handled":Ljava/lang/Boolean;
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 301
    .end local v5    # "boundTouchArea":Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;
    .end local v11    # "sceneTouchEventX":F
    .end local v12    # "sceneTouchEventY":F
    .end local v14    # "touchAreaBindings":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/anddev/andengine/entity/scene/Scene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    .line 302
    .local v6, "childScene":Lorg/anddev/andengine/entity/scene/Scene;
    if-eqz v6, :cond_3

    .line 303
    invoke-virtual/range {p0 .. p1}, Lorg/anddev/andengine/entity/scene/Scene;->onChildSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v8

    .line 304
    .local v8, "handledByChild":Z
    if-eqz v8, :cond_2

    .line 305
    const/16 v17, 0x1

    goto :goto_1

    .line 306
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/anddev/andengine/entity/scene/Scene;->mChildSceneModalTouch:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 307
    const/16 v17, 0x0

    goto :goto_1

    .line 311
    .end local v8    # "handledByChild":Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v11

    .line 312
    .restart local v11    # "sceneTouchEventX":F
    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v12

    .line 314
    .restart local v12    # "sceneTouchEventY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreas:Lorg/anddev/andengine/util/SmartList;

    move-object/from16 v16, v0

    .line 315
    .local v16, "touchAreas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;>;"
    if-eqz v16, :cond_4

    .line 316
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 317
    .local v15, "touchAreaCount":I
    if-lez v15, :cond_4

    .line 318
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchTraversalBackToFront:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 319
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-lt v9, v15, :cond_6

    .line 352
    .end local v9    # "i":I
    .end local v15    # "touchAreaCount":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;->onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 354
    .restart local v7    # "handled":Ljava/lang/Boolean;
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 357
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    if-eqz v10, :cond_5

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    :cond_5
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 320
    .end local v7    # "handled":Ljava/lang/Boolean;
    .restart local v9    # "i":I
    .restart local v15    # "touchAreaCount":I
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    .line 321
    .local v13, "touchArea":Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;
    invoke-interface {v13, v11, v12}, Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;->contains(FF)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 322
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12, v13}, Lorg/anddev/andengine/entity/scene/Scene;->onAreaTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;FFLorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Ljava/lang/Boolean;

    move-result-object v7

    .line 323
    .restart local v7    # "handled":Ljava/lang/Boolean;
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 326
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindingEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    if-eqz v10, :cond_7

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    :cond_7
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 319
    .end local v7    # "handled":Ljava/lang/Boolean;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 334
    .end local v9    # "i":I
    .end local v13    # "touchArea":Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;
    :cond_9
    add-int/lit8 v9, v15, -0x1

    .restart local v9    # "i":I
    :goto_4
    if-ltz v9, :cond_4

    .line 335
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    .line 336
    .restart local v13    # "touchArea":Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;
    invoke-interface {v13, v11, v12}, Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;->contains(FF)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 337
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12, v13}, Lorg/anddev/andengine/entity/scene/Scene;->onAreaTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;FFLorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Ljava/lang/Boolean;

    move-result-object v7

    .line 338
    .restart local v7    # "handled":Ljava/lang/Boolean;
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 341
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindingEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    if-eqz v10, :cond_a

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    :cond_a
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 334
    .end local v7    # "handled":Ljava/lang/Boolean;
    :cond_b
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 362
    .end local v9    # "i":I
    .end local v13    # "touchArea":Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;
    .end local v15    # "touchAreaCount":I
    .restart local v7    # "handled":Ljava/lang/Boolean;
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 365
    .end local v7    # "handled":Ljava/lang/Boolean;
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 288
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "pRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 405
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 406
    return-void
.end method

.method public registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V
    .locals 1
    .param p1, "pTouchArea"    # Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    .prologue
    .line 409
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreas:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->add(Ljava/lang/Object;)Z

    .line 410
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 390
    invoke-super {p0}, Lorg/anddev/andengine/entity/Entity;->reset()V

    .line 392
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/Scene;->clearChildScene()V

    .line 393
    return-void
.end method

.method public setBackground(Lorg/anddev/andengine/entity/scene/background/IBackground;)V
    .locals 0
    .param p1, "pBackground"    # Lorg/anddev/andengine/entity/scene/background/IBackground;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackground:Lorg/anddev/andengine/entity/scene/background/IBackground;

    .line 96
    return-void
.end method

.method public setBackgroundEnabled(Z)V
    .locals 0
    .param p1, "pEnabled"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackgroundEnabled:Z

    .line 104
    return-void
.end method

.method public setChildScene(Lorg/anddev/andengine/entity/scene/Scene;)V
    .locals 1
    .param p1, "pChildScene"    # Lorg/anddev/andengine/entity/scene/Scene;

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/anddev/andengine/entity/scene/Scene;->setChildScene(Lorg/anddev/andengine/entity/scene/Scene;ZZZ)V

    .line 148
    return-void
.end method

.method public setChildScene(Lorg/anddev/andengine/entity/scene/Scene;ZZZ)V
    .locals 0
    .param p1, "pChildScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pModalDraw"    # Z
    .param p3, "pModalUpdate"    # Z
    .param p4, "pModalTouch"    # Z

    .prologue
    .line 151
    invoke-direct {p1, p0}, Lorg/anddev/andengine/entity/scene/Scene;->setParentScene(Lorg/anddev/andengine/entity/scene/Scene;)V

    .line 152
    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    .line 153
    iput-boolean p2, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildSceneModalDraw:Z

    .line 154
    iput-boolean p3, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildSceneModalUpdate:Z

    .line 155
    iput-boolean p4, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildSceneModalTouch:Z

    .line 156
    return-void
.end method

.method public setChildSceneModal(Lorg/anddev/andengine/entity/scene/Scene;)V
    .locals 1
    .param p1, "pChildScene"    # Lorg/anddev/andengine/entity/scene/Scene;

    .prologue
    const/4 v0, 0x1

    .line 143
    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/anddev/andengine/entity/scene/Scene;->setChildScene(Lorg/anddev/andengine/entity/scene/Scene;ZZZ)V

    .line 144
    return-void
.end method

.method public setOnAreaTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;)V
    .locals 0
    .param p1, "pOnAreaTouchListener"    # Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;

    .line 120
    return-void
.end method

.method public setOnAreaTouchTraversalBackToFront()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchTraversalBackToFront:Z

    .line 164
    return-void
.end method

.method public setOnAreaTouchTraversalFrontToBack()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchTraversalBackToFront:Z

    .line 168
    return-void
.end method

.method public setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V
    .locals 0
    .param p1, "pOnSceneTouchListener"    # Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

    .line 108
    return-void
.end method

.method public setOnSceneTouchListenerBindingEnabled(Z)V
    .locals 1
    .param p1, "pOnSceneTouchListenerBindingEnabled"    # Z

    .prologue
    .line 208
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 209
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 211
    :cond_0
    iput-boolean p1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingEnabled:Z

    .line 212
    return-void
.end method

.method public setParent(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 398
    return-void
.end method

.method public setTouchAreaBindingEnabled(Z)V
    .locals 1
    .param p1, "pTouchAreaBindingEnabled"    # Z

    .prologue
    .line 186
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindingEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 187
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 189
    :cond_0
    iput-boolean p1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindingEnabled:Z

    .line 190
    return-void
.end method

.method public unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z
    .locals 1
    .param p1, "pTouchArea"    # Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    .prologue
    .line 413
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreas:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unregisterTouchAreas(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea$ITouchAreaMatcher;)Z
    .locals 1
    .param p1, "pTouchAreaMatcher"    # Lorg/anddev/andengine/entity/scene/Scene$ITouchArea$ITouchAreaMatcher;

    .prologue
    .line 417
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreas:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->removeAll(Lorg/anddev/andengine/util/IMatcher;)Z

    move-result v0

    return v0
.end method
