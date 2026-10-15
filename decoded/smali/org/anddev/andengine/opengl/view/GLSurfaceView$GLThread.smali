.class Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/view/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mDone:Z

.field private mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

.field private final mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderMode:I

.field private final mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

.field private mRequestRender:Z

.field private mSizeChanged:Z

.field private mWidth:I

.field final synthetic this$0:Lorg/anddev/andengine/opengl/view/GLSurfaceView;


# direct methods
.method constructor <init>(Lorg/anddev/andengine/opengl/view/GLSurfaceView;Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;)V
    .locals 3
    .param p2, "renderer"    # Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 521
    iput-object p1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->this$0:Lorg/anddev/andengine/opengl/view/GLSurfaceView;

    .line 522
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 523
    iput-boolean v1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mDone:Z

    .line 524
    iput v1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mWidth:I

    .line 525
    iput v1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mHeight:I

    .line 526
    iput-boolean v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 527
    iput v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRenderMode:I

    .line 528
    iput-object p2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    .line 529
    iput-boolean v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 530
    const-string v0, "GLThread"

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method private getEvent()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 737
    monitor-enter p0

    .line 738
    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 739
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p0

    .line 743
    :goto_0
    return-object v0

    .line 737
    :cond_0
    monitor-exit p0

    .line 743
    const/4 v0, 0x0

    goto :goto_0

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private guardedRun()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 558
    new-instance v8, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    iget-object v9, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->this$0:Lorg/anddev/andengine/opengl/view/GLSurfaceView;

    invoke-direct {v8, v9}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;-><init>(Lorg/anddev/andengine/opengl/view/GLSurfaceView;)V

    iput-object v8, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    .line 559
    iget-object v8, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    invoke-virtual {v8}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;->start()V

    .line 561
    const/4 v1, 0x0

    .line 562
    .local v1, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v6, 0x1

    .line 563
    .local v6, "tellRendererSurfaceCreated":Z
    const/4 v5, 0x1

    .line 569
    .local v5, "tellRendererSurfaceChanged":Z
    :cond_0
    :goto_0
    iget-boolean v8, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mDone:Z

    if-eqz v8, :cond_1

    .line 630
    :goto_1
    iget-object v8, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    invoke-virtual {v8}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;->finish()V

    .line 631
    return-void

    .line 576
    :cond_1
    const/4 v3, 0x0

    .line 577
    .local v3, "needStart":Z
    monitor-enter p0

    .line 579
    :goto_2
    :try_start_0
    invoke-direct {p0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->getEvent()Ljava/lang/Runnable;

    move-result-object v4

    .local v4, "r":Ljava/lang/Runnable;
    if-nez v4, :cond_3

    .line 582
    iget-boolean v8, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v8, :cond_2

    .line 583
    iget-object v8, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    invoke-virtual {v8}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;->finish()V

    .line 584
    const/4 v3, 0x1

    .line 586
    :cond_2
    :goto_3
    invoke-direct {p0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->needToWait()Z

    move-result v8

    if-nez v8, :cond_4

    .line 589
    iget-boolean v8, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mDone:Z

    if-eqz v8, :cond_5

    .line 590
    monitor-exit p0

    goto :goto_1

    .line 577
    .end local v4    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 580
    .restart local v4    # "r":Ljava/lang/Runnable;
    :cond_3
    :try_start_1
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 587
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 592
    :cond_5
    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 593
    .local v0, "changed":Z
    iget v7, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mWidth:I

    .line 594
    .local v7, "w":I
    iget v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mHeight:I

    .line 595
    .local v2, "h":I
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 596
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 577
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    if-eqz v3, :cond_6

    .line 599
    iget-object v8, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    invoke-virtual {v8}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;->start()V

    .line 600
    const/4 v6, 0x1

    .line 601
    const/4 v0, 0x1

    .line 603
    :cond_6
    if-eqz v0, :cond_7

    .line 604
    iget-object v8, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    iget-object v9, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->this$0:Lorg/anddev/andengine/opengl/view/GLSurfaceView;

    invoke-virtual {v9}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .end local v1    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    .line 605
    .restart local v1    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v5, 0x1

    .line 607
    :cond_7
    if-eqz v6, :cond_8

    .line 608
    iget-object v8, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    iget-object v9, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    iget-object v9, v9, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v8, v1, v9}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 609
    const/4 v6, 0x0

    .line 611
    :cond_8
    if-eqz v5, :cond_9

    .line 612
    iget-object v8, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    invoke-interface {v8, v1, v7, v2}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 613
    const/4 v5, 0x0

    .line 615
    :cond_9
    if-lez v7, :cond_0

    if-lez v2, :cond_0

    .line 617
    iget-object v8, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    invoke-interface {v8, v1}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 623
    iget-object v8, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    invoke-virtual {v8}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;->swap()Z

    goto :goto_0
.end method

.method private needToWait()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 634
    iget-boolean v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mDone:Z

    if-eqz v2, :cond_1

    .line 646
    :cond_0
    :goto_0
    return v0

    .line 638
    :cond_1
    iget-boolean v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 639
    goto :goto_0

    .line 642
    :cond_3
    iget v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mWidth:I

    if-lez v2, :cond_4

    iget v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mHeight:I

    if-lez v2, :cond_4

    iget-boolean v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v2, :cond_0

    iget v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRenderMode:I

    if-eq v2, v1, :cond_0

    :cond_4
    move v0, v1

    .line 646
    goto :goto_0
.end method


# virtual methods
.method public getRenderMode()I
    .locals 1

    .prologue
    .line 662
    monitor-enter p0

    .line 663
    :try_start_0
    iget v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit p0

    return v0

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 689
    monitor-enter p0

    .line 690
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mPaused:Z

    .line 689
    monitor-exit p0

    .line 692
    return-void

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 695
    monitor-enter p0

    .line 696
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mPaused:Z

    .line 697
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 695
    monitor-exit p0

    .line 699
    return-void

    .line 695
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowResize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 702
    monitor-enter p0

    .line 703
    :try_start_0
    iput p1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mWidth:I

    .line 704
    iput p2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mHeight:I

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 706
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 702
    monitor-exit p0

    .line 708
    return-void

    .line 702
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 731
    monitor-enter p0

    .line 732
    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    monitor-exit p0

    .line 734
    return-void

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 2

    .prologue
    .line 713
    monitor-enter p0

    .line 714
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mDone:Z

    .line 715
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 713
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    :try_start_1
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 722
    :goto_0
    return-void

    .line 713
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 668
    monitor-enter p0

    .line 669
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 670
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 668
    monitor-exit p0

    .line 672
    return-void

    .line 668
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 545
    :try_start_0
    invoke-static {}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    :try_start_1
    invoke-direct {p0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    invoke-static {}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 555
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 550
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 553
    invoke-static {}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v1

    .line 553
    invoke-static {}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 554
    throw v1
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    const/4 v0, 0x1

    .line 650
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 651
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_1
    monitor-enter p0

    .line 654
    :try_start_0
    iput p1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRenderMode:I

    .line 655
    if-ne p1, v0, :cond_2

    .line 656
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 653
    :cond_2
    monitor-exit p0

    .line 659
    return-void

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 1

    .prologue
    .line 675
    monitor-enter p0

    .line 676
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 677
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 675
    monitor-exit p0

    .line 679
    return-void

    .line 675
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed()V
    .locals 1

    .prologue
    .line 682
    monitor-enter p0

    .line 683
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 684
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 682
    monitor-exit p0

    .line 686
    return-void

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
