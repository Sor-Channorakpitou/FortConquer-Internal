.class public Lcom/moreexchange/adapter/MoreExchangeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MoreExchangeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/moreexchange/model/PayAdvertiser;",
        ">;"
    }
.end annotation


# instance fields
.field private payAdvertisers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/moreexchange/model/PayAdvertiser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/moreexchange/model/PayAdvertiser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "payAdvertisers":Ljava/util/List;, "Ljava/util/List<Lcom/moreexchange/model/PayAdvertiser;>;"
    sget v0, Lcom/moreexchange/R$layout;->more_listitem:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    iput-object p2, p0, Lcom/moreexchange/adapter/MoreExchangeAdapter;->payAdvertisers:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/moreexchange/adapter/MoreExchangeAdapter;->payAdvertisers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    move-object v1, p2

    .line 33
    .local v1, "row":Landroid/view/View;
    const/4 v2, 0x0

    .line 35
    .local v2, "viewWrapper":Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;
    if-nez v1, :cond_0

    .line 36
    invoke-static {}, Lcom/moreexchange/activity/AppCatalog;->getInstance()Lcom/moreexchange/activity/AppCatalog;

    move-result-object v3

    .line 37
    const-string v4, "layout_inflater"

    .line 36
    invoke-virtual {v3, v4}, Lcom/moreexchange/activity/AppCatalog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 39
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/moreexchange/R$layout;->more_listitem:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 40
    new-instance v2, Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;

    .end local v2    # "viewWrapper":Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;
    iget-object v3, p0, Lcom/moreexchange/adapter/MoreExchangeAdapter;->payAdvertisers:Ljava/util/List;

    invoke-direct {v2, v1, v3}, Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;-><init>(Landroid/view/View;Ljava/util/List;)V

    .line 41
    .restart local v2    # "viewWrapper":Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {v2, p1}, Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;->drawListItem(I)V

    .line 47
    return-object v1

    .line 43
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "viewWrapper":Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;
    check-cast v2, Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;

    .restart local v2    # "viewWrapper":Lcom/moreexchange/adapter/wrapper/MoreListeitemViewWrapper;
    goto :goto_0
.end method
