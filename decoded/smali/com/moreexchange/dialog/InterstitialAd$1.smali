.class Lcom/moreexchange/dialog/InterstitialAd$1;
.super Landroid/os/Handler;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moreexchange/dialog/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 97
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 99
    :sswitch_0
    invoke-static {}, Lcom/moreexchange/dialog/InterstitialAd;->access$0()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/moreexchange/util/Util;->getToBeShownPayAdvertiser(Ljava/util/List;)Lcom/moreexchange/model/PayAdvertiser;

    move-result-object v2

    invoke-static {v2}, Lcom/moreexchange/dialog/InterstitialAd;->access$1(Lcom/moreexchange/model/PayAdvertiser;)V

    .line 101
    invoke-static {}, Lcom/moreexchange/dialog/InterstitialAd;->access$2()Lcom/moreexchange/model/PayAdvertiser;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 102
    invoke-static {}, Lcom/moreexchange/dialog/InterstitialAd;->access$2()Lcom/moreexchange/model/PayAdvertiser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/moreexchange/model/PayAdvertiser;->getAppHImage()Lcom/moreexchange/model/Icon;

    move-result-object v0

    .line 103
    .local v0, "hImgIcon":Lcom/moreexchange/model/Icon;
    invoke-static {}, Lcom/moreexchange/dialog/InterstitialAd;->access$2()Lcom/moreexchange/model/PayAdvertiser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/moreexchange/model/PayAdvertiser;->getAppVImage()Lcom/moreexchange/model/Icon;

    move-result-object v1

    .line 105
    .local v1, "vImgIcon":Lcom/moreexchange/model/Icon;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/moreexchange/model/Icon;->isIconDownload()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    invoke-virtual {v0, v3}, Lcom/moreexchange/model/Icon;->downloadIcon(Landroid/os/Handler;)V

    .line 109
    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/moreexchange/model/Icon;->isIconDownload()Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    invoke-virtual {v1, v3}, Lcom/moreexchange/model/Icon;->downloadIcon(Landroid/os/Handler;)V

    goto :goto_0

    .line 115
    .end local v0    # "hImgIcon":Lcom/moreexchange/model/Icon;
    .end local v1    # "vImgIcon":Lcom/moreexchange/model/Icon;
    :sswitch_1
    invoke-static {}, Lcom/moreexchange/dialog/InterstitialAd;->access$2()Lcom/moreexchange/model/PayAdvertiser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/moreexchange/model/PayAdvertiser;->getAppHImage()Lcom/moreexchange/model/Icon;

    move-result-object v2

    invoke-static {v2}, Lcom/moreexchange/model/Icon;->recycleIcon(Lcom/moreexchange/model/Icon;)V

    .line 116
    invoke-static {}, Lcom/moreexchange/dialog/InterstitialAd;->access$2()Lcom/moreexchange/model/PayAdvertiser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/moreexchange/model/PayAdvertiser;->getAppVImage()Lcom/moreexchange/model/Icon;

    move-result-object v2

    invoke-static {v2}, Lcom/moreexchange/model/Icon;->recycleIcon(Lcom/moreexchange/model/Icon;)V

    goto :goto_0

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x1002 -> :sswitch_1
    .end sparse-switch
.end method
