.class Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$2;
.super Lorg/anddev/andengine/entity/primitive/Rectangle;
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
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;FFFF)V
    .locals 0
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # F
    .param p5, "$anonymous3"    # F

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    .line 265
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 2
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    .line 268
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 270
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 271
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->access$0(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)Lorg/anddev/andengine/entity/primitive/Rectangle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    .line 272
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->access$0(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)Lorg/anddev/andengine/entity/primitive/Rectangle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setVisible(Z)V

    .line 273
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mEvolvedCard:Lcom/droidhen/fortconquer/units/Card;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->mEvolvedCard:Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Card;->detachSelf()Z

    .line 275
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->updateAllCards()V

    .line 279
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
