.class Lcom/droidhen/fortconquer/scenes/GameScene$24;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/GameScene;->playDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

.field private final synthetic val$playerWin:Z


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$24;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iput-boolean p2, p0, Lcom/droidhen/fortconquer/scenes/GameScene$24;->val$playerWin:Z

    .line 1303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 1306
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 1307
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$24;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v2, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$24;->val$playerWin:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 1308
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$24;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v2, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mFortSprites:[Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$24;->val$playerWin:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_1
    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->setCurrentTileIndex(I)V

    .line 1309
    return-void

    .line 1307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1308
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
