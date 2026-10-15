.class Lcom/droidhen/fortconquer/scenes/ShopScene$4;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    .line 225
    invoke-direct {p0, p2, p3}, Lcom/droidhen/fortconquer/layer/DragLayer;-><init>(FF)V

    .line 226
    new-instance v0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    const/high16 v1, 0x43700000    # 240.0f

    invoke-direct {v0, v2, v2, v1}, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;-><init>(FFF)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->modifier:Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 230
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$6(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lorg/anddev/andengine/entity/primitive/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->isVisible()Z

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
    .locals 5
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    const/4 v3, 0x1

    .line 272
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$3(Lcom/droidhen/fortconquer/scenes/ShopScene;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$3(Lcom/droidhen/fortconquer/scenes/ShopScene;)I

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v2}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$8(Lcom/droidhen/fortconquer/scenes/ShopScene;)[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 273
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v2}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$3(Lcom/droidhen/fortconquer/scenes/ShopScene;)I

    move-result v2

    aget-object v0, v1, v2

    .line 274
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/droidhen/fortconquer/units/BlankCard;

    if-eqz v1, :cond_1

    .line 286
    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    :cond_0
    :goto_0
    return-void

    .line 277
    .restart local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    :cond_1
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->getCurrentStep()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 278
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->getValue()I

    move-result v1

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getCoins()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v1, v3}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$0(Lcom/droidhen/fortconquer/scenes/ShopScene;Z)V

    .line 283
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/ShopScene;->mAllGoods:[Lcom/droidhen/fortconquer/units/Card;

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v4}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$3(Lcom/droidhen/fortconquer/scenes/ShopScene;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->deepCopy()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v4}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$9(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->showDialog(Lcom/droidhen/fortconquer/scenes/SmartScene;ILorg/anddev/andengine/entity/Entity;Lcom/droidhen/fortconquer/layer/ComfirmDlg$CallBack;)V

    .line 284
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    goto :goto_0
.end method

.method public onPressDown(FF)V
    .locals 3
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 253
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$7(Lcom/droidhen/fortconquer/scenes/ShopScene;I)V

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$8(Lcom/droidhen/fortconquer/scenes/ShopScene;)[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 261
    :goto_1
    return-void

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$8(Lcom/droidhen/fortconquer/scenes/ShopScene;)[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v1, v0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$7(Lcom/droidhen/fortconquer/scenes/ShopScene;I)V

    .line 257
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$8(Lcom/droidhen/fortconquer/scenes/ShopScene;)[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    goto :goto_1

    .line 254
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onPressUp(FF)V
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 265
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$3(Lcom/droidhen/fortconquer/scenes/ShopScene;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$3(Lcom/droidhen/fortconquer/scenes/ShopScene;)I

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$8(Lcom/droidhen/fortconquer/scenes/ShopScene;)[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$8(Lcom/droidhen/fortconquer/scenes/ShopScene;)[Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$3(Lcom/droidhen/fortconquer/scenes/ShopScene;)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    .line 268
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v2, v2, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x43290000    # 169.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 247
    .local v0, "i":I
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->modifier:Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    mul-int/lit16 v2, v0, 0xa9

    int-to-float v2, v2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v3, v3, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;->reset(FF)V

    .line 248
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->modifier:Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    invoke-virtual {p0, v1}, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 249
    return-void
.end method

.method protected updateSpring()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const v5, 0x442c8000    # 690.0f

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v3, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(FF)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    .line 244
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->getChildCount()I

    move-result v0

    if-lt v0, v6, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    add-float/2addr v1, v5

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->getChildCount()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa9

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    add-float/2addr v1, v5

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->getChildCount()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa9

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(FF)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->getChildCount()I

    move-result v0

    if-ge v0, v6, :cond_2

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->init:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    iget v1, v1, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->x:F

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(FF)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$4;->spring:Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    invoke-virtual {v0, v3, v3}, Lcom/droidhen/fortconquer/layer/DragLayer$Vector;->reset(FF)Lcom/droidhen/fortconquer/layer/DragLayer$Vector;

    goto :goto_0
.end method
