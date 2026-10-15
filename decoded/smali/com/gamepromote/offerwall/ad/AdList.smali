.class public Lcom/gamepromote/offerwall/ad/AdList;
.super Ljava/lang/Object;
.source "AdList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamepromote/offerwall/ad/AdList$ProcessThread;
    }
.end annotation


# instance fields
.field private isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private rand:Ljava/util/Random;

.field private userid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gamepromote/offerwall/ad/AdList;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/gamepromote/offerwall/ad/AdList;->rand:Ljava/util/Random;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/gamepromote/offerwall/ad/AdList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/gamepromote/offerwall/ad/AdList;->getAdListFromServer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/gamepromote/offerwall/ad/AdList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gamepromote/offerwall/ad/AdList;->userid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gamepromote/offerwall/ad/AdList;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/gamepromote/offerwall/ad/AdList;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private getAdListFromServer()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 49
    :try_start_0
    sget-object v6, Lcom/gamepromote/offerwall/OfferWall;->GAME_CONTEXT:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "curgame":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 84
    .end local v0    # "curgame":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 54
    .restart local v0    # "curgame":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 61
    .local v2, "packages":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .local v3, "params":Lorg/json/JSONObject;
    const-string v6, "userid"

    iget-object v7, p0, Lcom/gamepromote/offerwall/ad/AdList;->userid:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v6, "game"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v6, "version"

    const-string v7, "2"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v6, "othergames"

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    new-instance v4, Lcom/gamepromote/utils/net/SimpleJsonRequest;

    const-string v6, "http://ow.gamepromote.net/offerwall/getAdListNew.php"

    invoke-direct {v4, v6, v3}, Lcom/gamepromote/utils/net/SimpleJsonRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    .local v4, "request":Lcom/gamepromote/utils/net/AbstractPostRequest;
    :try_start_1
    invoke-virtual {v4}, Lcom/gamepromote/utils/net/AbstractPostRequest;->sendRequest()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 70
    .local v5, "result":Ljava/lang/String;
    goto :goto_0

    .line 71
    .end local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/net/MalformedURLException;
    :try_start_2
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 81
    .end local v0    # "curgame":Ljava/lang/String;
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .end local v2    # "packages":Lorg/json/JSONArray;
    .end local v3    # "params":Lorg/json/JSONObject;
    .end local v4    # "request":Lcom/gamepromote/utils/net/AbstractPostRequest;
    :catch_1
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "curgame":Ljava/lang/String;
    .restart local v2    # "packages":Lorg/json/JSONArray;
    .restart local v3    # "params":Lorg/json/JSONObject;
    .restart local v4    # "request":Lcom/gamepromote/utils/net/AbstractPostRequest;
    :catch_2
    move-exception v1

    .line 75
    .local v1, "e":Ljava/net/ProtocolException;
    :try_start_3
    invoke-virtual {v1}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v1    # "e":Ljava/net/ProtocolException;
    :catch_3
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method


# virtual methods
.method public getAd(Ljava/lang/String;)Lcom/gamepromote/offerwall/AdData;
    .locals 8
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/gamepromote/offerwall/ad/AdList;->userid:Ljava/lang/String;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v1, "ads":Ljava/util/List;, "Ljava/util/List<Lcom/gamepromote/offerwall/AdData;>;"
    iget-object v5, p0, Lcom/gamepromote/offerwall/ad/AdList;->userid:Ljava/lang/String;

    invoke-static {v5}, Lcom/gamepromote/offerwall/ad/AdManager;->getInstance(Ljava/lang/String;)Lcom/gamepromote/offerwall/ad/AdManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gamepromote/offerwall/ad/AdManager;->getAllAds()Ljava/util/Hashtable;

    move-result-object v2

    .line 31
    .local v2, "allAds":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/gamepromote/offerwall/AdData;>;"
    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 37
    .local v4, "s":I
    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/gamepromote/offerwall/ad/AdList;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 38
    new-instance v5, Lcom/gamepromote/offerwall/ad/AdList$ProcessThread;

    invoke-direct {v5, p0}, Lcom/gamepromote/offerwall/ad/AdList$ProcessThread;-><init>(Lcom/gamepromote/offerwall/ad/AdList;)V

    invoke-virtual {v5}, Lcom/gamepromote/offerwall/ad/AdList$ProcessThread;->start()V

    .line 40
    :cond_1
    if-lez v4, :cond_3

    .line 41
    iget-object v5, p0, Lcom/gamepromote/offerwall/ad/AdList;->rand:Ljava/util/Random;

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 42
    .local v3, "index":I
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gamepromote/offerwall/AdData;

    .line 44
    .end local v3    # "index":I
    :goto_1
    return-object v5

    .line 31
    .end local v4    # "s":I
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamepromote/offerwall/AdData;

    .line 32
    .local v0, "ad":Lcom/gamepromote/offerwall/AdData;
    sget-object v6, Lcom/gamepromote/offerwall/OfferWall;->GAME_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/gamepromote/offerwall/AdData;->getGamePackage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/gamepromote/offerwall/util/PackageUtil;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 33
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    .end local v0    # "ad":Lcom/gamepromote/offerwall/AdData;
    .restart local v4    # "s":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method
