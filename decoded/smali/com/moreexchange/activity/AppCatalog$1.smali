.class Lcom/moreexchange/activity/AppCatalog$1;
.super Landroid/os/Handler;
.source "AppCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moreexchange/activity/AppCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moreexchange/activity/AppCatalog;


# direct methods
.method constructor <init>(Lcom/moreexchange/activity/AppCatalog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moreexchange/activity/AppCatalog$1;->this$0:Lcom/moreexchange/activity/AppCatalog;

    .line 90
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog$1;->this$0:Lcom/moreexchange/activity/AppCatalog;

    invoke-static {v0}, Lcom/moreexchange/activity/AppCatalog;->access$0(Lcom/moreexchange/activity/AppCatalog;)Lcom/moreexchange/view/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog$1;->this$0:Lcom/moreexchange/activity/AppCatalog;

    invoke-static {v0}, Lcom/moreexchange/activity/AppCatalog;->access$0(Lcom/moreexchange/activity/AppCatalog;)Lcom/moreexchange/view/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/moreexchange/view/ProgressDialog;->showProgress(Z)V

    .line 95
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog$1;->this$0:Lcom/moreexchange/activity/AppCatalog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/moreexchange/activity/AppCatalog;->access$1(Lcom/moreexchange/activity/AppCatalog;Lcom/moreexchange/view/ProgressDialog;)V

    .line 98
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog$1;->this$0:Lcom/moreexchange/activity/AppCatalog;

    invoke-static {v0}, Lcom/moreexchange/activity/AppCatalog;->access$2(Lcom/moreexchange/activity/AppCatalog;)V

    .line 102
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog$1;->this$0:Lcom/moreexchange/activity/AppCatalog;

    invoke-static {v0}, Lcom/moreexchange/activity/AppCatalog;->access$3(Lcom/moreexchange/activity/AppCatalog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog$1;->this$0:Lcom/moreexchange/activity/AppCatalog;

    invoke-static {v0}, Lcom/moreexchange/activity/AppCatalog;->access$4(Lcom/moreexchange/activity/AppCatalog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog$1;->this$0:Lcom/moreexchange/activity/AppCatalog;

    invoke-static {v0}, Lcom/moreexchange/activity/AppCatalog;->access$5(Lcom/moreexchange/activity/AppCatalog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog$1;->this$0:Lcom/moreexchange/activity/AppCatalog;

    invoke-static {v0}, Lcom/moreexchange/activity/AppCatalog;->access$6(Lcom/moreexchange/activity/AppCatalog;)V

    .line 107
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog$1;->this$0:Lcom/moreexchange/activity/AppCatalog;

    invoke-static {v0}, Lcom/moreexchange/activity/AppCatalog;->access$7(Lcom/moreexchange/activity/AppCatalog;)Lcom/moreexchange/adapter/MoreExchangeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moreexchange/adapter/MoreExchangeAdapter;->notifyDataSetChanged()V

    .line 108
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog$1;->this$0:Lcom/moreexchange/activity/AppCatalog;

    invoke-static {v0}, Lcom/moreexchange/activity/AppCatalog;->access$8(Lcom/moreexchange/activity/AppCatalog;)Lcom/moreexchange/adapter/MoreExchangeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moreexchange/adapter/MoreExchangeAdapter;->notifyDataSetChanged()V

    .line 109
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog$1;->this$0:Lcom/moreexchange/activity/AppCatalog;

    invoke-static {v0}, Lcom/moreexchange/activity/AppCatalog;->access$9(Lcom/moreexchange/activity/AppCatalog;)Lcom/moreexchange/adapter/MoreExchangeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moreexchange/adapter/MoreExchangeAdapter;->notifyDataSetChanged()V

    .line 110
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog$1;->this$0:Lcom/moreexchange/activity/AppCatalog;

    invoke-static {v0}, Lcom/moreexchange/activity/AppCatalog;->access$10(Lcom/moreexchange/activity/AppCatalog;)Lcom/moreexchange/adapter/MoreExchangeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moreexchange/adapter/MoreExchangeAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog$1;->this$0:Lcom/moreexchange/activity/AppCatalog;

    invoke-static {v0}, Lcom/moreexchange/activity/AppCatalog;->access$11(Lcom/moreexchange/activity/AppCatalog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog$1;->this$0:Lcom/moreexchange/activity/AppCatalog;

    invoke-static {v0}, Lcom/moreexchange/activity/AppCatalog;->access$5(Lcom/moreexchange/activity/AppCatalog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 118
    :pswitch_2
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog$1;->this$0:Lcom/moreexchange/activity/AppCatalog;

    invoke-static {v0}, Lcom/moreexchange/activity/AppCatalog;->access$12(Lcom/moreexchange/activity/AppCatalog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/moreexchange/activity/AppCatalog$1;->this$0:Lcom/moreexchange/activity/AppCatalog;

    invoke-static {v0}, Lcom/moreexchange/activity/AppCatalog;->access$5(Lcom/moreexchange/activity/AppCatalog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
