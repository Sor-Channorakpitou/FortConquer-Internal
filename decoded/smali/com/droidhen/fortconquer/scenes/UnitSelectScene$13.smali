.class Lcom/droidhen/fortconquer/scenes/UnitSelectScene$13;
.super Ljava/lang/Object;
.source "UnitSelectScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->createBtns()V
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$13;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$13;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->updateCards(I)V

    .line 437
    return-void
.end method
