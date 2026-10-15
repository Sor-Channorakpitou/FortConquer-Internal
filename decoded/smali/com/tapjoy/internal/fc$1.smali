.class final Lcom/tapjoy/internal/fc$1;
.super Lcom/tapjoy/internal/ef;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/tapjoy/internal/fc;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fc;Lcom/tapjoy/internal/fc;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    iput-object p3, p0, Lcom/tapjoy/internal/fc$1;->a:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/tapjoy/internal/fc$1;->b:Z

    invoke-direct {p0, p2}, Lcom/tapjoy/internal/ef;-><init>(Lcom/tapjoy/internal/fc;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 338
    :try_start_0
    invoke-static {}, Lcom/tapjoy/internal/fc;->f()Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    invoke-static {v0}, Lcom/tapjoy/internal/fc;->a(Lcom/tapjoy/internal/fc;)Lcom/tapjoy/internal/ee;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fc$1;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/tapjoy/internal/fc$1;->b:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/internal/ee;->a(Landroid/content/Context;ZI)Z

    .line 342
    iget-object v0, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    invoke-static {v0}, Lcom/tapjoy/internal/fc;->b(Lcom/tapjoy/internal/fc;)Landroid/util/TimingLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    invoke-static {v0}, Lcom/tapjoy/internal/fc;->b(Lcom/tapjoy/internal/fc;)Landroid/util/TimingLogger;

    move-result-object v0

    const-string v1, "init - initJSExecutor"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    invoke-static {v0}, Lcom/tapjoy/internal/fc;->a(Lcom/tapjoy/internal/fc;)Lcom/tapjoy/internal/ee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ee;->a()Ljava/lang/String;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    invoke-static {v1}, Lcom/tapjoy/internal/fc;->b(Lcom/tapjoy/internal/fc;)Landroid/util/TimingLogger;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    invoke-static {v1}, Lcom/tapjoy/internal/fc;->b(Lcom/tapjoy/internal/fc;)Landroid/util/TimingLogger;

    move-result-object v1

    const-string v2, "getUserAgent"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    iget-object v1, v1, Lcom/tapjoy/internal/fc;->b:Landroid/net/http/AndroidHttpClient;

    if-nez v1, :cond_2

    .line 350
    iget-object v1, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    iget-object v2, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    invoke-static {v2}, Lcom/tapjoy/internal/fc;->c(Lcom/tapjoy/internal/fc;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/internal/fc;->b:Landroid/net/http/AndroidHttpClient;

    .line 352
    iget-object v0, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    iget-object v0, v0, Lcom/tapjoy/internal/fc;->b:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    invoke-static {v1}, Lcom/tapjoy/internal/fc;->d(Lcom/tapjoy/internal/fc;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 355
    iget-object v1, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    invoke-static {v1}, Lcom/tapjoy/internal/fc;->d(Lcom/tapjoy/internal/fc;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 357
    iget-object v1, p0, Lcom/tapjoy/internal/fc$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    iget-object v2, v2, Lcom/tapjoy/internal/fc;->b:Landroid/net/http/AndroidHttpClient;

    iget-object v3, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    invoke-static {v3}, Lcom/tapjoy/internal/fc;->d(Lcom/tapjoy/internal/fc;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/tapjoy/internal/ff;->a(Landroid/content/Context;Lorg/apache/http/client/HttpClient;I)V

    .line 359
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 362
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    invoke-static {v0}, Lcom/tapjoy/internal/fc;->b(Lcom/tapjoy/internal/fc;)Landroid/util/TimingLogger;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    invoke-static {v0}, Lcom/tapjoy/internal/fc;->b(Lcom/tapjoy/internal/fc;)Landroid/util/TimingLogger;

    move-result-object v0

    const-string v1, "create AndroidHttpClient"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 368
    :cond_3
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->a:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->a()Z

    .line 369
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tapjoy/internal/ex;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    iget-object v0, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    invoke-static {v0}, Lcom/tapjoy/internal/fc;->e(Lcom/tapjoy/internal/fc;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    invoke-static {v0}, Lcom/tapjoy/internal/fc;->e(Lcom/tapjoy/internal/fc;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 375
    :cond_4
    return-void

    .line 373
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    invoke-static {v1}, Lcom/tapjoy/internal/fc;->e(Lcom/tapjoy/internal/fc;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tapjoy/internal/fc$1;->c:Lcom/tapjoy/internal/fc;

    invoke-static {v1}, Lcom/tapjoy/internal/fc;->e(Lcom/tapjoy/internal/fc;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_5
    throw v0
.end method
