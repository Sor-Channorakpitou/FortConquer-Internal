.class Lcom/droidhen/fortconquer/scenes/CoinStoreScene$2;
.super Ljava/lang/Object;
.source "CoinStoreScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/CoinStoreScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/CoinStoreScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/CoinStoreScene;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/CoinStoreScene;

    iget-boolean v0, v0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->bStoreFromWorld:Z

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/CoinStoreScene;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->bStoreFromWorld:Z

    .line 346
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/CoinStoreScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/CoinStoreScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->back()V

    goto :goto_0
.end method
