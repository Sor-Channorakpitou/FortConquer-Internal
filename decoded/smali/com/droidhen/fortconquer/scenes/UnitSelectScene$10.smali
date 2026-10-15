.class Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;
.super Lcom/droidhen/fortconquer/scenes/SmartEntity;
.source "UnitSelectScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->createUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field curX:F

.field curY:F

.field grabX:F

.field grabY:F

.field prevX:F

.field roll:I

.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

.field toucheDetectArea:Lorg/anddev/andengine/entity/primitive/Rectangle;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;FF)V
    .locals 5
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 334
    invoke-direct {p0, p2, p3}, Lcom/droidhen/fortconquer/scenes/SmartEntity;-><init>(FF)V

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->roll:I

    .line 341
    new-instance v0, Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->getY()F

    move-result v2

    const/high16 v3, 0x43d70000    # 430.0f

    const/high16 v4, 0x43960000    # 300.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->toucheDetectArea:Lorg/anddev/andengine/entity/primitive/Rectangle;

    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 344
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->toucheDetectArea:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 9
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 349
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->curY:F

    .line 350
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->curX:F

    .line 351
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->curX:F

    iput v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->prevX:F

    .line 353
    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->curX:F

    iput v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->grabX:F

    .line 354
    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->curY:F

    iput v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->grabY:F

    .line 355
    iput v7, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->roll:I

    .line 389
    :cond_0
    :goto_0
    return v8

    .line 356
    :cond_1
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionMove()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 357
    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->curX:F

    iget v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->curY:F

    invoke-virtual {p0, v3, v4}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 358
    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->roll:I

    if-nez v3, :cond_0

    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->curX:F

    iget v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->prevX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42480000    # 50.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 359
    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->prevX:F

    iget v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->curX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->roll:I

    .line 360
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->roll:I

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateCards(I)V

    .line 361
    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->curX:F

    iput v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->prevX:F

    goto :goto_0

    .line 364
    :cond_2
    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->curX:F

    iput v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->prevX:F

    goto :goto_0

    .line 366
    :cond_3
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 367
    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->roll:I

    if-nez v3, :cond_4

    .line 368
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$11(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$12(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v4}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$11(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x8

    if-ge v3, v4, :cond_7

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$12(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    if-lt v2, v3, :cond_5

    .line 375
    :goto_3
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 376
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, v3, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Player;->getChosenCards()Ljava/util/ArrayList;

    move-result-object v1

    .line 377
    .local v1, "chosenCards":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/fortconquer/units/Card;>;"
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$11(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    :goto_4
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$12(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v4}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$11(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x8

    if-ge v3, v4, :cond_a

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$12(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_5
    if-lt v2, v3, :cond_8

    .line 387
    .end local v1    # "chosenCards":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/fortconquer/units/Card;>;"
    .end local v2    # "i":I
    :cond_4
    :goto_6
    iput v7, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->roll:I

    goto/16 :goto_0

    .line 369
    .restart local v2    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$12(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 370
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->grabX:F

    iget v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->grabY:F

    invoke-virtual {v0, v3, v4}, Lcom/droidhen/fortconquer/units/Card;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->curX:F

    iget v4, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->curY:F

    invoke-virtual {v0, v3, v4}, Lcom/droidhen/fortconquer/units/Card;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 371
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v3, v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$13(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;Lcom/droidhen/fortconquer/units/Card;)V

    goto :goto_3

    .line 368
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    :cond_7
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$11(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x8

    goto :goto_2

    .line 378
    .restart local v1    # "chosenCards":Ljava/util/List;, "Ljava/util/List<Lcom/droidhen/fortconquer/units/Card;>;"
    :cond_8
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$12(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 379
    .restart local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 380
    sget-object v3, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    iget-object v3, v3, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->getX()F

    move-result v4

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getWidth()F

    move-result v5

    const v6, 0x3f1c28f6    # 0.61f

    mul-float/2addr v5, v6

    sget-object v6, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    iget-object v6, v6, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 381
    sget-object v5, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    iget-object v5, v5, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v5

    .line 380
    invoke-virtual {v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    goto :goto_6

    .line 377
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    :cond_a
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$11(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x8

    goto/16 :goto_5
.end method
