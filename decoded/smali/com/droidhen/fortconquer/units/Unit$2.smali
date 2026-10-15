.class Lcom/droidhen/fortconquer/units/Unit$2;
.super Ljava/lang/Object;
.source "Unit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/units/Unit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/units/Unit;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/units/Unit;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Unit$2;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$2;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/Entity;->detachSelf()Z

    .line 109
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$2;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/Entity;->detachSelf()Z

    .line 110
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$2;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/Entity;->detachSelf()Z

    .line 112
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentScene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$2;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mEffectContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/Entity;->detachSelf()Z

    .line 115
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$2;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mRadarPointSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->detachSelf()Z

    .line 118
    :cond_0
    return-void
.end method
