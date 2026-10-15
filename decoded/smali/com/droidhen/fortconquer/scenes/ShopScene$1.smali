.class Lcom/droidhen/fortconquer/scenes/ShopScene$1;
.super Ljava/lang/Object;
.source "ShopScene.java"

# interfaces
.implements Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/ShopScene;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(I)Z
    .locals 5
    .param p1, "signal"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 560
    if-nez p1, :cond_0

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getPlayer()Lcom/droidhen/fortconquer/units/Player;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getAllCards()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v1, :cond_1

    .line 561
    :cond_0
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v3, v2}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$0(Lcom/droidhen/fortconquer/scenes/ShopScene;Z)V

    .line 580
    :goto_0
    return v1

    .line 564
    :cond_1
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$1(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 565
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 566
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v3, v2}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 567
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$1(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->getRecycleValue()I

    move-result v3

    invoke-static {v3}, Lcom/droidhen/fortconquer/units/Player;->changeCoins(I)Z

    .line 568
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getAllCards()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v4}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$1(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 569
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$1(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->detachChildren()V

    .line 570
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mUnitSelectScene:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v4}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$1(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->onCardDechoose(Lcom/droidhen/fortconquer/units/Card;)V

    .line 571
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$1(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->detachSelf()Z

    .line 572
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$1(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->getCardBack()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v3

    invoke-interface {v3}, Lorg/anddev/andengine/entity/shape/IShape;->detachChildren()V

    .line 573
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$2(Lcom/droidhen/fortconquer/scenes/ShopScene;)V

    .line 574
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->saveCardRecord()V

    .line 575
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v3, v2}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$0(Lcom/droidhen/fortconquer/scenes/ShopScene;Z)V

    .line 576
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 577
    .local v0, "mapStringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Got Coins"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$1;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v4}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$1(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v4

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Card;->getRecycleValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v0    # "mapStringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move v1, v2

    .line 580
    goto/16 :goto_0
.end method
