.class public Lorg/anddev/andengine/entity/util/ScreenGrabber;
.super Lorg/anddev/andengine/entity/Entity;
.source "ScreenGrabber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;
    }
.end annotation


# instance fields
.field private mGrabHeight:I

.field private mGrabWidth:I

.field private mGrabX:I

.field private mGrabY:I

.field private mScreenGrabCallback:Lorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;

.field private mScreenGrabPending:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mScreenGrabPending:Z

    .line 20
    return-void
.end method

.method private static grab(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "pGrabX"    # I
    .param p1, "pGrabY"    # I
    .param p2, "pGrabWidth"    # I
    .param p3, "pGrabHeight"    # I
    .param p4, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 93
    add-int v2, p1, p3

    mul-int v2, v2, p2

    new-array v15, v2, [I

    .line 94
    .local v15, "source":[I
    invoke-static {v15}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v9

    .line 95
    .local v9, "sourceBuffer":Ljava/nio/IntBuffer;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    const/4 v4, 0x0

    add-int v6, p1, p3

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    move-object/from16 v2, p4

    move/from16 v3, p0

    move/from16 v5, p2

    invoke-interface/range {v2 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 101
    mul-int v2, p2, p3

    new-array v13, v2, [I

    .line 104
    .local v13, "pixels":[I
    const/16 v17, 0x0

    .local v17, "y":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    .line 116
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v13, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 105
    :cond_0
    const/16 v16, 0x0

    .local v16, "x":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 104
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 106
    :cond_1
    add-int v2, p1, v17

    mul-int v2, v2, p2

    add-int v2, v2, v16

    aget v12, v15, v2

    .line 108
    .local v12, "pixel":I
    const/high16 v2, 0xff0000

    and-int/2addr v2, v12

    shr-int/lit8 v10, v2, 0x10

    .line 109
    .local v10, "blue":I
    and-int/lit16 v2, v12, 0xff

    shl-int/lit8 v14, v2, 0x10

    .line 110
    .local v14, "red":I
    const v2, -0xff0100

    and-int v11, v12, v2

    .line 112
    .local v11, "greenAlpha":I
    sub-int v2, p3, v17

    add-int/lit8 v2, v2, -0x1

    mul-int v2, v2, p2

    add-int v2, v2, v16

    or-int v3, v11, v14

    or-int/2addr v3, v10

    aput v3, v13, v2

    .line 105
    add-int/lit8 v16, v16, 0x1

    goto :goto_1
.end method


# virtual methods
.method public grab(IIIILorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;)V
    .locals 1
    .param p1, "pGrabX"    # I
    .param p2, "pGrabY"    # I
    .param p3, "pGrabWidth"    # I
    .param p4, "pGrabHeight"    # I
    .param p5, "pScreenGrabCallback"    # Lorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;

    .prologue
    .line 83
    iput p1, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mGrabX:I

    .line 84
    iput p2, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mGrabY:I

    .line 85
    iput p3, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mGrabWidth:I

    .line 86
    iput p4, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mGrabHeight:I

    .line 87
    iput-object p5, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mScreenGrabCallback:Lorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mScreenGrabPending:Z

    .line 90
    return-void
.end method

.method public grab(IILorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;)V
    .locals 6
    .param p1, "pGrabWidth"    # I
    .param p2, "pGrabHeight"    # I
    .param p3, "pScreenGrabCallback"    # Lorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;

    .prologue
    const/4 v1, 0x0

    .line 79
    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/entity/util/ScreenGrabber;->grab(IIIILorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;)V

    .line 80
    return-void
.end method

.method protected onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 6
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 51
    iget-boolean v2, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mScreenGrabPending:Z

    if-eqz v2, :cond_0

    .line 53
    :try_start_0
    iget v2, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mGrabX:I

    iget v3, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mGrabY:I

    iget v4, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mGrabWidth:I

    iget v5, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mGrabHeight:I

    invoke-static {v2, v3, v4, v5, p1}, Lorg/anddev/andengine/entity/util/ScreenGrabber;->grab(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 55
    .local v1, "screenGrab":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mScreenGrabCallback:Lorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;

    invoke-interface {v2, v1}, Lorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;->onScreenGrabbed(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1    # "screenGrab":Landroid/graphics/Bitmap;
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mScreenGrabPending:Z

    .line 62
    :cond_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mScreenGrabCallback:Lorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;

    invoke-interface {v2, v0}, Lorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;->onScreenGrabFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onManagedUpdate(F)V
    .locals 0
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 67
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
