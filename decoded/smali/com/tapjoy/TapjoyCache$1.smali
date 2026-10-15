.class final Lcom/tapjoy/TapjoyCache$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyCache;->cacheAssetGroup(Lorg/json/JSONArray;Lcom/tapjoy/TJCacheListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lcom/tapjoy/TJCacheListener;

.field final synthetic c:Lcom/tapjoy/TapjoyCache;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyCache;Lorg/json/JSONArray;Lcom/tapjoy/TJCacheListener;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/tapjoy/TapjoyCache$1;->c:Lcom/tapjoy/TapjoyCache;

    iput-object p2, p0, Lcom/tapjoy/TapjoyCache$1;->a:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/tapjoy/TapjoyCache$1;->b:Lcom/tapjoy/TJCacheListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v2, 0x2

    .line 175
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 176
    const/4 v1, 0x1

    .line 179
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/tapjoy/TapjoyCache$1;->a:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 183
    :try_start_0
    iget-object v4, p0, Lcom/tapjoy/TapjoyCache$1;->a:Lorg/json/JSONArray;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 184
    iget-object v5, p0, Lcom/tapjoy/TapjoyCache$1;->c:Lcom/tapjoy/TapjoyCache;

    invoke-virtual {v5, v4}, Lcom/tapjoy/TapjoyCache;->cacheAssetFromJSONObject(Lorg/json/JSONObject;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 185
    if-eqz v4, :cond_0

    .line 186
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 179
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 196
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 199
    :goto_3
    iget-object v1, p0, Lcom/tapjoy/TapjoyCache$1;->c:Lcom/tapjoy/TapjoyCache;

    invoke-static {v1}, Lcom/tapjoy/TapjoyCache;->a(Lcom/tapjoy/TapjoyCache;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    const-string v1, "TapjoyCache"

    const-string v4, "Caching thread completed"

    invoke-static {v1, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    move v1, v0

    .line 208
    goto :goto_2

    .line 202
    :catch_0
    move-exception v0

    move v1, v2

    .line 208
    goto :goto_2

    .line 205
    :catch_1
    move-exception v0

    move v1, v2

    .line 209
    goto :goto_2

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$1;->b:Lcom/tapjoy/TJCacheListener;

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$1;->b:Lcom/tapjoy/TJCacheListener;

    invoke-interface {v0, v1}, Lcom/tapjoy/TJCacheListener;->onCachingComplete(I)V

    .line 216
    :cond_4
    return-void

    .line 188
    :catch_2
    move-exception v4

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3
.end method
