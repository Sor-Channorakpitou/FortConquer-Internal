.class Lcom/game/featured/FeaturedHelper$5;
.super Ljava/lang/Object;
.source "FeaturedHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/featured/FeaturedHelper;->showFeaturedDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/featured/FeaturedHelper;


# direct methods
.method constructor <init>(Lcom/game/featured/FeaturedHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/featured/FeaturedHelper$5;->this$0:Lcom/game/featured/FeaturedHelper;

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper$5;->this$0:Lcom/game/featured/FeaturedHelper;

    invoke-static {v0}, Lcom/game/featured/FeaturedHelper;->access$2(Lcom/game/featured/FeaturedHelper;)V

    .line 472
    return-void
.end method
