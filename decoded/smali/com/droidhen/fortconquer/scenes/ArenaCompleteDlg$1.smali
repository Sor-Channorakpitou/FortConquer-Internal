.class Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg$1;
.super Ljava/lang/Object;
.source "ArenaCompleteDlg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;->initSprite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg$1;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaCompleteDlg;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->openMoreGameScreen()V

    .line 145
    return-void
.end method
