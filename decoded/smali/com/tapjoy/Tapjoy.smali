.class public final Lcom/tapjoy/Tapjoy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INTENT_EXTRA_PUSH_PAYLOAD:Ljava/lang/String; = "com.tapjoy.PUSH_PAYLOAD"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionComplete(Ljava/lang/String;)V
    .locals 1
    .param p0, "actionID"    # Ljava/lang/String;

    .prologue
    .line 542
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->e(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public static awardCurrency(ILcom/tapjoy/TJAwardCurrencyListener;)V
    .locals 1
    .param p0, "amount"    # I
    .param p1, "listener"    # Lcom/tapjoy/TJAwardCurrencyListener;

    .prologue
    .line 193
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/dy;->a(ILcom/tapjoy/TJAwardCurrencyListener;)V

    .line 194
    return-void
.end method

.method public static connect(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdkKey"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/dy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdkKey"    # Ljava/lang/String;

    .prologue
    .line 69
    .local p2, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/tapjoy/internal/dy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "sdkKey"    # Ljava/lang/String;
    .param p3, "publisherListener"    # Lcom/tapjoy/TJConnectListener;

    .prologue
    .line 95
    .local p2, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    const-class v1, Lcom/tapjoy/Tapjoy;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tapjoy/internal/dy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static enablePaidAppWithActionID(Ljava/lang/String;)V
    .locals 1
    .param p0, "paidAppPayPerActionID"    # Ljava/lang/String;

    .prologue
    .line 531
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->d(Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method public static endSession()V
    .locals 1

    .prologue
    .line 406
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/dy;->f()V

    .line 407
    return-void
.end method

.method public static getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/tapjoy/TJGetCurrencyBalanceListener;

    .prologue
    .line 167
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->a(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V

    .line 168
    return-void
.end method

.method public static getCurrencyMultiplier()F
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/dy;->d()F

    move-result v0

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/dy;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isConnected()Z
    .locals 1

    .prologue
    .line 601
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/dy;->h()Z

    move-result v0

    return v0
.end method

.method public static isPushNotificationDisabled()Z
    .locals 1

    .prologue
    .line 564
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/dy;->g()Z

    move-result v0

    return v0
.end method

.method public static loadSharedLibrary()V
    .locals 1

    .prologue
    .line 582
    :try_start_0
    const-string v0, "tapjoy"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static onActivityStart(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 416
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->a(Landroid/app/Activity;)V

    .line 417
    return-void
.end method

.method public static onActivityStop(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 426
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->b(Landroid/app/Activity;)V

    .line 427
    return-void
.end method

.method public static setAppDataVersion(Ljava/lang/String;)V
    .locals 1
    .param p0, "dataVersion"    # Ljava/lang/String;

    .prologue
    .line 472
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->c(Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public static setCurrencyMultiplier(F)V
    .locals 1
    .param p0, "multiplier"    # F

    .prologue
    .line 215
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->a(F)V

    .line 216
    return-void
.end method

.method public static setDebugEnabled(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    .line 48
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->a(Z)V

    .line 49
    return-void
.end method

.method public static setEarnedCurrencyListener(Lcom/tapjoy/TJEarnedCurrencyListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/tapjoy/TJEarnedCurrencyListener;

    .prologue
    .line 204
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->a(Lcom/tapjoy/TJEarnedCurrencyListener;)V

    .line 205
    return-void
.end method

.method public static setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 1
    .param p0, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 594
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->a(Landroid/opengl/GLSurfaceView;)V

    .line 595
    return-void
.end method

.method public static setGcmSender(Ljava/lang/String;)V
    .locals 1
    .param p0, "senderId"    # Ljava/lang/String;

    .prologue
    .line 557
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->f(Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public static setPushNotificationDisabled(Z)V
    .locals 1
    .param p0, "disabled"    # Z

    .prologue
    .line 574
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->b(Z)V

    .line 575
    return-void
.end method

.method public static setTapjoyViewListener(Lcom/tapjoy/TJViewListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/tapjoy/TJViewListener;

    .prologue
    .line 497
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->a(Lcom/tapjoy/TJViewListener;)V

    .line 498
    return-void
.end method

.method public static setUserCohortVariable(ILjava/lang/String;)V
    .locals 1
    .param p0, "variableIndex"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 484
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/dy;->a(ILjava/lang/String;)V

    .line 485
    return-void
.end method

.method public static setUserFriendCount(I)V
    .locals 1
    .param p0, "friendCount"    # I

    .prologue
    .line 462
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->b(I)V

    .line 463
    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 1
    .param p0, "userID"    # Ljava/lang/String;

    .prologue
    .line 442
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->b(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public static setUserLevel(I)V
    .locals 1
    .param p0, "userLevel"    # I

    .prologue
    .line 452
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->a(I)V

    .line 453
    return-void
.end method

.method public static setVideoListener(Lcom/tapjoy/TJVideoListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/tapjoy/TJVideoListener;

    .prologue
    .line 511
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->a(Lcom/tapjoy/TJVideoListener;)V

    .line 512
    return-void
.end method

.method public static showOffers()V
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/dy;->c()V

    .line 107
    return-void
.end method

.method public static showOffers(Lcom/tapjoy/TJOffersListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/tapjoy/TJOffersListener;

    .prologue
    .line 118
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->a(Lcom/tapjoy/TJOffersListener;)V

    .line 119
    return-void
.end method

.method public static showOffersWithCurrencyID(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "currencyID"    # Ljava/lang/String;
    .param p1, "enableCurrencySelector"    # Z

    .prologue
    .line 133
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/dy;->a(Ljava/lang/String;Z)V

    .line 134
    return-void
.end method

.method public static showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TJOffersListener;)V
    .locals 1
    .param p0, "currencyID"    # Ljava/lang/String;
    .param p1, "enableCurrencySelector"    # Z
    .param p2, "listener"    # Lcom/tapjoy/TJOffersListener;

    .prologue
    .line 151
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tapjoy/internal/dy;->a(Ljava/lang/String;ZLcom/tapjoy/TJOffersListener;)V

    .line 152
    return-void
.end method

.method public static spendCurrency(ILcom/tapjoy/TJSpendCurrencyListener;)V
    .locals 1
    .param p0, "amount"    # I
    .param p1, "listener"    # Lcom/tapjoy/TJSpendCurrencyListener;

    .prologue
    .line 180
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/dy;->a(ILcom/tapjoy/TJSpendCurrencyListener;)V

    .line 181
    return-void
.end method

.method public static startSession()V
    .locals 1

    .prologue
    .line 398
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/dy;->e()V

    .line 399
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dy;->a(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;J)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 285
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tapjoy/internal/dy;->a(Ljava/lang/String;J)V

    .line 286
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 295
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tapjoy/internal/dy;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 296
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameter1"    # Ljava/lang/String;
    .param p3, "parameter2"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tapjoy/internal/dy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameter1"    # Ljava/lang/String;
    .param p3, "parameter2"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 316
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/tapjoy/internal/dy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 317
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameter1"    # Ljava/lang/String;
    .param p3, "parameter2"    # Ljava/lang/String;
    .param p4, "valueName"    # Ljava/lang/String;
    .param p5, "value"    # J

    .prologue
    .line 327
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/tapjoy/internal/dy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 328
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 11
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameter1"    # Ljava/lang/String;
    .param p3, "parameter2"    # Ljava/lang/String;
    .param p4, "value1Name"    # Ljava/lang/String;
    .param p5, "value1"    # J
    .param p7, "value2Name"    # Ljava/lang/String;
    .param p8, "value2"    # J

    .prologue
    .line 338
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Lcom/tapjoy/internal/dy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    .line 339
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
    .locals 15
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameter1"    # Ljava/lang/String;
    .param p3, "parameter2"    # Ljava/lang/String;
    .param p4, "value1Name"    # Ljava/lang/String;
    .param p5, "value1"    # J
    .param p7, "value2Name"    # Ljava/lang/String;
    .param p8, "value2"    # J
    .param p10, "value3Name"    # Ljava/lang/String;
    .param p11, "value3"    # J

    .prologue
    .line 368
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    invoke-virtual/range {v0 .. v13}, Lcom/tapjoy/internal/dy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    .line 369
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameter1"    # Ljava/lang/String;
    .param p3, "parameter2"    # Ljava/lang/String;

    .prologue
    .line 387
    .local p4, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/internal/dy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 388
    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "skuDetails"    # Ljava/lang/String;
    .param p1, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/dy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 8
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "currencyCode"    # Ljava/lang/String;
    .param p2, "price"    # D
    .param p4, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-static {}, Lcom/tapjoy/internal/dy;->a()Lcom/tapjoy/internal/dy;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/tapjoy/internal/dy;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 246
    return-void
.end method
