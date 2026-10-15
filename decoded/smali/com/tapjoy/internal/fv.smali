.class public final Lcom/tapjoy/internal/fv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/tapjoy/internal/fv;

.field private static b:Lcom/tapjoy/internal/fv;

.field private static v:Landroid/os/Handler;

.field private static w:Ljava/io/File;


# instance fields
.field private final c:Lcom/tapjoy/internal/gd;

.field private d:Lcom/tapjoy/internal/ge;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Landroid/content/Context;

.field private j:Lcom/tapjoy/internal/fy;

.field private k:Lcom/tapjoy/internal/fu;

.field private l:Lcom/tapjoy/internal/gh;

.field private m:Lcom/tapjoy/internal/ft;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Lcom/tapjoy/internal/fw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/tapjoy/internal/fv;

    invoke-direct {v0}, Lcom/tapjoy/internal/fv;-><init>()V

    .line 53
    sput-object v0, Lcom/tapjoy/internal/fv;->a:Lcom/tapjoy/internal/fv;

    sput-object v0, Lcom/tapjoy/internal/fv;->b:Lcom/tapjoy/internal/fv;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v0, p0, Lcom/tapjoy/internal/fv;->e:Z

    .line 88
    iput-boolean v0, p0, Lcom/tapjoy/internal/fv;->f:Z

    .line 93
    iput-object v1, p0, Lcom/tapjoy/internal/fv;->g:Ljava/lang/String;

    .line 94
    iput-boolean v0, p0, Lcom/tapjoy/internal/fv;->h:Z

    .line 785
    invoke-static {v1}, Lcom/tapjoy/internal/fw;->a(Lcom/tapjoy/internal/fm;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fv;->u:Lcom/tapjoy/internal/fw;

    .line 111
    new-instance v0, Lcom/tapjoy/internal/gd;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/gd;-><init>(Lcom/tapjoy/internal/fv;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fv;->c:Lcom/tapjoy/internal/gd;

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/fv;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->i:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/tapjoy/internal/fv;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/tapjoy/internal/fv;->b:Lcom/tapjoy/internal/fv;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tapjoy/internal/fv;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/tapjoy/internal/fv;->b:Lcom/tapjoy/internal/fv;

    .line 61
    invoke-direct {v0, p0}, Lcom/tapjoy/internal/fv;->d(Landroid/content/Context;)V

    .line 62
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 819
    invoke-static {p1}, Lcom/tapjoy/internal/f;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 820
    if-eqz v0, :cond_1

    .line 821
    sget-object v1, Lcom/tapjoy/internal/fv;->b:Lcom/tapjoy/internal/fv;

    .line 822
    invoke-direct {v1, p0}, Lcom/tapjoy/internal/fv;->d(Landroid/content/Context;)V

    .line 823
    iget-object v2, v1, Lcom/tapjoy/internal/fv;->j:Lcom/tapjoy/internal/fy;

    invoke-virtual {v2}, Lcom/tapjoy/internal/fy;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/cv;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fiverocks:force"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 825
    :cond_0
    iget-object v2, v1, Lcom/tapjoy/internal/fv;->j:Lcom/tapjoy/internal/fy;

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/fy;->a(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 827
    iget-object v1, v1, Lcom/tapjoy/internal/fv;->k:Lcom/tapjoy/internal/fu;

    sget-object v2, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    const-string v3, "referrer"

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 831
    :cond_1
    return-object v0
.end method

.method public static a(Landroid/opengl/GLSurfaceView;)V
    .locals 1

    .prologue
    .line 298
    const-string v0, "setGLSurfaceView: The given GLSurfaceView was null"

    invoke-static {p0, v0}, Lcom/tapjoy/internal/fs;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-static {p0}, Lcom/tapjoy/internal/fp;->a(Landroid/opengl/GLSurfaceView;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 798
    const-class v1, Lcom/tapjoy/internal/fv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/fv;->v:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 799
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tapjoy/internal/fv;->v:Landroid/os/Handler;

    .line 801
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fv;->v:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    monitor-exit v1

    return-void

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized b(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 808
    const-class v1, Lcom/tapjoy/internal/fv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/fv;->w:Ljava/io/File;

    if-nez v0, :cond_0

    .line 809
    const-string v0, "fiverocks"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fv;->w:Ljava/io/File;

    .line 811
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fv;->w:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 808
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static c(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 815
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/tapjoy/internal/fv;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "install"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->i:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 152
    iput-object v0, p0, Lcom/tapjoy/internal/fv;->i:Landroid/content/Context;

    .line 153
    invoke-static {v0}, Lcom/tapjoy/internal/fy;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fy;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/fv;->j:Lcom/tapjoy/internal/fy;

    .line 155
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Lcom/tapjoy/internal/fv;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "events2"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/tapjoy/internal/fv;->m:Lcom/tapjoy/internal/ft;

    if-nez v2, :cond_0

    .line 157
    new-instance v2, Lcom/tapjoy/internal/ft;

    invoke-direct {v2, v1}, Lcom/tapjoy/internal/ft;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/tapjoy/internal/fv;->m:Lcom/tapjoy/internal/ft;

    .line 160
    :cond_0
    new-instance v1, Lcom/tapjoy/internal/fu;

    iget-object v2, p0, Lcom/tapjoy/internal/fv;->j:Lcom/tapjoy/internal/fy;

    iget-object v3, p0, Lcom/tapjoy/internal/fv;->m:Lcom/tapjoy/internal/ft;

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/internal/fu;-><init>(Lcom/tapjoy/internal/fy;Lcom/tapjoy/internal/ft;)V

    iput-object v1, p0, Lcom/tapjoy/internal/fv;->k:Lcom/tapjoy/internal/fu;

    .line 161
    new-instance v1, Lcom/tapjoy/internal/gh;

    iget-object v2, p0, Lcom/tapjoy/internal/fv;->k:Lcom/tapjoy/internal/fu;

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/gh;-><init>(Lcom/tapjoy/internal/fu;)V

    iput-object v1, p0, Lcom/tapjoy/internal/fv;->l:Lcom/tapjoy/internal/gh;

    .line 162
    new-instance v1, Lcom/tapjoy/internal/ge;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/ge;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/internal/fv;->d:Lcom/tapjoy/internal/ge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_1
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/tapjoy/internal/fv;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fv;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->i:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 430
    :cond_1
    sget-boolean v0, Lcom/tapjoy/internal/fs;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Should be called after initializing the SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fs;->b(Ljava/lang/String;)V

    .line 431
    :cond_2
    const/4 v0, 0x0

    .line 433
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private j(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->i:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 438
    sget-boolean v0, Lcom/tapjoy/internal/fs;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Should be called after initializing the SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fs;->b(Ljava/lang/String;)V

    .line 439
    :cond_0
    const/4 v0, 0x0

    .line 441
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized k()V
    .locals 2

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/fv;->o:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/fx;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fx;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fv;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fx;->d(Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fv;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_0
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 498
    iget-object v2, p0, Lcom/tapjoy/internal/fv;->l:Lcom/tapjoy/internal/gh;

    iget-object v3, v2, Lcom/tapjoy/internal/gh;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/tapjoy/internal/gh;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v4, v2, Lcom/tapjoy/internal/gh;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v3, v2, Lcom/tapjoy/internal/gh;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "New session started"

    invoke-static {v1}, Lcom/tapjoy/internal/fs;->a(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/tapjoy/internal/gh;->a:Lcom/tapjoy/internal/fu;

    iget-object v2, v1, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/fy;

    invoke-virtual {v2}, Lcom/tapjoy/internal/fy;->d()Lcom/tapjoy/internal/gl$p;

    move-result-object v2

    iget-object v3, v1, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/fy;

    invoke-virtual {v3}, Lcom/tapjoy/internal/fy;->e()V

    sget-object v3, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    const-string v4, "bootup"

    invoke-virtual {v1, v3, v4}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tapjoy/internal/fu;->c:J

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/gl$c$a;->a(Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/gl$c$a;

    :cond_1
    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$c$a;)V

    :goto_0
    if-eqz v0, :cond_2

    .line 499
    iget-object v1, p0, Lcom/tapjoy/internal/fv;->c:Lcom/tapjoy/internal/gd;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v1, Lcom/tapjoy/internal/gd;->b:Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 498
    goto :goto_0

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/Context;)Lcom/tapjoy/internal/gu;
    .locals 7

    .prologue
    .line 770
    iget-object v1, p0, Lcom/tapjoy/internal/fv;->c:Lcom/tapjoy/internal/gd;

    iget-object v0, v1, Lcom/tapjoy/internal/gd;->a:Lcom/tapjoy/internal/fv;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/fv;->b(Z)Lcom/tapjoy/internal/gl$n;

    move-result-object v4

    new-instance v0, Lcom/tapjoy/internal/gu;

    iget-object v1, v1, Lcom/tapjoy/internal/gd;->a:Lcom/tapjoy/internal/fv;

    invoke-virtual {v4}, Lcom/tapjoy/internal/gl$n;->f()Lcom/tapjoy/internal/gl$l;

    move-result-object v2

    invoke-virtual {v4}, Lcom/tapjoy/internal/gl$n;->h()Lcom/tapjoy/internal/gl$a;

    move-result-object v3

    invoke-virtual {v4}, Lcom/tapjoy/internal/gl$n;->j()Lcom/tapjoy/internal/gl$x;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/tapjoy/internal/gu;-><init>(Lcom/tapjoy/internal/fv;Lcom/tapjoy/internal/gl$l;Lcom/tapjoy/internal/gl$a;Lcom/tapjoy/internal/gl$x;Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 322
    const-string v1, "setUserLevel"

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/fv;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    :goto_0
    return-void

    .line 325
    :cond_0
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->j:Lcom/tapjoy/internal/fy;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fy;->a(I)Z

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 344
    const-string v0, "setUserCohortVariable"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fv;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    if-lez p1, :cond_3

    const/4 v0, 0x5

    if-gt p1, v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    const-string v1, "setCohortVariable: variableIndex is out of range"

    sget-boolean v2, Lcom/tapjoy/internal/fs;->a:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/tapjoy/internal/fs;->b(Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_0

    .line 352
    invoke-static {p2}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/tapjoy/internal/fv;->j:Lcom/tapjoy/internal/fy;

    invoke-virtual {v1, p1, v0}, Lcom/tapjoy/internal/fy;->a(ILjava/lang/String;)Z

    goto :goto_0

    .line 347
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 452
    const-string v0, "onActivityStart: The given activity was null"

    invoke-static {p1, v0}, Lcom/tapjoy/internal/fs;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    const-string v0, "onActivityStart"

    invoke-static {v0}, Lcom/tapjoy/internal/fs;->c(Ljava/lang/String;)Z

    .line 458
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/d;->a(Landroid/app/Application;)V

    .line 459
    invoke-static {p1}, Lcom/tapjoy/internal/d;->a(Landroid/app/Activity;)V

    .line 461
    const-string v0, "onActivityStart"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fv;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/tapjoy/internal/fv;->l()V

    goto :goto_0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/16 v4, 0x50

    const/4 v8, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 363
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/tapjoy/internal/fv;->o:Z

    if-eqz v2, :cond_2

    .line 364
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->r:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Already initialized with a different appId"

    invoke-static {v0, v1}, Lcom/tapjoy/internal/fs;->a(ZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 426
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 368
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->s:Ljava/lang/String;

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Already initialized with a different appKey"

    invoke-static {v0, v1}, Lcom/tapjoy/internal/fs;->a(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 374
    :cond_2
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/fv;->d(Landroid/content/Context;)V

    .line 376
    iget-object v2, p0, Lcom/tapjoy/internal/fv;->i:Landroid/content/Context;

    if-eqz v2, :cond_4

    move v2, v0

    :goto_1
    const-string v3, "The given context was null"

    invoke-static {v2, v3}, Lcom/tapjoy/internal/fs;->a(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_5

    const-string v2, "[0-9a-f]{24}"

    invoke-virtual {p5, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    :goto_2
    if-eqz v2, :cond_0

    .line 382
    if-eqz p6, :cond_6

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_6

    const-string v2, "[0-9A-Za-z\\-_]{20}"

    invoke-virtual {p6, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    :goto_3
    if-eqz v2, :cond_0

    .line 385
    iput-object p2, p0, Lcom/tapjoy/internal/fv;->p:Ljava/lang/String;

    .line 386
    iput-object p3, p0, Lcom/tapjoy/internal/fv;->q:Ljava/lang/String;

    .line 387
    iput-object p5, p0, Lcom/tapjoy/internal/fv;->r:Ljava/lang/String;

    .line 388
    iput-object p6, p0, Lcom/tapjoy/internal/fv;->s:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    :try_start_2
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    :try_start_3
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-virtual {v5}, Ljava/net/URL;->getPort()I

    move-result v3

    .line 400
    const-string v6, "http"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 401
    new-instance v2, Lcom/tapjoy/internal/ck;

    const-string v6, "TapjoySDK"

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    if-eq v3, v8, :cond_7

    :goto_4
    invoke-direct {v2, v6, v7, v3}, Lcom/tapjoy/internal/ck;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 408
    :goto_5
    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/ck;->a(Ljava/lang/String;)V

    .line 409
    sput-object v2, Lcom/tapjoy/internal/cg;->b:Lcom/tapjoy/internal/cj;

    .line 410
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/internal/cg;->a:Ljava/util/concurrent/ExecutorService;

    .line 411
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    .line 412
    iget-object v3, p0, Lcom/tapjoy/internal/fv;->m:Lcom/tapjoy/internal/ft;

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/cj;)V

    .line 414
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tapjoy/internal/fv;->o:Z

    .line 423
    new-instance v2, Lcom/tapjoy/internal/fz;

    iget-object v3, p0, Lcom/tapjoy/internal/fv;->i:Landroid/content/Context;

    invoke-static {v3}, Lcom/tapjoy/internal/fv;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/fz;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Lcom/tapjoy/internal/fz;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    :goto_6
    if-nez v0, :cond_3

    invoke-virtual {v2}, Lcom/tapjoy/internal/fz;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/fv;->k:Lcom/tapjoy/internal/fu;

    sget-object v1, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    const-string v2, "install"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 425
    :cond_3
    invoke-direct {p0}, Lcom/tapjoy/internal/fv;->k()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v2, v1

    .line 376
    goto/16 :goto_1

    .line 379
    :cond_5
    :try_start_4
    const-string v2, "Invalid App ID: {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p5, v3, v5

    invoke-static {v2, v3}, Lcom/tapjoy/internal/fs;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    goto/16 :goto_2

    .line 382
    :cond_6
    const-string v2, "Invalid App Key: {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p6, v3, v5

    invoke-static {v2, v3}, Lcom/tapjoy/internal/fs;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    goto/16 :goto_3

    .line 394
    :catch_0
    move-exception v0

    .line 395
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    move v3, v4

    .line 401
    goto :goto_4

    .line 402
    :cond_8
    const-string v4, "https"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 403
    new-instance v2, Lcom/tapjoy/internal/ck;

    const-string v4, "TapjoySDK"

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v2, v4, v6, v7}, Lcom/tapjoy/internal/ck;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 404
    if-eq v3, v8, :cond_9

    :goto_7
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/ck;->a(I)V

    goto/16 :goto_5

    :cond_9
    const/16 v3, 0x1bb

    goto :goto_7

    .line 406
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported protocol: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_b
    move v0, v1

    .line 423
    goto :goto_6
.end method

.method public final a(Lcom/tapjoy/internal/fm;)V
    .locals 1

    .prologue
    .line 788
    invoke-static {p1}, Lcom/tapjoy/internal/fw;->a(Lcom/tapjoy/internal/fm;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fv;->u:Lcom/tapjoy/internal/fw;

    .line 789
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/tapjoy/internal/fv;->n:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 532
    const-string v0, "trackPurchase"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fv;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 537
    :cond_0
    :try_start_0
    new-instance v0, Lcom/tapjoy/internal/g;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/g;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    iget-object v1, v0, Lcom/tapjoy/internal/g;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/fr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 543
    iget-object v1, v0, Lcom/tapjoy/internal/g;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/fr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 544
    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 545
    :cond_1
    const-string v0, "trackPurchase"

    const-string v1, "skuDetails"

    const-string v2, "insufficient fields"

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/fs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    const-string v0, "trackPurchase"

    const-string v1, "skuDetails"

    const-string v2, "invalid SkuDetails JSON"

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/fs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 549
    const-string v0, "trackPurchase"

    const-string v1, "skuDetails"

    const-string v2, "invalid currency code"

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/fs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_3
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-static {p2}, Lcom/tapjoy/internal/fr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 555
    iget-object v1, p0, Lcom/tapjoy/internal/fv;->k:Lcom/tapjoy/internal/fu;

    iget-wide v4, v0, Lcom/tapjoy/internal/g;->g:J

    long-to-double v4, v4

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/tapjoy/internal/fu;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 7

    .prologue
    .line 512
    const-string v0, "trackPurchase"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fv;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    const-string v0, "trackPurchase"

    const-string v1, "productId"

    invoke-static {p1, v0, v1}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 518
    const-string v0, "trackPurchase"

    const-string v1, "currencyCode"

    invoke-static {p2, v0, v1}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    .line 522
    const-string v0, "trackPurchase"

    const-string v1, "currencyCode"

    const-string v2, "invalid currency code"

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/fs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 525
    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 526
    invoke-static {p5}, Lcom/tapjoy/internal/fr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 528
    iget-object v1, p0, Lcom/tapjoy/internal/fv;->k:Lcom/tapjoy/internal/fu;

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/tapjoy/internal/fu;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 608
    const-string v0, "trackEvent"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fv;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    const-string v0, "trackEvent: name was null"

    invoke-static {p2, v0}, Lcom/tapjoy/internal/fs;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    const/4 v5, 0x0

    .line 615
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-eqz v0, :cond_2

    .line 616
    invoke-static {}, Lcom/tapjoy/internal/cz;->b()Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 617
    const-string v0, "value"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->k:Lcom/tapjoy/internal/fu;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/internal/fu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
    .locals 8

    .prologue
    .line 625
    const-string v2, "trackEvent"

    invoke-direct {p0, v2}, Lcom/tapjoy/internal/fv;->j(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    const-string v2, "trackEvent: name was null"

    invoke-static {p2, v2}, Lcom/tapjoy/internal/fs;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    invoke-static {}, Lcom/tapjoy/internal/cz;->b()Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 632
    if-eqz p5, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-eqz v2, :cond_2

    .line 633
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, p5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_2
    if-eqz p8, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, p9, v2

    if-eqz v2, :cond_3

    .line 636
    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    :cond_3
    if-eqz p11, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, p12, v2

    if-eqz v2, :cond_4

    .line 639
    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    :cond_4
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 642
    const/4 v7, 0x0

    .line 644
    :cond_5
    iget-object v2, p0, Lcom/tapjoy/internal/fv;->k:Lcom/tapjoy/internal/fu;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/tapjoy/internal/fu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8

    .prologue
    .line 687
    const-string v0, "trackEvent"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fv;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    invoke-static {p2}, Lcom/tapjoy/internal/cv;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    invoke-static {}, Lcom/tapjoy/internal/cz;->b()Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 695
    if-eqz p5, :cond_5

    invoke-interface {p5}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 696
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 697
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 698
    if-nez v1, :cond_3

    .line 699
    const-string v0, "trackEvent"

    const-string v1, "key in values map"

    sget-boolean v2, Lcom/tapjoy/internal/fs;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "Tapjoy"

    const-string v3, "{}: {} must not be null"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tapjoy/internal/ad;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 701
    :cond_3
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 702
    check-cast v1, Ljava/lang/String;

    .line 703
    const-string v3, "trackEvent"

    const-string v4, "key in values map"

    invoke-static {v1, v3, v4}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 706
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 707
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_4

    .line 708
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 710
    :cond_4
    const-string v0, "trackEvent"

    const-string v1, "value in values map"

    const-string v2, "must be a long"

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/fs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 716
    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->k:Lcom/tapjoy/internal/fu;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/internal/fu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method final a(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 720
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->k:Lcom/tapjoy/internal/fu;

    sget-object v1, Lcom/tapjoy/internal/gl$i;->b:Lcom/tapjoy/internal/gl$i;

    const-string v2, "impression"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$c$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    :cond_0
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 721
    return-void
.end method

.method final a(Ljava/util/Map;J)V
    .locals 4

    .prologue
    .line 724
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->k:Lcom/tapjoy/internal/fu;

    sget-object v1, Lcom/tapjoy/internal/gl$i;->b:Lcom/tapjoy/internal/gl$i;

    const-string v2, "view"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/tapjoy/internal/gl$c$a;->d(J)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$c$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    :cond_0
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 725
    return-void
.end method

.method final a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 728
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->k:Lcom/tapjoy/internal/fu;

    sget-object v1, Lcom/tapjoy/internal/gl$i;->b:Lcom/tapjoy/internal/gl$i;

    const-string v2, "click"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string v3, "region"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/tapjoy/internal/bn;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$c$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 729
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/tapjoy/internal/fs;->a:Z

    if-eq v0, p1, :cond_2

    sput-boolean p1, Lcom/tapjoy/internal/fs;->a:Z

    if-eqz p1, :cond_1

    const-string v0, "The debug mode has been enabled"

    invoke-static {v0}, Lcom/tapjoy/internal/fs;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    .line 135
    :goto_1
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/internal/fv;->o:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->m:Lcom/tapjoy/internal/ft;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ft;->a()V

    .line 138
    :cond_0
    return-void

    .line 134
    :cond_1
    const-string v0, "The debug mode has been disabled"

    invoke-static {v0}, Lcom/tapjoy/internal/fs;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/fv;->d(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tapjoy/internal/fv;->j:Lcom/tapjoy/internal/fy;

    invoke-virtual {v2, p2, v0, v1, p3}, Lcom/tapjoy/internal/fy;->a(Ljava/lang/String;JZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fv;->k:Lcom/tapjoy/internal/fu;

    sget-object v1, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    const-string v2, "push_show"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/internal/gl$p;->k()Lcom/tapjoy/internal/gl$p$a;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/tapjoy/internal/gl$p$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$p$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$c$a;->a(Lcom/tapjoy/internal/gl$p$a;)Lcom/tapjoy/internal/gl$c$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$c$a;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Z)Lcom/tapjoy/internal/gl$n;
    .locals 1

    .prologue
    .line 179
    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->j:Lcom/tapjoy/internal/fy;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fy;->a()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->j:Lcom/tapjoy/internal/fy;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fy;->b()Lcom/tapjoy/internal/gl$n;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 141
    iget-boolean v0, p0, Lcom/tapjoy/internal/fv;->e:Z

    if-eq v0, v1, :cond_0

    .line 142
    iput-boolean v1, p0, Lcom/tapjoy/internal/fv;->e:Z

    .line 143
    iget-boolean v0, p0, Lcom/tapjoy/internal/fv;->o:Z

    .line 147
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 333
    const-string v1, "setUserFriendCount"

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/fv;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    :goto_0
    return-void

    .line 336
    :cond_0
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->j:Lcom/tapjoy/internal/fy;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fy;->b(I)Z

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 469
    const-string v0, "onActivityStop: The given activity was null"

    invoke-static {p1, v0}, Lcom/tapjoy/internal/fs;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    const-string v0, "onActivityStop"

    invoke-static {v0}, Lcom/tapjoy/internal/fs;->c(Ljava/lang/String;)Z

    .line 475
    invoke-static {p1}, Lcom/tapjoy/internal/d;->b(Landroid/app/Activity;)V

    .line 477
    const-string v0, "onActivityStop"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fv;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-static {}, Lcom/tapjoy/internal/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->l:Lcom/tapjoy/internal/gh;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gh;->a()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    invoke-static {p1}, Lcom/tapjoy/internal/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fv;->g:Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Lcom/tapjoy/internal/fv;->k()V

    .line 188
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->p:Ljava/lang/String;

    return-object v0
.end method

.method final declared-synchronized c(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/fv;->o:Z

    if-eqz v0, :cond_2

    .line 208
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fv;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 209
    iget-object p1, p0, Lcom/tapjoy/internal/fv;->t:Ljava/lang/String;

    .line 211
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/fv;->t:Ljava/lang/String;

    .line 212
    if-eqz p1, :cond_1

    .line 213
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->j:Lcom/tapjoy/internal/fy;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fy;->b()Lcom/tapjoy/internal/gl$n;

    move-result-object v0

    const-string v1, "GCM registration id of device {} updated for sender {}: {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$n;->f()Lcom/tapjoy/internal/gl$l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tapjoy/internal/gl$l;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tapjoy/internal/fv;->g:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/tapjoy/internal/fs;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tapjoy/internal/gw;

    invoke-direct {v1, v0, p1}, Lcom/tapjoy/internal/gw;-><init>(Lcom/tapjoy/internal/gl$n;Ljava/lang/String;)V

    new-instance v0, Lcom/tapjoy/internal/fv$1;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/fv$1;-><init>(Lcom/tapjoy/internal/fv;Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/internal/cg;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/internal/cg;->a(Lcom/tapjoy/internal/cl;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 215
    :cond_2
    if-eqz p1, :cond_1

    .line 216
    :try_start_1
    iput-object p1, p0, Lcom/tapjoy/internal/fv;->t:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 246
    const-string v0, "setPushNotificationDisabled"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fv;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->j:Lcom/tapjoy/internal/fy;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fy;->a(Z)Z

    move-result v0

    .line 252
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/internal/fv;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fv;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/cv;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->t:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 255
    :goto_1
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fv;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/fx;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fx;

    move-result-object v0

    iget-object v1, v0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v0, v0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-interface {v1, v0}, Lcom/tapjoy/internal/t;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/cv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->q:Ljava/lang/String;

    return-object v0
.end method

.method final d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->k:Lcom/tapjoy/internal/fu;

    sget-object v1, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    const-string v2, "push_ignore"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/internal/gl$p;->k()Lcom/tapjoy/internal/gl$p$a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tapjoy/internal/gl$p$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$p$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$c$a;->a(Lcom/tapjoy/internal/gl$p$a;)Lcom/tapjoy/internal/gl$c$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 261
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->j:Lcom/tapjoy/internal/fy;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fy;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->k:Lcom/tapjoy/internal/fu;

    sget-object v1, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    const-string v2, "push_click"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/internal/gl$p;->k()Lcom/tapjoy/internal/gl$p$a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tapjoy/internal/gl$p$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$p$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$c$a;->a(Lcom/tapjoy/internal/gl$p$a;)Lcom/tapjoy/internal/gl$c$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 287
    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 239
    const-string v0, "isPushNotificationDisabled"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fv;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->j:Lcom/tapjoy/internal/fy;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fy;->f()Z

    move-result v0

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 306
    const-string v0, "setAppDataVersion"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fv;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-static {p1}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/tapjoy/internal/fv;->j:Lcom/tapjoy/internal/fy;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/fy;->b(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->l:Lcom/tapjoy/internal/gh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fv;->l:Lcom/tapjoy/internal/gh;

    iget-object v0, v0, Lcom/tapjoy/internal/gh;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 491
    const-string v0, "startSession"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fv;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/fv;->l()V

    goto :goto_0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 314
    const-string v0, "setUserId"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fv;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-static {p1}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/tapjoy/internal/fv;->j:Lcom/tapjoy/internal/fy;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/fy;->c(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 504
    const-string v0, "endSession"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/fv;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->l:Lcom/tapjoy/internal/gh;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gh;->a()V

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 774
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->d:Lcom/tapjoy/internal/ge;

    if-nez v0, :cond_0

    .line 777
    :goto_0
    return-void

    .line 776
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/internal/fv;->d:Lcom/tapjoy/internal/ge;

    invoke-static {}, Lcom/tapjoy/internal/ge;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v2, Lcom/tapjoy/internal/ge;->b:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Lcom/tapjoy/internal/ge;->a:Lcom/tapjoy/internal/q;

    invoke-virtual {v3}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v0, v2, Lcom/tapjoy/internal/ge;->a:Lcom/tapjoy/internal/q;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    const-string v0, ""

    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    :goto_2
    iget-object v0, v2, Lcom/tapjoy/internal/ge;->b:Lcom/tapjoy/internal/q;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    move-object p1, v0

    goto :goto_2
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->d:Lcom/tapjoy/internal/ge;

    if-nez v0, :cond_0

    .line 781
    const/4 v0, 0x0

    .line 782
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->d:Lcom/tapjoy/internal/ge;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ge;->b()V

    iget-object v0, v0, Lcom/tapjoy/internal/ge;->b:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final j()Lcom/tapjoy/internal/fw;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->u:Lcom/tapjoy/internal/fw;

    return-object v0
.end method
