.class Lcom/droidhen/fortconquer/units/UnitPart$1;
.super Ljava/lang/Object;
.source "UnitPart.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/units/UnitPart;->createModifierListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/units/UnitPart;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/units/UnitPart;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/UnitPart$1;->this$0:Lcom/droidhen/fortconquer/units/UnitPart;

    .line 1146
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

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPart$1;->onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
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
    .line 1154
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPart$1;->this$0:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPart;->stand()V

    .line 1155
    return-void
.end method

.method public bridge synthetic onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPart$1;->onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

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
    .line 1148
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    return-void
.end method
