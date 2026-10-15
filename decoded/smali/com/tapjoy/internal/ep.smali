.class final Lcom/tapjoy/internal/ep;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ep;->a:Ljava/lang/Runnable;

    .line 9
    iput-object p1, p0, Lcom/tapjoy/internal/ep;->a:Ljava/lang/Runnable;

    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/ek;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/tapjoy/internal/ep;->a:Ljava/lang/Runnable;

    instance-of v0, v0, Lcom/tapjoy/internal/ek;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/tapjoy/internal/ep;->a:Ljava/lang/Runnable;

    check-cast v0, Lcom/tapjoy/internal/ek;

    .line 19
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final interrupt()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tapjoy/internal/ep;->a:Ljava/lang/Runnable;

    instance-of v0, v0, Lcom/tapjoy/internal/ek;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/tapjoy/internal/ep;->a:Ljava/lang/Runnable;

    check-cast v0, Lcom/tapjoy/internal/ek;

    .line 35
    invoke-virtual {v0}, Lcom/tapjoy/internal/ek;->c()V

    .line 38
    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 39
    return-void
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tapjoy/internal/ep;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 26
    return-void
.end method
