.class Lcom/droidhen/fortconquer/scenes/UnitSelectScene$9;
.super Ljava/lang/Object;
.source "UnitSelectScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->createUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iput p2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$9;->val$index:I

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 320
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$9(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)[Lcom/droidhen/andplugin/ComposedAnimatedButton;

    move-result-object v1

    iget v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$9;->val$index:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->getCurrentTileIndex()I

    move-result v1

    if-nez v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, v1, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Player;->getChosenCards()Ljava/util/ArrayList;

    move-result-object v0

    .line 322
    .local v0, "chosenCards":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/fortconquer/units/Card;>;"
    iget v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$9;->val$index:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$9;->val$index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$9;->val$index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v2, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->onCardDechoose(Lcom/droidhen/fortconquer/units/Card;)V

    .line 328
    .end local v0    # "chosenCards":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/fortconquer/units/Card;>;"
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$9;->val$index:I

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v2, v2, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v2, v2, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Player;->getBagNumber()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 325
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->bIsShowingDialog:Z

    .line 326
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v4}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$10(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->showDialog(Lcom/droidhen/fortconquer/scenes/SmartScene;ILorg/anddev/andengine/entity/Entity;Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;)V

    goto :goto_0
.end method
