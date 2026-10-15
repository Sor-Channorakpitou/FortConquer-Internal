.class Lcom/droidhen/fortconquer/scenes/GameScene$3;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Lcom/droidhen/andplugin/modifier/TriggerCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/GameScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/GameScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public satisfied()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/GameScene;->IsTexturesLoaded()Z

    move-result v0

    return v0
.end method
