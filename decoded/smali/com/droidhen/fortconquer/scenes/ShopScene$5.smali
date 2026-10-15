.class Lcom/droidhen/fortconquer/scenes/ShopScene$5;
.super Lcom/droidhen/fortconquer/layer/DragLayer;
.source "ShopScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/ShopScene;->createUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final W:I = 0x2b2


# instance fields
.field chosenCard:Lcom/droidhen/fortconquer/units/Card;

.field final modifier:Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/ShopScene;FF)V
    .locals 3
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F

    .prologue
    const/4 v2, 0x0

    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    .line 290
    invoke-direct {p0, p2, p3}, Lcom/droidhen/fortconquer/layer/DragLayer;-><init>(FF)V

    .line 291
    new-instance v0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    const/high16 v1, 0x43700000    # 240.0f

    invoke-direct {v0, v2, v2, v1}, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;-><init>(FFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->modifier:Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 296
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$6(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lorg/anddev/andengine/entity/primitive/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->isVisible()Z

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
    .locals 4
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 339
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->chosenCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->chosenCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getCardBack()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/shape/IShape;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->chosenCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$11(Lcom/droidhen/fortconquer/scenes/ShopScene;Lcom/droidhen/fortconquer/units/Card;)V

    .line 341
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$0(Lcom/droidhen/fortconquer/scenes/ShopScene;Z)V

    .line 342
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->chosenCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Card;->deepCopy()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$12(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->showDialog(Lcom/droidhen/fortconquer/scenes/SmartScene;ILorg/anddev/andengine/entity/Entity;Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;)V

    .line 344
    :cond_0
    return-void
.end method

.method public onPressDown(FF)V
    .locals 3
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 319
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->chosenCard:Lcom/droidhen/fortconquer/units/Card;

    .line 320
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v2}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$10(Lcom/droidhen/fortconquer/scenes/ShopScene;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 328
    :goto_1
    return-void

    .line 321
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v2}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$10(Lcom/droidhen/fortconquer/scenes/ShopScene;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 322
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getCardBack()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getCardBack()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/anddev/andengine/entity/shape/IShape;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->chosenCard:Lcom/droidhen/fortconquer/units/Card;

    .line 324
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->chosenCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Card;->getCardBack()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v2

    check-cast v2, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->onPressDown()V

    goto :goto_1

    .line 320
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onPressUp(FF)V
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 332
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->chosenCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->chosenCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getCardBack()Lorg/anddev/andengine/entity/shape/IShape;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->onPressUp()V

    .line 335
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v2, v2, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x43290000    # 169.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 313
    .local v0, "i":I
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->modifier:Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    mul-int/lit16 v2, v0, 0xa9

    int-to-float v2, v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v3, v3, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->reset(FF)V

    .line 314
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->modifier:Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 315
    return-void
.end method

.method protected updateSpring()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const v5, 0x442c8000    # 690.0f

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v3, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(FF)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 310
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->getChildCount()I

    move-result v0

    if-lt v0, v6, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    add-float/2addr v1, v5

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->getChildCount()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa9

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    add-float/2addr v1, v5

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->getChildCount()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa9

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(FF)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->getChildCount()I

    move-result v0

    if-ge v0, v6, :cond_2

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(FF)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    goto :goto_0

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$5;->spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v3, v3}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(FF)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    goto :goto_0
.end method
