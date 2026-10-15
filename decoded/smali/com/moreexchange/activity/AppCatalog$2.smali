.class Lcom/moreexchange/activity/AppCatalog$2;
.super Ljava/lang/Object;
.source "AppCatalog.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/moreexchange/activity/AppCatalog$2;->this$0:Lcom/moreexchange/activity/AppCatalog;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 208
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/moreexchange/activity/AppCatalog$2;->this$0:Lcom/moreexchange/activity/AppCatalog;

    invoke-static {v1}, Lcom/moreexchange/activity/AppCatalog;->access$3(Lcom/moreexchange/activity/AppCatalog;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/moreexchange/activity/AppCatalog$2;->this$0:Lcom/moreexchange/activity/AppCatalog;

    invoke-static {v2}, Lcom/moreexchange/activity/AppCatalog;->access$13(Lcom/moreexchange/activity/AppCatalog;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/moreexchange/command/Command;->getMoreAd(ILjava/util/List;Landroid/os/Handler;)V

    .line 209
    return-void
.end method
