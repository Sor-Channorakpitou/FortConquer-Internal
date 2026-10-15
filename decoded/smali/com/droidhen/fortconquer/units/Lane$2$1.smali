.class Lcom/droidhen/fortconquer/units/Lane$2$1;
.super Ljava/lang/Object;
.source "Lane.java"

# interfaces
.implements Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/units/Lane$2;->onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/droidhen/fortconquer/units/Lane$2;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/units/Lane$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Lane$2$1;->this$1:Lcom/droidhen/fortconquer/units/Lane$2;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lorg/anddev/andengine/entity/sprite/AnimatedSprite;)V
    .locals 1
    .param p1, "pAnimatedSprite"    # Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Lane$2$1;->this$1:Lcom/droidhen/fortconquer/units/Lane$2;

    invoke-static {v0}, Lcom/droidhen/fortconquer/units/Lane$2;->access$2(Lcom/droidhen/fortconquer/units/Lane$2;)Lcom/droidhen/fortconquer/units/Lane;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Lane;->fireballKillUnits()V

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setVisible(Z)V

    .line 161
    return-void
.end method
