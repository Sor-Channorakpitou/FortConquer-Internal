.class public Lcom/game/featured/MMediaInterstitial;
.super Ljava/lang/Object;
.source "MMediaInterstitial.java"

# interfaces
.implements Lcom/game/featured/IInterstitial;
.implements Lcom/millennialmedia/android/RequestListener;


# instance fields
.field private _ads:Lcom/millennialmedia/android/MMInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 0
    .param p1, "arg0"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/game/featured/MMediaInterstitial;->loadAd()V

    .line 57
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 0
    .param p1, "arg0"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 63
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 0
    .param p1, "arg0"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 69
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->initialize(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->setLogLevel(I)V

    .line 25
    new-instance v0, Lcom/millennialmedia/android/MMInterstitial;

    invoke-direct {v0, p1}, Lcom/millennialmedia/android/MMInterstitial;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/game/featured/MMediaInterstitial;->_ads:Lcom/millennialmedia/android/MMInterstitial;

    .line 26
    iget-object v0, p0, Lcom/game/featured/MMediaInterstitial;->_ads:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0, p2}, Lcom/millennialmedia/android/MMInterstitial;->setApid(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/game/featured/MMediaInterstitial;->_ads:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 28
    invoke-virtual {p0}, Lcom/game/featured/MMediaInterstitial;->loadAd()V

    .line 29
    return-void
.end method

.method public isready()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/game/featured/MMediaInterstitial;->_ads:Lcom/millennialmedia/android/MMInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/featured/MMediaInterstitial;->_ads:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/game/featured/MMediaInterstitial;->_ads:Lcom/millennialmedia/android/MMInterstitial;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/game/featured/MMediaInterstitial;->_ads:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->fetch()V

    .line 51
    :cond_0
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "mm"

    return-object v0
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 0
    .param p1, "arg0"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 75
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 0
    .param p1, "arg0"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 81
    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 0
    .param p1, "arg0"    # Lcom/millennialmedia/android/MMAd;
    .param p2, "arg1"    # Lcom/millennialmedia/android/MMException;

    .prologue
    .line 87
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/game/featured/MMediaInterstitial;->_ads:Lcom/millennialmedia/android/MMInterstitial;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/game/featured/MMediaInterstitial;->_ads:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->display()Z

    .line 43
    :cond_0
    return-void
.end method
