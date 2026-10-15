.class Lcom/moreexchange/command/Command$3;
.super Lcom/loopj/android/http/JsonHttpResponseHandler;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moreexchange/command/Command;->getAd(Lcom/moreexchange/command/Command$AdType;ILjava/util/List;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$moreexchange$command$Command$AdType:[I


# instance fields
.field private final synthetic val$advType:Lcom/moreexchange/command/Command$AdType;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$payAdvertisers:Ljava/util/List;


# direct methods
.method static synthetic $SWITCH_TABLE$com$moreexchange$command$Command$AdType()[I
    .locals 3

    .prologue
    .line 190
    sget-object v0, Lcom/moreexchange/command/Command$3;->$SWITCH_TABLE$com$moreexchange$command$Command$AdType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/moreexchange/command/Command$AdType;->values()[Lcom/moreexchange/command/Command$AdType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/moreexchange/command/Command$AdType;->INTERSTITIAL:Lcom/moreexchange/command/Command$AdType;

    invoke-virtual {v1}, Lcom/moreexchange/command/Command$AdType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/moreexchange/command/Command$AdType;->MORE:Lcom/moreexchange/command/Command$AdType;

    invoke-virtual {v1}, Lcom/moreexchange/command/Command$AdType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/moreexchange/command/Command$AdType;->NOTIFICATION:Lcom/moreexchange/command/Command$AdType;

    invoke-virtual {v1}, Lcom/moreexchange/command/Command$AdType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/moreexchange/command/Command$3;->$SWITCH_TABLE$com$moreexchange$command$Command$AdType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/moreexchange/command/Command$AdType;Ljava/util/List;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moreexchange/command/Command$3;->val$advType:Lcom/moreexchange/command/Command$AdType;

    iput-object p2, p0, Lcom/moreexchange/command/Command$3;->val$payAdvertisers:Ljava/util/List;

    iput-object p3, p0, Lcom/moreexchange/command/Command$3;->val$handler:Landroid/os/Handler;

    .line 190
    invoke-direct {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "errorResponse"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/moreexchange/command/Command$3;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/moreexchange/command/Command$3;->val$handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 266
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/moreexchange/command/Command;->access$1(Z)V

    .line 268
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 194
    const/4 v6, 0x0

    .line 195
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .line 196
    .local v4, "isMore":Z
    const/4 v5, 0x0

    .line 198
    .local v5, "isNotification":Z
    :try_start_0
    invoke-static {}, Lcom/moreexchange/command/Command$3;->$SWITCH_TABLE$com$moreexchange$command$Command$AdType()[I

    move-result-object v9

    iget-object v10, p0, Lcom/moreexchange/command/Command$3;->val$advType:Lcom/moreexchange/command/Command$AdType;

    invoke-virtual {v10}, Lcom/moreexchange/command/Command$AdType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 214
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v3, v9, :cond_0

    .line 253
    iget-object v9, p0, Lcom/moreexchange/command/Command$3;->val$handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/moreexchange/command/Command$3;->val$handler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 254
    const-string v9, "------MoreExchange------"

    const-string v10, "getAdv Successfully"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v3    # "i":I
    :goto_2
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/moreexchange/command/Command;->access$1(Z)V

    .line 261
    return-void

    .line 200
    :pswitch_0
    :try_start_1
    const-string v9, "more"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/json/JSONArray;

    move-object v6, v0

    .line 201
    const/4 v4, 0x1

    .line 202
    goto :goto_0

    .line 204
    :pswitch_1
    const-string v9, "interstitial"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/json/JSONArray;

    move-object v6, v0

    .line 205
    goto :goto_0

    .line 207
    :pswitch_2
    const-string v9, "notify"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/json/JSONArray;

    move-object v6, v0

    .line 208
    const/4 v5, 0x1

    goto :goto_0

    .line 215
    .restart local v3    # "i":I
    :cond_0
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 216
    .local v7, "jsonPayAdvertiser":Lorg/json/JSONObject;
    new-instance v8, Lcom/moreexchange/model/PayAdvertiser;

    invoke-direct {v8}, Lcom/moreexchange/model/PayAdvertiser;-><init>()V

    .line 218
    .local v8, "payAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    const-string v9, "name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/moreexchange/model/PayAdvertiser;->setAppName(Ljava/lang/String;)V

    .line 219
    const-string v9, "pkg"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/moreexchange/model/PayAdvertiser;->setPackageName(Ljava/lang/String;)V

    .line 220
    const-string v9, "url"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/moreexchange/model/PayAdvertiser;->setAppUrl(Ljava/lang/String;)V

    .line 222
    if-nez v5, :cond_4

    .line 223
    const-string v9, "cat"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/moreexchange/model/PayAdvertiser;->setAppCategray(Ljava/lang/String;)V

    .line 224
    const-string v9, "weight"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/moreexchange/model/PayAdvertiser;->setAppWeight(I)V

    .line 225
    const-string v9, "vendor"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/moreexchange/model/PayAdvertiser;->setAppVendor(Ljava/lang/String;)V

    .line 230
    :goto_3
    if-eqz v4, :cond_1

    .line 231
    const-string v9, "price"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "appPrice":Ljava/lang/String;
    const-string v9, "0"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "FREE"

    :goto_4
    invoke-virtual {v8, v9}, Lcom/moreexchange/model/PayAdvertiser;->setAppPrice(Ljava/lang/String;)V

    .line 235
    .end local v1    # "appPrice":Ljava/lang/String;
    :cond_1
    if-nez v5, :cond_2

    if-eqz v4, :cond_6

    .line 236
    :cond_2
    const-string v9, "icon"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\/"

    const-string v11, "/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/moreexchange/model/PayAdvertiser;->setAppImageUrl(Ljava/lang/String;)V

    .line 237
    new-instance v9, Lcom/moreexchange/model/Icon;

    invoke-virtual {v8}, Lcom/moreexchange/model/PayAdvertiser;->getAppImageUrl()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/moreexchange/model/Icon;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/moreexchange/model/PayAdvertiser;->setAppIcon(Lcom/moreexchange/model/Icon;)V

    .line 250
    :cond_3
    :goto_5
    iget-object v9, p0, Lcom/moreexchange/command/Command$3;->val$payAdvertisers:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 227
    :cond_4
    const-string v9, "desc"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/moreexchange/model/PayAdvertiser;->setDescription(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 255
    .end local v3    # "i":I
    .end local v7    # "jsonPayAdvertiser":Lorg/json/JSONObject;
    .end local v8    # "payAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 257
    iget-object v9, p0, Lcom/moreexchange/command/Command$3;->val$handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/moreexchange/command/Command$3;->val$handler:Landroid/os/Handler;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 232
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v1    # "appPrice":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v7    # "jsonPayAdvertiser":Lorg/json/JSONObject;
    .restart local v8    # "payAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    :cond_5
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "$"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 239
    .end local v1    # "appPrice":Ljava/lang/String;
    :cond_6
    const-string v9, "himg"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 240
    const-string v9, "himg"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\/"

    const-string v11, "/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/moreexchange/model/PayAdvertiser;->setAppHImageUrl(Ljava/lang/String;)V

    .line 241
    new-instance v9, Lcom/moreexchange/model/Icon;

    invoke-virtual {v8}, Lcom/moreexchange/model/PayAdvertiser;->getAppHImageUrl()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/moreexchange/model/Icon;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/moreexchange/model/PayAdvertiser;->setAppHImage(Lcom/moreexchange/model/Icon;)V

    .line 244
    :cond_7
    const-string v9, "vimg"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 245
    const-string v9, "vimg"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\/"

    const-string v11, "/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/moreexchange/model/PayAdvertiser;->setAppVImageUrl(Ljava/lang/String;)V

    .line 246
    new-instance v9, Lcom/moreexchange/model/Icon;

    invoke-virtual {v8}, Lcom/moreexchange/model/PayAdvertiser;->getAppVImageUrl()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/moreexchange/model/Icon;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/moreexchange/model/PayAdvertiser;->setAppVImage(Lcom/moreexchange/model/Icon;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
