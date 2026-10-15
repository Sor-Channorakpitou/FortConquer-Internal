.class Lcom/droidhen/fortconquer/scenes/GameScene$10;
.super Lorg/anddev/andengine/engine/camera/hud/HUD;
.source "GameScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/GameScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 261
    invoke-direct {p0}, Lorg/anddev/andengine/engine/camera/hud/HUD;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized attachChild(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->detachSelf()Z

    .line 265
    invoke-super {p0, p1}, Lorg/anddev/andengine/engine/camera/hud/HUD;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
