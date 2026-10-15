.class public Lcom/game/featured/AdmobInterstitial;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdmobInterstitial.java"

# interfaces
.implements Lcom/game/featured/IInterstitial;


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _ads:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/game/featured/AdmobInterstitial;->_activity:Landroid/app/Activity;

    .line 21
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/game/featured/AdmobInterstitial;->_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/game/featured/AdmobInterstitial;->_ads:Lcom/google/android/gms/ads/InterstitialAd;

    .line 22
    iget-object v0, p0, Lcom/game/featured/AdmobInterstitial;->_ads:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/game/featured/AdmobInterstitial;->_ads:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 24
    invoke-virtual {p0}, Lcom/game/featured/AdmobInterstitial;->loadAd()V

    .line 25
    return-void
.end method

.method public isready()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/game/featured/AdmobInterstitial;->_ads:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/featured/AdmobInterstitial;->_ads:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

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
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/game/featured/AdmobInterstitial;->_ads:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/game/featured/AdmobInterstitial;->_ads:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 48
    :cond_0
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "admob"

    return-object v0
.end method

.method public onAdClosed()V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/game/featured/AdmobInterstitial;->loadAd()V

    .line 41
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/game/featured/AdmobInterstitial;->_ads:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/game/featured/AdmobInterstitial;->_ads:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 36
    :cond_0
    return-void
.end method
