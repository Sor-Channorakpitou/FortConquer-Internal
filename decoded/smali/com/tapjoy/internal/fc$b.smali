.class final Lcom/tapjoy/internal/fc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fc;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/net/http/AndroidHttpClient;

.field final synthetic b:Lcom/tapjoy/internal/fc;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fc;Landroid/net/http/AndroidHttpClient;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/tapjoy/internal/fc$b;->b:Lcom/tapjoy/internal/fc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput-object p2, p0, Lcom/tapjoy/internal/fc$b;->a:Landroid/net/http/AndroidHttpClient;

    .line 604
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/tapjoy/internal/fc$b;->a:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_0

    .line 622
    :goto_0
    return-void

    .line 615
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fc$b;->a:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 616
    iget-object v0, p0, Lcom/tapjoy/internal/fc$b;->a:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 620
    invoke-static {}, Lcom/tapjoy/internal/fc;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Swallowing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
