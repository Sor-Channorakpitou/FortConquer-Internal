.class public Lorg/anddev/andengine/engine/camera/Camera;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;


# static fields
.field protected static final VERTICES_TOUCH_TMP:[F


# instance fields
.field protected mCameraSceneRotation:F

.field private mChaseEntity:Lorg/anddev/andengine/entity/IEntity;

.field private mFarZ:F

.field private mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

.field private mMaxX:F

.field private mMaxY:F

.field private mMinX:F

.field private mMinY:F

.field private mNearZ:F

.field protected mRotation:F

.field protected mSurfaceHeight:I

.field protected mSurfaceWidth:I

.field protected mSurfaceX:I

.field protected mSurfaceY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    .line 25
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mNearZ:F

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mFarZ:F

    .line 48
    iput v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    .line 49
    iput v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    .line 61
    iput p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    .line 62
    add-float v0, p1, p3

    iput v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    .line 63
    iput p2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    .line 64
    add-float v0, p2, p4

    iput v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    .line 65
    return-void
.end method

.method private applyCameraSceneRotation(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 8
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 346
    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    neg-float v0, v1

    .line 348
    .local v0, "cameraSceneRotation":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 349
    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    aput v2, v1, v6

    .line 350
    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    aput v2, v1, v7

    .line 352
    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    iget v2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    iget v3, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    iget v3, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    iget v4, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {v1, v0, v2, v3}, Lorg/anddev/andengine/util/MathUtils;->rotateAroundCenter([FFFF)[F

    .line 354
    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v1, v1, v6

    sget-object v2, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v2, v2, v7

    invoke-virtual {p1, v1, v2}, Lorg/anddev/andengine/input/touch/TouchEvent;->set(FF)V

    .line 356
    :cond_0
    return-void
.end method

.method private applyRotation(Ljavax/microedition/khronos/opengles/GL10;FFF)V
    .locals 3
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pRotationCenterX"    # F
    .param p3, "pRotationCenterY"    # F
    .param p4, "pAngle"    # F

    .prologue
    const/4 v2, 0x0

    .line 291
    invoke-interface {p1, p2, p3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 292
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, p4, v2, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 293
    neg-float v0, p2

    neg-float v1, p3

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 294
    return-void
.end method

.method private applySceneRotation(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 6
    .param p1, "pCameraSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 321
    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    neg-float v0, v1

    .line 322
    .local v0, "rotation":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 323
    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    aput v2, v1, v4

    .line 324
    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    aput v2, v1, v5

    .line 326
    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v2

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lorg/anddev/andengine/util/MathUtils;->rotateAroundCenter([FFFF)[F

    .line 328
    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v1, v1, v4

    sget-object v2, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v2, v2, v5

    invoke-virtual {p1, v1, v2}, Lorg/anddev/andengine/input/touch/TouchEvent;->set(FF)V

    .line 330
    :cond_0
    return-void
.end method

.method private convertAxisAlignedSurfaceToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;FF)V
    .locals 7
    .param p1, "pSurfaceTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pRelativeX"    # F
    .param p3, "pRelativeY"    # F

    .prologue
    .line 396
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMinX()F

    move-result v2

    .line 397
    .local v2, "minX":F
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxX()F

    move-result v0

    .line 398
    .local v0, "maxX":F
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMinY()F

    move-result v3

    .line 399
    .local v3, "minY":F
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxY()F

    move-result v1

    .line 401
    .local v1, "maxY":F
    sub-float v6, v0, v2

    mul-float/2addr v6, p2

    add-float v4, v2, v6

    .line 402
    .local v4, "x":F
    sub-float v6, v1, v3

    mul-float/2addr v6, p3

    add-float v5, v3, v6

    .line 404
    .local v5, "y":F
    invoke-virtual {p1, v4, v5}, Lorg/anddev/andengine/input/touch/TouchEvent;->set(FF)V

    .line 405
    return-void
.end method

.method private unapplyCameraSceneRotation(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 8
    .param p1, "pCameraSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 359
    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    neg-float v0, v1

    .line 361
    .local v0, "cameraSceneRotation":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 362
    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    aput v2, v1, v6

    .line 363
    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    aput v2, v1, v7

    .line 365
    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    iget v2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    iget v3, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    iget v3, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    iget v4, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {v1, v0, v2, v3}, Lorg/anddev/andengine/util/MathUtils;->revertRotateAroundCenter([FFFF)[F

    .line 367
    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v1, v1, v6

    sget-object v2, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v2, v2, v7

    invoke-virtual {p1, v1, v2}, Lorg/anddev/andengine/input/touch/TouchEvent;->set(FF)V

    .line 369
    :cond_0
    return-void
.end method

.method private unapplySceneRotation(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 6
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 333
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    .line 335
    .local v0, "rotation":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 336
    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    aput v2, v1, v4

    .line 337
    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    aput v2, v1, v5

    .line 339
    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v2

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lorg/anddev/andengine/util/MathUtils;->revertRotateAroundCenter([FFFF)[F

    .line 341
    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v1, v1, v4

    sget-object v2, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v2, v2, v5

    invoke-virtual {p1, v1, v2}, Lorg/anddev/andengine/input/touch/TouchEvent;->set(FF)V

    .line 343
    :cond_0
    return-void
.end method


# virtual methods
.method protected applySceneToCameraSceneOffset(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 2
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 313
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    neg-float v0, v0

    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/input/touch/TouchEvent;->offset(FF)V

    .line 314
    return-void
.end method

.method public convertCameraSceneToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 0
    .param p1, "pCameraSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->unapplyCameraSceneRotation(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    .line 307
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->unapplySceneToCameraSceneOffset(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    .line 309
    invoke-direct {p0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->applySceneRotation(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    .line 310
    return-void
.end method

.method public convertSceneToCameraSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 0
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->unapplySceneRotation(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    .line 299
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->applySceneToCameraSceneOffset(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    .line 301
    invoke-direct {p0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->applyCameraSceneRotation(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    .line 302
    return-void
.end method

.method public convertSurfaceToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;II)V
    .locals 8
    .param p1, "pSurfaceTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pSurfaceWidth"    # I
    .param p3, "pSurfaceHeight"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 375
    iget v2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    .line 376
    .local v2, "rotation":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    .line 377
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v3

    int-to-float v4, p2

    div-float v0, v3, v4

    .line 378
    .local v0, "relativeX":F
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v3

    int-to-float v4, p3

    div-float v1, v3, v4

    .line 392
    .local v1, "relativeY":F
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lorg/anddev/andengine/engine/camera/Camera;->convertAxisAlignedSurfaceToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;FF)V

    .line 393
    return-void

    .line 379
    .end local v0    # "relativeX":F
    .end local v1    # "relativeY":F
    :cond_0
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    .line 380
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v3

    int-to-float v4, p2

    div-float/2addr v3, v4

    sub-float v0, v5, v3

    .line 381
    .restart local v0    # "relativeX":F
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v3

    int-to-float v4, p3

    div-float/2addr v3, v4

    sub-float v1, v5, v3

    .restart local v1    # "relativeY":F
    goto :goto_0

    .line 383
    .end local v0    # "relativeX":F
    .end local v1    # "relativeY":F
    :cond_1
    sget-object v3, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v4

    aput v4, v3, v6

    .line 384
    sget-object v3, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v4

    aput v4, v3, v7

    .line 386
    sget-object v3, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    invoke-static {v3, v2, v4, v5}, Lorg/anddev/andengine/util/MathUtils;->rotateAroundCenter([FFFF)[F

    .line 388
    sget-object v3, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v3, v3, v6

    int-to-float v4, p2

    div-float v0, v3, v4

    .line 389
    .restart local v0    # "relativeX":F
    sget-object v3, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v3, v3, v7

    int-to-float v4, p3

    div-float v1, v3, v4

    .restart local v1    # "relativeY":F
    goto :goto_0
.end method

.method public getCameraSceneRotation()F
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    return v0
.end method

.method public getCenterX()F
    .locals 3

    .prologue
    .line 125
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    .line 126
    .local v0, "minX":F
    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    sub-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public getCenterY()F
    .locals 3

    .prologue
    .line 130
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    .line 131
    .local v0, "minY":F
    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    sub-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public getFarZClippingPlane()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mFarZ:F

    return v0
.end method

.method public getHUD()Lorg/anddev/andengine/engine/camera/hud/HUD;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getHeightRaw()F
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getMaxX()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    return v0
.end method

.method public getMaxY()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    return v0
.end method

.method public getMinX()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    return v0
.end method

.method public getMinY()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    return v0
.end method

.method public getNearZClippingPlane()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mNearZ:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    return v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mSurfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mSurfaceWidth:I

    return v0
.end method

.method public getSurfaceX()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mSurfaceX:I

    return v0
.end method

.method public getSurfaceY()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mSurfaceY:I

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getWidthRaw()F
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public hasHUD()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLineVisible(Lorg/anddev/andengine/entity/primitive/Line;)Z
    .locals 1
    .param p1, "pLine"    # Lorg/anddev/andengine/entity/primitive/Line;

    .prologue
    .line 244
    invoke-static {p0, p1}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->isVisible(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/primitive/Line;)Z

    move-result v0

    return v0
.end method

.method public isRectangularShapeVisible(Lorg/anddev/andengine/entity/shape/RectangularShape;)Z
    .locals 1
    .param p1, "pRectangularShape"    # Lorg/anddev/andengine/entity/shape/RectangularShape;

    .prologue
    .line 248
    invoke-static {p0, p1}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->isVisible(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/shape/RectangularShape;)Z

    move-result v0

    return v0
.end method

.method public isRotated()Z
    .locals 2

    .prologue
    .line 205
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offsetCenter(FF)V
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v1

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/engine/camera/Camera;->setCenter(FF)V

    .line 146
    return-void
.end method

.method public onApplyCameraSceneMatrix(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 277
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->setProjectionIdentityMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 279
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getWidthRaw()F

    move-result v2

    .line 280
    .local v2, "widthRaw":F
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getHeightRaw()F

    move-result v3

    .line 282
    .local v3, "heightRaw":F
    iget v5, p0, Lorg/anddev/andengine/engine/camera/Camera;->mNearZ:F

    iget v6, p0, Lorg/anddev/andengine/engine/camera/Camera;->mFarZ:F

    move-object v0, p1

    move v4, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 284
    iget v7, p0, Lorg/anddev/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    .line 285
    .local v7, "cameraSceneRotation":F
    cmpl-float v0, v7, v1

    if-eqz v0, :cond_0

    .line 286
    mul-float v0, v2, v8

    mul-float v1, v3, v8

    invoke-direct {p0, p1, v0, v1, v7}, Lorg/anddev/andengine/engine/camera/Camera;->applyRotation(Ljavax/microedition/khronos/opengles/GL10;FFF)V

    .line 288
    :cond_0
    return-void
.end method

.method public onApplySceneBackgroundMatrix(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 263
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->setProjectionIdentityMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 265
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getWidthRaw()F

    move-result v2

    .line 266
    .local v2, "widthRaw":F
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getHeightRaw()F

    move-result v3

    .line 268
    .local v3, "heightRaw":F
    iget v5, p0, Lorg/anddev/andengine/engine/camera/Camera;->mNearZ:F

    iget v6, p0, Lorg/anddev/andengine/engine/camera/Camera;->mFarZ:F

    move-object v0, p1

    move v4, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 270
    iget v7, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    .line 271
    .local v7, "rotation":F
    cmpl-float v0, v7, v1

    if-eqz v0, :cond_0

    .line 272
    mul-float v0, v2, v8

    mul-float v1, v3, v8

    invoke-direct {p0, p1, v0, v1, v7}, Lorg/anddev/andengine/engine/camera/Camera;->applyRotation(Ljavax/microedition/khronos/opengles/GL10;FFF)V

    .line 274
    :cond_0
    return-void
.end method

.method public onApplySceneMatrix(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 252
    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->setProjectionIdentityMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 254
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMinX()F

    move-result v1

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxX()F

    move-result v2

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxY()F

    move-result v3

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMinY()F

    move-result v4

    iget v5, p0, Lorg/anddev/andengine/engine/camera/Camera;->mNearZ:F

    iget v6, p0, Lorg/anddev/andengine/engine/camera/Camera;->mFarZ:F

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 256
    iget v7, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    .line 257
    .local v7, "rotation":F
    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v1

    invoke-direct {p0, p1, v0, v1, v7}, Lorg/anddev/andengine/engine/camera/Camera;->applyRotation(Ljavax/microedition/khronos/opengles/GL10;FFF)V

    .line 260
    :cond_0
    return-void
.end method

.method public onDrawHUD(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 231
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    invoke-virtual {v0, p1, p0}, Lorg/anddev/andengine/engine/camera/hud/HUD;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 234
    :cond_0
    return-void
.end method

.method public onUpdate(F)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 214
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/hud/HUD;->onUpdate(F)V

    .line 218
    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->updateChaseEntity()V

    .line 219
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public setCameraSceneRotation(F)V
    .locals 0
    .param p1, "pCameraSceneRotation"    # F

    .prologue
    .line 178
    iput p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    .line 179
    return-void
.end method

.method public setCenter(FF)V
    .locals 3
    .param p1, "pCenterX"    # F
    .param p2, "pCenterY"    # F

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v2

    sub-float v0, p1, v2

    .line 136
    .local v0, "dX":F
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v2

    sub-float v1, p2, v2

    .line 138
    .local v1, "dY":F
    iget v2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    add-float/2addr v2, v0

    iput v2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    .line 139
    iget v2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    add-float/2addr v2, v0

    iput v2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    .line 140
    iget v2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    add-float/2addr v2, v1

    iput v2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    .line 141
    iget v2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    add-float/2addr v2, v1

    iput v2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    .line 142
    return-void
.end method

.method public setChaseEntity(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0
    .param p1, "pChaseEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 162
    iput-object p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mChaseEntity:Lorg/anddev/andengine/entity/IEntity;

    .line 163
    return-void
.end method

.method public setFarZClippingPlane(F)V
    .locals 0
    .param p1, "pFarZClippingPlane"    # F

    .prologue
    .line 100
    iput p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mFarZ:F

    .line 101
    return-void
.end method

.method public setHUD(Lorg/anddev/andengine/engine/camera/hud/HUD;)V
    .locals 0
    .param p1, "pHUD"    # Lorg/anddev/andengine/engine/camera/hud/HUD;

    .prologue
    .line 153
    iput-object p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    .line 154
    invoke-virtual {p1, p0}, Lorg/anddev/andengine/engine/camera/hud/HUD;->setCamera(Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 155
    return-void
.end method

.method public setNearZClippingPlane(F)V
    .locals 0
    .param p1, "pNearZClippingPlane"    # F

    .prologue
    .line 96
    iput p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mNearZ:F

    .line 97
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "pRotation"    # F

    .prologue
    .line 170
    iput p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    .line 171
    return-void
.end method

.method public setSurfaceSize(IIII)V
    .locals 0
    .param p1, "pSurfaceX"    # I
    .param p2, "pSurfaceY"    # I
    .param p3, "pSurfaceWidth"    # I
    .param p4, "pSurfaceHeight"    # I

    .prologue
    .line 198
    iput p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mSurfaceX:I

    .line 199
    iput p2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mSurfaceY:I

    .line 200
    iput p3, p0, Lorg/anddev/andengine/engine/camera/Camera;->mSurfaceWidth:I

    .line 201
    iput p4, p0, Lorg/anddev/andengine/engine/camera/Camera;->mSurfaceHeight:I

    .line 202
    return-void
.end method

.method public setZClippingPlanes(FF)V
    .locals 0
    .param p1, "pNearZClippingPlane"    # F
    .param p2, "pFarZClippingPlane"    # F

    .prologue
    .line 104
    iput p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mNearZ:F

    .line 105
    iput p2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mFarZ:F

    .line 106
    return-void
.end method

.method protected unapplySceneToCameraSceneOffset(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 2
    .param p1, "pCameraSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 317
    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/input/touch/TouchEvent;->offset(FF)V

    .line 318
    return-void
.end method

.method public updateChaseEntity()V
    .locals 3

    .prologue
    .line 237
    iget-object v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mChaseEntity:Lorg/anddev/andengine/entity/IEntity;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mChaseEntity:Lorg/anddev/andengine/entity/IEntity;

    invoke-interface {v1}, Lorg/anddev/andengine/entity/IEntity;->getSceneCenterCoordinates()[F

    move-result-object v0

    .line 239
    .local v0, "centerCoordinates":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lorg/anddev/andengine/engine/camera/Camera;->setCenter(FF)V

    .line 241
    .end local v0    # "centerCoordinates":[F
    :cond_0
    return-void
.end method
