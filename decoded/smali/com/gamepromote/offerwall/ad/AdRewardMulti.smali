.class public Lcom/gamepromote/offerwall/ad/AdRewardMulti;
.super Ljava/lang/Object;
.source "AdRewardMulti.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamepromote/offerwall/ad/AdRewardMulti$ProcessThread;
    }
.end annotation


# instance fields
.field private callback:Lcom/gamepromote/offerwall/RewardCallback;

.field private isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private rewardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gamepromote/offerwall/Reward;",
            ">;"
        }
    .end annotation
.end field

.field private userids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->rewardList:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/gamepromote/offerwall/ad/AdRewardMulti;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->getRewardFromServer()V

    return-void
.end method

.method static synthetic access$1(Lcom/gamepromote/offerwall/ad/AdRewardMulti;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->rewardList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gamepromote/offerwall/ad/AdRewardMulti;)Lcom/gamepromote/offerwall/RewardCallback;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->callback:Lcom/gamepromote/offerwall/RewardCallback;

    return-object v0
.end method

.method static synthetic access$3(Lcom/gamepromote/offerwall/ad/AdRewardMulti;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private getCurGame()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/gamepromote/offerwall/OfferWall;->GAME_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRewardFromServer()V
    .locals 31

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->getCurGame()Ljava/lang/String;

    move-result-object v9

    .line 41
    .local v9, "curgame":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    new-instance v27, Lorg/json/JSONArray;

    invoke-direct/range {v27 .. v27}, Lorg/json/JSONArray;-><init>()V

    .line 47
    .local v27, "users":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->userids:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_2
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-nez v29, :cond_3

    .line 88
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v28

    if-lez v28, :cond_0

    .line 90
    :try_start_0
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    .line 91
    .local v18, "params":Lorg/json/JSONObject;
    const-string v28, "game"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v28, "users"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    new-instance v19, Lcom/gamepromote/utils/net/SimpleJsonRequest;

    const-string v28, "http://ow.gamepromote.net/offerwall/getRewardNew.php"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/gamepromote/utils/net/SimpleJsonRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v19, "request":Lcom/gamepromote/utils/net/AbstractPostRequest;
    const/16 v21, 0x0

    .line 97
    .local v21, "resultStr":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lcom/gamepromote/utils/net/AbstractPostRequest;->sendRequest()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v21

    .line 106
    :goto_2
    if-eqz v21, :cond_0

    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_0

    .line 107
    new-instance v22, Lorg/json/JSONArray;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 108
    .local v22, "results":Lorg/json/JSONArray;
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v17

    .line 109
    .local v17, "kl":I
    if-lez v17, :cond_0

    .line 111
    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    .line 112
    .local v12, "finishedAds":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    const/16 v16, 0x0

    .local v16, "k":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_7

    .line 133
    invoke-virtual {v12}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 134
    .local v24, "uid":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/gamepromote/offerwall/ad/AdManager;->getInstance(Ljava/lang/String;)Lcom/gamepromote/offerwall/ad/AdManager;

    move-result-object v30

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Set;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/gamepromote/offerwall/ad/AdManager;->finishAd(Ljava/util/Set;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 139
    .end local v12    # "finishedAds":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .end local v16    # "k":I
    .end local v17    # "kl":I
    .end local v18    # "params":Lorg/json/JSONObject;
    .end local v19    # "request":Lcom/gamepromote/utils/net/AbstractPostRequest;
    .end local v21    # "resultStr":Ljava/lang/String;
    .end local v22    # "results":Lorg/json/JSONArray;
    .end local v24    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 140
    .local v10, "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 47
    .end local v10    # "e":Lorg/json/JSONException;
    :cond_3
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 48
    .local v26, "userid":Ljava/lang/String;
    new-instance v25, Lorg/json/JSONObject;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v25, "user":Lorg/json/JSONObject;
    invoke-static/range {v26 .. v26}, Lcom/gamepromote/offerwall/ad/AdManager;->getInstance(Ljava/lang/String;)Lcom/gamepromote/offerwall/ad/AdManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/gamepromote/offerwall/ad/AdManager;->getAcceptAds()Lorg/json/JSONObject;

    move-result-object v3

    .line 51
    .local v3, "acceptAds":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v29

    if-lez v29, :cond_5

    .line 52
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v11, "finishedAds":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 56
    .local v7, "aids":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-nez v29, :cond_6

    .line 69
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v29

    if-lez v29, :cond_5

    .line 71
    :try_start_3
    const-string v29, "aids"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 78
    .end local v7    # "aids":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "finishedAds":Lorg/json/JSONObject;
    :cond_5
    :goto_6
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->length()I

    move-result v29

    if-lez v29, :cond_2

    .line 80
    :try_start_4
    const-string v29, "userid"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 82
    :catch_1
    move-exception v10

    .line 83
    .restart local v10    # "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 58
    .end local v10    # "e":Lorg/json/JSONException;
    .restart local v7    # "aids":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v11    # "finishedAds":Lorg/json/JSONObject;
    :cond_6
    :try_start_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 59
    .local v6, "aid":Ljava/lang/String;
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 60
    .local v5, "adData":Lorg/json/JSONObject;
    const-string v29, "package"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 61
    .local v15, "gamePackage":Ljava/lang/String;
    sget-object v29, Lcom/gamepromote/offerwall/OfferWall;->GAME_CONTEXT:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-static {v0, v15}, Lcom/gamepromote/offerwall/util/PackageUtil;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 62
    invoke-virtual {v11, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    .line 64
    .end local v5    # "adData":Lorg/json/JSONObject;
    .end local v6    # "aid":Ljava/lang/String;
    .end local v15    # "gamePackage":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 65
    .restart local v10    # "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 72
    .end local v10    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v10

    .line 73
    .restart local v10    # "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 98
    .end local v3    # "acceptAds":Lorg/json/JSONObject;
    .end local v7    # "aids":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10    # "e":Lorg/json/JSONException;
    .end local v11    # "finishedAds":Lorg/json/JSONObject;
    .end local v25    # "user":Lorg/json/JSONObject;
    .end local v26    # "userid":Ljava/lang/String;
    .restart local v18    # "params":Lorg/json/JSONObject;
    .restart local v19    # "request":Lcom/gamepromote/utils/net/AbstractPostRequest;
    .restart local v21    # "resultStr":Ljava/lang/String;
    :catch_4
    move-exception v10

    .line 99
    .local v10, "e":Ljava/net/MalformedURLException;
    :try_start_6
    invoke-virtual {v10}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_2

    .line 100
    .end local v10    # "e":Ljava/net/MalformedURLException;
    :catch_5
    move-exception v10

    .line 101
    .local v10, "e":Ljava/net/ProtocolException;
    invoke-virtual {v10}, Ljava/net/ProtocolException;->printStackTrace()V

    goto/16 :goto_2

    .line 102
    .end local v10    # "e":Ljava/net/ProtocolException;
    :catch_6
    move-exception v10

    .line 103
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 113
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v12    # "finishedAds":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .restart local v16    # "k":I
    .restart local v17    # "kl":I
    .restart local v22    # "results":Lorg/json/JSONArray;
    :cond_7
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    .line 114
    .local v20, "result":Lorg/json/JSONObject;
    const-string v28, "aid"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_9

    const-string v28, "count"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_9

    const-string v28, "action"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_9

    const-string v28, "game"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 115
    const-string v28, "uid"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 116
    const-string v28, "aid"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 117
    .local v6, "aid":I
    const-string v28, "count"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 118
    .local v8, "count":I
    const-string v28, "action"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 119
    .local v4, "action":I
    const-string v28, "game"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 120
    .local v14, "game":Ljava/lang/String;
    const-string v28, "uid"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 121
    .restart local v24    # "uid":Ljava/lang/String;
    new-instance v23, Lcom/gamepromote/offerwall/Reward;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v4, v14, v1}, Lcom/gamepromote/offerwall/Reward;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v23, "reward":Lcom/gamepromote/offerwall/Reward;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->rewardList:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    .line 125
    .local v13, "finishedAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v13, :cond_8

    .line 126
    new-instance v13, Ljava/util/HashSet;

    .end local v13    # "finishedAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 127
    .restart local v13    # "finishedAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, v24

    invoke-virtual {v12, v0, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 112
    .end local v4    # "action":I
    .end local v6    # "aid":I
    .end local v8    # "count":I
    .end local v13    # "finishedAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v14    # "game":Ljava/lang/String;
    .end local v23    # "reward":Lcom/gamepromote/offerwall/Reward;
    .end local v24    # "uid":Ljava/lang/String;
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 150
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getRewardPre(Lcom/gamepromote/offerwall/RewardCallback;Ljava/util/List;)V
    .locals 3
    .param p1, "callback"    # Lcom/gamepromote/offerwall/RewardCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gamepromote/offerwall/RewardCallback;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iput-object p1, p0, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->callback:Lcom/gamepromote/offerwall/RewardCallback;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->userids:Ljava/util/List;

    .line 35
    new-instance v0, Lcom/gamepromote/offerwall/ad/AdRewardMulti$ProcessThread;

    invoke-direct {v0, p0}, Lcom/gamepromote/offerwall/ad/AdRewardMulti$ProcessThread;-><init>(Lcom/gamepromote/offerwall/ad/AdRewardMulti;)V

    invoke-virtual {v0}, Lcom/gamepromote/offerwall/ad/AdRewardMulti$ProcessThread;->start()V

    .line 37
    :cond_0
    return-void
.end method
