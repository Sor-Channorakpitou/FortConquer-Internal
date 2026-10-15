.class Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$5;
.super Ljava/lang/Object;
.source "UnitPartAttackEffect.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->createDupModifier([Lorg/anddev/andengine/entity/modifier/IEntityModifier;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;F)Lorg/anddev/andengine/entity/modifier/IEntityModifier;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$5;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    .line 286
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

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$5;->onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 2
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
    .line 295
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lorg/anddev/andengine/entity/IEntity;->setVisible(Z)V

    .line 296
    check-cast p2, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .end local p2    # "pItem":Lorg/anddev/andengine/entity/IEntity;
    const/high16 v0, 0x42240000    # 41.0f

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$5;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDurationMakeup:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 297
    return-void
.end method

.method public bridge synthetic onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$5;->onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1
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
    .line 289
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p2, v0}, Lorg/anddev/andengine/entity/IEntity;->setAlpha(F)V

    .line 290
    return-void
.end method
