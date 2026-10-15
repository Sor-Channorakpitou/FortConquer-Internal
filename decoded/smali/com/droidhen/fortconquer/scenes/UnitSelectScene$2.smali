.class Lcom/droidhen/fortconquer/scenes/UnitSelectScene$2;
.super Ljava/lang/Object;
.source "UnitSelectScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/UnitSelectScene;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 119
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$0(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    new-instance v1, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v3, 0x0

    new-instance v4, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, v5, v7, v6}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-direct {v4, v5, v6, v6}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const v5, 0x3f4ccccd    # 0.8f

    invoke-direct {v4, v5, v6, v7}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$1(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;)V

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$2(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Lorg/anddev/andengine/entity/sprite/Sprite;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$0(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 125
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$2;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->access$0(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;)Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;->reset()V

    goto :goto_0
.end method
