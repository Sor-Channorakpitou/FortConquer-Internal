.class Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$5;
.super Ljava/lang/Object;
.source "UnitEvolveScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->createUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;->access$5(Lcom/droidhen/fortconquer/scenes/UnitEvolveScene;Z)Lcom/droidhen/fortconquer/units/Card;

    .line 397
    return-void
.end method
