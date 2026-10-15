.class Lcom/droidhen/fortconquer/scenes/UnitSelectScene$20;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$20;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 883
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mStatusScene:Lcom/droidhen/fortconquer/scenes/StatusScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/StatusScene;->setupScene()V

    .line 884
    return-void
.end method
