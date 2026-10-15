.class Lcom/droidhen/fortconquer/scenes/StatusScene$7;
.super Ljava/lang/Object;
.source "StatusScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/StatusScene;->onKeyDown(ILandroid/view/KeyEvent;)Z
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/StatusScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/StatusScene;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 498
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mStartMenuScene:Lcom/droidhen/fortconquer/scenes/StartMenuScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->setupScene()V

    .line 499
    return-void
.end method
