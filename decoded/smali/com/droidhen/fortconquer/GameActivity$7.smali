.class Lcom/droidhen/fortconquer/GameActivity$7;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/GameActivity;->createAds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/GameActivity;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/GameActivity$7;->this$0:Lcom/droidhen/fortconquer/GameActivity;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 300
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/droidhen/fortconquer/GameActivity$7;->this$0:Lcom/droidhen/fortconquer/GameActivity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/droidhen/fortconquer/GameActivity;->access$1(Landroid/widget/RelativeLayout;)V

    .line 301
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 302
    .local v0, "rootParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/droidhen/fortconquer/GameActivity$7;->this$0:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {}, Lcom/droidhen/fortconquer/GameActivity;->access$0()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/droidhen/fortconquer/GameActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    iget-object v1, p0, Lcom/droidhen/fortconquer/GameActivity$7;->this$0:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {}, Lcom/droidhen/fortconquer/GameActivity;->access$0()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/droidhen/fortconquer/AdController;->showAdInLayout(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V

    .line 305
    invoke-static {}, Lcom/droidhen/fortconquer/AdController;->getADview()Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-static {v1}, Lcom/droidhen/fortconquer/GameActivity;->access$2(Lcom/google/android/gms/ads/AdView;)V

    .line 306
    return-void
.end method
