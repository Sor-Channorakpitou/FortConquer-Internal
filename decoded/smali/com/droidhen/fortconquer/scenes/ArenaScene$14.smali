.class Lcom/droidhen/fortconquer/scenes/ArenaScene$14;
.super Ljava/lang/Object;
.source "ArenaScene.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/ArenaScene;->createOneSideSeatModifiers(Z[[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/ArenaScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$14;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/scenes/ArenaScene$14;->onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 4
    .param p2, "entity"    # Lorg/anddev/andengine/entity/IEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;",
            "Lorg/anddev/andengine/entity/IEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "arg0":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$14;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v2, v2, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerCards:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 437
    .local v0, "leftCardNum":I
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$14;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v2, v2, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 438
    .local v1, "rightCardNum":I
    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getX()F

    move-result v2

    const/high16 v3, 0x43c80000    # 400.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 440
    if-lt v0, v1, :cond_0

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$14;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v2, v2, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerCards:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v0, v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$14;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->showVSandStart()V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$14;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v2, v2, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mEnemyCards:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_0

    .line 448
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$14;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/scenes/ArenaScene;->showVSandStart()V

    goto :goto_0
.end method

.method public bridge synthetic onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/scenes/ArenaScene$14;->onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 2
    .param p2, "entity"    # Lorg/anddev/andengine/entity/IEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;",
            "Lorg/anddev/andengine/entity/IEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, "arg0":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getX()F

    move-result v0

    const/high16 v1, 0x43c80000    # 400.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ArenaScene$14;->this$0:Lcom/droidhen/fortconquer/scenes/ArenaScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ArenaScene;->mPlayerCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 431
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 432
    :cond_0
    return-void
.end method
