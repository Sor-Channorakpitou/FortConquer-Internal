.class final Lcom/tapjoy/internal/gh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gh;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gh;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tapjoy/internal/gh$1;->a:Lcom/tapjoy/internal/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tapjoy/internal/gh$1;->a:Lcom/tapjoy/internal/gh;

    iget-object v0, v0, Lcom/tapjoy/internal/gh;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const-string v0, "The session ended"

    invoke-static {v0}, Lcom/tapjoy/internal/fs;->a(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/tapjoy/internal/gh$1;->a:Lcom/tapjoy/internal/gh;

    iget-object v0, v0, Lcom/tapjoy/internal/gh;->a:Lcom/tapjoy/internal/fu;

    iget-wide v2, v0, Lcom/tapjoy/internal/fu;->c:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/tapjoy/internal/fu;->c:J

    sub-long/2addr v2, v4

    iget-object v1, v0, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/fy;

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/fy;->a(J)V

    sget-object v1, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    const-string v4, "session"

    invoke-virtual {v0, v1, v4}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/gl$c$a;->d(J)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fu;->a(Lcom/tapjoy/internal/gl$c$a;)V

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/tapjoy/internal/fu;->c:J

    iget-object v4, v0, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/fy;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$c$a;->h()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v2, v3}, Lcom/tapjoy/internal/fy;->a(JJ)V

    iget-object v0, v0, Lcom/tapjoy/internal/fu;->b:Lcom/tapjoy/internal/ft;

    iget-object v1, v0, Lcom/tapjoy/internal/ft;->b:Lcom/tapjoy/internal/cj;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ft;->a()V

    new-instance v1, Lcom/tapjoy/internal/ft$1;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/ft$1;-><init>(Lcom/tapjoy/internal/ft;)V

    invoke-virtual {v1}, Lcom/tapjoy/internal/ft$1;->run()V

    :cond_0
    iget-object v0, v0, Lcom/tapjoy/internal/ft;->a:Lcom/tapjoy/internal/gg;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gg;->flush()V

    .line 72
    :cond_1
    return-void
.end method
