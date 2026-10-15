.class final Lcom/tapjoy/FiveRocksIntegration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/fm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/FiveRocksIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e(Ljava/lang/String;)Lcom/tapjoy/internal/fk;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/tapjoy/FiveRocksIntegration$1$1;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/FiveRocksIntegration$1$1;-><init>(Lcom/tapjoy/FiveRocksIntegration$1;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/tapjoy/internal/fj;)V
    .locals 1

    .prologue
    .line 76
    if-eqz p2, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lcom/tapjoy/FiveRocksIntegration$1;->e(Ljava/lang/String;)Lcom/tapjoy/internal/fk;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/tapjoy/internal/fj;->a(Lcom/tapjoy/internal/fk;)V

    .line 80
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/be;

    move-result-object v1

    monitor-enter v1

    .line 49
    :try_start_0
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/be;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/be;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->a()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->a()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementListener;->onContentReady(Lcom/tapjoy/TJPlacement;)V

    .line 54
    :cond_0
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/String;Lcom/tapjoy/internal/fj;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    if-eqz p2, :cond_0

    .line 86
    invoke-direct {p0, p1}, Lcom/tapjoy/FiveRocksIntegration$1;->e(Ljava/lang/String;)Lcom/tapjoy/internal/fk;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/tapjoy/internal/fj;->a(Lcom/tapjoy/internal/fk;)V

    .line 90
    :cond_0
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->viewWillClose(I)V

    .line 91
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->viewDidClose(I)V

    .line 93
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/be;

    move-result-object v1

    monitor-enter v1

    .line 94
    :try_start_0
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/be;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/be;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    .line 95
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->a()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->a()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementListener;->onContentDismiss(Lcom/tapjoy/TJPlacement;)V

    .line 99
    :cond_1
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->viewDidOpen(I)V

    .line 60
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/be;

    move-result-object v1

    monitor-enter v1

    .line 61
    :try_start_0
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/be;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/be;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    .line 62
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->a()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->a()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementListener;->onContentShow(Lcom/tapjoy/TJPlacement;)V

    .line 66
    :cond_0
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method
