.class Lcom/droidhen/fortconquer/scenes/ArenaScene$12;
.super Ljava/lang/Object;
.source "ArenaScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/ArenaScene;->createBGAndSprites()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 339
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyHP:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    const/4 v1, 0x2

    iput v1, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mCurrentAttackStep:I

    .line 342
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleStartButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->setVisible(Z)V

    .line 343
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleStartButton:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    .line 344
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mBattleEyeSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 345
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mVSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 346
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mVSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 347
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mSSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 348
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mSSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 349
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->getNextCardSeated(Z)V

    .line 350
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->getNextCardSeated(Z)V

    .line 352
    :cond_0
    return-void
.end method
