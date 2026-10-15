.class Lcom/droidhen/fortconquer/scenes/GameScene$27;
.super Ljava/util/TimerTask;
.source "GameScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/GameScene;->showMainUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field scale:F

.field step:F

.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/GameScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$27;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 1504
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1505
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$27;->scale:F

    .line 1506
    const v0, 0x3c75c28f    # 0.015f

    iput v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$27;->step:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x43480000    # 200.0f

    .line 1510
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 1514
    iget v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene$27;->scale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 1515
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 1519
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene$27;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v2, v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene$27;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/GameScene;->access$3(Lcom/droidhen/fortconquer/scenes/GameScene;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 1520
    invoke-static {}, Lcom/droidhen/fortconquer/component/Guide;->isConcerned()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1521
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene$27;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v2, v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene$27;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v3, v3, Lcom/droidhen/fortconquer/scenes/GameScene;->mShowStopeGuide:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 1523
    :cond_0
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene$27;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-static {v2, v6}, Lcom/droidhen/fortconquer/scenes/GameScene;->access$4(Lcom/droidhen/fortconquer/scenes/GameScene;Z)V

    .line 1524
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene$27;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v2, v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMineSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v2, v6}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setIgnoreUpdate(Z)V

    .line 1525
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/GameScene$27;->cancel()Z

    .line 1527
    :cond_1
    iget v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene$27;->scale:F

    iget v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene$27;->step:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene$27;->scale:F

    .line 1528
    return-void

    .line 1511
    :cond_2
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    .line 1512
    .local v0, "child":Lorg/anddev/andengine/entity/IEntity;
    invoke-interface {v0}, Lorg/anddev/andengine/entity/IEntity;->getX()F

    move-result v2

    invoke-interface {v0}, Lorg/anddev/andengine/entity/IEntity;->getInitialY()F

    move-result v3

    sub-float/2addr v3, v5

    iget v4, p0, Lcom/droidhen/fortconquer/scenes/GameScene$27;->scale:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    invoke-interface {v0, v2, v3}, Lorg/anddev/andengine/entity/IEntity;->setPosition(FF)V

    .line 1510
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1516
    .end local v0    # "child":Lorg/anddev/andengine/entity/IEntity;
    :cond_3
    sget-object v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mMainUILayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v2, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    .line 1517
    .restart local v0    # "child":Lorg/anddev/andengine/entity/IEntity;
    invoke-interface {v0}, Lorg/anddev/andengine/entity/IEntity;->getX()F

    move-result v2

    invoke-interface {v0}, Lorg/anddev/andengine/entity/IEntity;->getInitialY()F

    move-result v3

    invoke-interface {v0, v2, v3}, Lorg/anddev/andengine/entity/IEntity;->setPosition(FF)V

    .line 1515
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
