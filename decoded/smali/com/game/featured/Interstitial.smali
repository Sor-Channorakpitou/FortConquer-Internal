.class public Lcom/game/featured/Interstitial;
.super Ljava/lang/Object;
.source "Interstitial.java"


# static fields
.field private static ADS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/game/featured/IInterstitial;",
            ">;"
        }
    .end annotation
.end field

.field private static _activity:Landroid/app/Activity;

.field private static _index:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v1, 0x0

    sput v1, Lcom/game/featured/Interstitial;->_index:I

    .line 12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/game/featured/Interstitial;->ADS:Ljava/util/HashMap;

    .line 15
    new-instance v0, Lcom/game/featured/AdmobInterstitial;

    invoke-direct {v0}, Lcom/game/featured/AdmobInterstitial;-><init>()V

    .line 16
    .local v0, "interstitial":Lcom/game/featured/IInterstitial;
    sget-object v1, Lcom/game/featured/Interstitial;->ADS:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/game/featured/IInterstitial;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v0, Lcom/game/featured/MMediaInterstitial;

    .end local v0    # "interstitial":Lcom/game/featured/IInterstitial;
    invoke-direct {v0}, Lcom/game/featured/MMediaInterstitial;-><init>()V

    .line 18
    .restart local v0    # "interstitial":Lcom/game/featured/IInterstitial;
    sget-object v1, Lcom/game/featured/Interstitial;->ADS:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/game/featured/IInterstitial;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 10
    sget v0, Lcom/game/featured/Interstitial;->_index:I

    return v0
.end method

.method static synthetic access$1()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/game/featured/Interstitial;->ADS:Ljava/util/HashMap;

    return-object v0
.end method

.method public static addAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v0, Lcom/game/featured/Interstitial;->ADS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/featured/IInterstitial;

    sget-object v1, Lcom/game/featured/Interstitial;->_activity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1}, Lcom/game/featured/IInterstitial;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 26
    sput-object p0, Lcom/game/featured/Interstitial;->_activity:Landroid/app/Activity;

    .line 27
    const-string v0, "admob"

    invoke-static {v0, p1}, Lcom/game/featured/Interstitial;->addAd(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static showInterstitial()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/game/featured/Interstitial;->showInterstitial(Z)V

    .line 36
    return-void
.end method

.method public static showInterstitial(Z)V
    .locals 2
    .param p0, "showDHFeatureDlg"    # Z

    .prologue
    .line 39
    sget v0, Lcom/game/featured/Interstitial;->_index:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/game/featured/Interstitial;->_index:I

    .line 40
    sget-object v0, Lcom/game/featured/Interstitial;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/game/featured/Interstitial$1;

    invoke-direct {v1}, Lcom/game/featured/Interstitial$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method
