.class Lcom/tapjoy/internal/ef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/tapjoy/internal/fc;

.field private b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/fc;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/tapjoy/internal/ef;->a:Lcom/tapjoy/internal/fc;

    .line 12
    iput-object v0, p0, Lcom/tapjoy/internal/ef;->b:Ljava/util/concurrent/CountDownLatch;

    .line 16
    iput-object p1, p0, Lcom/tapjoy/internal/ef;->a:Lcom/tapjoy/internal/fc;

    .line 17
    iput-object v0, p0, Lcom/tapjoy/internal/ef;->b:Ljava/util/concurrent/CountDownLatch;

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tapjoy/internal/ef;->a:Lcom/tapjoy/internal/fc;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fc;->e()V

    .line 23
    iget-object v0, p0, Lcom/tapjoy/internal/ef;->b:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/ef;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 24
    :cond_0
    return-void
.end method
