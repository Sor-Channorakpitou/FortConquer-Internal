.class Lcom/droidhen/fortconquer/scenes/StatusScene$5$1;
.super Ljava/lang/Object;
.source "StatusScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/StatusScene$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/droidhen/fortconquer/scenes/StatusScene$5;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/StatusScene$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$5$1;->this$1:Lcom/droidhen/fortconquer/scenes/StatusScene$5;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$5$1;->this$1:Lcom/droidhen/fortconquer/scenes/StatusScene$5;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/StatusScene$5;->access$0(Lcom/droidhen/fortconquer/scenes/StatusScene$5;)Lcom/droidhen/fortconquer/scenes/StatusScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->showInputDialog()V

    .line 190
    return-void
.end method
