.class final Lcom/tapjoy/internal/fy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fy;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fy;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/tapjoy/internal/fy$1;->a:Lcom/tapjoy/internal/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 689
    new-instance v0, Lcom/tapjoy/internal/cq;

    invoke-direct {v0}, Lcom/tapjoy/internal/cq;-><init>()V

    .line 690
    iget-object v1, p0, Lcom/tapjoy/internal/fy$1;->a:Lcom/tapjoy/internal/fy;

    invoke-static {v1}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/fy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/cq;->a(Landroid/content/Context;)Z

    move-result v1

    .line 692
    iget-object v2, p0, Lcom/tapjoy/internal/fy$1;->a:Lcom/tapjoy/internal/fy;

    monitor-enter v2

    .line 693
    if-eqz v1, :cond_0

    .line 694
    :try_start_0
    iget-object v1, v0, Lcom/tapjoy/internal/cq;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 695
    iget-boolean v0, v0, Lcom/tapjoy/internal/cq;->b:Z

    .line 697
    iget-object v3, p0, Lcom/tapjoy/internal/fy$1;->a:Lcom/tapjoy/internal/fy;

    invoke-static {v3}, Lcom/tapjoy/internal/fy;->b(Lcom/tapjoy/internal/fy;)Lcom/tapjoy/internal/gl$x$a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tapjoy/internal/gl$x$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$x$a;

    .line 698
    iget-object v3, p0, Lcom/tapjoy/internal/fy$1;->a:Lcom/tapjoy/internal/fy;

    invoke-static {v3}, Lcom/tapjoy/internal/fy;->b(Lcom/tapjoy/internal/fy;)Lcom/tapjoy/internal/gl$x$a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/gl$x$a;->a(Z)Lcom/tapjoy/internal/gl$x$a;

    .line 700
    iget-object v3, p0, Lcom/tapjoy/internal/fy$1;->a:Lcom/tapjoy/internal/fy;

    invoke-static {v3}, Lcom/tapjoy/internal/fy;->c(Lcom/tapjoy/internal/fy;)Lcom/tapjoy/internal/gf;

    move-result-object v3

    iget-object v3, v3, Lcom/tapjoy/internal/gf;->z:Lcom/tapjoy/internal/q;

    invoke-virtual {v3, v1}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 701
    iget-object v3, p0, Lcom/tapjoy/internal/fy$1;->a:Lcom/tapjoy/internal/fy;

    invoke-static {v3}, Lcom/tapjoy/internal/fy;->c(Lcom/tapjoy/internal/fy;)Lcom/tapjoy/internal/gf;

    move-result-object v3

    iget-object v3, v3, Lcom/tapjoy/internal/gf;->A:Lcom/tapjoy/internal/j;

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/j;->a(Z)V

    .line 703
    invoke-static {v1, v0}, Lcom/tapjoy/internal/gi;->a(Ljava/lang/String;Z)V

    .line 714
    :goto_0
    monitor-exit v2

    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy$1;->a:Lcom/tapjoy/internal/fy;

    invoke-static {v0}, Lcom/tapjoy/internal/fy;->b(Lcom/tapjoy/internal/fy;)Lcom/tapjoy/internal/gl$x$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->k()Lcom/tapjoy/internal/gl$x$a;

    .line 707
    iget-object v0, p0, Lcom/tapjoy/internal/fy$1;->a:Lcom/tapjoy/internal/fy;

    invoke-static {v0}, Lcom/tapjoy/internal/fy;->b(Lcom/tapjoy/internal/fy;)Lcom/tapjoy/internal/gl$x$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->l()Lcom/tapjoy/internal/gl$x$a;

    .line 709
    iget-object v0, p0, Lcom/tapjoy/internal/fy$1;->a:Lcom/tapjoy/internal/fy;

    invoke-static {v0}, Lcom/tapjoy/internal/fy;->c(Lcom/tapjoy/internal/fy;)Lcom/tapjoy/internal/gf;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->z:Lcom/tapjoy/internal/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/tapjoy/internal/fy$1;->a:Lcom/tapjoy/internal/fy;

    invoke-static {v0}, Lcom/tapjoy/internal/fy;->c(Lcom/tapjoy/internal/fy;)Lcom/tapjoy/internal/gf;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->A:Lcom/tapjoy/internal/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/j;->a(Z)V

    .line 712
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/internal/gi;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
