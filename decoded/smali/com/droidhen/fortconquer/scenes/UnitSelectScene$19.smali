.class Lcom/droidhen/fortconquer/scenes/UnitSelectScene$19;
.super Ljava/lang/Object;
.source "UnitSelectScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$19;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$19;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$14(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)V

    .line 876
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$19;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->nextPost()V

    .line 877
    return-void
.end method
