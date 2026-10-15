.class Lcom/droidhen/fortconquer/scenes/UnitSelectScene$18;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$18;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$18;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->bIsShowingDialog:Z

    .line 868
    invoke-static {}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->close()V

    .line 869
    return-void
.end method
