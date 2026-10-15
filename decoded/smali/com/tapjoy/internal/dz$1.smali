.class final Lcom/tapjoy/internal/dz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/dz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tapjoy/TJConnectListener;

.field final synthetic c:Lcom/tapjoy/internal/dz;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/dz;Landroid/content/Context;Lcom/tapjoy/TJConnectListener;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tapjoy/internal/dz$1;->c:Lcom/tapjoy/internal/dz;

    iput-object p2, p0, Lcom/tapjoy/internal/dz$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tapjoy/internal/dz$1;->b:Lcom/tapjoy/TJConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectFailure()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tapjoy/internal/dz$1;->b:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/tapjoy/internal/dz$1;->b:Lcom/tapjoy/TJConnectListener;

    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V

    .line 89
    :cond_0
    return-void
.end method

.method public final onConnectSuccess()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tapjoy/internal/dz$1;->c:Lcom/tapjoy/internal/dz;

    new-instance v1, Lcom/tapjoy/TJCOffers;

    iget-object v2, p0, Lcom/tapjoy/internal/dz$1;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TJCOffers;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/tapjoy/internal/dz;->a(Lcom/tapjoy/internal/dz;Lcom/tapjoy/TJCOffers;)Lcom/tapjoy/TJCOffers;

    .line 65
    iget-object v0, p0, Lcom/tapjoy/internal/dz$1;->c:Lcom/tapjoy/internal/dz;

    new-instance v1, Lcom/tapjoy/TJCurrency;

    iget-object v2, p0, Lcom/tapjoy/internal/dz$1;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TJCurrency;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/tapjoy/internal/dz;->a(Lcom/tapjoy/internal/dz;Lcom/tapjoy/TJCurrency;)Lcom/tapjoy/TJCurrency;

    .line 66
    iget-object v0, p0, Lcom/tapjoy/internal/dz$1;->c:Lcom/tapjoy/internal/dz;

    new-instance v1, Lcom/tapjoy/TapjoyCache;

    iget-object v2, p0, Lcom/tapjoy/internal/dz$1;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TapjoyCache;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/tapjoy/internal/dz;->a(Lcom/tapjoy/internal/dz;Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCache;

    .line 67
    iget-object v0, p0, Lcom/tapjoy/internal/dz$1;->c:Lcom/tapjoy/internal/dz;

    new-instance v1, Lcom/tapjoy/TapjoyVideo;

    iget-object v2, p0, Lcom/tapjoy/internal/dz$1;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TapjoyVideo;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/tapjoy/internal/dz;->a(Lcom/tapjoy/internal/dz;Lcom/tapjoy/TapjoyVideo;)Lcom/tapjoy/TapjoyVideo;

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/dz$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/TJEventOptimizer;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    iget-object v0, p0, Lcom/tapjoy/internal/dz$1;->c:Lcom/tapjoy/internal/dz;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/dz;->a:Z

    .line 79
    iget-object v0, p0, Lcom/tapjoy/internal/dz$1;->b:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/tapjoy/internal/dz$1;->b:Lcom/tapjoy/TJConnectListener;

    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/dz$1;->onConnectFailure()V

    goto :goto_0
.end method
