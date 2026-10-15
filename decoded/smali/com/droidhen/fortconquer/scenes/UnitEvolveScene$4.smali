.class Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;
.super Lorg/anddev/andengine/entity/sprite/Sprite;
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
.field grab:Z

.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 1
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    .line 353
    invoke-direct {p0, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->grab:Z

    return-void
.end method


# virtual methods
.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 7
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 357
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 358
    iput-boolean v6, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->grab:Z

    .line 386
    :cond_0
    :goto_0
    return v6

    .line 359
    :cond_1
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v1

    .line 361
    .local v1, "curX":F
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    .line 362
    .local v2, "curY":F
    iget-boolean v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->grab:Z

    if-eqz v3, :cond_0

    .line 363
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 364
    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 365
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->grab:Z

    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, "card":Lcom/droidhen/fortconquer/units/Card;
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v3, v1, v2}, Lcom/droidhen/fortconquer/units/Card;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 368
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v0, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    .line 369
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iput-object v5, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelHeadCard:Lcom/droidhen/fortconquer/units/Card;

    .line 377
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 378
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->access$2(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-static {v4}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->access$2(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    check-cast v0, Lcom/droidhen/fortconquer/units/Card;

    .line 379
    .restart local v0    # "card":Lcom/droidhen/fortconquer/units/Card;
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->detachChildren()V

    .line 380
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->updateView()V

    .line 381
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->access$4(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)V

    .line 382
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->updateAllCards()V

    goto :goto_0

    .line 370
    :cond_3
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v3, v1, v2}, Lcom/droidhen/fortconquer/units/Card;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 371
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v0, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    .line 372
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iput-object v5, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelChestCard:Lcom/droidhen/fortconquer/units/Card;

    goto :goto_1

    .line 373
    :cond_4
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v3, v1, v2}, Lcom/droidhen/fortconquer/units/Card;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 374
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v0, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    .line 375
    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iput-object v5, v3, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mSelLimbsCard:Lcom/droidhen/fortconquer/units/Card;

    goto :goto_1
.end method
