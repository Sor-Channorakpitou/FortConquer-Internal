.class Lcom/droidhen/fortconquer/scenes/ShopScene$2;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(I)Z
    .locals 11
    .param p1, "signal"    # I

    .prologue
    const/16 v10, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 587
    if-eqz p1, :cond_1

    .line 588
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v7

    if-ne v7, v10, :cond_0

    .line 650
    :goto_0
    return v5

    .line 591
    :cond_0
    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v7, v5}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$0(Lcom/droidhen/fortconquer/scenes/ShopScene;Z)V

    move v5, v6

    .line 592
    goto :goto_0

    .line 594
    :cond_1
    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget-object v7, v7, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v7, v7, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Player;->getAllCards()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x28

    if-ge v7, v8, :cond_2

    .line 595
    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v7}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$3(Lcom/droidhen/fortconquer/scenes/ShopScene;)I

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget-object v7, v7, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v7, v7, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Player;->getAllCards()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x20

    if-le v7, v8, :cond_3

    .line 597
    :cond_2
    invoke-static {}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->close()V

    .line 598
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v6, v5}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$0(Lcom/droidhen/fortconquer/scenes/ShopScene;Z)V

    goto :goto_0

    .line 602
    :cond_3
    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget-object v7, v7, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v8}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$3(Lcom/droidhen/fortconquer/scenes/ShopScene;)I

    move-result v8

    aget-object v0, v7, v8

    .line 604
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    const/4 v2, 0x0

    .line 605
    .local v2, "flagSuccess":Z
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->useCrystalToBuy()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 606
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getValue()I

    move-result v7

    neg-int v7, v7

    invoke-static {v7}, Lcom/droidhen/fortconquer/units/Player;->changeCrystals(I)Z

    move-result v2

    .line 610
    :goto_1
    if-nez v2, :cond_5

    .line 611
    invoke-static {}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->close()V

    .line 612
    iget-object v6, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v6, v5}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$0(Lcom/droidhen/fortconquer/scenes/ShopScene;Z)V

    .line 613
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/droidhen/fortconquer/GameActivity;->mCoinStoreScene:Lcom/droidhen/fortconquer/scenes/CoinStoreScene;

    invoke-virtual {v6}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->setupScene()V

    goto :goto_0

    .line 608
    :cond_4
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getValue()I

    move-result v7

    neg-int v7, v7

    invoke-static {v7}, Lcom/droidhen/fortconquer/units/Player;->changeCoins(I)Z

    move-result v2

    goto :goto_1

    .line 616
    :cond_5
    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget-object v7, v7, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    iget-object v8, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v8}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$3(Lcom/droidhen/fortconquer/scenes/ShopScene;)I

    move-result v8

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 617
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getCardBack()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v7

    invoke-interface {v7}, Lorg/anddev/andengine/entity/shape/IShape;->detachSelf()Z

    .line 619
    instance-of v7, v0, Lcom/droidhen/fortconquer/units/TroopsCard;

    if-eqz v7, :cond_b

    .line 620
    const/16 v1, 0x8

    .line 621
    .local v1, "count":I
    const/4 v3, 0x0

    .line 622
    .local v3, "newCard":Lcom/droidhen/fortconquer/units/Card;
    :goto_2
    if-gtz v1, :cond_7

    .line 641
    .end local v1    # "count":I
    .end local v3    # "newCard":Lcom/droidhen/fortconquer/units/Card;
    :goto_3
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->detachSelf()Z

    .line 642
    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget-object v7, v7, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v7, v7, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Player;->saveGoodsList()V

    .line 643
    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v7}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$4(Lcom/droidhen/fortconquer/scenes/ShopScene;)V

    .line 644
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->isConcerned()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 645
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->saveProgress()V

    .line 646
    const/16 v7, 0x9

    invoke-static {v7}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    .line 648
    :cond_6
    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget-object v7, v7, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v7, v7, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Player;->saveCardRecord()V

    .line 649
    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v7, v5}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$0(Lcom/droidhen/fortconquer/scenes/ShopScene;Z)V

    move v5, v6

    .line 650
    goto/16 :goto_0

    .line 623
    .restart local v1    # "count":I
    .restart local v3    # "newCard":Lcom/droidhen/fortconquer/units/Card;
    :cond_7
    if-ne v1, v10, :cond_a

    .line 624
    sget-object v7, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v4

    .line 625
    .local v4, "rand":F
    const v7, 0x3e4ccccd    # 0.2f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_8

    .line 626
    const/4 v7, 0x2

    invoke-static {v7}, Lcom/droidhen/fortconquer/units/Card;->genDragonCard(I)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v3

    .line 635
    .end local v4    # "rand":F
    :goto_4
    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget-object v7, v7, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v7, v7, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Player;->getAllCards()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 627
    .restart local v4    # "rand":F
    :cond_8
    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_9

    .line 628
    invoke-static {v6}, Lcom/droidhen/fortconquer/units/Card;->genDragonCard(I)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v3

    .line 629
    goto :goto_4

    .line 630
    :cond_9
    invoke-static {v5}, Lcom/droidhen/fortconquer/units/Card;->genDragonCard(I)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v3

    .line 632
    goto :goto_4

    .line 633
    .end local v4    # "rand":F
    :cond_a
    invoke-static {}, Lcom/droidhen/fortconquer/units/Card;->genRandomCard()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v3

    goto :goto_4

    .line 639
    .end local v1    # "count":I
    .end local v3    # "newCard":Lcom/droidhen/fortconquer/units/Card;
    :cond_b
    iget-object v7, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget-object v7, v7, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v7, v7, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Player;->getAllCards()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method
