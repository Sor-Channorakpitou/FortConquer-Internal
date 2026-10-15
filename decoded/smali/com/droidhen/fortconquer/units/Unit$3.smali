.class Lcom/droidhen/fortconquer/units/Unit$3;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Unit$3;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    .line 1382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$3;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$3;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$3;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$3;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mGhostSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$3;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mDieEffectSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$3;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mDieBloodSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    if-nez v0, :cond_1

    .line 1394
    :cond_0
    :goto_0
    return-void

    .line 1388
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$3;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartHead;->reset()V

    .line 1389
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$3;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartChest;->reset()V

    .line 1390
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$3;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->reset()V

    .line 1391
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$3;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mGhostSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit$3;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/Unit;->mGhostModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z

    .line 1392
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$3;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mDieEffectSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit$3;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/Unit;->mDieEffectModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z

    .line 1393
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$3;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mDieBloodSprite:Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/Unit$3;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/Unit;->mDieBloodModifier:Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z

    goto :goto_0
.end method
