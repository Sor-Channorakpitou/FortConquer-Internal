.class Lcom/moreexchange/notification/NotificationAd$1;
.super Landroid/os/Handler;
.source "NotificationAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moreexchange/notification/NotificationAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 57
    :sswitch_0
    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->access$0()Lorg/json/JSONObject;

    move-result-object v2

    .line 59
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/moreexchange/notification/NotificationAd;->access$1(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->access$2()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/moreexchange/util/Util;->getInstalledPackageNames(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, "installedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->access$3()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 74
    :goto_1
    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->access$6()Lcom/moreexchange/model/PayAdvertiser;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 75
    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->access$6()Lcom/moreexchange/model/PayAdvertiser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/moreexchange/model/PayAdvertiser;->getAppIcon()Lcom/moreexchange/model/Icon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/moreexchange/model/Icon;->isIconDownload()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 76
    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->access$6()Lcom/moreexchange/model/PayAdvertiser;

    move-result-object v4

    invoke-static {v4}, Lcom/moreexchange/notification/NotificationAd;->popupNotification(Lcom/moreexchange/model/PayAdvertiser;)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moreexchange/model/PayAdvertiser;

    .line 66
    .local v0, "checkPayAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    invoke-virtual {v0}, Lcom/moreexchange/model/PayAdvertiser;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 67
    invoke-virtual {v0}, Lcom/moreexchange/model/PayAdvertiser;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/moreexchange/notification/NotificationAd;->access$4(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    invoke-static {v0}, Lcom/moreexchange/notification/NotificationAd;->access$5(Lcom/moreexchange/model/PayAdvertiser;)V

    goto :goto_1

    .line 78
    .end local v0    # "checkPayAdvertiser":Lcom/moreexchange/model/PayAdvertiser;
    :cond_3
    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->access$6()Lcom/moreexchange/model/PayAdvertiser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/moreexchange/model/PayAdvertiser;->getAppIcon()Lcom/moreexchange/model/Icon;

    move-result-object v4

    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->access$7()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/moreexchange/model/Icon;->downloadIcon(Landroid/os/Handler;)V

    goto :goto_0

    .line 83
    .end local v1    # "installedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :sswitch_1
    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->access$0()Lorg/json/JSONObject;

    move-result-object v2

    .line 85
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/moreexchange/notification/NotificationAd;->access$1(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->access$6()Lcom/moreexchange/model/PayAdvertiser;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 93
    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->access$6()Lcom/moreexchange/model/PayAdvertiser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/moreexchange/model/PayAdvertiser;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "pkgName":Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/moreexchange/notification/NotificationAd;->access$4(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/moreexchange/util/Util;->isTargetAppInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    invoke-static {}, Lcom/moreexchange/notification/NotificationAd;->access$6()Lcom/moreexchange/model/PayAdvertiser;

    move-result-object v4

    invoke-static {v4}, Lcom/moreexchange/notification/NotificationAd;->popupNotification(Lcom/moreexchange/model/PayAdvertiser;)V

    goto/16 :goto_0

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x1001 -> :sswitch_1
    .end sparse-switch
.end method
