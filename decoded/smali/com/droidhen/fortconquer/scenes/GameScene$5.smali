.class Lcom/droidhen/fortconquer/scenes/GameScene$5;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/GameScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/GameScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    sget-object v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageStartLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/engine/camera/hud/HUD;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 209
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageStartModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;->reset()V

    .line 210
    sget-object v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageStartLayer:Lcom/droidhen/fortconquer/scenes/SmartEntity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mStageStartModifier:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 211
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 212
    return-void
.end method
