.class Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$2;
.super Ljava/lang/Object;
.source "StageCompleteDlg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->initSprite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$2;->this$0:Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$2;->this$0:Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->access$1(Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;)Lcom/droidhen/fortconquer/scenes/SmartEntity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->setVisible(Z)V

    .line 191
    return-void
.end method
