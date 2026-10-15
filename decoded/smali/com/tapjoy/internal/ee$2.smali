.class final Lcom/tapjoy/internal/ee$2;
.super Lcom/tapjoy/internal/ee$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/ee;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ee;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ee;Lcom/tapjoy/internal/ee;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/tapjoy/internal/ee$2;->a:Lcom/tapjoy/internal/ee;

    invoke-direct {p0, p2, p3}, Lcom/tapjoy/internal/ee$a;-><init>(Lcom/tapjoy/internal/ee;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 267
    :try_start_0
    invoke-static {}, Lcom/tapjoy/internal/ee;->e()Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/tapjoy/internal/ee$2;->b:Lcom/tapjoy/internal/ee;

    invoke-static {v0}, Lcom/tapjoy/internal/ee;->e(Lcom/tapjoy/internal/ee;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/ee$2;->c:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 277
    invoke-static {}, Lcom/tapjoy/internal/ee;->e()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getBrowserInfo countdown using latch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/ee$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ee$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 278
    iget-object v0, p0, Lcom/tapjoy/internal/ee$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 280
    :cond_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tapjoy/internal/ee;->e()Ljava/lang/String;

    goto :goto_0
.end method
