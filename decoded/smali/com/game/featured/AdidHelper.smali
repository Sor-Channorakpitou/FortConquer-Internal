.class public Lcom/game/featured/AdidHelper;
.super Ljava/lang/Object;
.source "AdidHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/featured/AdidHelper$AdidHelperHolder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdidHelper"


# instance fields
.field private _adid:Ljava/lang/String;

.field private _executorService:Ljava/util/concurrent/ExecutorService;

.field private _isAdidInited:Z

.field private _isRetriving:Z

.field private _isValid:Z

.field private _observers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/game/featured/AdidRetrievedObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/game/featured/AdidHelper;->_observers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 99
    iput-boolean v1, p0, Lcom/game/featured/AdidHelper;->_isAdidInited:Z

    .line 100
    iput-boolean v1, p0, Lcom/game/featured/AdidHelper;->_isValid:Z

    .line 101
    iput-boolean v1, p0, Lcom/game/featured/AdidHelper;->_isRetriving:Z

    .line 105
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/game/featured/AdidHelper;->_executorService:Ljava/util/concurrent/ExecutorService;

    .line 13
    return-void
.end method

.method static synthetic access$0(Lcom/game/featured/AdidHelper;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/game/featured/AdidHelper;->initAdid(Ljava/lang/String;Z)V

    return-void
.end method

.method private declared-synchronized getAdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/game/featured/AdidHelper;->_adid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/game/featured/AdidHelper;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/game/featured/AdidHelper$AdidHelperHolder;->INSTANCE:Lcom/game/featured/AdidHelper;

    return-object v0
.end method

.method private declared-synchronized initAdid(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "adid"    # Ljava/lang/String;
    .param p2, "isValid"    # Z

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/game/featured/AdidHelper;->_adid:Ljava/lang/String;

    .line 70
    iput-boolean p2, p0, Lcom/game/featured/AdidHelper;->_isValid:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/game/featured/AdidHelper;->_isAdidInited:Z

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game/featured/AdidHelper;->_isRetriving:Z

    .line 74
    iget-object v0, p0, Lcom/game/featured/AdidHelper;->_adid:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/game/featured/AdidHelper;->_isValid:Z

    invoke-direct {p0, v0, v1}, Lcom/game/featured/AdidHelper;->notifyObservers(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isAdidInited()Z
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/game/featured/AdidHelper;->_isAdidInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isRetriving()Z
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/game/featured/AdidHelper;->_isRetriving:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isValid()Z
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/game/featured/AdidHelper;->_isValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyObservers(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "adid"    # Ljava/lang/String;
    .param p2, "isValid"    # Z

    .prologue
    .line 57
    iget-object v2, p0, Lcom/game/featured/AdidHelper;->_observers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/featured/AdidRetrievedObserver;

    .local v1, "observer":Lcom/game/featured/AdidRetrievedObserver;
    :goto_0
    if-nez v1, :cond_0

    .line 66
    return-void

    .line 58
    :cond_0
    move-object v0, v1

    .line 59
    .local v0, "finalObserver":Lcom/game/featured/AdidRetrievedObserver;
    iget-object v2, p0, Lcom/game/featured/AdidHelper;->_executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/game/featured/AdidHelper$2;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/game/featured/AdidHelper$2;-><init>(Lcom/game/featured/AdidHelper;Lcom/game/featured/AdidRetrievedObserver;Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 57
    iget-object v2, p0, Lcom/game/featured/AdidHelper;->_observers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "observer":Lcom/game/featured/AdidRetrievedObserver;
    check-cast v1, Lcom/game/featured/AdidRetrievedObserver;

    .restart local v1    # "observer":Lcom/game/featured/AdidRetrievedObserver;
    goto :goto_0
.end method

.method private declared-synchronized setIsRetrieving(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/game/featured/AdidHelper;->_isRetriving:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public retrieveAdid(Lcom/game/featured/AdidRetrievedObserver;Landroid/app/Activity;)V
    .locals 2
    .param p1, "observer"    # Lcom/game/featured/AdidRetrievedObserver;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/game/featured/AdidHelper;->_observers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-direct {p0}, Lcom/game/featured/AdidHelper;->isAdidInited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-direct {p0}, Lcom/game/featured/AdidHelper;->getAdid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/game/featured/AdidHelper;->isValid()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/game/featured/AdidHelper;->notifyObservers(Ljava/lang/String;Z)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/game/featured/AdidHelper;->isRetriving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/game/featured/AdidHelper;->setIsRetrieving(Z)V

    .line 32
    iget-object v0, p0, Lcom/game/featured/AdidHelper;->_executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/game/featured/AdidHelper$1;

    invoke-direct {v1, p0, p2}, Lcom/game/featured/AdidHelper$1;-><init>(Lcom/game/featured/AdidHelper;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
