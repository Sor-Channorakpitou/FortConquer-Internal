.class public abstract Lcom/game/videoad/AbstractVideoAd;
.super Ljava/lang/Object;
.source "AbstractVideoAd.java"


# instance fields
.field protected _activity:Landroid/app/Activity;

.field protected _appIDOrKey:Ljava/lang/String;

.field protected _callBack:Lcom/game/videoad/VideoAdCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected adLoaded()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/game/videoad/AbstractVideoAd;->_callBack:Lcom/game/videoad/VideoAdCallback;

    invoke-interface {v0}, Lcom/game/videoad/VideoAdCallback;->adLoaded()V

    .line 18
    return-void
.end method

.method public abstract isAdReady()Z
.end method

.method public onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/game/videoad/VideoAdCallback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appIDOrKey"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/game/videoad/VideoAdCallback;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/game/videoad/AbstractVideoAd;->_activity:Landroid/app/Activity;

    .line 12
    iput-object p3, p0, Lcom/game/videoad/AbstractVideoAd;->_callBack:Lcom/game/videoad/VideoAdCallback;

    .line 13
    iput-object p2, p0, Lcom/game/videoad/AbstractVideoAd;->_appIDOrKey:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public abstract preload()V
.end method

.method public abstract showVideoAd()V
.end method

.method protected watchCancelled()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/game/videoad/AbstractVideoAd;->_callBack:Lcom/game/videoad/VideoAdCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/game/videoad/VideoAdCallback;->watchComplete(I)V

    .line 30
    return-void
.end method

.method protected watchComplete()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/game/videoad/AbstractVideoAd;->_callBack:Lcom/game/videoad/VideoAdCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/game/videoad/VideoAdCallback;->watchComplete(I)V

    .line 22
    return-void
.end method

.method protected watchError()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/game/videoad/AbstractVideoAd;->_callBack:Lcom/game/videoad/VideoAdCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/game/videoad/VideoAdCallback;->watchComplete(I)V

    .line 26
    return-void
.end method
