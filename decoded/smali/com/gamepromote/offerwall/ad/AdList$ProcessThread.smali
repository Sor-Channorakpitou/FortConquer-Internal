.class Lcom/gamepromote/offerwall/ad/AdList$ProcessThread;
.super Ljava/lang/Thread;
.source "AdList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamepromote/offerwall/ad/AdList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamepromote/offerwall/ad/AdList;


# direct methods
.method constructor <init>(Lcom/gamepromote/offerwall/ad/AdList;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/gamepromote/offerwall/ad/AdList$ProcessThread;->this$0:Lcom/gamepromote/offerwall/ad/AdList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gamepromote/offerwall/ad/AdList$ProcessThread;->this$0:Lcom/gamepromote/offerwall/ad/AdList;

    invoke-static {v2}, Lcom/gamepromote/offerwall/ad/AdList;->access$0(Lcom/gamepromote/offerwall/ad/AdList;)Ljava/lang/String;

    move-result-object v14

    .line 91
    .local v14, "content":Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 93
    :try_start_0
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12, v14}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 94
    .local v12, "adDatas":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v18

    .line 95
    .local v18, "il":I
    if-lez v18, :cond_0

    .line 96
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v13, "adList":Ljava/util/List;, "Ljava/util/List<Lcom/gamepromote/offerwall/AdData;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gamepromote/offerwall/ad/AdList$ProcessThread;->this$0:Lcom/gamepromote/offerwall/ad/AdList;

    invoke-static {v2}, Lcom/gamepromote/offerwall/ad/AdList;->access$1(Lcom/gamepromote/offerwall/ad/AdList;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gamepromote/offerwall/ad/AdManager;->getInstance(Ljava/lang/String;)Lcom/gamepromote/offerwall/ad/AdManager;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/gamepromote/offerwall/ad/AdManager;->receiveAd(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v12    # "adDatas":Lorg/json/JSONArray;
    .end local v13    # "adList":Ljava/util/List;, "Ljava/util/List<Lcom/gamepromote/offerwall/AdData;>;"
    .end local v17    # "i":I
    .end local v18    # "il":I
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gamepromote/offerwall/ad/AdList$ProcessThread;->this$0:Lcom/gamepromote/offerwall/ad/AdList;

    invoke-static {v2}, Lcom/gamepromote/offerwall/ad/AdList;->access$2(Lcom/gamepromote/offerwall/ad/AdList;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 118
    return-void

    .line 98
    .restart local v12    # "adDatas":Lorg/json/JSONArray;
    .restart local v13    # "adList":Ljava/util/List;, "Ljava/util/List<Lcom/gamepromote/offerwall/AdData;>;"
    .restart local v17    # "i":I
    .restart local v18    # "il":I
    :cond_1
    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 99
    .local v11, "adData":Lorg/json/JSONObject;
    const-string v2, "aid"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "package"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "name"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    const-string v2, "description"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "reward"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "referrer"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    const-string v2, "action"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "icon"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    const-string v2, "package"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 103
    .local v16, "gamePackage":Ljava/lang/String;
    sget-object v2, Lcom/gamepromote/offerwall/OfferWall;->GAME_CONTEXT:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/gamepromote/offerwall/util/PackageUtil;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 104
    new-instance v2, Lcom/gamepromote/offerwall/AdData;

    const-string v3, "aid"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    const-string v5, "package"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "description"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    const-string v7, "icon"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "action"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "reward"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 107
    const-string v10, "referrer"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v2 .. v10}, Lcom/gamepromote/offerwall/AdData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 104
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    .end local v16    # "gamePackage":Ljava/lang/String;
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 113
    .end local v11    # "adData":Lorg/json/JSONObject;
    .end local v12    # "adDatas":Lorg/json/JSONArray;
    .end local v13    # "adList":Ljava/util/List;, "Ljava/util/List<Lcom/gamepromote/offerwall/AdData;>;"
    .end local v17    # "i":I
    .end local v18    # "il":I
    :catch_0
    move-exception v15

    .line 114
    .local v15, "e":Lorg/json/JSONException;
    invoke-virtual {v15}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method
