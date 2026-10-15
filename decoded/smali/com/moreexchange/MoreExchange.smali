.class public Lcom/moreexchange/MoreExchange;
.super Ljava/lang/Object;
.source "MoreExchange.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$moreexchange$IntervalMode:[I = null

.field private static final HOUR:J = 0x36ee80L

.field private static final KEY:Ljava/lang/String; = "MORE_EXCHANGE_KEY"

.field private static Key:Ljava/lang/String; = null

.field public static final PREFS_TIME_KEY:Ljava/lang/String; = "lastNewTimeStamp"

.field private static final SECRET:Ljava/lang/String; = "MORE_EXCHANGE_SECRET"

.field private static Secret:Ljava/lang/String;

.field private static hasCalledRegister:Z

.field private static hasPaid:Z

.field private static m_CallBack:Lcom/moreexchange/CallbackInterface;

.field private static moreExchangeContext:Landroid/content/Context;


# direct methods
.method static synthetic $SWITCH_TABLE$com$moreexchange$IntervalMode()[I
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/moreexchange/MoreExchange;->$SWITCH_TABLE$com$moreexchange$IntervalMode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/moreexchange/IntervalMode;->values()[Lcom/moreexchange/IntervalMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/moreexchange/IntervalMode;->Normal:Lcom/moreexchange/IntervalMode;

    invoke-virtual {v1}, Lcom/moreexchange/IntervalMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/moreexchange/IntervalMode;->Purchased:Lcom/moreexchange/IntervalMode;

    invoke-virtual {v1}, Lcom/moreexchange/IntervalMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/moreexchange/MoreExchange;->$SWITCH_TABLE$com$moreexchange$IntervalMode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lcom/moreexchange/MoreExchange;->hasCalledRegister:Z

    .line 34
    sput-boolean v0, Lcom/moreexchange/MoreExchange;->hasPaid:Z

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallBack()Lcom/moreexchange/CallbackInterface;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/moreexchange/MoreExchange;->m_CallBack:Lcom/moreexchange/CallbackInterface;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/moreexchange/MoreExchange;->moreExchangeContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/moreexchange/MoreExchange;->Key:Ljava/lang/String;

    return-object v0
.end method

.method public static getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/moreexchange/MoreExchange;->Secret:Ljava/lang/String;

    return-object v0
.end method

.method public static hasNew(Landroid/content/Context;)Z
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 118
    const-string v6, "moreexchange"

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 119
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "lastNewTimeStamp"

    invoke-interface {v4, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 120
    .local v0, "lastTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 122
    .local v2, "now":J
    cmp-long v6, v0, v8

    if-nez v6, :cond_1

    .line 123
    invoke-static {v4, v2, v3}, Lcom/moreexchange/MoreExchange;->setTimeStamp(Landroid/content/SharedPreferences;J)V

    .line 129
    :cond_0
    :goto_0
    return v5

    .line 125
    :cond_1
    sub-long v6, v2, v0

    const-wide/32 v8, 0x5265c00

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 126
    invoke-static {v4, v2, v3}, Lcom/moreexchange/MoreExchange;->setTimeStamp(Landroid/content/SharedPreferences;J)V

    .line 127
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static hasPaid()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/moreexchange/MoreExchange;->hasPaid:Z

    return v0
.end method

.method public static register(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    :try_start_0
    invoke-static {p0}, Lcom/moreexchange/MoreExchange;->wrapRegister(Landroid/content/Context;)V

    .line 64
    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->initNotificationAd()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static register2(Landroid/content/Context;Lcom/moreexchange/CallbackInterface;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callBack"    # Lcom/moreexchange/CallbackInterface;

    .prologue
    .line 72
    :try_start_0
    sput-object p1, Lcom/moreexchange/MoreExchange;->m_CallBack:Lcom/moreexchange/CallbackInterface;

    .line 73
    invoke-static {p0}, Lcom/moreexchange/MoreExchange;->wrapRegister(Landroid/content/Context;)V

    .line 74
    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->initNotificationAd()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static setInterval(I)V
    .locals 0
    .param p0, "showInterval"    # I

    .prologue
    .line 101
    invoke-static {p0}, Lcom/moreexchange/dialog/InterstitialAd;->setShowInterval(I)V

    .line 102
    return-void
.end method

.method public static setIntervalMode(Lcom/moreexchange/IntervalMode;)V
    .locals 2
    .param p0, "mode"    # Lcom/moreexchange/IntervalMode;

    .prologue
    .line 105
    invoke-static {}, Lcom/moreexchange/MoreExchange;->$SWITCH_TABLE$com$moreexchange$IntervalMode()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/moreexchange/IntervalMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 107
    :pswitch_0
    const/16 v0, 0x258

    invoke-static {v0}, Lcom/moreexchange/dialog/InterstitialAd;->setShowInterval(I)V

    goto :goto_0

    .line 110
    :pswitch_1
    const/16 v0, 0xe10

    invoke-static {v0}, Lcom/moreexchange/dialog/InterstitialAd;->setShowInterval(I)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setMoreExchangeContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "moreExchangeContext"    # Landroid/content/Context;

    .prologue
    .line 46
    sput-object p0, Lcom/moreexchange/MoreExchange;->moreExchangeContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private static setTimeStamp(Landroid/content/SharedPreferences;J)V
    .locals 3
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "time"    # J

    .prologue
    .line 134
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "lastNewTimeStamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    return-void
.end method

.method public static showCatalog(Landroid/app/Activity;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "paid"    # Z

    .prologue
    .line 81
    sput-boolean p1, Lcom/moreexchange/MoreExchange;->hasPaid:Z

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/moreexchange/activity/AppCatalog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method public static showInterstitial(Landroid/app/Activity;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "paid"    # Z

    .prologue
    .line 86
    sput-boolean p1, Lcom/moreexchange/MoreExchange;->hasPaid:Z

    .line 87
    new-instance v0, Lcom/moreexchange/MoreExchange$1;

    invoke-direct {v0, p0}, Lcom/moreexchange/MoreExchange$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method private static wrapRegister(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 141
    sget-boolean v8, Lcom/moreexchange/MoreExchange;->hasCalledRegister:Z

    if-nez v8, :cond_0

    .line 142
    const/4 v8, 0x1

    sput-boolean v8, Lcom/moreexchange/MoreExchange;->hasCalledRegister:Z

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sput-object v8, Lcom/moreexchange/MoreExchange;->moreExchangeContext:Landroid/content/Context;

    .line 144
    invoke-static {p0}, Lcom/moreexchange/util/DeviceInformation;->getDeviceInformation(Landroid/content/Context;)V

    .line 147
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    .line 147
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 149
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 151
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v8, "MORE_EXCHANGE_KEY"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/moreexchange/MoreExchange;->Key:Ljava/lang/String;

    .line 152
    const-string v8, "MORE_EXCHANGE_SECRET"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/moreexchange/MoreExchange;->Secret:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :goto_0
    invoke-static {p0}, Lcom/moreexchange/util/Util;->isNetworkReady(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 159
    :try_start_1
    invoke-static {p0}, Lcom/moreexchange/command/Command;->Ping(Landroid/content/Context;)V

    .line 160
    invoke-static {}, Lcom/moreexchange/dialog/InterstitialAd;->getPayAdvertisers()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Lcom/moreexchange/dialog/InterstitialAd;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/moreexchange/command/Command;->getInterstitialAd(Ljava/util/List;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 168
    :goto_1
    const-string v8, "MoreExchangeAdvertiserState"

    .line 167
    invoke-virtual {p0, v8, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 170
    .local v7, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v8, "install_post_successful"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_0

    .line 173
    const-string v8, "fromPackage"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, "fromPackage":Ljava/lang/String;
    const-string v8, "adv_type"

    const-string v9, "direct"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "advType":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Lcom/moreexchange/command/Command;->InstalledFromAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    .line 186
    .end local v0    # "advType":Ljava/lang/String;
    .end local v6    # "fromPackage":Ljava/lang/String;
    .end local v7    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_2
    return-void

    .line 153
    :catch_0
    move-exception v5

    .line 154
    .local v5, "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v5    # "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 162
    .local v4, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 163
    .end local v4    # "e1":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v4

    .line 164
    .local v4, "e1":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 178
    .end local v4    # "e1":Lorg/json/JSONException;
    .restart local v0    # "advType":Ljava/lang/String;
    .restart local v6    # "fromPackage":Ljava/lang/String;
    .restart local v7    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_3
    move-exception v3

    .line 179
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 180
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v3

    .line 181
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
