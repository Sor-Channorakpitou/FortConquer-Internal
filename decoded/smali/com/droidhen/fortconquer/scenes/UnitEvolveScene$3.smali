.class Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;
.super Lcom/droidhen/fortconquer/layer/DragLayer;
.source "UnitEvolveScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->createUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final modifier:Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

.field private final synthetic val$currentCamp:I


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;FFI)V
    .locals 3
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F

    .prologue
    const/4 v2, 0x0

    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iput p4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->val$currentCamp:I

    .line 287
    invoke-direct {p0, p2, p3}, Lcom/droidhen/fortconquer/layer/DragLayer;-><init>(FF)V

    .line 288
    new-instance v0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    const/high16 v1, 0x43700000    # 240.0f

    invoke-direct {v0, v2, v2, v1}, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;-><init>(FFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->modifier:Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 291
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->access$1(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)Lorg/anddev/andengine/entity/primitive/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(FF)V
    .locals 7
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 315
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v3, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->access$2(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 340
    :cond_2
    :goto_2
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->isConcerned()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 341
    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->access$2(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 342
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->access$2(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 343
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->val$currentCamp:I

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v4

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-static {v3, v0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->access$3(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;Lcom/droidhen/fortconquer/units/Card;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 344
    sget-object v3, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    iget-object v3, v3, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->getInitialX()F

    move-result v4

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getWidth()F

    move-result v5

    sget-object v6, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    iget-object v6, v6, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 345
    sget-object v5, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    iget-object v5, v5, Lcom/droidhen/fortconquer/component/Guide;->sArrowV:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v5

    .line 344
    invoke-virtual {v3, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    goto :goto_0

    .line 318
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    :cond_3
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->access$2(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 319
    .restart local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->val$currentCamp:I

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 320
    invoke-virtual {v0, p1, p2}, Lcom/droidhen/fortconquer/units/Card;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-static {v3, v0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->access$3(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;Lcom/droidhen/fortconquer/units/Card;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 321
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 322
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, "chosen":Lcom/droidhen/fortconquer/units/Card;
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    if-nez v3, :cond_4

    .line 325
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->deepCopyWithoutScale()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v1

    .end local v1    # "chosen":Lcom/droidhen/fortconquer/units/Card;
    iput-object v1, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    .line 333
    .restart local v1    # "chosen":Lcom/droidhen/fortconquer/units/Card;
    :goto_4
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->getX()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->getY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/droidhen/fortconquer/units/Card;->setPosition(FF)V

    .line 334
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->access$4(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)V

    .line 335
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->updateAllCards()V

    goto/16 :goto_2

    .line 326
    :cond_4
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    if-nez v3, :cond_5

    .line 327
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->deepCopyWithoutScale()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v1

    .end local v1    # "chosen":Lcom/droidhen/fortconquer/units/Card;
    iput-object v1, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    .line 328
    .restart local v1    # "chosen":Lcom/droidhen/fortconquer/units/Card;
    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    if-nez v3, :cond_2

    .line 329
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->deepCopyWithoutScale()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v1

    .end local v1    # "chosen":Lcom/droidhen/fortconquer/units/Card;
    iput-object v1, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    .restart local v1    # "chosen":Lcom/droidhen/fortconquer/units/Card;
    goto :goto_4

    .line 317
    .end local v1    # "chosen":Lcom/droidhen/fortconquer/units/Card;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 341
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v2, v2, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x43250000    # 165.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 309
    .local v0, "i":I
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->modifier:Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    mul-int/lit16 v2, v0, 0xa5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v3, v3, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->reset(FF)V

    .line 310
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->modifier:Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 311
    return-void
.end method

.method protected updateSpring()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const v5, 0x44278000    # 670.0f

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v3, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(FF)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 305
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->getChildCount()I

    move-result v0

    if-lt v0, v6, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    add-float/2addr v1, v5

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->getChildCount()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa5

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    add-float/2addr v1, v5

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->getChildCount()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa5

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(FF)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->getChildCount()I

    move-result v0

    if-ge v0, v6, :cond_2

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(FF)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    goto :goto_0

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$3;->spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v3, v3}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(FF)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    goto :goto_0
.end method
