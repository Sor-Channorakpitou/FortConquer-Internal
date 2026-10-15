.class Lcom/droidhen/fortconquer/scenes/StatusScene$5;
.super Ljava/lang/Object;
.source "StatusScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/StatusScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field open:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/StatusScene;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Lcom/droidhen/fortconquer/scenes/StatusScene$5$1;

    invoke-direct {v0, p0}, Lcom/droidhen/fortconquer/scenes/StatusScene$5$1;-><init>(Lcom/droidhen/fortconquer/scenes/StatusScene$5;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$5;->open:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$0(Lcom/droidhen/fortconquer/scenes/StatusScene$5;)Lcom/droidhen/fortconquer/scenes/StatusScene;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 194
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$5;->open:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method
