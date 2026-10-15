.class public Lcom/moreexchange/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static installedPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/moreexchange/util/Util;->installedPackageNames:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clickAdvEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/moreexchange/command/Command$AdType;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appUrl"    # Ljava/lang/String;
    .param p2, "appPackageName"    # Ljava/lang/String;
    .param p5, "advType"    # Lcom/moreexchange/command/Command$AdType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    .prologue
    .line 76
    .local p3, "fromPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "toPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 77
    .local v0, "click":Z
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 78
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 81
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :try_start_1
    invoke-static {p3, p4, p5}, Lcom/moreexchange/command/Command;->clickedAd(Ljava/util/List;Ljava/util/List;Lcom/moreexchange/command/Command$AdType;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6

    .line 98
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 99
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 102
    :cond_0
    :goto_1
    return-void

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 84
    :try_start_2
    sget v4, Lcom/moreexchange/R$string;->no_android_market:I

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :try_start_3
    invoke-static {p3, p4, p5}, Lcom/moreexchange/command/Command;->clickedAd(Ljava/util/List;Ljava/util/List;Lcom/moreexchange/command/Command$AdType;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 99
    invoke-interface {p4}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 92
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 93
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 95
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 85
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    .line 86
    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :try_start_4
    invoke-static {p3, p4, p5}, Lcom/moreexchange/command/Command;->clickedAd(Ljava/util/List;Ljava/util/List;Lcom/moreexchange/command/Command$AdType;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 98
    :goto_3
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 99
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 101
    :cond_1
    throw v4

    .line 92
    :catch_3
    move-exception v1

    .line 93
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 94
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v1

    .line 95
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 92
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_5
    move-exception v1

    .line 93
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_6
    move-exception v1

    .line 95
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstalledPackageNames(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v3, Lcom/moreexchange/util/Util;->installedPackageNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 32
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 34
    .local v1, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 45
    :cond_1
    sget-object v3, Lcom/moreexchange/util/Util;->installedPackageNames:Ljava/util/List;

    return-object v3

    .line 35
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 36
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 37
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 38
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_0

    .line 39
    sget-object v4, Lcom/moreexchange/util/Util;->installedPackageNames:Ljava/util/List;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getToBeShownPayAdvertiser(Ljava/util/List;)Lcom/moreexchange/model/PayAdvertiser;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/moreexchange/model/PayAdvertiser;",
            ">;)",
            "Lcom/moreexchange/model/PayAdvertiser;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "payAdvertisers":Ljava/util/List;, "Ljava/util/List<Lcom/moreexchange/model/PayAdvertiser;>;"
    invoke-static {}, Lcom/moreexchange/MoreExchange;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/moreexchange/util/Util;->getInstalledPackageNames(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, "installedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 56
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/moreexchange/model/PayAdvertiser;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 57
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/moreexchange/model/PayAdvertiser;

    .line 59
    .local v2, "payAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    invoke-virtual {v2}, Lcom/moreexchange/model/PayAdvertiser;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 105
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNetworkReady(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 69
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 71
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isTargetAppInstalled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "targetAppPackageName"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {}, Lcom/moreexchange/MoreExchange;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/moreexchange/util/Util;->getInstalledPackageNames(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
