.class Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$7;
.super Ljava/lang/Object;
.source "UnitEvolveScene.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$currentIndex:I


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iput p2, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$7;->val$currentIndex:I

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->access$6(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)I

    move-result v0

    iget v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$7;->val$currentIndex:I

    if-eq v0, v1, :cond_0

    .line 414
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 415
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    iget v1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$7;->val$currentIndex:I

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->access$7(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;I)V

    .line 418
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->swicthTab()V

    .line 419
    return-void
.end method
