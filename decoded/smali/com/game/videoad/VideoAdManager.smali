.class public Lcom/game/videoad/VideoAdManager;
.super Ljava/lang/Object;
.source "VideoAdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/videoad/VideoAdManager$VideoAdManagerHolder;
    }
.end annotation


# instance fields
.field private _providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _videoManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/game/videoad/AbstractVideoAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/game/videoad/VideoAdManager;->_videoManagers:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game/videoad/VideoAdManager;->_providers:Ljava/util/List;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/game/videoad/VideoAdManager;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/game/videoad/VideoAdManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/game/videoad/VideoAdManager;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/game/videoad/VideoAdManager$VideoAdManagerHolder;->INSTANCE:Lcom/game/videoad/VideoAdManager;

    return-object v0
.end method

.method private preloadAd(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 50
    iget-object v1, p0, Lcom/game/videoad/VideoAdManager;->_videoManagers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/videoad/AbstractVideoAd;

    .line 51
    .local v0, "videoMgr":Lcom/game/videoad/AbstractVideoAd;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/game/videoad/AbstractVideoAd;->isAdReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/game/videoad/AbstractVideoAd;->preload()V

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public addVideoAd(Landroid/app/Activity;ILcom/game/videoad/AbstractVideoAd;Ljava/lang/String;Lcom/game/videoad/VideoAdCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adKey"    # I
    .param p3, "ad"    # Lcom/game/videoad/AbstractVideoAd;
    .param p4, "appIDOrKey"    # Ljava/lang/String;
    .param p5, "callBack"    # Lcom/game/videoad/VideoAdCallback;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/game/videoad/VideoAdManager;->_videoManagers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p3, p1, p4, p5}, Lcom/game/videoad/AbstractVideoAd;->onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/game/videoad/VideoAdCallback;)V

    .line 28
    iget-object v0, p0, Lcom/game/videoad/VideoAdManager;->_providers:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public isVideoAdReady()Z
    .locals 4

    .prologue
    .line 59
    iget-object v2, p0, Lcom/game/videoad/VideoAdManager;->_providers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 65
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 59
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 60
    .local v0, "key":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/game/videoad/VideoAdManager;->_videoManagers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/videoad/AbstractVideoAd;

    .line 61
    .local v1, "videoMgr":Lcom/game/videoad/AbstractVideoAd;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/game/videoad/AbstractVideoAd;->isAdReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 79
    iget-object v2, p0, Lcom/game/videoad/VideoAdManager;->_providers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 85
    return-void

    .line 79
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 80
    .local v0, "key":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/game/videoad/VideoAdManager;->_videoManagers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/videoad/AbstractVideoAd;

    .line 81
    .local v1, "videoMgr":Lcom/game/videoad/AbstractVideoAd;
    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v1}, Lcom/game/videoad/AbstractVideoAd;->onPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 88
    iget-object v2, p0, Lcom/game/videoad/VideoAdManager;->_providers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    return-void

    .line 88
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 89
    .local v0, "key":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/game/videoad/VideoAdManager;->_videoManagers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/videoad/AbstractVideoAd;

    .line 90
    .local v1, "videoMgr":Lcom/game/videoad/AbstractVideoAd;
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Lcom/game/videoad/AbstractVideoAd;->onResume()V

    goto :goto_0
.end method

.method public preloadAds()V
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/game/videoad/VideoAdManager;->_providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    return-void

    .line 44
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 45
    .local v0, "key":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/game/videoad/VideoAdManager;->preloadAd(I)V

    goto :goto_0
.end method

.method public setValidProviders([I)V
    .locals 7
    .param p1, "providers"    # [I

    .prologue
    .line 32
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/game/videoad/VideoAdManager;->_providers:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    .local v1, "oldIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/game/videoad/VideoAdManager;->_providers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 34
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 41
    return-void

    .line 34
    :cond_0
    aget v0, p1, v2

    .line 35
    .local v0, "i":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 36
    iget-object v4, p0, Lcom/game/videoad/VideoAdManager;->_providers:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_1
    const-string v4, "VideoAdManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "provide id not exist, id = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public showVideoAd()V
    .locals 4

    .prologue
    .line 69
    iget-object v2, p0, Lcom/game/videoad/VideoAdManager;->_providers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 70
    .local v0, "key":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/game/videoad/VideoAdManager;->_videoManagers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/videoad/AbstractVideoAd;

    .line 71
    .local v1, "videoMgr":Lcom/game/videoad/AbstractVideoAd;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/game/videoad/AbstractVideoAd;->isAdReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    invoke-virtual {v1}, Lcom/game/videoad/AbstractVideoAd;->showVideoAd()V

    goto :goto_0
.end method
