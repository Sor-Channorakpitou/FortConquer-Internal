.class Lcom/game/featured/net/HttpTask;
.super Ljava/lang/Object;
.source "SimpleHttpThread.java"


# instance fields
.field private observer:Lcom/game/featured/net/SimpleHttpObserver;

.field private param:Ljava/lang/String;

.field private stopThreadWhenFinished:Z

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObserver()Lcom/game/featured/net/SimpleHttpObserver;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/game/featured/net/HttpTask;->observer:Lcom/game/featured/net/SimpleHttpObserver;

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/game/featured/net/HttpTask;->param:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/game/featured/net/HttpTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isStopThreadWhenFinished()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/game/featured/net/HttpTask;->stopThreadWhenFinished:Z

    return v0
.end method

.method public setObserver(Lcom/game/featured/net/SimpleHttpObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/game/featured/net/SimpleHttpObserver;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/game/featured/net/HttpTask;->observer:Lcom/game/featured/net/SimpleHttpObserver;

    .line 49
    return-void
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/game/featured/net/HttpTask;->param:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setStopThreadWhenFinished(Z)V
    .locals 0
    .param p1, "stopThreadWhenFinished"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/game/featured/net/HttpTask;->stopThreadWhenFinished:Z

    .line 57
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/game/featured/net/HttpTask;->url:Ljava/lang/String;

    .line 33
    return-void
.end method
