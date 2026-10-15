.class Lcom/droidhen/fortconquer/kits/ArenaAgent$NetworkService;
.super Ljava/lang/Object;
.source "ArenaAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/kits/ArenaAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkService"
.end annotation


# instance fields
.field _params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/droidhen/fortconquer/kits/ArenaAgent;


# direct methods
.method public constructor <init>(Lcom/droidhen/fortconquer/kits/ArenaAgent;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p2, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/droidhen/fortconquer/kits/ArenaAgent$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/ArenaAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p2, p0, Lcom/droidhen/fortconquer/kits/ArenaAgent$NetworkService;->_params:Ljava/util/Map;

    .line 242
    return-void
.end method


# virtual methods
.method public run()V
    .locals 36

    .prologue
    .line 246
    const/16 v22, 0x0

    .line 247
    .local v22, "objContent":Lorg/json/JSONObject;
    const/16 v30, 0x0

    .line 250
    .local v30, "response":Lorg/apache/http/HttpResponse;
    new-instance v21, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct/range {v21 .. v21}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 251
    .local v21, "mHttpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v32

    .line 252
    const-string v33, "http.socket.timeout"

    const/16 v34, 0x1388

    invoke-interface/range {v32 .. v34}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 253
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v32

    .line 254
    const-string v33, "http.connection.timeout"

    const/16 v34, 0x1388

    .line 253
    invoke-interface/range {v32 .. v34}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 256
    :try_start_0
    new-instance v18, Lorg/apache/http/client/methods/HttpGet;

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "http://fortconquer.droidhen.com/FortConquer/game/Main.php"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/ArenaAgent$NetworkService;->_params:Ljava/util/Map;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->access$0(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 257
    .local v18, "getRequest":Lorg/apache/http/client/methods/HttpGet;
    invoke-static {}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->access$1()Z

    move-result v32

    if-eqz v32, :cond_0

    .line 258
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "battle request:http://fortconquer.droidhen.com/FortConquer/game/Main.php"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/ArenaAgent$NetworkService;->_params:Ljava/util/Map;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->access$0(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 259
    :cond_0
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v30

    .line 260
    invoke-interface/range {v30 .. v30}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v29

    .line 261
    .local v29, "res":I
    const/16 v32, 0xc8

    move/from16 v0, v29

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 262
    invoke-interface/range {v30 .. v30}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    .line 263
    .local v15, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v15, :cond_2

    .line 264
    invoke-static {v15}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v28

    .line 265
    .local v28, "readbyte":[B
    new-instance v23, Lorg/json/JSONObject;

    new-instance v32, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 266
    .end local v22    # "objContent":Lorg/json/JSONObject;
    .local v23, "objContent":Lorg/json/JSONObject;
    :try_start_1
    const-string v32, "errorCode"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    .line 267
    .local v16, "errorCode":I
    if-nez v16, :cond_7

    .line 268
    invoke-static {}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->access$1()Z

    move-result v32

    if-nez v32, :cond_3

    .line 269
    sget-object v32, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    if-eqz v32, :cond_1

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v32

    if-eqz v32, :cond_1

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/anddev/andengine/engine/Engine;->getScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v32

    sget-object v33, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_3

    :cond_1
    move-object/from16 v22, v23

    .line 334
    .end local v15    # "entity":Lorg/apache/http/HttpEntity;
    .end local v16    # "errorCode":I
    .end local v18    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .end local v23    # "objContent":Lorg/json/JSONObject;
    .end local v28    # "readbyte":[B
    .end local v29    # "res":I
    .restart local v22    # "objContent":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-void

    .line 272
    .end local v22    # "objContent":Lorg/json/JSONObject;
    .restart local v15    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v16    # "errorCode":I
    .restart local v18    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v23    # "objContent":Lorg/json/JSONObject;
    .restart local v28    # "readbyte":[B
    .restart local v29    # "res":I
    :cond_3
    invoke-static {}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->access$1()Z

    move-result v32

    if-eqz v32, :cond_4

    .line 273
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "server response:"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v34, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    :cond_4
    const-string v32, "data"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 275
    .local v8, "data":Ljava/lang/String;
    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 276
    .end local v23    # "objContent":Lorg/json/JSONObject;
    .restart local v22    # "objContent":Lorg/json/JSONObject;
    :try_start_2
    const-string v32, "userLevel"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 277
    .local v13, "enemyLevel":I
    const-string v32, "userName"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Player"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v34, 0x0

    const v35, 0x186a0

    invoke-static/range {v34 .. v35}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 278
    .local v14, "enemyName":Ljava/lang/String;
    const-string v32, "cardNum"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 279
    .local v7, "cardNum":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v12, "enemyCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    if-lt v0, v7, :cond_5

    .line 300
    invoke-static {}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->access$1()Z

    move-result v32

    if-nez v32, :cond_2

    sget-object v32, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    if-eqz v32, :cond_2

    .line 301
    sget-object v32, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    move-object/from16 v0, v32

    invoke-virtual {v0, v13, v14, v12}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->receiveNetworkData(ILjava/lang/String;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 318
    .end local v7    # "cardNum":I
    .end local v8    # "data":Ljava/lang/String;
    .end local v12    # "enemyCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    .end local v13    # "enemyLevel":I
    .end local v14    # "enemyName":Ljava/lang/String;
    .end local v15    # "entity":Lorg/apache/http/HttpEntity;
    .end local v16    # "errorCode":I
    .end local v18    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .end local v20    # "i":I
    .end local v28    # "readbyte":[B
    .end local v29    # "res":I
    :catch_0
    move-exception v9

    .line 319
    .local v9, "e1":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    invoke-virtual {v9}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 320
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v33, "network error:10"

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    sget-object v32, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    if-eqz v32, :cond_2

    .line 322
    sget-object v32, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    const/16 v33, 0xa

    invoke-virtual/range {v32 .. v33}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->receiveNetworkError(I)V

    goto/16 :goto_0

    .line 282
    .end local v9    # "e1":Lorg/apache/http/client/ClientProtocolException;
    .restart local v7    # "cardNum":I
    .restart local v8    # "data":Ljava/lang/String;
    .restart local v12    # "enemyCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    .restart local v13    # "enemyLevel":I
    .restart local v14    # "enemyName":Ljava/lang/String;
    .restart local v15    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v16    # "errorCode":I
    .restart local v18    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v20    # "i":I
    .restart local v28    # "readbyte":[B
    .restart local v29    # "res":I
    :cond_5
    :try_start_3
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "q"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v33, v20, 0x1

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v24

    .line 283
    .local v24, "quality":I
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "h"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v33, v20, 0x1

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v26

    .line 284
    .local v26, "raceHead":I
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "c"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v33, v20, 0x1

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v25

    .line 285
    .local v25, "raceChest":I
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "l"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v33, v20, 0x1

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v27

    .line 286
    .local v27, "raceLimbs":I
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "hp"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v33, v20, 0x1

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    .line 287
    .local v19, "health":I
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "atk"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v33, v20, 0x1

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 288
    .local v5, "attack":I
    const/16 v32, 0xa

    move/from16 v0, v19

    move/from16 v1, v32

    if-lt v0, v1, :cond_6

    const/16 v32, 0xa

    move/from16 v0, v32

    if-lt v5, v0, :cond_6

    .line 290
    new-instance v31, Lcom/droidhen/fortconquer/units/Unit;

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v26

    move/from16 v2, v25

    move/from16 v3, v27

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/droidhen/fortconquer/units/Unit;-><init>(IIIZ)V

    .line 291
    .local v31, "unit":Lcom/droidhen/fortconquer/units/Unit;
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v32, v0

    int-to-float v0, v5

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v31}, Lcom/droidhen/fortconquer/units/Unit;->getSpeed()F

    move-result v34

    invoke-virtual/range {v31 .. v34}, Lcom/droidhen/fortconquer/units/Unit;->setKeyValues(FFF)V

    .line 292
    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/units/Unit;->setQuality(I)V

    .line 293
    new-instance v6, Lcom/droidhen/fortconquer/units/Card;

    move-object/from16 v0, v31

    invoke-direct {v6, v0}, Lcom/droidhen/fortconquer/units/Card;-><init>(Lcom/droidhen/fortconquer/units/Unit;)V

    .line 294
    .local v6, "card":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 280
    .end local v6    # "card":Lcom/droidhen/fortconquer/units/Card;
    .end local v31    # "unit":Lcom/droidhen/fortconquer/units/Unit;
    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 303
    .end local v5    # "attack":I
    .end local v7    # "cardNum":I
    .end local v8    # "data":Ljava/lang/String;
    .end local v12    # "enemyCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    .end local v13    # "enemyLevel":I
    .end local v14    # "enemyName":Ljava/lang/String;
    .end local v19    # "health":I
    .end local v20    # "i":I
    .end local v22    # "objContent":Lorg/json/JSONObject;
    .end local v24    # "quality":I
    .end local v25    # "raceChest":I
    .end local v26    # "raceHead":I
    .end local v27    # "raceLimbs":I
    .restart local v23    # "objContent":Lorg/json/JSONObject;
    :cond_7
    :try_start_4
    invoke-static {}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->access$1()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 304
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "server response:"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v34, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    :cond_8
    sget-object v32, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "match failed:"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    const-string v32, "errorTips"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 307
    .local v17, "errorString":Ljava/lang/String;
    sget-object v32, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "errorTips:"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->access$1()Z

    move-result v32

    if-nez v32, :cond_a

    sget-object v32, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    if-eqz v32, :cond_a

    .line 309
    sget-object v32, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->receiveNetworkError(I)V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v22, v23

    .line 312
    .end local v23    # "objContent":Lorg/json/JSONObject;
    .restart local v22    # "objContent":Lorg/json/JSONObject;
    goto/16 :goto_0

    .line 314
    .end local v15    # "entity":Lorg/apache/http/HttpEntity;
    .end local v16    # "errorCode":I
    .end local v17    # "errorString":Ljava/lang/String;
    .end local v28    # "readbyte":[B
    :cond_9
    :try_start_5
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "network error:"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->access$1()Z

    move-result v32

    if-nez v32, :cond_2

    sget-object v32, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    if-eqz v32, :cond_2

    .line 316
    sget-object v32, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->receiveNetworkError(I)V
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 323
    .end local v18    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .end local v29    # "res":I
    :catch_1
    move-exception v10

    .line 324
    .local v10, "e2":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 325
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v33, "network error:10"

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 326
    sget-object v32, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    if-eqz v32, :cond_2

    .line 327
    sget-object v32, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    const/16 v33, 0xa

    invoke-virtual/range {v32 .. v33}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->receiveNetworkError(I)V

    goto/16 :goto_0

    .line 328
    .end local v10    # "e2":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 329
    .local v11, "e3":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    .line 330
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v33, "network error:10"

    invoke-virtual/range {v32 .. v33}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 331
    sget-object v32, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    if-eqz v32, :cond_2

    .line 332
    sget-object v32, Lcom/droidhen/fortconquer/GameActivity;->mArenaScene:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    const/16 v33, 0xa

    invoke-virtual/range {v32 .. v33}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->receiveNetworkError(I)V

    goto/16 :goto_0

    .line 328
    .end local v11    # "e3":Lorg/json/JSONException;
    .end local v22    # "objContent":Lorg/json/JSONObject;
    .restart local v15    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v18    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v23    # "objContent":Lorg/json/JSONObject;
    .restart local v28    # "readbyte":[B
    .restart local v29    # "res":I
    :catch_3
    move-exception v11

    move-object/from16 v22, v23

    .end local v23    # "objContent":Lorg/json/JSONObject;
    .restart local v22    # "objContent":Lorg/json/JSONObject;
    goto :goto_4

    .line 323
    .end local v22    # "objContent":Lorg/json/JSONObject;
    .restart local v23    # "objContent":Lorg/json/JSONObject;
    :catch_4
    move-exception v10

    move-object/from16 v22, v23

    .end local v23    # "objContent":Lorg/json/JSONObject;
    .restart local v22    # "objContent":Lorg/json/JSONObject;
    goto :goto_3

    .line 318
    .end local v22    # "objContent":Lorg/json/JSONObject;
    .restart local v23    # "objContent":Lorg/json/JSONObject;
    :catch_5
    move-exception v9

    move-object/from16 v22, v23

    .end local v23    # "objContent":Lorg/json/JSONObject;
    .restart local v22    # "objContent":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v22    # "objContent":Lorg/json/JSONObject;
    .restart local v16    # "errorCode":I
    .restart local v17    # "errorString":Ljava/lang/String;
    .restart local v23    # "objContent":Lorg/json/JSONObject;
    :cond_a
    move-object/from16 v22, v23

    .end local v23    # "objContent":Lorg/json/JSONObject;
    .restart local v22    # "objContent":Lorg/json/JSONObject;
    goto/16 :goto_0
.end method
