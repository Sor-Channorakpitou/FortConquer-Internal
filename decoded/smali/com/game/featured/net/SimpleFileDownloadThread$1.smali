.class Lcom/game/featured/net/SimpleFileDownloadThread$1;
.super Ljava/lang/Object;
.source "SimpleFileDownloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/featured/net/SimpleFileDownloadThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/featured/net/SimpleFileDownloadThread;

.field private final synthetic val$data:[B

.field private final synthetic val$finalIsValidFile:Z

.field private final synthetic val$finalSucceed:Z

.field private final synthetic val$task:Lcom/game/featured/net/FileDownloadTask;


# direct methods
.method constructor <init>(Lcom/game/featured/net/SimpleFileDownloadThread;Lcom/game/featured/net/FileDownloadTask;ZZ[B)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/featured/net/SimpleFileDownloadThread$1;->this$0:Lcom/game/featured/net/SimpleFileDownloadThread;

    iput-object p2, p0, Lcom/game/featured/net/SimpleFileDownloadThread$1;->val$task:Lcom/game/featured/net/FileDownloadTask;

    iput-boolean p3, p0, Lcom/game/featured/net/SimpleFileDownloadThread$1;->val$finalSucceed:Z

    iput-boolean p4, p0, Lcom/game/featured/net/SimpleFileDownloadThread$1;->val$finalIsValidFile:Z

    iput-object p5, p0, Lcom/game/featured/net/SimpleFileDownloadThread$1;->val$data:[B

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/game/featured/net/SimpleFileDownloadThread$1;->val$task:Lcom/game/featured/net/FileDownloadTask;

    invoke-virtual {v0}, Lcom/game/featured/net/FileDownloadTask;->getObserver()Lcom/game/featured/net/SimpleFileDownloadObserver;

    move-result-object v1

    iget-boolean v0, p0, Lcom/game/featured/net/SimpleFileDownloadThread$1;->val$finalSucceed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/game/featured/net/SimpleFileDownloadThread$1;->val$finalIsValidFile:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/game/featured/net/SimpleFileDownloadThread$1;->val$data:[B

    invoke-interface {v1, v0, v2}, Lcom/game/featured/net/SimpleFileDownloadObserver;->onAsyncFileDownloadComplete(Z[B)V

    .line 130
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
