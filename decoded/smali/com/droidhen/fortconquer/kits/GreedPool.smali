.class public Lcom/droidhen/fortconquer/kits/GreedPool;
.super Ljava/lang/Object;
.source "GreedPool.java"

# interfaces
.implements Lcom/droidhen/fortconquer/kits/ObjectPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/droidhen/fortconquer/kits/ObjectPool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected generator:Lcom/droidhen/fortconquer/kits/ObjectGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/droidhen/fortconquer/kits/ObjectGenerator",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected pool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/droidhen/fortconquer/kits/ObjectGenerator;I)V
    .locals 1
    .param p2, "initSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/droidhen/fortconquer/kits/ObjectGenerator",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/droidhen/fortconquer/kits/GreedPool;, "Lcom/droidhen/fortconquer/kits/GreedPool<TT;>;"
    .local p1, "generator":Lcom/droidhen/fortconquer/kits/ObjectGenerator;, "Lcom/droidhen/fortconquer/kits/ObjectGenerator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidhen/fortconquer/kits/GreedPool;->pool:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/droidhen/fortconquer/kits/GreedPool;->generator:Lcom/droidhen/fortconquer/kits/ObjectGenerator;

    .line 27
    invoke-direct {p0, p2}, Lcom/droidhen/fortconquer/kits/GreedPool;->initPool(I)V

    .line 28
    invoke-direct {p0}, Lcom/droidhen/fortconquer/kits/GreedPool;->registerSelf()V

    .line 29
    return-void
.end method

.method private initPool(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 32
    .local p0, "this":Lcom/droidhen/fortconquer/kits/GreedPool;, "Lcom/droidhen/fortconquer/kits/GreedPool<TT;>;"
    if-gtz p1, :cond_0

    .line 39
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/kits/GreedPool;->pool:Ljava/util/List;

    monitor-enter v2

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, p1, :cond_1

    .line 34
    :try_start_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/droidhen/fortconquer/kits/GreedPool;->pool:Ljava/util/List;

    iget-object v3, p0, Lcom/droidhen/fortconquer/kits/GreedPool;->generator:Lcom/droidhen/fortconquer/kits/ObjectGenerator;

    invoke-interface {v3}, Lcom/droidhen/fortconquer/kits/ObjectGenerator;->newObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private registerSelf()V
    .locals 2

    .prologue
    .line 43
    .local p0, "this":Lcom/droidhen/fortconquer/kits/GreedPool;, "Lcom/droidhen/fortconquer/kits/GreedPool<TT;>;"
    sget-object v1, Lcom/droidhen/fortconquer/kits/GreedPool;->_pools:Ljava/util/List;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/droidhen/fortconquer/kits/GreedPool;->_pools:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    monitor-exit v1

    .line 46
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static resetAll()V
    .locals 3

    .prologue
    .line 75
    sget-object v2, Lcom/droidhen/fortconquer/kits/GreedPool;->_pools:Ljava/util/List;

    monitor-enter v2

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Lcom/droidhen/fortconquer/kits/GreedPool;->_pools:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 75
    monitor-exit v2

    .line 80
    return-void

    .line 77
    :cond_0
    sget-object v1, Lcom/droidhen/fortconquer/kits/GreedPool;->_pools:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/kits/ObjectPool;

    invoke-interface {v1}, Lcom/droidhen/fortconquer/kits/ObjectPool;->reset()V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/droidhen/fortconquer/kits/GreedPool;, "Lcom/droidhen/fortconquer/kits/GreedPool<TT;>;"
    iget-object v1, p0, Lcom/droidhen/fortconquer/kits/GreedPool;->pool:Ljava/util/List;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/kits/GreedPool;->pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/droidhen/fortconquer/kits/GreedPool;->generator:Lcom/droidhen/fortconquer/kits/ObjectGenerator;

    invoke-interface {v0}, Lcom/droidhen/fortconquer/kits/ObjectGenerator;->newObject()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/kits/GreedPool;->pool:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/droidhen/fortconquer/kits/GreedPool;, "Lcom/droidhen/fortconquer/kits/GreedPool<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/kits/GreedPool;->pool:Ljava/util/List;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/kits/GreedPool;->pool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lcom/droidhen/fortconquer/kits/GreedPool;, "Lcom/droidhen/fortconquer/kits/GreedPool<TT;>;"
    iget-object v1, p0, Lcom/droidhen/fortconquer/kits/GreedPool;->pool:Ljava/util/List;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/kits/GreedPool;->pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    monitor-exit v1

    .line 72
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
