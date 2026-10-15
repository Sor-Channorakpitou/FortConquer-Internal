.class Lcom/droidhen/fortconquer/units/Unit$5;
.super Ljava/lang/Object;
.source "Unit.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/units/Unit;->createDieModifier(II)Lorg/anddev/andengine/entity/modifier/IEntityModifier;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Unit$5;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    .line 260
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

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/units/Unit$5;->onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

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
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    const/4 v1, 0x1

    .line 270
    invoke-interface {p2, v1}, Lorg/anddev/andengine/entity/IEntity;->setVisible(Z)V

    move-object v0, p2

    .line 271
    check-cast v0, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->getFrameCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 272
    check-cast p2, Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    .end local p2    # "pItem":Lorg/anddev/andengine/entity/IEntity;
    const-wide/16 v0, 0x7d

    invoke-virtual {p2, v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->animate(J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 273
    :cond_0
    return-void
.end method

.method public bridge synthetic onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/units/Unit$5;->onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

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
    .line 264
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p2, v0}, Lorg/anddev/andengine/entity/IEntity;->setAlpha(F)V

    .line 265
    return-void
.end method
