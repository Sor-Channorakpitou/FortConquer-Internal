.class Lcom/droidhen/fortconquer/units/Lane$2;
.super Ljava/lang/Object;
.source "Lane.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/units/Lane;-><init>(Lcom/droidhen/fortconquer/scenes/GameScene;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/units/Lane;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/units/Lane;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/droidhen/fortconquer/units/Lane$2;)Lcom/droidhen/fortconquer/units/Lane;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/units/Lane$2;->onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 5
    .param p2, "pItem"    # Lorg/anddev/andengine/entity/IEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;",
            "Lorg/anddev/andengine/entity/IEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    const/4 v4, 0x0

    .line 152
    invoke-interface {p2, v4}, Lorg/anddev/andengine/entity/IEntity;->setVisible(Z)V

    .line 153
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 154
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Lane;->mFireballExplodeSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget v1, v1, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setVisible(Z)V

    .line 155
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Lane;->mFireballExplodeSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget v1, v1, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    aget-object v0, v0, v1

    const-wide/16 v2, 0x2a

    new-instance v1, Lcom/droidhen/fortconquer/units/Lane$2$1;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/units/Lane$2$1;-><init>(Lcom/droidhen/fortconquer/units/Lane$2;)V

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->animate(JZLorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 163
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget v0, v0, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget v1, v0, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    .line 166
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Lane;->startNextFireball()V

    .line 168
    :cond_0
    return-void
.end method

.method public bridge synthetic onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/units/Lane$2;->onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 2
    .param p2, "pItem"    # Lorg/anddev/andengine/entity/IEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;",
            "Lorg/anddev/andengine/entity/IEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCameraShakeModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;->getSecondsElapsed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCameraShakeModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;->getSecondsElapsed()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mCameraShakeModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;->getDuration()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCameraShakeModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCameraShakeModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;->reset()V

    .line 145
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Lane;->mFireballSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget v1, v1, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mCameraShakeModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z

    .line 146
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Lane;->mFireballSprite:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget v1, v1, Lcom/droidhen/fortconquer/units/Lane;->mCurrentFireball:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Lane$2;->this$0:Lcom/droidhen/fortconquer/units/Lane;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/Lane;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mCameraShakeModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 148
    :cond_1
    return-void
.end method
