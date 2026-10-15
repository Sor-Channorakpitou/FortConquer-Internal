.class Lcom/droidhen/fortconquer/scenes/ShopScene$11;
.super Ljava/lang/Object;
.source "ShopScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/ShopScene;->createUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/ShopScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$19(Lcom/droidhen/fortconquer/scenes/ShopScene;)I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Lcom/droidhen/fortconquer/units/Player;->changeCrystals(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->clearGoods()V

    .line 446
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$4(Lcom/droidhen/fortconquer/scenes/ShopScene;)V

    .line 450
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mCoinStoreScene:Lcom/droidhen/fortconquer/scenes/CoinStoreScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->setupScene()V

    goto :goto_0
.end method
