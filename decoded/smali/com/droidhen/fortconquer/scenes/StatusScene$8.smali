.class Lcom/droidhen/fortconquer/scenes/StatusScene$8;
.super Ljava/lang/Object;
.source "StatusScene.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/StatusScene;->showInputDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

.field private final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/StatusScene;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$8;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    iput-object p2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$8;->val$et:Landroid/widget/EditText;

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 562
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$8;->val$et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    invoke-static {v0}, Lcom/droidhen/fortconquer/units/Player;->setPlayerName(Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$8;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/StatusScene;->access$2(Lcom/droidhen/fortconquer/scenes/StatusScene;)V

    .line 566
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$8;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/StatusScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$8;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    invoke-static {v2}, Lcom/droidhen/fortconquer/scenes/StatusScene;->access$3(Lcom/droidhen/fortconquer/scenes/StatusScene;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 569
    :cond_0
    return-void
.end method
