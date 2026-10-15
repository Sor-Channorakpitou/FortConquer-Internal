.class Lcom/droidhen/fortconquer/scenes/StatusScene$2;
.super Ljava/lang/Object;
.source "StatusScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/StatusScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/StatusScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->showGuide()V

    .line 144
    return-void
.end method
