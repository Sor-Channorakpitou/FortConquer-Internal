.class public Lcom/tapjoy/internal/fc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fc$c;
    }
.end annotation


# static fields
.field private static final w:Ljava/lang/String;

.field private static final x:Ljava/util/concurrent/Executor;


# instance fields
.field final a:Lcom/tapjoy/internal/fd;

.field b:Landroid/net/http/AndroidHttpClient;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final e:Ljava/util/concurrent/locks/Lock;

.field private final f:Ljava/util/concurrent/locks/Lock;

.field private final g:Ljava/util/concurrent/locks/ReentrantLock;

.field private h:Lcom/tapjoy/internal/er;

.field private i:Ljava/lang/Thread;

.field private volatile j:Z

.field private volatile k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private r:Ljava/util/concurrent/CountDownLatch;

.field private final s:Lcom/tapjoy/internal/fb;

.field private final t:Lcom/tapjoy/internal/ee;

.field private u:Landroid/content/Context;

.field private v:Landroid/util/TimingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const-class v0, Lcom/tapjoy/internal/fc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    .line 173
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fc;->x:Ljava/util/concurrent/Executor;

    .line 174
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/tapjoy/internal/fd;

    invoke-direct {v0}, Lcom/tapjoy/internal/fd;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fc;->c:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fc;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 140
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fc;->e:Ljava/util/concurrent/locks/Lock;

    .line 141
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    .line 142
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 143
    iput-object v2, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    .line 144
    iput-object v2, p0, Lcom/tapjoy/internal/fc;->i:Ljava/lang/Thread;

    .line 145
    iput-boolean v1, p0, Lcom/tapjoy/internal/fc;->j:Z

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 148
    iput v1, p0, Lcom/tapjoy/internal/fc;->l:I

    .line 149
    const/16 v0, 0x2710

    iput v0, p0, Lcom/tapjoy/internal/fc;->m:I

    .line 150
    iput v1, p0, Lcom/tapjoy/internal/fc;->n:I

    .line 151
    iput-boolean v1, p0, Lcom/tapjoy/internal/fc;->o:Z

    .line 152
    iput-boolean v1, p0, Lcom/tapjoy/internal/fc;->p:Z

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tapjoy/internal/fc;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 154
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/tapjoy/internal/fc;->r:Ljava/util/concurrent/CountDownLatch;

    .line 157
    new-instance v0, Lcom/tapjoy/internal/fb;

    invoke-direct {v0}, Lcom/tapjoy/internal/fb;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fc;->s:Lcom/tapjoy/internal/fb;

    .line 158
    new-instance v0, Lcom/tapjoy/internal/ee;

    invoke-direct {v0}, Lcom/tapjoy/internal/ee;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fc;->t:Lcom/tapjoy/internal/ee;

    .line 159
    iput-object v2, p0, Lcom/tapjoy/internal/fc;->b:Landroid/net/http/AndroidHttpClient;

    .line 160
    iput-object v2, p0, Lcom/tapjoy/internal/fc;->u:Landroid/content/Context;

    .line 164
    iput-object v2, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/fc;)Lcom/tapjoy/internal/ee;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->t:Lcom/tapjoy/internal/ee;

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)Lcom/tapjoy/internal/ep;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 678
    if-nez p1, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-object v0

    .line 681
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 688
    :try_start_0
    new-instance v1, Lcom/tapjoy/internal/ep;

    invoke-direct {v1, p1}, Lcom/tapjoy/internal/ep;-><init>(Ljava/lang/Runnable;)V

    .line 692
    instance-of v2, p1, Lcom/tapjoy/internal/ek;

    if-eqz v2, :cond_2

    .line 694
    iget-object v2, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :try_start_1
    iget-object v2, p0, Lcom/tapjoy/internal/fc;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    :try_start_2
    iget-object v2, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 704
    :cond_2
    invoke-virtual {v1}, Lcom/tapjoy/internal/ep;->start()V

    move-object v0, v1

    .line 712
    goto :goto_0

    .line 701
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 708
    :catch_0
    move-exception v1

    sget-object v1, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Z)Lcom/tapjoy/internal/fc$c;
    .locals 6

    .prologue
    .line 747
    sget-object v1, Lcom/tapjoy/internal/fc$c;->a:Lcom/tapjoy/internal/fc$c;

    .line 752
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 753
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ep;

    .line 755
    iget-object v3, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 757
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fc$c;->h:Lcom/tapjoy/internal/fc$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    :goto_1
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    const-string v2, "wait for network threads"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 825
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 828
    sget-object v1, Lcom/tapjoy/internal/fc$c;->a:Lcom/tapjoy/internal/fc$c;

    if-ne v0, v1, :cond_2

    .line 829
    sget-object v0, Lcom/tapjoy/internal/fc$c;->b:Lcom/tapjoy/internal/fc$c;

    .line 831
    :cond_2
    return-object v0

    .line 763
    :cond_3
    :try_start_1
    iget v3, p0, Lcom/tapjoy/internal/fc;->m:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/tapjoy/internal/ep;->join(J)V

    .line 764
    invoke-virtual {v0}, Lcom/tapjoy/internal/ep;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v4, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v3, v4, :cond_5

    .line 767
    sget-object v1, Lcom/tapjoy/internal/fc$c;->c:Lcom/tapjoy/internal/fc$c;

    .line 768
    if-nez p1, :cond_4

    .line 770
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fc;->b(Z)V

    move-object v0, v1

    .line 771
    goto :goto_1

    .line 775
    :cond_4
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fc;->a(Ljava/lang/Thread;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 811
    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    sget-object v0, Lcom/tapjoy/internal/fc$c;->a:Lcom/tapjoy/internal/fc$c;

    if-ne v1, v0, :cond_a

    .line 812
    sget-object v0, Lcom/tapjoy/internal/fc$c;->c:Lcom/tapjoy/internal/fc$c;

    .line 815
    :goto_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/fc;->b(Z)V

    .line 816
    sget-object v1, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 780
    :cond_5
    :try_start_3
    invoke-virtual {v0}, Lcom/tapjoy/internal/ep;->a()Lcom/tapjoy/internal/ek;

    move-result-object v3

    .line 781
    if-eqz v3, :cond_8

    .line 783
    invoke-virtual {v0}, Lcom/tapjoy/internal/ep;->a()Lcom/tapjoy/internal/ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/fc$c;

    move-result-object v0

    .line 784
    sget-object v4, Lcom/tapjoy/internal/fc$c;->b:Lcom/tapjoy/internal/fc$c;

    if-ne v0, v4, :cond_6

    invoke-virtual {v3}, Lcom/tapjoy/internal/ek;->b()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_6

    .line 786
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Connection returned http status code:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tapjoy/internal/ek;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 787
    sget-object v0, Lcom/tapjoy/internal/fc$c;->c:Lcom/tapjoy/internal/fc$c;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 789
    if-nez p1, :cond_9

    .line 791
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/fc;->b(Z)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 811
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_2

    .line 795
    :cond_6
    :try_start_5
    sget-object v4, Lcom/tapjoy/internal/fc$c;->b:Lcom/tapjoy/internal/fc$c;

    if-eq v0, v4, :cond_8

    .line 797
    sget-object v4, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Connection returned status :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/fc$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tapjoy/internal/fc$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 800
    if-nez p1, :cond_9

    .line 802
    const/4 v1, 0x1

    :try_start_6
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/fc;->b(Z)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 823
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    const-string v2, "wait for network threads"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 825
    :cond_7
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_8
    move-object v0, v1

    :cond_9
    move-object v1, v0

    .line 818
    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    goto :goto_3

    :cond_b
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/Thread;)V
    .locals 2

    .prologue
    .line 892
    sget-object v0, Lcom/tapjoy/internal/fc;->x:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/tapjoy/internal/fc$a;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/fc$a;-><init>(Lcom/tapjoy/internal/fc;Ljava/lang/Thread;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 893
    return-void
.end method

.method static synthetic b(Lcom/tapjoy/internal/fc;)Landroid/util/TimingLogger;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 860
    if-nez p1, :cond_0

    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ep;

    .line 864
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fc;->a(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 869
    :catchall_0
    move-exception v0

    if-nez p1, :cond_1

    .line 870
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_1
    throw v0

    .line 869
    :cond_2
    if-nez p1, :cond_3

    .line 870
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 872
    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/tapjoy/internal/fc;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->u:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/tapjoy/internal/fc;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/tapjoy/internal/fc;->m:I

    return v0
.end method

.method static synthetic e(Lcom/tapjoy/internal/fc;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->r:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized g()V
    .locals 4

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    const-string v1, "Cancel already happened"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :goto_0
    monitor-exit p0

    return-void

    .line 251
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/tapjoy/internal/fc;->j:Z

    if-eqz v0, :cond_4

    .line 253
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fc;->b(Z)V

    .line 256
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->i:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 258
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sending interrupt to profile thread TID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->i:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 259
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 262
    :cond_1
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :try_start_2
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 266
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ep;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 271
    :try_start_3
    sget-object v2, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    .line 272
    invoke-virtual {v0}, Lcom/tapjoy/internal/ep;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 276
    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 282
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 285
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->i:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    :try_start_6
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 298
    :cond_3
    :goto_2
    :try_start_7
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 303
    :cond_4
    :try_start_8
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 305
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 309
    :try_start_9
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 282
    :catchall_1
    move-exception v0

    :try_start_a
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 309
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private h()Z
    .locals 6

    .prologue
    .line 644
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 645
    const/4 v0, 0x1

    .line 662
    :cond_0
    :goto_0
    return v0

    .line 647
    :cond_1
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    .line 648
    const/4 v1, 0x0

    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->r:Ljava/util/concurrent/CountDownLatch;

    iget v2, p0, Lcom/tapjoy/internal/fc;->m:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 652
    if-nez v0, :cond_0

    .line 654
    :try_start_1
    sget-object v1, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    const-string v2, "Timed out waiting for init to complete"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 657
    :catch_0
    move-exception v1

    .line 659
    :goto_1
    sget-object v2, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    const-string v3, "Waiting for init to complete interrupted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 657
    :catch_1
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method private i()V
    .locals 2

    .prologue
    .line 838
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 839
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 844
    return-void

    .line 843
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/fc$c;
    .locals 3

    .prologue
    .line 411
    if-nez p1, :cond_0

    .line 412
    sget-object v0, Lcom/tapjoy/internal/fc$c;->f:Lcom/tapjoy/internal/fc$c;

    .line 542
    :goto_0
    return-object v0

    .line 416
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 418
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "starting profile request using - 2.5-16 with options 3097"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    iget-boolean v0, p0, Lcom/tapjoy/internal/fc;->j:Z

    if-eqz v0, :cond_1

    .line 422
    sget-object v0, Lcom/tapjoy/internal/fc$c;->a:Lcom/tapjoy/internal/fc$c;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 425
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->g()Z

    .line 427
    const/16 v0, 0xc19

    iput v0, p0, Lcom/tapjoy/internal/fc;->n:I

    .line 444
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->a()V

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->s:Lcom/tapjoy/internal/fb;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fb;->a()V

    .line 448
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 450
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 451
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    sget-object v1, Lcom/tapjoy/internal/fc$c;->a:Lcom/tapjoy/internal/fc$c;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fc$c;->b()Lcom/tapjoy/internal/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/em;)V

    .line 454
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 456
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    .line 457
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fc;->b(Z)V

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 462
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0, p3}, Lcom/tapjoy/internal/fd;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 464
    sget-object v0, Lcom/tapjoy/internal/fc$c;->j:Lcom/tapjoy/internal/fc$c;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 467
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/fd;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 469
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 470
    :cond_4
    sget-object v0, Lcom/tapjoy/internal/fc$c;->i:Lcom/tapjoy/internal/fc$c;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 542
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 473
    :cond_5
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/tapjoy/internal/fc;->j:Z

    .line 475
    iget-boolean v0, p0, Lcom/tapjoy/internal/fc;->o:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 477
    :cond_6
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-static {}, Lcom/tapjoy/internal/ex;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Ljava/lang/String;)V

    .line 479
    :cond_7
    iget-boolean v0, p0, Lcom/tapjoy/internal/fc;->p:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/tapjoy/internal/fc;->o:Z

    if-eqz v0, :cond_8

    .line 481
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    const-string v1, "Previous profile used manually specified session ID, but generated session ID used this time. This is likely a bug, make sure setSessionID() is called before every profile"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/fc;->o:Z

    .line 486
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fc;->u:Landroid/content/Context;

    .line 487
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->u:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Landroid/content/Context;)V

    .line 489
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v1, p4, v0}, Lcom/tapjoy/internal/fd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TDM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    const/4 v1, 0x0

    iput v1, p0, Lcom/tapjoy/internal/fc;->l:I

    .line 497
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->u:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 501
    :try_start_4
    const-string v1, "options"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/fc;->l:I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 508
    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 510
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 535
    :catch_0
    move-exception v0

    :try_start_6
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->i:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    .line 536
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 537
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/fc;->j:Z

    .line 538
    sget-object v0, Lcom/tapjoy/internal/fc$c;->h:Lcom/tapjoy/internal/fc$c;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 542
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 505
    :catch_1
    move-exception v0

    :try_start_7
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    goto :goto_1

    .line 516
    :cond_a
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applying inverted saved options - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tapjoy/internal/fc;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with options, resulting in  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tapjoy/internal/fc;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    iget v0, p0, Lcom/tapjoy/internal/fc;->n:I

    iget v1, p0, Lcom/tapjoy/internal/fc;->l:I

    and-int/lit8 v1, v1, 0x26

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/tapjoy/internal/fc;->l:I

    and-int/lit16 v1, v1, 0x300

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/fc;->n:I

    .line 519
    iget v0, p0, Lcom/tapjoy/internal/fc;->n:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_b

    .line 521
    invoke-virtual {p0}, Lcom/tapjoy/internal/fc;->e()V

    .line 522
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->c()Lcom/tapjoy/internal/em;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fc$c;->a(Lcom/tapjoy/internal/em;)Lcom/tapjoy/internal/fc$c;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 526
    :cond_b
    :try_start_8
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/internal/ef;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/ef;-><init>(Lcom/tapjoy/internal/fc;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fc;->i:Ljava/lang/Thread;

    .line 528
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 531
    sget-object v0, Lcom/tapjoy/internal/fc$c;->b:Lcom/tapjoy/internal/fc$c;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 542
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 183
    const/16 v0, 0x2710

    iput v0, p0, Lcom/tapjoy/internal/fc;->m:I

    .line 184
    return-void
.end method

.method public final a(Lcom/tapjoy/internal/er;)V
    .locals 2

    .prologue
    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 234
    iput-object p1, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 241
    :cond_0
    return-void

    .line 238
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    throw v0
.end method

.method final a(Lcom/tapjoy/internal/fc$c;)V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {p1}, Lcom/tapjoy/internal/fc$c;->b()Lcom/tapjoy/internal/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/em;)V

    .line 668
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/tapjoy/internal/fc$c;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->c()Lcom/tapjoy/internal/em;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fc$c;->a(Lcom/tapjoy/internal/em;)Lcom/tapjoy/internal/fc$c;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 584
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    .line 586
    invoke-direct {p0}, Lcom/tapjoy/internal/fc;->g()V

    .line 588
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->s:Lcom/tapjoy/internal/fb;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fb;->a()V

    .line 592
    invoke-direct {p0}, Lcom/tapjoy/internal/fc;->h()Z

    .line 594
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->b:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->b:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    sget-object v0, Lcom/tapjoy/internal/fc;->x:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/tapjoy/internal/fc$b;

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->b:Landroid/net/http/AndroidHttpClient;

    invoke-direct {v1, p0, v2}, Lcom/tapjoy/internal/fc$b;-><init>(Lcom/tapjoy/internal/fc;Landroid/net/http/AndroidHttpClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 626
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/fc;->b:Landroid/net/http/AndroidHttpClient;

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->t:Lcom/tapjoy/internal/ee;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ee;->b()V

    .line 633
    invoke-static {}, Lcom/tapjoy/internal/ev;->b()V

    .line 637
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 638
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/tapjoy/internal/fc;->r:Ljava/util/concurrent/CountDownLatch;

    .line 640
    return-void
.end method

.method final e()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 914
    :try_start_0
    sget-object v1, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "continuing profile request "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "inited already"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    const-string v2, "after startup and thread split"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 917
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1067
    :catch_0
    move-exception v0

    .line 1069
    :try_start_1
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    .line 1070
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    sget-object v1, Lcom/tapjoy/internal/fc$c;->f:Lcom/tapjoy/internal/fc$c;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fc$c;->b()Lcom/tapjoy/internal/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/em;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1082
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1084
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    sget-object v1, Lcom/tapjoy/internal/fc$c;->h:Lcom/tapjoy/internal/fc$c;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fc$c;->b()Lcom/tapjoy/internal/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/em;)V

    .line 1086
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1090
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1092
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    if-eqz v0, :cond_3

    .line 1094
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    instance-of v0, v0, Lcom/tapjoy/internal/eq;

    if-eqz v0, :cond_3d

    .line 1096
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    check-cast v0, Lcom/tapjoy/internal/eq;

    invoke-interface {v0}, Lcom/tapjoy/internal/eq;->a()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1110
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1111
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1113
    :cond_4
    :goto_2
    iput-boolean v7, p0, Lcom/tapjoy/internal/fc;->j:Z

    .line 1114
    :goto_3
    return-void

    .line 914
    :cond_5
    :try_start_3
    const-string v1, " needs init"

    goto :goto_0

    .line 919
    :cond_6
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_7

    .line 921
    sget-object v1, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    .line 922
    iget-object v2, p0, Lcom/tapjoy/internal/fc;->u:Landroid/content/Context;

    iget v1, p0, Lcom/tapjoy/internal/fc;->n:I

    and-int/lit8 v1, v1, 0x26

    if-eqz v1, :cond_b

    move v1, v0

    :goto_4
    iget-object v3, p0, Lcom/tapjoy/internal/fc;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v1, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    .line 925
    :cond_7
    :goto_5
    invoke-direct {p0}, Lcom/tapjoy/internal/fc;->h()Z

    move-result v1

    if-nez v1, :cond_12

    .line 927
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    const-string v1, "Timed out waiting for init thread, aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    sget-object v1, Lcom/tapjoy/internal/fc$c;->f:Lcom/tapjoy/internal/fc$c;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fc$c;->b()Lcom/tapjoy/internal/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/em;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1082
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1084
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    sget-object v1, Lcom/tapjoy/internal/fc$c;->h:Lcom/tapjoy/internal/fc$c;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fc$c;->b()Lcom/tapjoy/internal/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/em;)V

    .line 1086
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1090
    :cond_8
    :try_start_4
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1092
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    if-eqz v0, :cond_9

    .line 1094
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    instance-of v0, v0, Lcom/tapjoy/internal/eq;

    if-eqz v0, :cond_10

    .line 1096
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    check-cast v0, Lcom/tapjoy/internal/eq;

    invoke-interface {v0}, Lcom/tapjoy/internal/eq;->a()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1110
    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1111
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1113
    :cond_a
    :goto_7
    iput-boolean v7, p0, Lcom/tapjoy/internal/fc;->j:Z

    goto :goto_3

    :cond_b
    move v1, v7

    .line 922
    goto :goto_4

    :cond_c
    :try_start_5
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/tapjoy/internal/fc$1;

    invoke-direct {v4, p0, p0, v2, v1}, Lcom/tapjoy/internal/fc$1;-><init>(Lcom/tapjoy/internal/fc;Lcom/tapjoy/internal/fc;Landroid/content/Context;Z)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 1072
    :catch_1
    move-exception v0

    .line 1076
    :try_start_6
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    sget-object v1, Lcom/tapjoy/internal/fc$c;->f:Lcom/tapjoy/internal/fc$c;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fc$c;->b()Lcom/tapjoy/internal/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/em;)V

    .line 1077
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1082
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1084
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    sget-object v1, Lcom/tapjoy/internal/fc$c;->h:Lcom/tapjoy/internal/fc$c;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fc$c;->b()Lcom/tapjoy/internal/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/em;)V

    .line 1086
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1090
    :cond_d
    :try_start_7
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1092
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    if-eqz v0, :cond_e

    .line 1094
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    instance-of v0, v0, Lcom/tapjoy/internal/eq;

    if-eqz v0, :cond_3f

    .line 1096
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    check-cast v0, Lcom/tapjoy/internal/eq;

    invoke-interface {v0}, Lcom/tapjoy/internal/eq;->a()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 1110
    :cond_e
    :goto_8
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1111
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1113
    :cond_f
    :goto_9
    iput-boolean v7, p0, Lcom/tapjoy/internal/fc;->j:Z

    goto/16 :goto_3

    .line 1098
    :cond_10
    :try_start_8
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    instance-of v0, v0, Lcom/tapjoy/internal/es;

    if-eqz v0, :cond_9

    .line 1100
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->c()Lcom/tapjoy/internal/em;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fc$c;->a(Lcom/tapjoy/internal/em;)Lcom/tapjoy/internal/fc$c;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 1104
    :catch_2
    move-exception v0

    .line 1106
    :try_start_9
    sget-object v1, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    const-string v2, "profileNotify callback interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1110
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1111
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_7

    .line 1110
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1111
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_11
    throw v0

    .line 936
    :cond_12
    :try_start_a
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->t:Lcom/tapjoy/internal/ee;

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->u:Landroid/content/Context;

    iget v3, p0, Lcom/tapjoy/internal/fc;->n:I

    and-int/lit8 v3, v3, 0x26

    if-eqz v3, :cond_18

    :goto_a
    iget v3, p0, Lcom/tapjoy/internal/fc;->n:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/tapjoy/internal/ee;->a(Landroid/content/Context;ZI)Z

    .line 938
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    const-string v1, "initJSExecutor"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 940
    :cond_13
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_14
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1082
    :catchall_1
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1084
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    sget-object v2, Lcom/tapjoy/internal/fc$c;->h:Lcom/tapjoy/internal/fc$c;

    invoke-virtual {v2}, Lcom/tapjoy/internal/fc$c;->b()Lcom/tapjoy/internal/em;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/em;)V

    .line 1086
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1090
    :cond_15
    :try_start_b
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1092
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    if-eqz v0, :cond_16

    .line 1094
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    instance-of v0, v0, Lcom/tapjoy/internal/eq;

    if-eqz v0, :cond_41

    .line 1096
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    check-cast v0, Lcom/tapjoy/internal/eq;

    invoke-interface {v0}, Lcom/tapjoy/internal/eq;->a()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 1110
    :cond_16
    :goto_b
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1111
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1113
    :cond_17
    :goto_c
    iput-boolean v7, p0, Lcom/tapjoy/internal/fc;->j:Z

    throw v1

    :cond_18
    move v0, v7

    .line 936
    goto :goto_a

    .line 945
    :cond_19
    :try_start_c
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->i()Lcom/tapjoy/internal/ej;

    move-result-object v3

    new-instance v0, Lcom/tapjoy/internal/ei;

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->b:Landroid/net/http/AndroidHttpClient;

    iget-object v4, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v4}, Lcom/tapjoy/internal/fd;->k()Ljava/util/Map;

    move-result-object v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/tapjoy/internal/ei;-><init>(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;Lcom/tapjoy/internal/ej;Ljava/util/Map;Lcom/tapjoy/internal/fc;)V

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fc;->a(Ljava/lang/Runnable;)Lcom/tapjoy/internal/ep;

    move-result-object v1

    if-eqz v1, :cond_1e

    move-object v1, v0

    .line 946
    :goto_d
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    const-string v2, "get Config"

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 948
    :cond_1a
    if-nez v1, :cond_21

    .line 950
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    const-string v1, "Failed to connect to server, aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    sget-object v1, Lcom/tapjoy/internal/fc$c;->f:Lcom/tapjoy/internal/fc$c;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fc$c;->b()Lcom/tapjoy/internal/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/em;)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1082
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1084
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    sget-object v1, Lcom/tapjoy/internal/fc$c;->h:Lcom/tapjoy/internal/fc$c;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fc$c;->b()Lcom/tapjoy/internal/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/em;)V

    .line 1086
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1090
    :cond_1b
    :try_start_d
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1092
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    if-eqz v0, :cond_1c

    .line 1094
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    instance-of v0, v0, Lcom/tapjoy/internal/eq;

    if-eqz v0, :cond_1f

    .line 1096
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    check-cast v0, Lcom/tapjoy/internal/eq;

    invoke-interface {v0}, Lcom/tapjoy/internal/eq;->a()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1110
    :cond_1c
    :goto_e
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1111
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1113
    :cond_1d
    :goto_f
    iput-boolean v7, p0, Lcom/tapjoy/internal/fc;->j:Z

    goto/16 :goto_3

    .line 945
    :cond_1e
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_d

    .line 1098
    :cond_1f
    :try_start_e
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    instance-of v0, v0, Lcom/tapjoy/internal/es;

    if-eqz v0, :cond_1c

    .line 1100
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->c()Lcom/tapjoy/internal/em;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fc$c;->a(Lcom/tapjoy/internal/em;)Lcom/tapjoy/internal/fc$c;
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_e

    .line 1104
    :catch_3
    move-exception v0

    .line 1106
    :try_start_f
    sget-object v1, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    const-string v2, "profileNotify callback interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1110
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1111
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_f

    .line 1110
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1111
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_20
    throw v0

    .line 956
    :cond_21
    :try_start_10
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 958
    :cond_23
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->t:Lcom/tapjoy/internal/ee;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ee;->c()Z

    move-result v0

    .line 960
    if-eqz v0, :cond_24

    .line 963
    iget-object v2, p0, Lcom/tapjoy/internal/fc;->t:Lcom/tapjoy/internal/ee;

    invoke-virtual {v2}, Lcom/tapjoy/internal/ee;->d()V

    .line 964
    iget-object v2, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    const-string v3, "get browser info"

    invoke-virtual {v2, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 967
    :cond_24
    iget-object v2, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v2}, Lcom/tapjoy/internal/fd;->j()V

    .line 969
    iget-object v2, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_25
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 971
    :cond_26
    if-eqz v0, :cond_27

    .line 973
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->t:Lcom/tapjoy/internal/ee;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ee;->b()V

    .line 974
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->t:Lcom/tapjoy/internal/ee;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/ed;)V

    .line 976
    :cond_27
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    const-string v2, "wait for browser info"

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 978
    :cond_28
    iget v0, p0, Lcom/tapjoy/internal/fc;->n:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_29

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v2}, Lcom/tapjoy/internal/fd;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v2}, Lcom/tapjoy/internal/fd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/ex;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-mob"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 984
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x40

    if-lt v0, v3, :cond_2e

    .line 986
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    const-string v2, "combined session id and org id too long for host name fragment"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :goto_10
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    const-string v2, "Started DNS request"

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1006
    :cond_29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fc;->a(Z)Lcom/tapjoy/internal/fc$c;

    move-result-object v0

    .line 1007
    iget-object v2, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    const-string v3, "wait for config network request"

    invoke-virtual {v2, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1009
    :cond_2a
    invoke-direct {p0}, Lcom/tapjoy/internal/fc;->i()V

    .line 1011
    sget-object v2, Lcom/tapjoy/internal/fc$c;->b:Lcom/tapjoy/internal/fc$c;

    if-eq v0, v2, :cond_32

    .line 1013
    sget-object v1, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to retrieve config, aborting: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tapjoy/internal/fc$c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fc$c;->b()Lcom/tapjoy/internal/em;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/em;)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1082
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1084
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    sget-object v1, Lcom/tapjoy/internal/fc$c;->h:Lcom/tapjoy/internal/fc$c;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fc$c;->b()Lcom/tapjoy/internal/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/em;)V

    .line 1086
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1090
    :cond_2b
    :try_start_11
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1092
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    if-eqz v0, :cond_2c

    .line 1094
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    instance-of v0, v0, Lcom/tapjoy/internal/eq;

    if-eqz v0, :cond_30

    .line 1096
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    check-cast v0, Lcom/tapjoy/internal/eq;

    invoke-interface {v0}, Lcom/tapjoy/internal/eq;->a()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1110
    :cond_2c
    :goto_11
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1111
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1113
    :cond_2d
    :goto_12
    iput-boolean v7, p0, Lcom/tapjoy/internal/fc;->j:Z

    goto/16 :goto_3

    .line 990
    :cond_2e
    :try_start_12
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    .line 992
    const-string v0, "d"

    .line 993
    iget-object v3, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v3}, Lcom/tapjoy/internal/fd;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "qa2-h.online-metrix.net"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 995
    const-string v0, "q"

    .line 997
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".aa.online-metrix.net"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 999
    new-instance v2, Lcom/tapjoy/internal/eg;

    invoke-direct {v2, v0}, Lcom/tapjoy/internal/eg;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/tapjoy/internal/fc;->a(Ljava/lang/Runnable;)Lcom/tapjoy/internal/ep;
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_10

    .line 1098
    :cond_30
    :try_start_13
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    instance-of v0, v0, Lcom/tapjoy/internal/es;

    if-eqz v0, :cond_2c

    .line 1100
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->c()Lcom/tapjoy/internal/em;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fc$c;->a(Lcom/tapjoy/internal/em;)Lcom/tapjoy/internal/fc$c;
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_11

    .line 1104
    :catch_4
    move-exception v0

    .line 1106
    :try_start_14
    sget-object v1, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    const-string v2, "profileNotify callback interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 1110
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1111
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_12

    .line 1110
    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1111
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_31
    throw v0

    .line 1021
    :cond_32
    :try_start_15
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    iget-object v1, v1, Lcom/tapjoy/internal/ei;->a:Lcom/tapjoy/internal/ey;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/ey;)V

    .line 1023
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->d()Lcom/tapjoy/internal/ey;

    move-result-object v0

    iget v0, v0, Lcom/tapjoy/internal/ey;->a:I

    iget v1, p0, Lcom/tapjoy/internal/fc;->l:I

    if-eq v0, v1, :cond_33

    .line 1025
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dynamic options ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fd;->d()Lcom/tapjoy/internal/ey;

    move-result-object v1

    iget v1, v1, Lcom/tapjoy/internal/ey;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") != saved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tapjoy/internal/fc;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->u:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TDM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1027
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->u:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1028
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1029
    const-string v1, "options"

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v2}, Lcom/tapjoy/internal/fd;->d()Lcom/tapjoy/internal/ey;

    move-result-object v2

    iget v2, v2, Lcom/tapjoy/internal/ey;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1030
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1031
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    const-string v1, "Processed stored options"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1036
    :cond_33
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->s:Lcom/tapjoy/internal/fb;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fb;->b()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Landroid/location/Location;)V

    .line 1038
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->m()Lcom/tapjoy/internal/ej;

    move-result-object v4

    .line 1039
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->l()Ljava/util/Map;

    move-result-object v5

    .line 1041
    new-instance v0, Lcom/tapjoy/internal/ek;

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->b:Landroid/net/http/AndroidHttpClient;

    sget-object v2, Lcom/tapjoy/internal/ek$a;->d:Lcom/tapjoy/internal/ek$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "https://"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v6}, Lcom/tapjoy/internal/fd;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/fp/clear.png"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/tapjoy/internal/ek;-><init>(Landroid/net/http/AndroidHttpClient;Lcom/tapjoy/internal/ek$a;Ljava/lang/String;Lcom/tapjoy/internal/ej;Ljava/util/Map;Lcom/tapjoy/internal/fc;)V

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fc;->a(Ljava/lang/Runnable;)Lcom/tapjoy/internal/ep;

    .line 1046
    iget v0, p0, Lcom/tapjoy/internal/fc;->n:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_34

    .line 1048
    new-instance v0, Lcom/tapjoy/internal/eu;

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fd;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v2}, Lcom/tapjoy/internal/fd;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v3}, Lcom/tapjoy/internal/fd;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v4}, Lcom/tapjoy/internal/fd;->d()Lcom/tapjoy/internal/ey;

    move-result-object v4

    iget-object v4, v4, Lcom/tapjoy/internal/ey;->b:Ljava/lang/String;

    iget v5, p0, Lcom/tapjoy/internal/fc;->m:I

    invoke-direct/range {v0 .. v5}, Lcom/tapjoy/internal/eu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fc;->a(Ljava/lang/Runnable;)Lcom/tapjoy/internal/ep;

    .line 1051
    :cond_34
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    const-string v1, "build network threads"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1053
    :cond_35
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fc;->a(Z)Lcom/tapjoy/internal/fc$c;

    move-result-object v0

    .line 1054
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fc$c;->b()Lcom/tapjoy/internal/em;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/em;)V

    .line 1055
    sget-object v1, Lcom/tapjoy/internal/fc$c;->b:Lcom/tapjoy/internal/fc$c;

    if-eq v0, v1, :cond_36

    .line 1057
    sget-object v1, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tapjoy/internal/fc$c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " error, profiling will be incomplete"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    sget-object v1, Lcom/tapjoy/internal/fc$c;->k:Lcom/tapjoy/internal/fc$c;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fc$c;->b()Lcom/tapjoy/internal/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/em;)V

    .line 1061
    :cond_36
    invoke-direct {p0}, Lcom/tapjoy/internal/fc;->i()V

    .line 1063
    sget-object v0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    .line 1064
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->v:Landroid/util/TimingLogger;

    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 1082
    :cond_37
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1084
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    sget-object v1, Lcom/tapjoy/internal/fc$c;->h:Lcom/tapjoy/internal/fc$c;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fc$c;->b()Lcom/tapjoy/internal/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Lcom/tapjoy/internal/em;)V

    .line 1086
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1090
    :cond_38
    :try_start_16
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1092
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    if-eqz v0, :cond_39

    .line 1094
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    instance-of v0, v0, Lcom/tapjoy/internal/eq;

    if-eqz v0, :cond_3b

    .line 1096
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    check-cast v0, Lcom/tapjoy/internal/eq;

    invoke-interface {v0}, Lcom/tapjoy/internal/eq;->a()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 1110
    :cond_39
    :goto_13
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1111
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1113
    :cond_3a
    :goto_14
    iput-boolean v7, p0, Lcom/tapjoy/internal/fc;->j:Z

    goto/16 :goto_3

    .line 1098
    :cond_3b
    :try_start_17
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    instance-of v0, v0, Lcom/tapjoy/internal/es;

    if-eqz v0, :cond_39

    .line 1100
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->c()Lcom/tapjoy/internal/em;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fc$c;->a(Lcom/tapjoy/internal/em;)Lcom/tapjoy/internal/fc$c;
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto :goto_13

    .line 1104
    :catch_5
    move-exception v0

    .line 1106
    :try_start_18
    sget-object v1, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    const-string v2, "profileNotify callback interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 1110
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1111
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_14

    .line 1110
    :catchall_4
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1111
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3c
    throw v0

    .line 1098
    :cond_3d
    :try_start_19
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    instance-of v0, v0, Lcom/tapjoy/internal/es;

    if-eqz v0, :cond_3

    .line 1100
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->c()Lcom/tapjoy/internal/em;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fc$c;->a(Lcom/tapjoy/internal/em;)Lcom/tapjoy/internal/fc$c;
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    goto/16 :goto_1

    .line 1104
    :catch_6
    move-exception v0

    .line 1106
    :try_start_1a
    sget-object v1, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    const-string v2, "profileNotify callback interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 1110
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1111
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_2

    .line 1110
    :catchall_5
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1111
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3e
    throw v0

    .line 1098
    :cond_3f
    :try_start_1b
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    instance-of v0, v0, Lcom/tapjoy/internal/es;

    if-eqz v0, :cond_e

    .line 1100
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->c()Lcom/tapjoy/internal/em;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fc$c;->a(Lcom/tapjoy/internal/em;)Lcom/tapjoy/internal/fc$c;
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_7
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    goto/16 :goto_8

    .line 1104
    :catch_7
    move-exception v0

    .line 1106
    :try_start_1c
    sget-object v1, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    const-string v2, "profileNotify callback interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 1110
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1111
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_9

    .line 1110
    :catchall_6
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1111
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_40
    throw v0

    .line 1098
    :cond_41
    :try_start_1d
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    instance-of v0, v0, Lcom/tapjoy/internal/es;

    if-eqz v0, :cond_16

    .line 1100
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->h:Lcom/tapjoy/internal/er;

    iget-object v0, p0, Lcom/tapjoy/internal/fc;->a:Lcom/tapjoy/internal/fd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fd;->c()Lcom/tapjoy/internal/em;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fc$c;->a(Lcom/tapjoy/internal/em;)Lcom/tapjoy/internal/fc$c;
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    goto/16 :goto_b

    .line 1104
    :catch_8
    move-exception v0

    .line 1106
    :try_start_1e
    sget-object v2, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    const-string v3, "profileNotify callback interrupted"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 1110
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1111
    iget-object v0, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_c

    .line 1110
    :catchall_7
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1111
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_42
    throw v0
.end method
