.class final Lcom/tapjoy/internal/dz;
.super Lcom/tapjoy/internal/dy;
.source "SourceFile"


# instance fields
.field private b:Z

.field private c:Lcom/tapjoy/TJCOffers;

.field private d:Lcom/tapjoy/TJCurrency;

.field private e:Lcom/tapjoy/TapjoyVideo;

.field private f:Lcom/tapjoy/TapjoyCache;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lcom/tapjoy/internal/dy;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/dz;->b:Z

    .line 26
    iput-object v1, p0, Lcom/tapjoy/internal/dz;->c:Lcom/tapjoy/TJCOffers;

    .line 27
    iput-object v1, p0, Lcom/tapjoy/internal/dz;->d:Lcom/tapjoy/TJCurrency;

    .line 28
    iput-object v1, p0, Lcom/tapjoy/internal/dz;->e:Lcom/tapjoy/TapjoyVideo;

    .line 29
    iput-object v1, p0, Lcom/tapjoy/internal/dz;->f:Lcom/tapjoy/TapjoyCache;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/dz;Lcom/tapjoy/TJCOffers;)Lcom/tapjoy/TJCOffers;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/tapjoy/internal/dz;->c:Lcom/tapjoy/TJCOffers;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/dz;Lcom/tapjoy/TJCurrency;)Lcom/tapjoy/TJCurrency;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/tapjoy/internal/dz;->d:Lcom/tapjoy/TJCurrency;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/dz;Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCache;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/tapjoy/internal/dz;->f:Lcom/tapjoy/TapjoyCache;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/dz;Lcom/tapjoy/TapjoyVideo;)Lcom/tapjoy/TapjoyVideo;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/tapjoy/internal/dz;->e:Lcom/tapjoy/TapjoyVideo;

    return-object p1
.end method

