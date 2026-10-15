.class public Lcom/moreexchange/command/Command;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moreexchange/command/Command$AdType;,
        Lcom/moreexchange/command/Command$CommandRequestClient;,
        Lcom/moreexchange/command/Command$PostType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$moreexchange$command$Command$AdType:[I = null

.field private static synthetic $SWITCH_TABLE$com$moreexchange$command$Command$PostType:[I = null

.field private static final ADS_URL:Ljava/lang/String; = "ads/"

.field public static final COMMAND_ERROR_MESSAGE:I = 0x2

.field public static final COMMAND_NO_ADS_MESSAGE:I = 0x3

.field public static final COMMAND_SUCCESS_MESSAGE:I = 0x1

.field private static final DEVICE_URL:Ljava/lang/String; = "device/"

.field private static final NOTIFY_URL:Ljava/lang/String; = "notify/"

.field private static final REGISTER_URL:Ljava/lang/String; = "register/"

.field private static getInterstitialAdRunning:Z

.field private static installedFromAdRunning:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$moreexchange$command$Command$AdType()[I
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lcom/moreexchange/command/Command;->$SWITCH_TABLE$com$moreexchange$command$Command$AdType:[I

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
    sput-object v0, Lcom/moreexchange/command/Command;->$SWITCH_TABLE$com$moreexchange$command$Command$AdType:[I

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

.method static synthetic $SWITCH_TABLE$com$moreexchange$command$Command$PostType()[I
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lcom/moreexchange/command/Command;->$SWITCH_TABLE$com$moreexchange$command$Command$PostType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/moreexchange/command/Command$PostType;->values()[Lcom/moreexchange/command/Command$PostType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/moreexchange/command/Command$PostType;->CLICK:Lcom/moreexchange/command/Command$PostType;

    invoke-virtual {v1}, Lcom/moreexchange/command/Command$PostType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/moreexchange/command/Command$PostType;->INSTALL:Lcom/moreexchange/command/Command$PostType;

    invoke-virtual {v1}, Lcom/moreexchange/command/Command$PostType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/moreexchange/command/Command$PostType;->SHOW:Lcom/moreexchange/command/Command$PostType;

    invoke-virtual {v1}, Lcom/moreexchange/command/Command$PostType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/moreexchange/command/Command;->$SWITCH_TABLE$com$moreexchange$command$Command$PostType:[I

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

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-boolean v0, Lcom/moreexchange/command/Command;->getInterstitialAdRunning:Z

    .line 97
    sput-boolean v0, Lcom/moreexchange/command/Command;->installedFromAdRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InstalledFromAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "fromPackage"    # Ljava/lang/String;
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "advType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 101
    sget-boolean v0, Lcom/moreexchange/command/Command;->installedFromAdRunning:Z

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x1

    sput-boolean v0, Lcom/moreexchange/command/Command;->installedFromAdRunning:Z

    .line 103
    invoke-static {p0, p1, p2}, Lcom/moreexchange/command/Command;->sendInstallPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method public static Ping(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 71
    .line 72
    const-string v5, "MoreExchangeAdvertiserState"

    const/4 v6, 0x0

    .line 71
    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 73
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "fromPackage"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "fromPackage":Ljava/lang/String;
    const-string v5, "adv_type"

    const-string v6, "direct"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "advType":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/moreexchange/command/Command;->formDeviceInformation(Lorg/json/JSONObject;)V

    .line 78
    const-string v5, "from"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v5, "to"

    invoke-static {}, Lcom/moreexchange/MoreExchange;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v5, "type"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 84
    .local v4, "stringEntity":Lorg/apache/http/entity/StringEntity;
    const-string v5, "register/"

    new-instance v6, Lcom/moreexchange/command/Command$1;

    invoke-direct {v6}, Lcom/moreexchange/command/Command$1;-><init>()V

    invoke-static {v5, v4, v6}, Lcom/moreexchange/command/Command$CommandRequestClient;->post(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 95
    return-void
.end method

.method public static SendAppPackageNames(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p0}, Lcom/moreexchange/util/Util;->getInstalledPackageNames(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 109
    .local v1, "installedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 111
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 115
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "app_list"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    invoke-static {v3}, Lcom/moreexchange/command/Command;->formDeviceInformation(Lorg/json/JSONObject;)V

    .line 120
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 122
    .local v4, "stringEntity":Lorg/apache/http/entity/StringEntity;
    const-string v5, "device/"

    new-instance v6, Lcom/moreexchange/command/Command$2;

    invoke-direct {v6}, Lcom/moreexchange/command/Command$2;-><init>()V

    invoke-static {v5, v4, v6}, Lcom/moreexchange/command/Command$CommandRequestClient;->post(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 133
    return-void

    .line 111
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "stringEntity":Lorg/apache/http/entity/StringEntity;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, "installedPackageName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method static synthetic access$1(Z)V
    .locals 0

    .prologue
    .line 59
    sput-boolean p0, Lcom/moreexchange/command/Command;->getInterstitialAdRunning:Z

    return-void
.end method

.method static synthetic access$2(Z)V
    .locals 0

    .prologue
    .line 97
    sput-boolean p0, Lcom/moreexchange/command/Command;->installedFromAdRunning:Z

    return-void
.end method

.method public static clickedAd(Ljava/util/List;Ljava/util/List;Lcom/moreexchange/command/Command$AdType;)V
    .locals 1
    .param p2, "advType"    # Lcom/moreexchange/command/Command$AdType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/moreexchange/command/Command$AdType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "fromPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "toPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/moreexchange/command/Command$PostType;->CLICK:Lcom/moreexchange/command/Command$PostType;

    invoke-static {p0, p1, p2, v0}, Lcom/moreexchange/command/Command;->sendPost(Ljava/util/List;Ljava/util/List;Lcom/moreexchange/command/Command$AdType;Lcom/moreexchange/command/Command$PostType;)V

    .line 143
    return-void
.end method

.method private static formDeviceInformation(Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 146
    const-string v0, "udid"

    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v0, "aid"

    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v0, "device_type"

    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v0, "os_type"

    const-string v1, "android"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v0, "os_version"

    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v0, "country"

    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v0, "lang"

    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v0, "sdk_version"

    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v0, "android_sdk"

    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getAndroidSdkInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 155
    return-void
.end method

.method private static getAd(Lcom/moreexchange/command/Command$AdType;ILjava/util/List;Landroid/os/Handler;)V
    .locals 6
    .param p0, "advType"    # Lcom/moreexchange/command/Command$AdType;
    .param p1, "advCount"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moreexchange/command/Command$AdType;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/moreexchange/model/PayAdvertiser;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "payAdvertisers":Ljava/util/List;, "Ljava/util/List<Lcom/moreexchange/model/PayAdvertiser;>;"
    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 160
    .local v2, "params":Lcom/loopj/android/http/RequestParams;
    invoke-static {}, Lcom/moreexchange/MoreExchange;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "udid"

    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v3, "aid"

    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v3, "device_type"

    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v3, "os_type"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v3, "os_version"

    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getOsVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v3, "country"

    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v3, "lang"

    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v3, "sdk_version"

    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v3, "android_sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getAndroidSdkInt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v3, "pkg"

    invoke-virtual {v2, v3, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v4, "pay"

    invoke-static {}, Lcom/moreexchange/MoreExchange;->hasPaid()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-virtual {v2, v4, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, "isNotification":Z
    invoke-static {}, Lcom/moreexchange/command/Command;->$SWITCH_TABLE$com$moreexchange$command$Command$AdType()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/moreexchange/command/Command$AdType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 190
    :goto_1
    if-eqz v0, :cond_1

    const-string v3, "notify/"

    :goto_2
    new-instance v4, Lcom/moreexchange/command/Command$3;

    invoke-direct {v4, p0, p2, p3}, Lcom/moreexchange/command/Command$3;-><init>(Lcom/moreexchange/command/Command$AdType;Ljava/util/List;Landroid/os/Handler;)V

    invoke-static {v3, v2, v4}, Lcom/moreexchange/command/Command$CommandRequestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 270
    return-void

    .line 173
    .end local v0    # "isNotification":Z
    :cond_0
    const-string v3, "0"

    goto :goto_0

    .line 179
    .restart local v0    # "isNotification":Z
    :pswitch_0
    const-string v3, "more"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :pswitch_1
    const-string v3, "interstitial"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 185
    :pswitch_2
    const-string v3, "notify"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x1

    goto :goto_1

    .line 190
    :cond_1
    const-string v3, "ads/"

    goto :goto_2

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInterstitialAd(Ljava/util/List;Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/moreexchange/model/PayAdvertiser;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "payAdvertisers":Ljava/util/List;, "Ljava/util/List<Lcom/moreexchange/model/PayAdvertiser;>;"
    const/4 v1, 0x1

    .line 62
    sget-boolean v0, Lcom/moreexchange/command/Command;->getInterstitialAdRunning:Z

    if-nez v0, :cond_0

    .line 63
    sput-boolean v1, Lcom/moreexchange/command/Command;->getInterstitialAdRunning:Z

    .line 64
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 66
    sget-object v0, Lcom/moreexchange/command/Command$AdType;->INTERSTITIAL:Lcom/moreexchange/command/Command$AdType;

    invoke-static {v0, v1, p0, p1}, Lcom/moreexchange/command/Command;->getAd(Lcom/moreexchange/command/Command$AdType;ILjava/util/List;Landroid/os/Handler;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static getMoreAd(ILjava/util/List;Landroid/os/Handler;)V
    .locals 1
    .param p0, "count"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/moreexchange/model/PayAdvertiser;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "payAdvertisers":Ljava/util/List;, "Ljava/util/List<Lcom/moreexchange/model/PayAdvertiser;>;"
    sget-object v0, Lcom/moreexchange/command/Command$AdType;->MORE:Lcom/moreexchange/command/Command$AdType;

    invoke-static {v0, p0, p1, p2}, Lcom/moreexchange/command/Command;->getAd(Lcom/moreexchange/command/Command$AdType;ILjava/util/List;Landroid/os/Handler;)V

    .line 51
    return-void
.end method

.method public static getNotificationAd(ILjava/util/List;Landroid/os/Handler;)V
    .locals 1
    .param p0, "count"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/moreexchange/model/PayAdvertiser;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "payAdvertisers":Ljava/util/List;, "Ljava/util/List<Lcom/moreexchange/model/PayAdvertiser;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 56
    sget-object v0, Lcom/moreexchange/command/Command$AdType;->NOTIFICATION:Lcom/moreexchange/command/Command$AdType;

    invoke-static {v0, p0, p1, p2}, Lcom/moreexchange/command/Command;->getAd(Lcom/moreexchange/command/Command$AdType;ILjava/util/List;Landroid/os/Handler;)V

    .line 57
    return-void
.end method

.method private static sendInstallPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "fromPackage"    # Ljava/lang/String;
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "advType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 275
    .local v0, "jsonArray":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 277
    .local v2, "param":Lorg/json/JSONObject;
    const-string v4, "from"

    invoke-virtual {v2, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string v4, "to"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v4, "type"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v4, "install"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 281
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 283
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 285
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/moreexchange/command/Command;->formDeviceInformation(Lorg/json/JSONObject;)V

    .line 286
    const-string v4, "stats"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 290
    .local v3, "stringEntity":Lorg/apache/http/entity/StringEntity;
    const-string v4, "ads/"

    new-instance v5, Lcom/moreexchange/command/Command$4;

    invoke-direct {v5}, Lcom/moreexchange/command/Command$4;-><init>()V

    invoke-static {v4, v3, v5}, Lcom/moreexchange/command/Command$CommandRequestClient;->post(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 310
    return-void
.end method

.method private static sendPost(Ljava/util/List;Ljava/util/List;Lcom/moreexchange/command/Command$AdType;Lcom/moreexchange/command/Command$PostType;)V
    .locals 8
    .param p2, "advType"    # Lcom/moreexchange/command/Command$AdType;
    .param p3, "postType"    # Lcom/moreexchange/command/Command$PostType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/moreexchange/command/Command$AdType;",
            "Lcom/moreexchange/command/Command$PostType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .local p0, "fromPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "toPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 314
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 316
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 346
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 348
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/moreexchange/command/Command;->formDeviceInformation(Lorg/json/JSONObject;)V

    .line 349
    const-string v5, "stats"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 353
    .local v4, "stringEntity":Lorg/apache/http/entity/StringEntity;
    const-string v5, "ads/"

    new-instance v6, Lcom/moreexchange/command/Command$5;

    invoke-direct {v6}, Lcom/moreexchange/command/Command$5;-><init>()V

    invoke-static {v5, v4, v6}, Lcom/moreexchange/command/Command$CommandRequestClient;->post(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 364
    return-void

    .line 317
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "stringEntity":Lorg/apache/http/entity/StringEntity;
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 319
    .local v3, "param":Lorg/json/JSONObject;
    const-string v5, "from"

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string v5, "to"

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    invoke-static {}, Lcom/moreexchange/command/Command;->$SWITCH_TABLE$com$moreexchange$command$Command$AdType()[I

    move-result-object v5

    invoke-virtual {p2}, Lcom/moreexchange/command/Command$AdType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 332
    :goto_1
    invoke-static {}, Lcom/moreexchange/command/Command;->$SWITCH_TABLE$com$moreexchange$command$Command$PostType()[I

    move-result-object v5

    .line 334
    invoke-virtual {p3}, Lcom/moreexchange/command/Command$PostType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 343
    :goto_2
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :pswitch_0
    const-string v5, "type"

    const-string v6, "more"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 327
    :pswitch_1
    const-string v5, "type"

    const-string v6, "interstitial"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 330
    :pswitch_2
    const-string v5, "type"

    const-string v6, "notify"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 336
    :pswitch_3
    const-string v5, "show"

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 339
    :pswitch_4
    const-string v5, "click"

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 334
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static shownAd(Ljava/util/List;Ljava/util/List;Lcom/moreexchange/command/Command$AdType;)V
    .locals 1
    .param p2, "advType"    # Lcom/moreexchange/command/Command$AdType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/moreexchange/command/Command$AdType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "fromPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "toPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/moreexchange/command/Command$PostType;->SHOW:Lcom/moreexchange/command/Command$PostType;

    invoke-static {p0, p1, p2, v0}, Lcom/moreexchange/command/Command;->sendPost(Ljava/util/List;Ljava/util/List;Lcom/moreexchange/command/Command$AdType;Lcom/moreexchange/command/Command$PostType;)V

    .line 138
    return-void
.end method
