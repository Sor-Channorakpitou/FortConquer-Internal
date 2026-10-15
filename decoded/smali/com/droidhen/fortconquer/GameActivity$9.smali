.class Lcom/droidhen/fortconquer/GameActivity$9;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/GameActivity;->initializeGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/GameActivity;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/GameActivity$9;->this$0:Lcom/droidhen/fortconquer/GameActivity;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/droidhen/fortconquer/GameActivity$9;->this$0:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v0}, Lcom/droidhen/fortconquer/GameActivity;->access$3(Lcom/droidhen/fortconquer/GameActivity;)Lcom/droidhen/fortconquer/scenes/LogoScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/LogoScene;->detachChildren()V

    .line 405
    iget-object v0, p0, Lcom/droidhen/fortconquer/GameActivity$9;->this$0:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v0}, Lcom/droidhen/fortconquer/GameActivity;->access$3(Lcom/droidhen/fortconquer/GameActivity;)Lcom/droidhen/fortconquer/scenes/LogoScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/LogoScene;->unloadResource()V

    .line 406
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mStartMenuScene:Lcom/droidhen/fortconquer/scenes/StartMenuScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->setupScene()V

    .line 408
    return-void
.end method