.method private g(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/tapjoy/internal/dz;->a:Z

    if-nez v0, :cond_0

    .line 368
    const-string v0, "TapjoyAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not call "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because Tapjoy SDK has not successfully connected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/4 v0, 0x0

    .line 371
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/tapjoy/internal/dz;->b:Z

    if-nez v0, :cond_0

    .line 379
    const-string v0, "TapjoyAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not call "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because Tapjoy SDK is not initialized."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const/4 v0, 0x0

    .line 382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    .prologue
    .line 116
    const-string v0, "setCurrencyMultiplier"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dz;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->setCurrencyMultiplier(F)V

    .line 119
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fv;->a(I)V

    .line 321
    return-void
.end method

.method public final a(ILcom/tapjoy/TJAwardCurrencyListener;)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->d:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_0

    const-string v0, "awardCurrency"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dz;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->d:Lcom/tapjoy/TJCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJCurrency;->awardCurrency(ILcom/tapjoy/TJAwardCurrencyListener;)V

    .line 199
    :cond_0
    return-void
.end method

.method public final a(ILcom/tapjoy/TJSpendCurrencyListener;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->d:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_0

    const-string v0, "spendCurrency"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dz;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->d:Lcom/tapjoy/TJCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJCurrency;->spendCurrency(ILcom/tapjoy/TJSpendCurrencyListener;)V

    .line 192
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 335
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/fv;->a(ILjava/lang/String;)V

    .line 336
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->setAutoSessionTrackingStarted(Z)V

    .line 302
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fv;->a(Landroid/app/Activity;)V

    .line 303
    return-void
.end method

.method public final a(Landroid/opengl/GLSurfaceView;)V
    .locals 0

    .prologue
    .line 355
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    invoke-static {p1}, Lcom/tapjoy/internal/fv;->a(Landroid/opengl/GLSurfaceView;)V

    .line 356
    return-void
.end method

.method public final a(Lcom/tapjoy/TJEarnedCurrencyListener;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->d:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_0

    const-string v0, "setEarnedCurrencyListener"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dz;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->d:Lcom/tapjoy/TJCurrency;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCurrency;->setEarnedCurrencyListener(Lcom/tapjoy/TJEarnedCurrencyListener;)V

    .line 206
    :cond_0
    return-void
.end method

.method public final a(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->d:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_0

    const-string v0, "getCurrencyBalance"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dz;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->d:Lcom/tapjoy/TJCurrency;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCurrency;->getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V

    .line 185
    :cond_0
    return-void
.end method

.method public final a(Lcom/tapjoy/TJOffersListener;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->c:Lcom/tapjoy/TJCOffers;

    if-eqz v0, :cond_0

    const-string v0, "showOffers"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dz;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->c:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCOffers;->showOffers(Lcom/tapjoy/TJOffersListener;)V

    .line 171
    :cond_0
    return-void
.end method

.method public final a(Lcom/tapjoy/TJVideoListener;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->e:Lcom/tapjoy/TapjoyVideo;

    if-eqz v0, :cond_0

    const-string v0, "setVideoListener"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dz;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->e:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyVideo;->setVideoListener(Lcom/tapjoy/TJVideoListener;)V

    .line 217
    :cond_0
    return-void
.end method

.method public final a(Lcom/tapjoy/TJViewListener;)V
    .locals 1

    .prologue
    .line 132
    const-string v0, "setTapjoyViewListener"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dz;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->setTapjoyViewListener(Lcom/tapjoy/TJViewListener;)V

    .line 135
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 238
    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/fl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 239
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 243
    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/fl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 244
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/fv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 7

    .prologue
    .line 224
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/tapjoy/internal/fv;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 225
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 248
    move-object v0, p1

    move-object v1, p2

    move-object v3, v2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/fl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 249
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 253
    const-wide/16 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/fl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 254
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 258
    invoke-static/range {p1 .. p6}, Lcom/tapjoy/internal/fl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 259
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 14

    .prologue
    .line 263
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-static/range {v1 .. v13}, Lcom/tapjoy/internal/fl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    .line 264
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 14

    .prologue
    .line 268
    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-static/range {v1 .. v13}, Lcom/tapjoy/internal/fl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    .line 269
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
    .locals 0

    .prologue
    .line 274
    invoke-static/range {p1 .. p13}, Lcom/tapjoy/internal/fl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    .line 275
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    .prologue
    .line 279
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/internal/fv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 280
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->c:Lcom/tapjoy/TJCOffers;

    if-eqz v0, :cond_0

    const-string v0, "showOffersWithCurrencyID"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dz;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->c:Lcom/tapjoy/TJCOffers;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TJOffersListener;)V

    .line 164
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ZLcom/tapjoy/TJOffersListener;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->c:Lcom/tapjoy/TJCOffers;

    if-eqz v0, :cond_0

    const-string v0, "showOffersWithCurrencyID"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dz;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->c:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TJOffersListener;)V

    .line 178
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->setDebugEnabled(Z)V

    .line 39
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/tapjoy/internal/dz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    monitor-enter p0

    :try_start_0
    const-string v2, "event"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->setSDKType(Ljava/lang/String;)V

    .line 56
    invoke-static {p3}, Lcom/tapjoy/FiveRocksIntegration;->a(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    new-instance v2, Lcom/tapjoy/internal/dz$1;

    invoke-direct {v2, p0, p1, p4}, Lcom/tapjoy/internal/dz$1;-><init>(Lcom/tapjoy/internal/dz;Landroid/content/Context;Lcom/tapjoy/TJConnectListener;)V

    invoke-static {p1, p2, p3, v2}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)V
    :try_end_1
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/tapjoy/TapjoyException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/tapjoy/internal/dz;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :goto_0
    monitor-exit p0

    return v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    :try_start_3
    const-string v2, "TapjoyAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IntegrationException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyIntegrationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-eqz p4, :cond_0

    .line 94
    invoke-interface {p4}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V

    :cond_0
    move v0, v1

    .line 95
    goto :goto_0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    const-string v2, "TapjoyAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TapjoyException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-eqz p4, :cond_1

    .line 99
    invoke-interface {p4}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    move v0, v1

    .line 100
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "11.1.0"

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 325
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fv;->b(I)V

    .line 326
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 307
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fv;->b(Landroid/app/Activity;)V

    .line 308
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 312
    const-string v0, "setUserID"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dz;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-static {p1}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;)V

    .line 315
    :cond_0
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fv;->g(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fv;->c(Z)V

    .line 351
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->c:Lcom/tapjoy/TJCOffers;

    if-eqz v0, :cond_0

    const-string v0, "showOffers"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dz;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->c:Lcom/tapjoy/TJCOffers;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCOffers;->showOffers(Lcom/tapjoy/TJOffersListener;)V

    .line 157
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 330
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fv;->f(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 124
    const-string v0, "getCurrencyMultiplier"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dz;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->getCurrencyMultiplier()F

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    const-string v0, "enablePaidAppWithActionID"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dz;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->enablePaidAppWithActionID(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 284
    const-string v0, "startSession"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dz;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->appResume()V

    .line 286
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fv;->g()V

    .line 288
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 143
    const-string v0, "actionComplete"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dz;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 292
    const-string v0, "endSession"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dz;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->setAutoSessionTrackingStarted(Z)V

    .line 294
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->appPause()V

    .line 295
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fv;->h()V

    .line 297
    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 340
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fv;->b(Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fv;->e()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/tapjoy/internal/dz;->a:Z

    return v0
.end method
