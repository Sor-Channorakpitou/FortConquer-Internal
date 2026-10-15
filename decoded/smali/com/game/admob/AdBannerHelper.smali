.class public Lcom/game/admob/AdBannerHelper;
.super Ljava/lang/Object;
.source "AdBannerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/admob/AdBannerHelper$AdBannerLayout;
    }
.end annotation


# static fields
.field private static _activity:Landroid/app/Activity;

.field private static _adView:Lcom/google/android/gms/ads/AdView;

.field private static ad_unit_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/game/admob/AdBannerHelper;->_adView:Lcom/google/android/gms/ads/AdView;

    .line 18
    const-string v0, ""

    sput-object v0, Lcom/game/admob/AdBannerHelper;->ad_unit_id:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/google/android/gms/ads/AdView;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/game/admob/AdBannerHelper;->_adView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method static synthetic access$1()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/game/admob/AdBannerHelper;->_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/google/android/gms/ads/AdView;)V
    .locals 0

    .prologue
    .line 16
    sput-object p0, Lcom/game/admob/AdBannerHelper;->_adView:Lcom/google/android/gms/ads/AdView;

    return-void
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/game/admob/AdBannerHelper;->ad_unit_id:Ljava/lang/String;

    return-object v0
.end method

.method public static hideAd()V
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/game/admob/AdBannerHelper;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/game/admob/AdBannerHelper$2;

    invoke-direct {v1}, Lcom/game/admob/AdBannerHelper$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 45
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    sput-object p0, Lcom/game/admob/AdBannerHelper;->_activity:Landroid/app/Activity;

    .line 46
    sput-object p1, Lcom/game/admob/AdBannerHelper;->ad_unit_id:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/game/admob/AdBannerHelper;->initAdview()V

    .line 48
    return-void
.end method

.method private static initAdview()V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/game/admob/AdBannerHelper;->_adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 130
    :cond_0
    sget-object v0, Lcom/game/admob/AdBannerHelper;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/game/admob/AdBannerHelper$3;

    invoke-direct {v1}, Lcom/game/admob/AdBannerHelper$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/game/admob/AdBannerHelper;->_adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/game/admob/AdBannerHelper;->_adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 124
    :cond_0
    return-void
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/game/admob/AdBannerHelper;->_adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/game/admob/AdBannerHelper;->_adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 117
    :cond_0
    return-void
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/game/admob/AdBannerHelper;->_adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/game/admob/AdBannerHelper;->_adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 110
    :cond_0
    return-void
.end method

.method public static showAd(Ljava/lang/String;)V
    .locals 3
    .param p0, "layouttype"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v1, Lcom/game/admob/AdBannerHelper;->_adView:Lcom/google/android/gms/ads/AdView;

    if-nez v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 54
    :cond_0
    move-object v0, p0

    .line 55
    .local v0, "type":Ljava/lang/String;
    sget-object v1, Lcom/game/admob/AdBannerHelper;->_activity:Landroid/app/Activity;

    new-instance v2, Lcom/game/admob/AdBannerHelper$1;

    invoke-direct {v2, v0}, Lcom/game/admob/AdBannerHelper$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
