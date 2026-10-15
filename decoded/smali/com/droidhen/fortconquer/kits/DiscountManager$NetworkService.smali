.class Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;
.super Ljava/lang/Object;
.source "DiscountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/kits/DiscountManager;
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

.field final synthetic this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;


# direct methods
.method public constructor <init>(Lcom/droidhen/fortconquer/kits/DiscountManager;Ljava/util/Map;)V
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
    .line 142
    .local p2, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->_params:Ljava/util/Map;

    .line 144
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 148
    const/4 v11, 0x0

    .line 149
    .local v11, "objContent":Lorg/json/JSONObject;
    const/4 v15, 0x0

    .line 152
    .local v15, "response":Lorg/apache/http/HttpResponse;
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 153
    .local v10, "mHttpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    .line 154
    const-string v18, "http.socket.timeout"

    const/16 v19, 0x1f40

    invoke-interface/range {v17 .. v19}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 155
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    .line 156
    const-string v18, "http.connection.timeout"

    const/16 v19, 0x1f40

    .line 155
    invoke-interface/range {v17 .. v19}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 158
    :try_start_0
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "http://fortconquer.droidhen.com/FortConquer/game/Main.php"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->_params:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$0(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 159
    .local v9, "getRequest":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v10, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 160
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 161
    .local v14, "res":I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v14, v0, :cond_0

    .line 162
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 163
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v7, :cond_0

    .line 164
    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v13

    .line 165
    .local v13, "readbyte":[B
    new-instance v12, Lorg/json/JSONObject;

    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 166
    .end local v11    # "objContent":Lorg/json/JSONObject;
    .local v12, "objContent":Lorg/json/JSONObject;
    :try_start_1
    const-string v17, "errorCode"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 167
    .local v8, "errorCode":I
    if-nez v8, :cond_4

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v17, v0

    const-string v18, "start"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$1(Lcom/droidhen/fortconquer/kits/DiscountManager;J)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v17, v0

    const-string v18, "end"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$2(Lcom/droidhen/fortconquer/kits/DiscountManager;J)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v17, v0

    const-string v18, "serverTime"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$3(Lcom/droidhen/fortconquer/kits/DiscountManager;J)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v17, v0

    const-string v18, "rate"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$4(Lcom/droidhen/fortconquer/kits/DiscountManager;I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$5(Lcom/droidhen/fortconquer/kits/DiscountManager;J)V

    .line 173
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$6(Lcom/droidhen/fortconquer/kits/DiscountManager;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "_start"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$7(Lcom/droidhen/fortconquer/kits/DiscountManager;)J

    move-result-wide v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/droidhen/fortconquer/CCPrefs;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 174
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$6(Lcom/droidhen/fortconquer/kits/DiscountManager;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "_end"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$8(Lcom/droidhen/fortconquer/kits/DiscountManager;)J

    move-result-wide v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/droidhen/fortconquer/CCPrefs;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 175
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$6(Lcom/droidhen/fortconquer/kits/DiscountManager;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "_local"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$9(Lcom/droidhen/fortconquer/kits/DiscountManager;)J

    move-result-wide v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/droidhen/fortconquer/CCPrefs;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 176
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$6(Lcom/droidhen/fortconquer/kits/DiscountManager;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "_now"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$10(Lcom/droidhen/fortconquer/kits/DiscountManager;)J

    move-result-wide v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/droidhen/fortconquer/CCPrefs;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 177
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$6(Lcom/droidhen/fortconquer/kits/DiscountManager;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "_rate"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$11(Lcom/droidhen/fortconquer/kits/DiscountManager;)I

    move-result v19

    invoke-static/range {v17 .. v19}, Lcom/droidhen/fortconquer/CCPrefs;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 179
    const-string v17, "noticeUrl"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 180
    .local v16, "tempUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$12(Lcom/droidhen/fortconquer/kits/DiscountManager;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_3

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$13(Lcom/droidhen/fortconquer/kits/DiscountManager;Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$14(Lcom/droidhen/fortconquer/kits/DiscountManager;Z)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/droidhen/fortconquer/kits/DiscountManager;->loadPicSuccess:Z
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v11, v12

    .line 200
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "errorCode":I
    .end local v9    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "objContent":Lorg/json/JSONObject;
    .end local v13    # "readbyte":[B
    .end local v14    # "res":I
    .end local v16    # "tempUrl":Ljava/lang/String;
    .restart local v11    # "objContent":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$15(Lcom/droidhen/fortconquer/kits/DiscountManager;)Z

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager;->pic:Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$12(Lcom/droidhen/fortconquer/kits/DiscountManager;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$12(Lcom/droidhen/fortconquer/kits/DiscountManager;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_2

    .line 204
    :try_start_2
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$12(Lcom/droidhen/fortconquer/kits/DiscountManager;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 205
    .restart local v9    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v10, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 206
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 207
    .restart local v14    # "res":I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v14, v0, :cond_2

    .line 208
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 209
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v7, :cond_2

    .line 210
    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v13

    .line 211
    .restart local v13    # "readbyte":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v17, v0

    new-instance v18, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;-><init>([B)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/droidhen/fortconquer/kits/DiscountManager;->pic:Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/droidhen/fortconquer/kits/DiscountManager;->loadPicSuccess:Z
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 224
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .end local v13    # "readbyte":[B
    .end local v14    # "res":I
    :cond_2
    :goto_1
    return-void

    .line 185
    .end local v11    # "objContent":Lorg/json/JSONObject;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "errorCode":I
    .restart local v9    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v12    # "objContent":Lorg/json/JSONObject;
    .restart local v13    # "readbyte":[B
    .restart local v14    # "res":I
    .restart local v16    # "tempUrl":Ljava/lang/String;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;->this$0:Lcom/droidhen/fortconquer/kits/DiscountManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/droidhen/fortconquer/kits/DiscountManager;->access$14(Lcom/droidhen/fortconquer/kits/DiscountManager;Z)V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v11, v12

    .line 192
    .end local v12    # "objContent":Lorg/json/JSONObject;
    .restart local v11    # "objContent":Lorg/json/JSONObject;
    goto/16 :goto_0

    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "errorCode":I
    .end local v9    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .end local v13    # "readbyte":[B
    .end local v14    # "res":I
    .end local v16    # "tempUrl":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 193
    .local v4, "e1":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto/16 :goto_0

    .line 194
    .end local v4    # "e1":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v5

    .line 195
    .local v5, "e2":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 196
    .end local v5    # "e2":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 197
    .local v6, "e3":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 215
    .end local v6    # "e3":Lorg/json/JSONException;
    :catch_3
    move-exception v4

    .line 216
    .restart local v4    # "e1":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 217
    .end local v4    # "e1":Lorg/apache/http/client/ClientProtocolException;
    :catch_4
    move-exception v5

    .line 218
    .restart local v5    # "e2":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 219
    .end local v5    # "e2":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 220
    .local v6, "e3":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 196
    .end local v6    # "e3":Ljava/lang/Exception;
    .end local v11    # "objContent":Lorg/json/JSONObject;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v12    # "objContent":Lorg/json/JSONObject;
    .restart local v13    # "readbyte":[B
    .restart local v14    # "res":I
    :catch_6
    move-exception v6

    move-object v11, v12

    .end local v12    # "objContent":Lorg/json/JSONObject;
    .restart local v11    # "objContent":Lorg/json/JSONObject;
    goto :goto_4

    .line 194
    .end local v11    # "objContent":Lorg/json/JSONObject;
    .restart local v12    # "objContent":Lorg/json/JSONObject;
    :catch_7
    move-exception v5

    move-object v11, v12

    .end local v12    # "objContent":Lorg/json/JSONObject;
    .restart local v11    # "objContent":Lorg/json/JSONObject;
    goto :goto_3

    .line 192
    .end local v11    # "objContent":Lorg/json/JSONObject;
    .restart local v12    # "objContent":Lorg/json/JSONObject;
    :catch_8
    move-exception v4

    move-object v11, v12

    .end local v12    # "objContent":Lorg/json/JSONObject;
    .restart local v11    # "objContent":Lorg/json/JSONObject;
    goto :goto_2

    .end local v11    # "objContent":Lorg/json/JSONObject;
    .restart local v8    # "errorCode":I
    .restart local v12    # "objContent":Lorg/json/JSONObject;
    :cond_4
    move-object v11, v12

    .end local v12    # "objContent":Lorg/json/JSONObject;
    .restart local v11    # "objContent":Lorg/json/JSONObject;
    goto/16 :goto_0
.end method
