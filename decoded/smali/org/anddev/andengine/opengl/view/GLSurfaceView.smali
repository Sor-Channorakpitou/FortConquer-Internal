.class public Lorg/anddev/andengine/opengl/view/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;,
        Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;,
        Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final sEglSemaphore:Ljava/util/concurrent/Semaphore;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lorg/anddev/andengine/opengl/view/EGLConfigChooser;

.field private mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

.field private mGLWrapper:Lorg/anddev/andengine/opengl/view/GLWrapper;

.field private mHasSurface:Z

.field private mRenderMode:I

.field private mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-direct {p0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->init()V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 221
    invoke-direct {p0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->init()V

    .line 222
    return-void
.end method

.method static synthetic access$0()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1(Lorg/anddev/andengine/opengl/view/GLSurfaceView;)Lorg/anddev/andengine/opengl/view/EGLConfigChooser;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mEGLConfigChooser:Lorg/anddev/andengine/opengl/view/EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$2(Lorg/anddev/andengine/opengl/view/GLSurfaceView;)Lorg/anddev/andengine/opengl/view/GLWrapper;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLWrapper:Lorg/anddev/andengine/opengl/view/GLWrapper;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 228
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 229
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 230
    const/4 v1, 0x1

    iput v1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mRenderMode:I

    .line 231
    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mRenderMode:I

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->onPause()V

    .line 466
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->requestExitAndWait()V

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    .line 468
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 477
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mEGLConfigChooser:Lorg/anddev/andengine/opengl/view/EGLConfigChooser;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Lorg/anddev/andengine/opengl/view/SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/anddev/andengine/opengl/view/SimpleEGLConfigChooser;-><init>(Z)V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mEGLConfigChooser:Lorg/anddev/andengine/opengl/view/EGLConfigChooser;

    .line 480
    :cond_0
    new-instance v0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    invoke-direct {v0, p0, v1}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;-><init>(Lorg/anddev/andengine/opengl/view/GLSurfaceView;Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    .line 481
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->start()V

    .line 482
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    iget v1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mRenderMode:I

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 483
    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mHasSurface:Z

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 486
    :cond_1
    iget v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mSurfaceWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mSurfaceHeight:I

    if-lez v0, :cond_2

    .line 487
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    iget v1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mSurfaceWidth:I

    iget v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->onWindowResize(II)V

    .line 489
    :cond_2
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->onResume()V

    .line 490
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 501
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 504
    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->requestRender()V

    .line 418
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .param p1, "debugFlags"    # I

    .prologue
    .line 266
    iput p1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mDebugFlags:I

    .line 267
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 7
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .prologue
    .line 366
    new-instance v0, Lorg/anddev/andengine/opengl/view/ComponentSizeChooser;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/opengl/view/ComponentSizeChooser;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->setEGLConfigChooser(Lorg/anddev/andengine/opengl/view/EGLConfigChooser;)V

    .line 367
    return-void
.end method

.method public setEGLConfigChooser(Lorg/anddev/andengine/opengl/view/EGLConfigChooser;)V
    .locals 2
    .param p1, "configChooser"    # Lorg/anddev/andengine/opengl/view/EGLConfigChooser;

    .prologue
    .line 328
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    if-eqz v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_0
    iput-object p1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mEGLConfigChooser:Lorg/anddev/andengine/opengl/view/EGLConfigChooser;

    .line 332
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .param p1, "needDepth"    # Z

    .prologue
    .line 349
    new-instance v0, Lorg/anddev/andengine/opengl/view/SimpleEGLConfigChooser;

    invoke-direct {v0, p1}, Lorg/anddev/andengine/opengl/view/SimpleEGLConfigChooser;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->setEGLConfigChooser(Lorg/anddev/andengine/opengl/view/EGLConfigChooser;)V

    .line 350
    return-void
.end method

.method public setGLWrapper(Lorg/anddev/andengine/opengl/view/GLWrapper;)V
    .locals 0
    .param p1, "glWrapper"    # Lorg/anddev/andengine/opengl/view/GLWrapper;

    .prologue
    .line 252
    iput-object p1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLWrapper:Lorg/anddev/andengine/opengl/view/GLWrapper;

    .line 253
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 388
    iput p1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mRenderMode:I

    .line 389
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 392
    :cond_0
    return-void
.end method

.method public setRenderer(Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    .prologue
    .line 308
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    if-eqz v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iput-object p1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    .line 313
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 451
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->onWindowResize(II)V

    .line 454
    :cond_0
    iput p3, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mSurfaceWidth:I

    .line 455
    iput p4, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mSurfaceHeight:I

    .line 456
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 426
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 429
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mHasSurface:Z

    .line 430
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 439
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 442
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mHasSurface:Z

    .line 443
    return-void
.end method
