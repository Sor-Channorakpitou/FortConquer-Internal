.class Lcom/droidhen/fortconquer/scenes/GameScene$4;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$4;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->access$0(Lcom/droidhen/fortconquer/scenes/GameScene;)V

    .line 202
    return-void
.end method
