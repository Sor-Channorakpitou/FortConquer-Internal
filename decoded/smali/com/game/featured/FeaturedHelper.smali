.class public Lcom/game/featured/FeaturedHelper;
.super Ljava/lang/Object;
.source "FeaturedHelper.java"

# interfaces
.implements Lcom/game/featured/net/SimpleHttpObserver;
.implements Lcom/game/featured/net/SimpleFileDownloadObserver;
.implements Lcom/game/featured/AdidRetrievedObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/featured/FeaturedHelper$FeaturedHelperHolder;
    }
.end annotation


# static fields
.field public static final FEATURED_DIALOG:I = 0x0

.field public static final IMG_DIR:Ljava/lang/String; = ".featured"

.field public static INTERSTITIAL_INTERVAL:I = 0x0

.field public static INTERSTITIAL_SEQUENCE:[Ljava/lang/String; = null

.field public static final LOG_TAG:Ljava/lang/String; = "FeaturedHelper"

.field public static final PAUSE_DIALOG:I = 0x1

.field public static final SERVER_URL:Ljava/lang/String; = "http://app.gamepromote.net/register_t"

.field public static final SHOWAD_SERVER_URL:Ljava/lang/String; = "http://app.gamepromote.net/adseq_t"

.field public static final SHOW_SERVER_URL:Ljava/lang/String; = "http://app.gamepromote.net/show_t"


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _adid:Ljava/lang/String;

.field private _deviceInfo:Lcom/game/util/DeviceUtil$DeviceInfo;

.field private _dialogType:I

.field private _downloadThread:Lcom/game/featured/net/SimpleFileDownloadThread;

.field private _featuredDialog:Landroid/app/Dialog;

.field private _featuredDialogRootView:Landroid/view/View;

.field private _featuredImgBitmap:Landroid/graphics/Bitmap;

.field private _featuredImgFilename:Ljava/lang/String;

.field private _featuredImgMd5Digest:Ljava/lang/String;

.field private _featuredImgUrl:Ljava/lang/String;

.field private _featuredPackageName:Ljava/lang/String;

.field private _featuredType:Ljava/lang/String;

.field private _featuredUrl:Ljava/lang/String;

.field private _httpThread:Lcom/game/featured/net/SimpleHttpThread;

.field private _imgStoreDir:Ljava/lang/String;

.field private _isFeaturedDataReady:Z

.field private _isImgStoreDirReady:Z

.field private _pauseDialogObserver:Lcom/game/featured/FeaturedNotificationObserver;

.field private _postJsonString:Ljava/lang/String;

.field private _quitAppHandler:Lcom/game/featured/FeaturedQuitHandler;

.field private _rateImgResId:I

.field private _rateUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 45
    sput v3, Lcom/game/featured/FeaturedHelper;->INTERSTITIAL_INTERVAL:I

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mm"

    aput-object v2, v0, v1

    .line 48
    const-string v1, "inmobi"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "applovin"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "admob"

    aput-object v2, v0, v1

    .line 47
    sput-object v0, Lcom/game/featured/FeaturedHelper;->INTERSTITIAL_SEQUENCE:[Ljava/lang/String;

    .line 574
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/game/featured/FeaturedHelper;->_activity:Landroid/app/Activity;

    .line 544
    iput-boolean v1, p0, Lcom/game/featured/FeaturedHelper;->_isFeaturedDataReady:Z

    .line 557
    iput v1, p0, Lcom/game/featured/FeaturedHelper;->_dialogType:I

    .line 226
    return-void
.end method

.method synthetic constructor <init>(Lcom/game/featured/FeaturedHelper;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/game/featured/FeaturedHelper;)V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->onDialogClose()V

    return-void
.end method

.method static synthetic access$2(Lcom/game/featured/FeaturedHelper;)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->closeFeaturedDialog()V

    return-void
.end method

.method static synthetic access$3(Lcom/game/featured/FeaturedHelper;)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->quitApp()V

    return-void
.end method

.method static synthetic access$4(Lcom/game/featured/FeaturedHelper;Z)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/game/featured/FeaturedHelper;->openUrl(Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/game/featured/FeaturedHelper;I)V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/game/featured/FeaturedHelper;->showFeaturedDialog(I)V

    return-void
.end method

.method private closeFeaturedDialog()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->onDialogClose()V

    .line 254
    return-void
.end method

.method private createButtonSelector(II)Landroid/graphics/drawable/StateListDrawable;
    .locals 4
    .param p1, "resNormal"    # I
    .param p2, "resSelected"    # I

    .prologue
    const/4 v3, 0x0

    .line 523
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 524
    .local v0, "states":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    iget-object v2, p0, Lcom/game/featured/FeaturedHelper;->_activity:Landroid/app/Activity;

    .line 525
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 524
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 526
    new-array v1, v3, [I

    .line 527
    iget-object v2, p0, Lcom/game/featured/FeaturedHelper;->_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 526
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 528
    return-object v0
.end method

.method private genFeaturedPostJsonString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    const-string v3, "imei"

    iget-object v4, p0, Lcom/game/featured/FeaturedHelper;->_deviceInfo:Lcom/game/util/DeviceUtil$DeviceInfo;

    invoke-virtual {v4}, Lcom/game/util/DeviceUtil$DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v3, "android_id"

    iget-object v4, p0, Lcom/game/featured/FeaturedHelper;->_deviceInfo:Lcom/game/util/DeviceUtil$DeviceInfo;

    invoke-virtual {v4}, Lcom/game/util/DeviceUtil$DeviceInfo;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v3, "package"

    iget-object v4, p0, Lcom/game/featured/FeaturedHelper;->_deviceInfo:Lcom/game/util/DeviceUtil$DeviceInfo;

    invoke-virtual {v4}, Lcom/game/util/DeviceUtil$DeviceInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v3, "adid"

    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->getAdid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 64
    :goto_0
    return-object v2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "FeaturedHelper"

    const-string v4, "gen featured json failed"

    invoke-static {v3, v4, v0}, Lcom/game/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized getAdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_adid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getFeaturedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getFeaturedImgFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgFilename:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getFeaturedPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_featuredPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getFeaturedType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_featuredType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getFeaturedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_featuredUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getImgStoreDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_imgStoreDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/game/featured/FeaturedHelper;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/game/featured/FeaturedHelper$FeaturedHelperHolder;->INSTANCE:Lcom/game/featured/FeaturedHelper;

    return-object v0
.end method

.method private declared-synchronized getPostJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_postJsonString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleFeaturedHttpResult([B)V
    .locals 13
    .param p1, "bytes"    # [B

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v5, p1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 143
    .local v5, "json":Ljava/lang/String;
    const-string v9, "FeaturedHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "response json="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/game/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    .local v6, "jsonObj":Lorg/json/JSONObject;
    const-string v9, "sequence"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 146
    const-string v9, "sequence"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 148
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v8, v9, [Ljava/lang/String;

    .line 149
    .local v8, "temp":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v3, v9, :cond_2

    .line 151
    sput-object v8, Lcom/game/featured/FeaturedHelper;->INTERSTITIAL_SEQUENCE:[Ljava/lang/String;

    .line 154
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v8    # "temp":[Ljava/lang/String;
    :cond_0
    const-string v9, "url"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "image"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 155
    const-string v9, "package"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "type"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_3

    .line 190
    .end local v5    # "json":Ljava/lang/String;
    .end local v6    # "jsonObj":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 150
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v5    # "json":Ljava/lang/String;
    .restart local v6    # "jsonObj":Lorg/json/JSONObject;
    .restart local v8    # "temp":[Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v8    # "temp":[Ljava/lang/String;
    :cond_3
    const-string v9, "url"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/game/featured/FeaturedHelper;->_featuredUrl:Ljava/lang/String;

    .line 160
    const-string v9, "FeaturedHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Featured url="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/game/featured/FeaturedHelper;->_featuredUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/game/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v9, "image"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgUrl:Ljava/lang/String;

    .line 162
    const-string v9, "FeaturedHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Featured img url="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v11, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 162
    invoke-static {v9, v10}, Lcom/game/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v9, "package"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/game/featured/FeaturedHelper;->_featuredPackageName:Ljava/lang/String;

    .line 165
    const-string v9, "FeaturedHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Featured package="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object v11, p0, Lcom/game/featured/FeaturedHelper;->_featuredPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 165
    invoke-static {v9, v10}, Lcom/game/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v9, "type"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/game/featured/FeaturedHelper;->_featuredType:Ljava/lang/String;

    .line 168
    const-string v9, "FeaturedHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Featured type="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/game/featured/FeaturedHelper;->_featuredType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/game/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v9, "interval"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/game/featured/FeaturedHelper;->INTERSTITIAL_INTERVAL:I

    .line 171
    iget-object v9, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgUrl:Ljava/lang/String;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 172
    .local v4, "index":I
    iget-object v9, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgUrl:Ljava/lang/String;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 173
    .local v1, "dotIndex":I
    iget-object v9, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgUrl:Ljava/lang/String;

    add-int/lit8 v10, v4, 0x1

    .line 174
    iget-object v11, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgUrl:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    .line 173
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgFilename:Ljava/lang/String;

    .line 175
    iget-object v9, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgUrl:Ljava/lang/String;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgMd5Digest:Ljava/lang/String;

    .line 178
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->getImgStoreDir()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->getFeaturedImgFilename()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, "path":Ljava/lang/String;
    invoke-static {v7}, Lcom/game/util/BitmapUtil;->getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgBitmap:Landroid/graphics/Bitmap;

    .line 180
    iget-object v9, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_4

    .line 181
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/game/featured/FeaturedHelper;->_isFeaturedDataReady:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 186
    .end local v1    # "dotIndex":I
    .end local v4    # "index":I
    .end local v5    # "json":Ljava/lang/String;
    .end local v6    # "jsonObj":Lorg/json/JSONObject;
    .end local v7    # "path":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v9, "FeaturedHelper"

    .line 188
    const-string v10, "parse feature info from server failed"

    .line 187
    invoke-static {v9, v10, v2}, Lcom/game/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 141
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 183
    .restart local v1    # "dotIndex":I
    .restart local v4    # "index":I
    .restart local v5    # "json":Ljava/lang/String;
    .restart local v6    # "jsonObj":Lorg/json/JSONObject;
    .restart local v7    # "path":Ljava/lang/String;
    :cond_4
    :try_start_3
    iget-object v9, p0, Lcom/game/featured/FeaturedHelper;->_downloadThread:Lcom/game/featured/net/SimpleFileDownloadThread;

    iget-object v10, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgUrl:Ljava/lang/String;

    .line 184
    iget-object v11, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgMd5Digest:Ljava/lang/String;

    const/4 v12, 0x0

    .line 183
    invoke-virtual {v9, v10, v11, p0, v12}, Lcom/game/featured/net/SimpleFileDownloadThread;->downloadFileToMemoryAsync(Ljava/lang/String;Ljava/lang/String;Lcom/game/featured/net/SimpleFileDownloadObserver;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method private init(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rateImgResId"    # I

    .prologue
    .line 68
    invoke-static {p1}, Lcom/game/util/URLHelper;->init(Landroid/app/Activity;)V

    .line 69
    iput-object p1, p0, Lcom/game/featured/FeaturedHelper;->_activity:Landroid/app/Activity;

    .line 70
    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->initDeviceInfo()V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/game/featured/FeaturedHelper;->_deviceInfo:Lcom/game/util/DeviceUtil$DeviceInfo;

    invoke-virtual {v2}, Lcom/game/util/DeviceUtil$DeviceInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "rateUrl":Ljava/lang/String;
    iput-object v0, p0, Lcom/game/featured/FeaturedHelper;->_rateUrl:Ljava/lang/String;

    .line 73
    iput p2, p0, Lcom/game/featured/FeaturedHelper;->_rateImgResId:I

    .line 75
    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->initImgSaveDir()V

    .line 76
    new-instance v1, Lcom/game/featured/net/SimpleHttpThread;

    invoke-direct {v1}, Lcom/game/featured/net/SimpleHttpThread;-><init>()V

    iput-object v1, p0, Lcom/game/featured/FeaturedHelper;->_httpThread:Lcom/game/featured/net/SimpleHttpThread;

    .line 77
    iget-object v1, p0, Lcom/game/featured/FeaturedHelper;->_httpThread:Lcom/game/featured/net/SimpleHttpThread;

    invoke-virtual {v1}, Lcom/game/featured/net/SimpleHttpThread;->init()V

    .line 78
    new-instance v1, Lcom/game/featured/net/SimpleFileDownloadThread;

    invoke-direct {v1}, Lcom/game/featured/net/SimpleFileDownloadThread;-><init>()V

    iput-object v1, p0, Lcom/game/featured/FeaturedHelper;->_downloadThread:Lcom/game/featured/net/SimpleFileDownloadThread;

    .line 79
    iget-object v1, p0, Lcom/game/featured/FeaturedHelper;->_downloadThread:Lcom/game/featured/net/SimpleFileDownloadThread;

    invoke-virtual {v1}, Lcom/game/featured/net/SimpleFileDownloadThread;->init()V

    .line 80
    return-void
.end method

.method private initDeviceInfo()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/game/util/DeviceUtil;->getDeviceInfo(Landroid/content/Context;)Lcom/game/util/DeviceUtil$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/game/featured/FeaturedHelper;->_deviceInfo:Lcom/game/util/DeviceUtil$DeviceInfo;

    .line 128
    return-void
.end method

.method private initImgSaveDir()V
    .locals 1

    .prologue
    .line 118
    const-string v0, ".featured"

    invoke-static {v0}, Lcom/game/util/SdCardUtil;->mkdir(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/game/featured/FeaturedHelper;->_isImgStoreDirReady:Z

    .line 120
    iget-boolean v0, p0, Lcom/game/featured/FeaturedHelper;->_isImgStoreDirReady:Z

    if-eqz v0, :cond_0

    .line 122
    const-string v0, ".featured"

    invoke-static {v0}, Lcom/game/util/SdCardUtil;->getFullpathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/game/featured/FeaturedHelper;->_imgStoreDir:Ljava/lang/String;

    .line 124
    :cond_0
    return-void
.end method

.method private declared-synchronized isFeaturedDataReady()Z
    .locals 1

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/game/featured/FeaturedHelper;->_isFeaturedDataReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyPause()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_pauseDialogObserver:Lcom/game/featured/FeaturedNotificationObserver;

    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_pauseDialogObserver:Lcom/game/featured/FeaturedNotificationObserver;

    invoke-interface {v0}, Lcom/game/featured/FeaturedNotificationObserver;->onPause()V

    goto :goto_0
.end method

.method private notifyResume()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_pauseDialogObserver:Lcom/game/featured/FeaturedNotificationObserver;

    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_pauseDialogObserver:Lcom/game/featured/FeaturedNotificationObserver;

    invoke-interface {v0}, Lcom/game/featured/FeaturedNotificationObserver;->onResume()V

    goto :goto_0
.end method

.method private onDialogClose()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 345
    iput-object v1, p0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    .line 346
    iput-object v1, p0, Lcom/game/featured/FeaturedHelper;->_featuredDialogRootView:Landroid/view/View;

    .line 347
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_httpThread:Lcom/game/featured/net/SimpleHttpThread;

    const-string v1, "http://app.gamepromote.net/register_t"

    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->getPostJsonString()Ljava/lang/String;

    move-result-object v2

    .line 348
    const/4 v3, 0x0

    .line 347
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/game/featured/net/SimpleHttpThread;->postAsyncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/game/featured/net/SimpleHttpObserver;Z)V

    .line 351
    :cond_0
    iget v0, p0, Lcom/game/featured/FeaturedHelper;->_dialogType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->notifyResume()V

    .line 354
    :cond_1
    return-void
.end method

.method private openUrl(Z)V
    .locals 1
    .param p1, "needRate"    # Z

    .prologue
    .line 500
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_rateUrl:Ljava/lang/String;

    .line 501
    .local v0, "url":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 502
    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->getFeaturedUrl()Ljava/lang/String;

    move-result-object v0

    .line 504
    :cond_0
    invoke-static {v0}, Lcom/game/util/URLHelper;->openURL(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method private postOpenActionToServer()V
    .locals 9

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->getFeaturedPackageName()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->getFeaturedType()Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "type":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 311
    .local v1, "json":Lorg/json/JSONObject;
    const-string v4, "package"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v4, "type"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v4, "from"

    iget-object v5, p0, Lcom/game/featured/FeaturedHelper;->_deviceInfo:Lcom/game/util/DeviceUtil$DeviceInfo;

    invoke-virtual {v5}, Lcom/game/util/DeviceUtil$DeviceInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v4, "android_id"

    iget-object v5, p0, Lcom/game/featured/FeaturedHelper;->_deviceInfo:Lcom/game/util/DeviceUtil$DeviceInfo;

    invoke-virtual {v5}, Lcom/game/util/DeviceUtil$DeviceInfo;->getAndroidId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v4, "imei"

    iget-object v5, p0, Lcom/game/featured/FeaturedHelper;->_deviceInfo:Lcom/game/util/DeviceUtil$DeviceInfo;

    invoke-virtual {v5}, Lcom/game/util/DeviceUtil$DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v4, "adid"

    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->getAdid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    iget-object v4, p0, Lcom/game/featured/FeaturedHelper;->_httpThread:Lcom/game/featured/net/SimpleHttpThread;

    const-string v5, "http://app.gamepromote.net/show_t"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 318
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 317
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/game/featured/net/SimpleHttpThread;->postAsyncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/game/featured/net/SimpleHttpObserver;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "FeaturedHelper"

    .line 321
    const-string v5, "post feature open action failed"

    .line 320
    invoke-static {v4, v5, v0}, Lcom/game/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private quitApp()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_quitAppHandler:Lcom/game/featured/FeaturedQuitHandler;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_quitAppHandler:Lcom/game/featured/FeaturedQuitHandler;

    invoke-interface {v0}, Lcom/game/featured/FeaturedQuitHandler;->quit()V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method

.method private declared-synchronized saveFeaturedImgData([B)V
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    const/4 v1, 0x0

    .line 202
    monitor-enter p0

    const/4 v2, 0x0

    .line 203
    :try_start_0
    array-length v3, p1

    .line 202
    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgBitmap:Landroid/graphics/Bitmap;

    .line 204
    iget-object v2, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/game/featured/FeaturedHelper;->_isFeaturedDataReady:Z

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->getImgStoreDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/game/featured/FeaturedHelper;->_featuredImgFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "targetPath":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/game/util/SdCardUtil;->saveFile([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 202
    .end local v0    # "targetPath":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setAdid(Ljava/lang/String;)V
    .locals 3
    .param p1, "adid"    # Ljava/lang/String;

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/game/featured/FeaturedHelper;->_adid:Ljava/lang/String;

    .line 246
    const-string v0, "FeaturedHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/game/featured/FeaturedHelper;->_adid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setFeaturedViewDisplay()V
    .locals 5

    .prologue
    .line 290
    iget-object v3, p0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    .line 291
    sget v4, Lcom/game/featured/R$id;->r_dlg_title:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 290
    check-cast v1, Landroid/widget/ImageView;

    .line 292
    .local v1, "titleView":Landroid/widget/ImageView;
    sget v3, Lcom/game/featured/R$drawable;->featured_frame_game:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    iget-object v3, p0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    .line 295
    sget v4, Lcom/game/featured/R$id;->r_dlg_content:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 294
    check-cast v0, Landroid/widget/ImageView;

    .line 296
    .local v0, "contentView":Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->getFeaturedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 298
    iget-object v3, p0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    .line 299
    sget v4, Lcom/game/featured/R$id;->r_dlg_urlbutton:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 298
    check-cast v2, Landroid/widget/ImageView;

    .line 301
    .local v2, "urlButton":Landroid/widget/ImageView;
    sget v3, Lcom/game/featured/R$drawable;->featured_frame_free_a:I

    .line 302
    sget v4, Lcom/game/featured/R$drawable;->featured_frame_free_b:I

    .line 300
    invoke-direct {p0, v3, v4}, Lcom/game/featured/FeaturedHelper;->createButtonSelector(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    return-void
.end method

.method private declared-synchronized setPostJsonString(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/game/featured/FeaturedHelper;->_postJsonString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setRateViewDisplay()V
    .locals 5

    .prologue
    .line 273
    iget-object v3, p0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    .line 274
    sget v4, Lcom/game/featured/R$id;->r_dlg_title:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 273
    check-cast v1, Landroid/widget/ImageView;

    .line 275
    .local v1, "titleView":Landroid/widget/ImageView;
    sget v3, Lcom/game/featured/R$drawable;->featured_frame_rate:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    iget-object v3, p0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    .line 278
    sget v4, Lcom/game/featured/R$id;->r_dlg_content:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 277
    check-cast v0, Landroid/widget/ImageView;

    .line 279
    .local v0, "contentView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/game/featured/FeaturedHelper;->_activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 280
    iget v4, p0, Lcom/game/featured/FeaturedHelper;->_rateImgResId:I

    .line 279
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v3, p0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    .line 283
    sget v4, Lcom/game/featured/R$id;->r_dlg_urlbutton:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 282
    check-cast v2, Landroid/widget/ImageView;

    .line 285
    .local v2, "urlButton":Landroid/widget/ImageView;
    sget v3, Lcom/game/featured/R$drawable;->featured_frame_rate_a:I

    .line 286
    sget v4, Lcom/game/featured/R$drawable;->featured_frame_rate_b:I

    .line 284
    invoke-direct {p0, v3, v4}, Lcom/game/featured/FeaturedHelper;->createButtonSelector(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    return-void
.end method

.method private showFeaturedDialog(I)V
    .locals 17
    .param p1, "dialogType"    # I

    .prologue
    .line 368
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    if-nez v14, :cond_3

    .line 369
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/game/featured/FeaturedHelper;->_activity:Landroid/app/Activity;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 370
    sget v15, Lcom/game/featured/R$layout;->r_dlg_2:I

    const/16 v16, 0x0

    .line 369
    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/game/featured/FeaturedHelper;->_featuredDialogRootView:Landroid/view/View;

    .line 371
    new-instance v14, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/game/featured/FeaturedHelper;->_activity:Landroid/app/Activity;

    invoke-direct {v14, v15}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    .line 373
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    new-instance v15, Lcom/game/featured/FeaturedHelper$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/game/featured/FeaturedHelper$1;-><init>(Lcom/game/featured/FeaturedHelper;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 380
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/game/featured/FeaturedHelper;->_featuredDialogRootView:Landroid/view/View;

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V

    .line 383
    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    .line 384
    invoke-direct/range {p0 .. p0}, Lcom/game/featured/FeaturedHelper;->notifyPause()V

    .line 386
    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/game/featured/FeaturedHelper;->_dialogType:I

    .line 391
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/game/featured/FeaturedHelper;->_featuredDialogRootView:Landroid/view/View;

    new-instance v15, Lcom/game/featured/FeaturedHelper$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/game/featured/FeaturedHelper$2;-><init>(Lcom/game/featured/FeaturedHelper;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 400
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/game/featured/FeaturedHelper;->_activity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 401
    iget v14, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v13, v14

    .line 402
    .local v13, "w":F
    iget v14, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v14

    .line 403
    .local v6, "h":F
    const/high16 v14, 0x44480000    # 800.0f

    div-float v14, v13, v14

    const/high16 v15, 0x43f00000    # 480.0f

    div-float v15, v6, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 404
    .local v11, "scale":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/game/featured/FeaturedHelper;->_activity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v9, v14, Landroid/content/res/Configuration;->orientation:I

    .line 405
    .local v9, "orientation":I
    const/4 v14, 0x1

    if-ne v9, v14, :cond_1

    .line 406
    const/high16 v14, 0x43f00000    # 480.0f

    div-float v14, v13, v14

    const/high16 v15, 0x44480000    # 800.0f

    div-float v15, v6, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 409
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    .line 410
    sget v15, Lcom/game/featured/R$id;->content_panel:I

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 409
    check-cast v10, Landroid/widget/LinearLayout;

    .line 411
    .local v10, "rootContentView":Landroid/widget/LinearLayout;
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v15, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v15, v15

    mul-float/2addr v15, v11

    float-to-int v15, v15

    iput v15, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 412
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v15, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v15, v15

    mul-float/2addr v15, v11

    float-to-int v15, v15

    iput v15, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 413
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->invalidate()V

    .line 418
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/game/featured/FeaturedHelper;->_featuredDialogRootView:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 419
    const/4 v3, 0x0

    .line 420
    .local v3, "contentImg":Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p0}, Lcom/game/featured/FeaturedHelper;->isFeaturedDataReady()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 421
    invoke-direct/range {p0 .. p0}, Lcom/game/featured/FeaturedHelper;->getFeaturedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 424
    :cond_2
    if-nez v3, :cond_4

    const/4 v8, 0x1

    .line 426
    .local v8, "needRate":Z
    :goto_0
    if-eqz v8, :cond_5

    .line 427
    invoke-direct/range {p0 .. p0}, Lcom/game/featured/FeaturedHelper;->setRateViewDisplay()V

    .line 433
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    .line 434
    sget v15, Lcom/game/featured/R$id;->r_dlg_exitbutton:I

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 433
    check-cast v5, Landroid/widget/ImageView;

    .line 435
    .local v5, "exitButton":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/game/featured/FeaturedHelper;->_dialogType:I

    if-nez v14, :cond_6

    .line 437
    sget v14, Lcom/game/featured/R$drawable;->featured_frame_exit_a:I

    .line 438
    sget v15, Lcom/game/featured/R$drawable;->featured_frame_exit_b:I

    .line 436
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/game/featured/FeaturedHelper;->createButtonSelector(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 445
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    .line 446
    sget v15, Lcom/game/featured/R$id;->r_dlg_closebutton:I

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 445
    check-cast v2, Landroid/widget/ImageView;

    .line 448
    .local v2, "closeButton":Landroid/widget/ImageView;
    sget v14, Lcom/game/featured/R$drawable;->featured_frame_close_a:I

    .line 449
    sget v15, Lcom/game/featured/R$drawable;->featured_frame_close_b:I

    .line 447
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/game/featured/FeaturedHelper;->createButtonSelector(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 451
    new-instance v14, Lcom/game/featured/FeaturedHelper$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/game/featured/FeaturedHelper$3;-><init>(Lcom/game/featured/FeaturedHelper;)V

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    if-nez p1, :cond_7

    .line 460
    new-instance v14, Lcom/game/featured/FeaturedHelper$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/game/featured/FeaturedHelper$4;-><init>(Lcom/game/featured/FeaturedHelper;)V

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    .line 477
    sget v15, Lcom/game/featured/R$id;->r_dlg_urlbutton:I

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 476
    check-cast v12, Landroid/widget/ImageView;

    .line 478
    .local v12, "urlButton":Landroid/widget/ImageView;
    new-instance v14, Lcom/game/featured/FeaturedHelper$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8}, Lcom/game/featured/FeaturedHelper$6;-><init>(Lcom/game/featured/FeaturedHelper;Z)V

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/game/featured/FeaturedHelper;->_featuredDialog:Landroid/app/Dialog;

    .line 488
    sget v15, Lcom/game/featured/R$id;->r_dlg_content:I

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 487
    check-cast v4, Landroid/widget/ImageView;

    .line 489
    .local v4, "contentView":Landroid/widget/ImageView;
    new-instance v14, Lcom/game/featured/FeaturedHelper$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8}, Lcom/game/featured/FeaturedHelper$7;-><init>(Lcom/game/featured/FeaturedHelper;Z)V

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    .end local v2    # "closeButton":Landroid/widget/ImageView;
    .end local v3    # "contentImg":Landroid/graphics/Bitmap;
    .end local v4    # "contentView":Landroid/widget/ImageView;
    .end local v5    # "exitButton":Landroid/widget/ImageView;
    .end local v6    # "h":F
    .end local v7    # "metrics":Landroid/util/DisplayMetrics;
    .end local v8    # "needRate":Z
    .end local v9    # "orientation":I
    .end local v10    # "rootContentView":Landroid/widget/LinearLayout;
    .end local v11    # "scale":F
    .end local v12    # "urlButton":Landroid/widget/ImageView;
    .end local v13    # "w":F
    :cond_3
    return-void

    .line 424
    .restart local v3    # "contentImg":Landroid/graphics/Bitmap;
    .restart local v6    # "h":F
    .restart local v7    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v9    # "orientation":I
    .restart local v10    # "rootContentView":Landroid/widget/LinearLayout;
    .restart local v11    # "scale":F
    .restart local v13    # "w":F
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 429
    .restart local v8    # "needRate":Z
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/game/featured/FeaturedHelper;->setFeaturedViewDisplay()V

    .line 430
    invoke-direct/range {p0 .. p0}, Lcom/game/featured/FeaturedHelper;->postOpenActionToServer()V

    goto/16 :goto_1

    .line 441
    .restart local v5    # "exitButton":Landroid/widget/ImageView;
    :cond_6
    sget v14, Lcom/game/featured/R$drawable;->featured_frame_back_a:I

    .line 442
    sget v15, Lcom/game/featured/R$drawable;->featured_frame_back_b:I

    .line 440
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/game/featured/FeaturedHelper;->createButtonSelector(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 467
    .restart local v2    # "closeButton":Landroid/widget/ImageView;
    :cond_7
    new-instance v14, Lcom/game/featured/FeaturedHelper$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/game/featured/FeaturedHelper$5;-><init>(Lcom/game/featured/FeaturedHelper;)V

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method


# virtual methods
.method public onAdidRetrieved(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "adid"    # Ljava/lang/String;
    .param p2, "isValid"    # Z

    .prologue
    .line 84
    if-nez p2, :cond_0

    .line 85
    const-string p1, ""

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/game/featured/FeaturedHelper;->setAdid(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->genFeaturedPostJsonString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "json":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/game/featured/FeaturedHelper;->setPostJsonString(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/game/featured/FeaturedHelper;->_httpThread:Lcom/game/featured/net/SimpleHttpThread;

    const-string v2, "http://app.gamepromote.net/register_t"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/game/featured/net/SimpleHttpThread;->postAsyncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/game/featured/net/SimpleHttpObserver;Z)V

    .line 91
    return-void
.end method

.method public onAsyncFileDownloadComplete(Z[B)V
    .locals 0
    .param p1, "succeed"    # Z
    .param p2, "bytes"    # [B

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-direct {p0, p2}, Lcom/game/featured/FeaturedHelper;->saveFeaturedImgData([B)V

    goto :goto_0
.end method

.method public onAsyncHttpComplete(Z[B)V
    .locals 0
    .param p1, "succeed"    # Z
    .param p2, "bytes"    # [B

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-direct {p0, p2}, Lcom/game/featured/FeaturedHelper;->handleFeaturedHttpResult([B)V

    goto :goto_0
.end method

.method public postShowToServer(Ljava/lang/String;)V
    .locals 6
    .param p1, "adtype"    # Ljava/lang/String;

    .prologue
    .line 328
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 329
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "package"

    iget-object v3, p0, Lcom/game/featured/FeaturedHelper;->_deviceInfo:Lcom/game/util/DeviceUtil$DeviceInfo;

    invoke-virtual {v3}, Lcom/game/util/DeviceUtil$DeviceInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v2, "adtype"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string v2, "android_id"

    iget-object v3, p0, Lcom/game/featured/FeaturedHelper;->_deviceInfo:Lcom/game/util/DeviceUtil$DeviceInfo;

    invoke-virtual {v3}, Lcom/game/util/DeviceUtil$DeviceInfo;->getAndroidId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v2, "imei"

    iget-object v3, p0, Lcom/game/featured/FeaturedHelper;->_deviceInfo:Lcom/game/util/DeviceUtil$DeviceInfo;

    invoke-virtual {v3}, Lcom/game/util/DeviceUtil$DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v2, "adid"

    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->getAdid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    iget-object v2, p0, Lcom/game/featured/FeaturedHelper;->_httpThread:Lcom/game/featured/net/SimpleHttpThread;

    const-string v3, "http://app.gamepromote.net/adseq_t"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 336
    const/4 v5, 0x0

    .line 335
    invoke-virtual {v2, v3, v4, p0, v5}, Lcom/game/featured/net/SimpleHttpThread;->postAsyncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/game/featured/net/SimpleHttpObserver;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "FeaturedHelper"

    .line 339
    const-string v3, "post feature open action failed"

    .line 338
    invoke-static {v2, v3, v0}, Lcom/game/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public retrieveFeaturedInfo(Landroid/app/Activity;I)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rateImgResId"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/game/featured/FeaturedHelper;->init(Landroid/app/Activity;I)V

    .line 96
    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->isFeaturedDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->getAdid()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "adid":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    :cond_1
    invoke-static {}, Lcom/game/featured/AdidHelper;->getInstance()Lcom/game/featured/AdidHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/game/featured/FeaturedHelper;->_activity:Landroid/app/Activity;

    invoke-virtual {v2, p0, v3}, Lcom/game/featured/AdidHelper;->retrieveAdid(Lcom/game/featured/AdidRetrievedObserver;Landroid/app/Activity;)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-direct {p0}, Lcom/game/featured/FeaturedHelper;->genFeaturedPostJsonString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "json":Ljava/lang/String;
    iget-object v2, p0, Lcom/game/featured/FeaturedHelper;->_httpThread:Lcom/game/featured/net/SimpleHttpThread;

    const-string v3, "http://app.gamepromote.net/register_t"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, p0, v4}, Lcom/game/featured/net/SimpleHttpThread;->postAsyncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/game/featured/net/SimpleHttpObserver;Z)V

    goto :goto_0
.end method

.method public setCustomQuitHandler(Lcom/game/featured/FeaturedQuitHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/game/featured/FeaturedQuitHandler;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/game/featured/FeaturedHelper;->_quitAppHandler:Lcom/game/featured/FeaturedQuitHandler;

    .line 570
    return-void
.end method

.method public setPauseDialogObserver(Lcom/game/featured/FeaturedNotificationObserver;)V
    .locals 0
    .param p1, "pauseDialogObserver"    # Lcom/game/featured/FeaturedNotificationObserver;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/game/featured/FeaturedHelper;->_pauseDialogObserver:Lcom/game/featured/FeaturedNotificationObserver;

    .line 564
    return-void
.end method

.method public showFeaturedDialogAtUIThread(I)V
    .locals 2
    .param p1, "dialogType"    # I

    .prologue
    .line 508
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/game/featured/FeaturedHelper$8;

    invoke-direct {v1, p0, p1}, Lcom/game/featured/FeaturedHelper$8;-><init>(Lcom/game/featured/FeaturedHelper;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
