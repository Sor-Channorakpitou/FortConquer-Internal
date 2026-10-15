.class Lcom/droidhen/fortconquer/scenes/ArenaScene$10;
.super Ljava/lang/Object;
.source "ArenaScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/ArenaScene;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mShowDlgRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 248
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaCompleteDlg:Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnL:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 249
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaCompleteDlg:Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->sBtnR:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 250
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mArenaCompleteDlg:Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->msBtnFreeCrystals:Lcom/droidhen/andplugin/ComposedAnimatedButton;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 251
    return-void
.end method
