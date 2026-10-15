.class public Lcom/moreexchange/receiver/InstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallReferrerReceiver.java"


# static fields
.field private static final EXTRAS_KEY_REFERRER:Ljava/lang/String; = "referrer"

.field public static final PREFERENCES_FILE_NAME:Ljava/lang/String; = "MoreExchangeAdvertiserState"

.field public static final STATE_ADV_TYPE:Ljava/lang/String; = "adv_type"

.field public static final STATE_FROM_PACKAGE:Ljava/lang/String; = "fromPackage"

.field public static final STATE_INSTALL_POST_SUCCESSFUL:Ljava/lang/String; = "install_post_successful"

.field public static final STATE_TO_PACKAGE:Ljava/lang/String; = "toPackage"

.field private static final UTM_MEDIUM_REF_PATTERN:Ljava/util/regex/Pattern;

.field private static final UTM_SOURCE_REF_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, ".*utm_source=(.+?)&.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/moreexchange/receiver/InstallReferrerReceiver;->UTM_SOURCE_REF_PATTERN:Ljava/util/regex/Pattern;

    .line 30
    const-string v0, ".*utm_medium=(.+?)&.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/moreexchange/receiver/InstallReferrerReceiver;->UTM_MEDIUM_REF_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 34
    invoke-static {}, Lcom/moreexchange/MoreExchange;->getContext()Landroid/content/Context;

    move-result-object v9

    if-nez v9, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/moreexchange/MoreExchange;->setMoreExchangeContext(Landroid/content/Context;)V

    .line 38
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 39
    .local v1, "extras":Landroid/os/Bundle;
    const-string v8, "direct"

    .line 40
    .local v8, "type":Ljava/lang/String;
    const-string v2, ""

    .line 42
    .local v2, "from":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 43
    const-string v9, "referrer"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, "referrer":Ljava/lang/String;
    invoke-static {v6}, Lcom/moreexchange/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 46
    sget-object v9, Lcom/moreexchange/receiver/InstallReferrerReceiver;->UTM_SOURCE_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 47
    .local v4, "matcherUtmSource":Ljava/util/regex/Matcher;
    sget-object v9, Lcom/moreexchange/receiver/InstallReferrerReceiver;->UTM_MEDIUM_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 49
    .local v3, "matcherUtmMedium":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 50
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 53
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 54
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    :cond_2
    invoke-static {v8}, Lcom/moreexchange/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 58
    const-string v8, "other"

    .line 59
    move-object v2, v6

    .line 64
    .end local v3    # "matcherUtmMedium":Ljava/util/regex/Matcher;
    .end local v4    # "matcherUtmSource":Ljava/util/regex/Matcher;
    .end local v6    # "referrer":Ljava/lang/String;
    :cond_3
    const-string v9, "MoreExchangeAdvertiserState"

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 65
    .local v7, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 67
    .local v5, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lcom/moreexchange/util/DeviceInformation;->getDeviceInformation(Landroid/content/Context;)V

    .line 68
    const-string v9, "fromPackage"

    invoke-interface {v5, v9, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    const-string v9, "adv_type"

    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    const-string v9, "install_post_successful"

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9, v8}, Lcom/moreexchange/command/Command;->InstalledFromAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p1}, Lcom/moreexchange/command/Command;->SendAppPackageNames(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
