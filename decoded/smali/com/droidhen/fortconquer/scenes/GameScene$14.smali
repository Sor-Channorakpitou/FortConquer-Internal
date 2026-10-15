.class Lcom/droidhen/fortconquer/scenes/GameScene$14;
.super Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;
.source "GameScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/GameScene;->createFortShakeModifier()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/GameScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V
    .locals 0
    .param p2, "$anonymous0"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$14;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 347
    invoke-direct {p0, p2, p3}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 350
    invoke-super {p0}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;->reset()V

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$14;->mFinished:Z

    .line 352
    return-void
.end method
