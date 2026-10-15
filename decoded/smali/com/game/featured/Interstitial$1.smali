.class Lcom/game/featured/Interstitial$1;
.super Ljava/lang/Object;
.source "Interstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/featured/Interstitial;->showInterstitial(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 44
    :try_start_0
    invoke-static {}, Lcom/game/featured/Interstitial;->access$0()I

    move-result v3

    sget v4, Lcom/game/featured/FeaturedHelper;->INTERSTITIAL_INTERVAL:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 45
    sget-object v4, Lcom/game/featured/FeaturedHelper;->INTERSTITIAL_SEQUENCE:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_1

    .line 68
    :cond_0
    :goto_1
    return-void

    .line 45
    :cond_1
    aget-object v2, v4, v3

    .line 46
    .local v2, "name":Ljava/lang/String;
    invoke-static {}, Lcom/game/featured/Interstitial;->access$1()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/featured/IInterstitial;

    .line 47
    .local v1, "interstitial":Lcom/game/featured/IInterstitial;
    if-nez v1, :cond_2

    .line 45
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {v1}, Lcom/game/featured/IInterstitial;->isready()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 51
    invoke-interface {v1}, Lcom/game/featured/IInterstitial;->show()V

    .line 52
    invoke-static {}, Lcom/game/featured/FeaturedHelper;->getInstance()Lcom/game/featured/FeaturedHelper;

    move-result-object v3

    .line 53
    invoke-interface {v1}, Lcom/game/featured/IInterstitial;->name()Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Lcom/game/featured/FeaturedHelper;->postShowToServer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 65
    .end local v1    # "interstitial":Lcom/game/featured/IInterstitial;
    .end local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "interstitial":Lcom/game/featured/IInterstitial;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v1}, Lcom/game/featured/IInterstitial;->loadAd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
