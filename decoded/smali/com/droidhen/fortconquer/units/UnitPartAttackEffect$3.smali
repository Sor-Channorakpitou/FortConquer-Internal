.class Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$3;
.super Ljava/lang/Object;
.source "UnitPartAttackEffect.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->createAttackEffectModifiers([Lorg/anddev/andengine/entity/modifier/IEntityModifier;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$3;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    .line 206
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

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$3;->onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 3
    .param p2, "pItem"    # Lorg/anddev/andengine/entity/IEntity;
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
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    const/4 v2, 0x0

    .line 213
    invoke-interface {p2, v2}, Lorg/anddev/andengine/entity/IEntity;->setVisible(Z)V

    .line 214
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$3;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_STAND_ATTACKING:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    iput-object v1, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    .line 215
    instance-of v0, p2, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-eqz v0, :cond_0

    .line 217
    check-cast p2, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .end local p2    # "pItem":Lorg/anddev/andengine/entity/IEntity;
    invoke-virtual {p2, v2}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->stopAnimation(I)V

    .line 219
    :cond_0
    return-void
.end method

.method public bridge synthetic onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$3;->onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0
    .param p2, "pItem"    # Lorg/anddev/andengine/entity/IEntity;
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
    .line 208
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    return-void
.end method
