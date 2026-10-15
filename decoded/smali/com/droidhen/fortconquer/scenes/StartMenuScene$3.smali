.class Lcom/droidhen/fortconquer/scenes/StartMenuScene$3;
.super Ljava/lang/Object;
.source "StartMenuScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/StartMenuScene;->createBGAndSprites()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/StartMenuScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/StartMenuScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/StartMenuScene;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StartMenuScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/StartMenuScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->openRateScreen()V

    .line 113
    return-void
.end method
