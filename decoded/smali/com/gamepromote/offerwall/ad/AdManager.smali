.class public Lcom/gamepromote/offerwall/ad/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"


# static fields
.field private static adManagers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/gamepromote/offerwall/ad/AdManager;",
            ">;"
        }
    .end annotation
.end field

.field private static allAds:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/gamepromote/offerwall/AdData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private acceptAds:Lorg/json/JSONObject;

.field private userid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/gamepromote/offerwall/ad/AdManager;->allAds:Ljava/util/Hashtable;

    .line 18
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/gamepromote/offerwall/ad/AdManager;->adManagers:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/gamepromote/offerwall/ad/AdManager;->userid:Ljava/lang/String;

    .line 22
    sget-object v2, Lcom/gamepromote/offerwall/OfferWall;->GAME_CONTEXT:Landroid/content/Context;

    invoke-static {v2}, Lcom/gamepromote/offerwall/util/DataPreferences;->init(Landroid/content/Context;)V

    .line 23
    invoke-static {p1}, Lcom/gamepromote/offerwall/util/DataPreferences;->getAcceptAd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "acceptAdStr":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 25
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/gamepromote/offerwall/ad/AdManager;->acceptAds:Lorg/json/JSONObject;

    .line 34
    :goto_0
    return-void

    .line 28
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/gamepromote/offerwall/ad/AdManager;->acceptAds:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 31
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/gamepromote/offerwall/ad/AdManager;->acceptAds:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/gamepromote/offerwall/ad/AdManager;
    .locals 2
    .param p0, "userid"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v1, Lcom/gamepromote/offerwall/ad/AdManager;->adManagers:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamepromote/offerwall/ad/AdManager;

    .line 38
    .local v0, "adManager":Lcom/gamepromote/offerwall/ad/AdManager;
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/gamepromote/offerwall/ad/AdManager;

    .end local v0    # "adManager":Lcom/gamepromote/offerwall/ad/AdManager;
    invoke-direct {v0, p0}, Lcom/gamepromote/offerwall/ad/AdManager;-><init>(Ljava/lang/String;)V

    .line 40
    .restart local v0    # "adManager":Lcom/gamepromote/offerwall/ad/AdManager;
    sget-object v1, Lcom/gamepromote/offerwall/ad/AdManager;->adManagers:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    return-object v0
.end method

.method private recordAcceptAd()V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/gamepromote/offerwall/OfferWall;->GAME_CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/gamepromote/offerwall/util/DataPreferences;->init(Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Lcom/gamepromote/offerwall/ad/AdManager;->userid:Ljava/lang/String;

    iget-object v1, p0, Lcom/gamepromote/offerwall/ad/AdManager;->acceptAds:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gamepromote/offerwall/util/DataPreferences;->setAcceptAd(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method


# virtual methods
.method public acceptAd(Lcom/gamepromote/offerwall/AdData;)Z
    .locals 5
    .param p1, "ad"    # Lcom/gamepromote/offerwall/AdData;

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/gamepromote/offerwall/AdData;->getAid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "aid":Ljava/lang/String;
    iget-object v3, p0, Lcom/gamepromote/offerwall/ad/AdManager;->acceptAds:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .local v2, "simpleAd":Lorg/json/JSONObject;
    const-string v3, "aid"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v3, "name"

    invoke-virtual {p1}, Lcom/gamepromote/offerwall/AdData;->getGame()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v3, "package"

    invoke-virtual {p1}, Lcom/gamepromote/offerwall/AdData;->getGamePackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v3, "action"

    invoke-virtual {p1}, Lcom/gamepromote/offerwall/AdData;->getAction()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    const-string v3, "reward"

    invoke-virtual {p1}, Lcom/gamepromote/offerwall/AdData;->getReward()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    iget-object v3, p0, Lcom/gamepromote/offerwall/ad/AdManager;->acceptAds:Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    invoke-direct {p0}, Lcom/gamepromote/offerwall/ad/AdManager;->recordAcceptAd()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v2    # "simpleAd":Lorg/json/JSONObject;
    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 80
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public finishAd(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/gamepromote/offerwall/ad/AdManager;->recordAcceptAd()V

    .line 94
    :cond_0
    return-void

    .line 88
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 89
    .local v0, "aid":I
    iget-object v1, p0, Lcom/gamepromote/offerwall/ad/AdManager;->acceptAds:Lorg/json/JSONObject;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/gamepromote/offerwall/ad/AdManager;->allAds:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAcceptAds()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/gamepromote/offerwall/ad/AdManager;->acceptAds:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getAllAds()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/gamepromote/offerwall/AdData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lcom/gamepromote/offerwall/ad/AdManager;->allAds:Ljava/util/Hashtable;

    return-object v0
.end method

.method public receiveAd(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gamepromote/offerwall/AdData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "ads":Ljava/util/List;, "Ljava/util/List<Lcom/gamepromote/offerwall/AdData;>;"
    sget-object v3, Lcom/gamepromote/offerwall/ad/AdManager;->allAds:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    .line 55
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    sput-object v3, Lcom/gamepromote/offerwall/ad/AdManager;->allAds:Ljava/util/Hashtable;

    .line 59
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 60
    .local v2, "l":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 64
    return-void

    .line 57
    .end local v1    # "i":I
    .end local v2    # "l":I
    :cond_0
    sget-object v3, Lcom/gamepromote/offerwall/ad/AdManager;->allAds:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    goto :goto_0

    .line 61
    .restart local v1    # "i":I
    .restart local v2    # "l":I
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamepromote/offerwall/AdData;

    .line 62
    .local v0, "ad":Lcom/gamepromote/offerwall/AdData;
    sget-object v3, Lcom/gamepromote/offerwall/ad/AdManager;->allAds:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/gamepromote/offerwall/AdData;->getAid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
