.class Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$1;
.super Ljava/lang/Object;
.source "UnitPartAttackEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$1;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$1;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->detachSelf()Z

    .line 44
    return-void
.end method
