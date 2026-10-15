.class Lcom/game/featured/net/SimpleHttpThread$1;
.super Ljava/lang/Object;
.source "SimpleHttpThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/featured/net/SimpleHttpThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/featured/net/SimpleHttpThread;

.field private final synthetic val$data:[B

.field private final synthetic val$finalSucceed:Z

.field private final synthetic val$finalTask:Lcom/game/featured/net/HttpTask;


# direct methods
.method constructor <init>(Lcom/game/featured/net/SimpleHttpThread;Lcom/game/featured/net/HttpTask;Z[B)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/featured/net/SimpleHttpThread$1;->this$0:Lcom/game/featured/net/SimpleHttpThread;

    iput-object p2, p0, Lcom/game/featured/net/SimpleHttpThread$1;->val$finalTask:Lcom/game/featured/net/HttpTask;

    iput-boolean p3, p0, Lcom/game/featured/net/SimpleHttpThread$1;->val$finalSucceed:Z

    iput-object p4, p0, Lcom/game/featured/net/SimpleHttpThread$1;->val$data:[B

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/game/featured/net/SimpleHttpThread$1;->val$finalTask:Lcom/game/featured/net/HttpTask;

    invoke-virtual {v0}, Lcom/game/featured/net/HttpTask;->getObserver()Lcom/game/featured/net/SimpleHttpObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/game/featured/net/SimpleHttpThread$1;->val$finalTask:Lcom/game/featured/net/HttpTask;

    invoke-virtual {v0}, Lcom/game/featured/net/HttpTask;->getObserver()Lcom/game/featured/net/SimpleHttpObserver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/game/featured/net/SimpleHttpThread$1;->val$finalSucceed:Z

    iget-object v2, p0, Lcom/game/featured/net/SimpleHttpThread$1;->val$data:[B

    invoke-interface {v0, v1, v2}, Lcom/game/featured/net/SimpleHttpObserver;->onAsyncHttpComplete(Z[B)V

    .line 133
    :cond_0
    return-void
.end method
