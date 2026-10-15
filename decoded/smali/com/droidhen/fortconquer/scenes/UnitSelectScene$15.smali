.class Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;
.super Lorg/anddev/andengine/entity/sprite/Sprite;
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
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 1
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 717
    invoke-direct {p0, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 718
    iput v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->downX:F

    .line 719
    iput v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->downY:F

    return-void
.end method

.method private isClose(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->getX()F

    move-result v0

    const/high16 v1, 0x43dc0000    # 440.0f

    add-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->getY()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->getY()F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 4
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    .line 723
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->downX:F

    .line 725
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->downY:F

    .line 745
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 726
    :cond_1
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 727
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    .line 728
    .local v0, "curX":F
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v1

    .line 729
    .local v1, "curY":F
    invoke-virtual {p0, v0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    iget v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->downX:F

    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->downY:F

    invoke-direct {p0, v2, v3}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->isClose(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->isClose(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 731
    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 732
    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 733
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v2}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$14(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V

    .line 734
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->nextPost()V

    goto :goto_0

    .line 735
    :cond_2
    iget v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->downX:F

    iget v3, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->downY:F

    invoke-direct {p0, v2, v3}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->isClose(FF)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->isClose(FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 736
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v2}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$14(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V

    .line 737
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v2}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$15(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    move-result-object v2

    sget-object v3, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->DST_PURCHASE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    if-ne v2, v3, :cond_3

    .line 738
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    iget-object v2, v2, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v2, v2, Lcom/droidhen/fortconquer/GameActivity;->mCoinStoreScene:Lcom/droidhen/fortconquer/scenes/CoinStoreScene;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/scenes/CoinStoreScene;->setupScene()V

    goto :goto_0

    .line 739
    :cond_3
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$15;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v2}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$15(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    move-result-object v2

    sget-object v3, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->DST_FREE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    if-ne v2, v3, :cond_0

    .line 740
    invoke-static {}, Lcom/droidhen/fortconquer/TapjoyHelper;->showOffers()V

    goto :goto_0
.end method
