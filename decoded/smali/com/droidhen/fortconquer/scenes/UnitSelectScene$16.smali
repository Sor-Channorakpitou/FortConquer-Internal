.class Lcom/droidhen/fortconquer/scenes/UnitSelectScene$16;
.super Lorg/anddev/andengine/entity/primitive/Rectangle;
.source "UnitSelectScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateDiscountPost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downX:F

.field downY:F

.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;FFFF)V
    .locals 1
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # F
    .param p5, "$anonymous3"    # F

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$16;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 753
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    .line 754
    iput v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$16;->downX:F

    .line 755
    iput v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$16;->downY:F

    return-void
.end method


# virtual methods
.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 4
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    .line 759
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 760
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$16;->downX:F

    .line 761
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$16;->downY:F

    .line 772
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 762
    :cond_1
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 763
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    .line 764
    .local v0, "curX":F
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v1

    .line 765
    .local v1, "curY":F
    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$16;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$16;->downX:F

    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$16;->downY:F

    invoke-virtual {p0, v2, v3}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$16;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 766
    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 767
    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 768
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$16;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v2}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$14(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V

    .line 769
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$16;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->nextPost()V

    goto :goto_0
.end method
