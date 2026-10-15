.class public Lcom/tapjoy/TJPlacement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tapjoy/TJPlacementData;

.field private c:Ljava/util/Map;

.field private d:Lcom/tapjoy/TJPlacementListener;

.field private e:Lcom/tapjoy/TJPlacementListener;

.field private f:Z

.field private g:Z

.field private h:Lcom/tapjoy/internal/gu;

.field private i:Lcom/tapjoy/internal/gc;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V
    .locals 2
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "placementName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/tapjoy/TJPlacementListener;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v1, p0, Lcom/tapjoy/TJPlacement;->f:Z

    .line 46
    iput-boolean v1, p0, Lcom/tapjoy/TJPlacement;->g:Z

    .line 49
    iput-object v0, p0, Lcom/tapjoy/TJPlacement;->h:Lcom/tapjoy/internal/gu;

    .line 50
    iput-object v0, p0, Lcom/tapjoy/TJPlacement;->i:Lcom/tapjoy/internal/gc;

    .line 52
    iput-boolean v1, p0, Lcom/tapjoy/TJPlacement;->j:Z

    .line 57
    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->a:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementListener;

    .line 59
    if-eqz p3, :cond_0

    const-class v0, Lcom/tapjoy/TJPlacementListener;

    invoke-static {p3, v0}, Lcom/tapjoy/internal/AndroidListenerProxy;->newProxyInstance(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacementListener;

    :cond_0
    iput-object v0, p0, Lcom/tapjoy/TJPlacement;->e:Lcom/tapjoy/TJPlacementListener;

    .line 61
    new-instance v0, Lcom/tapjoy/TJPlacementData;

    invoke-direct {v0}, Lcom/tapjoy/TJPlacementData;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    .line 62
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    iput-object p2, v0, Lcom/tapjoy/TJPlacementData;->name:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJPlacementData;->guid:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    iget-object v0, v0, Lcom/tapjoy/TJPlacementData;->guid:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tapjoy/TJPlacementManager;->put(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V

    .line 69
    invoke-static {p2, p0}, Lcom/tapjoy/FiveRocksIntegration;->addPlacementCallback(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/TJPlacementData;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/internal/gu;)Lcom/tapjoy/internal/gu;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->h:Lcom/tapjoy/internal/gu;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyHttpURLResponse;)V
    .locals 4

    .prologue
    .line 27
    const-string v0, "TJPlacement"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Checking if there is content to cache for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    iget-object v2, v2, Lcom/tapjoy/TJPlacementData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-tapjoy-cacheable-assets"

    invoke-virtual {p1, v0}, Lcom/tapjoy/TapjoyHttpURLResponse;->getHeaderFieldAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->canCachePlacement()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "TJPlacement"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Placement caching limit reached. No content will be cached for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    iget-object v2, v2, Lcom/tapjoy/TJPlacementData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tapjoy/TJPlacement;->f()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "TJPlacement"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Begin caching content for placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    iget-object v3, v3, Lcom/tapjoy/TJPlacementData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->incrementPlacementCacheCount()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacement;->j:Z

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/TJPlacement$2;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJPlacement$2;-><init>(Lcom/tapjoy/TJPlacement;)V

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TapjoyCache;->cacheAssetGroup(Lorg/json/JSONArray;Lcom/tapjoy/TJCacheListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/tapjoy/TJPlacement;->f()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/tapjoy/TJPlacement;->f()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tapjoy/TJPlacement;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/tapjoy/TJPlacement;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tapjoy/TJPlacement;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/tapjoy/TJPlacement;->k:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 401
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 403
    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/TJPlacement;->h:Lcom/tapjoy/internal/gu;

    iget-object v3, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    iget-object v3, v3, Lcom/tapjoy/TJPlacementData;->url:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/tapjoy/internal/gu;->a(Ljava/net/URI;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gu$a;

    .line 406
    iget-object v2, v0, Lcom/tapjoy/internal/gu$a;->a:Lcom/tapjoy/internal/gc;

    iput-object v2, p0, Lcom/tapjoy/TJPlacement;->i:Lcom/tapjoy/internal/gc;

    .line 407
    iget-object v2, v0, Lcom/tapjoy/internal/gu$a;->a:Lcom/tapjoy/internal/gc;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gc;->a()V

    .line 409
    iget-object v0, v0, Lcom/tapjoy/internal/gu$a;->a:Lcom/tapjoy/internal/gc;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gc;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    const-string v0, "TJPlacement"

    const-string v2, "Failed to load fiverocks placement"

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/tapjoy/internal/ch; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 423
    :goto_0
    return v0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    const-string v2, "TJPlacement"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    .line 417
    goto :goto_0

    .line 418
    :catch_1
    move-exception v0

    .line 419
    const-string v2, "TJPlacement"

    invoke-virtual {v0}, Lcom/tapjoy/internal/ch;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0}, Lcom/tapjoy/internal/ch;->printStackTrace()V

    move v0, v1

    .line 421
    goto :goto_0

    .line 423
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/tapjoy/TJPlacement;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/TJPlacement;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/TJPlacementListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementListener;

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 5

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJPlacement;->c:Ljava/util/Map;

    .line 165
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->c:Ljava/util/Map;

    const-string v1, "event_name"

    iget-object v2, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    iget-object v2, v2, Lcom/tapjoy/TJPlacementData;->name:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->c:Ljava/util/Map;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "v1/apps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/content?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    iput-object v0, v1, Lcom/tapjoy/TJPlacementData;->url:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    const/4 v2, 0x0

    const/16 v3, 0x2f

    const-string v4, "//"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/TJPlacementData;->baseURL:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->c:Ljava/util/Map;

    const-string v1, "debug"

    sget-boolean v2, Lcom/tapjoy/internal/fs;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 177
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->c:Ljava/util/Map;

    const-string v1, "event_preload"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 179
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->c:Ljava/util/Map;

    const-string v2, "action_id_exclusion"

    invoke-virtual {v0}, Lcom/tapjoy/internal/fv;->i()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    new-instance v1, Lcom/tapjoy/TJPlacement$1;

    invoke-direct {v1, p0, v0}, Lcom/tapjoy/TJPlacement$1;-><init>(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/internal/fv;)V

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacement$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tapjoy/TJPlacement;->f()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacement;->g:Z

    .line 301
    const-string v0, "TJPlacement"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content is ready for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    iget-object v2, v2, Lcom/tapjoy/TJPlacementData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementListener;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementListener;

    invoke-interface {v0, p0}, Lcom/tapjoy/TJPlacementListener;->onContentReady(Lcom/tapjoy/TJPlacement;)V

    .line 306
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/tapjoy/TJPlacement;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/tapjoy/TJPlacement;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/tapjoy/TJPlacement;)V
    .locals 3

    .prologue
    .line 27
    const-string v0, "TJPlacement"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tracking event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    iget-object v2, v2, Lcom/tapjoy/TJPlacementData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for offline delivery"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->c:Ljava/util/Map;

    const-string v1, "timestamp"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->c:Ljava/util/Map;

    const-string v1, "verifier"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    iget-object v1, v1, Lcom/tapjoy/TJPlacementData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->c:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->saveOfflineLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/internal/gc;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->i:Lcom/tapjoy/internal/gc;

    return-object v0
.end method


# virtual methods
.method final a()Lcom/tapjoy/TJPlacementListener;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->e:Lcom/tapjoy/TJPlacementListener;

    return-object v0
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacement;->f:Z

    .line 253
    const-string v0, "TJPlacement"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content request delivered successfully for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    iget-object v2, v2, Lcom/tapjoy/TJPlacementData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tapjoy/TJPlacement;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementListener;

    invoke-interface {v0, p0}, Lcom/tapjoy/TJPlacementListener;->onRequestSuccess(Lcom/tapjoy/TJPlacement;)V

    .line 255
    return-void
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/tapjoy/TJPlacement;->j:Z

    return v0
.end method

.method final d()V
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacement;->j:Z

    .line 436
    return-void
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    iget-object v0, v0, Lcom/tapjoy/TJPlacementData;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/tapjoy/TJPlacementListener;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementListener;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    iget-object v0, v0, Lcom/tapjoy/TJPlacementData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isContentAvailable()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/tapjoy/TJPlacement;->f:Z

    return v0
.end method

.method public isContentReady()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/tapjoy/TJPlacement;->g:Z

    return v0
.end method

.method public requestContent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    const-string v0, "TJPlacement"

    const-string v1, "Can not call requestContent for TJPlacement because Tapjoy SDK has not successfully connected."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementListener;

    new-instance v1, Lcom/tapjoy/TJError;

    const-string v2, "SDK not connected -- connect must be called first with a successful callback"

    invoke-direct {v1, v3, v2}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/tapjoy/TJPlacementListener;->onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 136
    const-string v0, "TJPlacement"

    const-string v1, "Can not call requestContent for TJPlacement because context is null"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementListener;

    new-instance v1, Lcom/tapjoy/TJError;

    const-string v2, "Context is null -- TJPlacement requires a valid Context."

    invoke-direct {v1, v3, v2}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/tapjoy/TJPlacementListener;->onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    iget-object v0, v0, Lcom/tapjoy/TJPlacementData;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    iget-object v0, v0, Lcom/tapjoy/TJPlacementData;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 145
    :cond_3
    const-string v0, "TJPlacement"

    const-string v1, "Can not call send for TJPlacement because name is null or empty"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementListener;

    new-instance v1, Lcom/tapjoy/TJError;

    const-string v2, "Invalid placement name -- TJPlacement requires a valid placement name."

    invoke-direct {v1, v3, v2}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/tapjoy/TJPlacementListener;->onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V

    goto :goto_0

    .line 153
    :cond_4
    iget-boolean v0, p0, Lcom/tapjoy/TJPlacement;->k:Z

    if-eqz v0, :cond_5

    .line 154
    const-string v0, "TJPlacement"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already requesting content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_5
    invoke-direct {p0}, Lcom/tapjoy/TJPlacement;->e()V

    goto :goto_0
.end method

.method public showContent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 313
    const-string v0, "TJPlacement"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showPlacementContent() called for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    iget-object v2, v2, Lcom/tapjoy/TJPlacementData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tapjoy/TJPlacement;->f:Z

    if-nez v0, :cond_0

    const-string v0, "TJPlacement"

    const-string v1, "No placement content available. Can not show content for non-200 placement."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementListener;

    if-nez v0, :cond_1

    const-string v0, "TJPlacement"

    const-string v1, "TJPlacementListener is null"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TJPlacement"

    const-string v1, "Only one view can be presented at a time."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->i:Lcom/tapjoy/internal/gc;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->i:Lcom/tapjoy/internal/gc;

    instance-of v0, v0, Lcom/tapjoy/internal/ga;

    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(I)V

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->i:Lcom/tapjoy/internal/gc;

    check-cast v0, Lcom/tapjoy/internal/ga;

    new-instance v1, Lcom/tapjoy/TJPlacement$3;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJPlacement$3;-><init>(Lcom/tapjoy/TJPlacement;)V

    iput-object v1, v0, Lcom/tapjoy/internal/ga;->e:Lcom/tapjoy/internal/fq;

    new-instance v0, Lcom/tapjoy/TJPlacement$4;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJPlacement$4;-><init>(Lcom/tapjoy/TJPlacement;)V

    invoke-static {v0}, Lcom/tapjoy/internal/fv;->a(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/tapjoy/TJPlacement;->f:Z

    iput-boolean v3, p0, Lcom/tapjoy/TJPlacement;->g:Z

    iput-boolean v3, p0, Lcom/tapjoy/TJPlacement;->j:Z

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->a:Landroid/content/Context;

    const-class v2, Lcom/tapjoy/TJAdUnitView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "view_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "tjplacement"

    iget-object v2, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
