.class public final Lcom/tapjoy/internal/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tapjoy/internal/cg;

.field private final b:Lcom/tapjoy/internal/cl;


# direct methods
.method protected constructor <init>(Lcom/tapjoy/internal/cg;Lcom/tapjoy/internal/cl;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tapjoy/internal/ci;->a:Lcom/tapjoy/internal/cg;

    .line 23
    iput-object p2, p0, Lcom/tapjoy/internal/ci;->b:Lcom/tapjoy/internal/cl;

    .line 24
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/ci;->a:Lcom/tapjoy/internal/cg;

    invoke-virtual {v0}, Lcom/tapjoy/internal/cg;->f()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/tapjoy/internal/ci;->b:Lcom/tapjoy/internal/cl;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/tapjoy/internal/ci;->b:Lcom/tapjoy/internal/cl;

    instance-of v1, v1, Lcom/tapjoy/internal/cm;

    if-eqz v1, :cond_2

    .line 44
    iget-object v0, p0, Lcom/tapjoy/internal/ci;->b:Lcom/tapjoy/internal/cl;

    iget-object v0, p0, Lcom/tapjoy/internal/ci;->a:Lcom/tapjoy/internal/cg;

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tapjoy/internal/ci;->b:Lcom/tapjoy/internal/cl;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/tapjoy/internal/ci;->b:Lcom/tapjoy/internal/cl;

    instance-of v0, v0, Lcom/tapjoy/internal/cm;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/tapjoy/internal/ci;->b:Lcom/tapjoy/internal/cl;

    iget-object v0, p0, Lcom/tapjoy/internal/ci;->a:Lcom/tapjoy/internal/cg;

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/ci;->b:Lcom/tapjoy/internal/cl;

    iget-object v1, p0, Lcom/tapjoy/internal/ci;->a:Lcom/tapjoy/internal/cg;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/cl;->a(Lcom/tapjoy/internal/cg;)V

    goto :goto_0

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/ci;->b:Lcom/tapjoy/internal/cl;

    iget-object v2, p0, Lcom/tapjoy/internal/ci;->a:Lcom/tapjoy/internal/cg;

    invoke-interface {v1, v2, v0}, Lcom/tapjoy/internal/cl;->a(Lcom/tapjoy/internal/cg;Ljava/lang/Object;)V

    goto :goto_0
.end method
