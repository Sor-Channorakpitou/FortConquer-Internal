.class Lcom/droidhen/fortconquer/scenes/ArenaScene$5;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->checkRightCardDead()V

    .line 197
    return-void
.end method
