.class Lcom/droidhen/fortconquer/units/Unit$1;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Unit$1;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$1;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mRadarPointSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->detachSelf()Z

    .line 96
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$1;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mUnitContainer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/Entity;->detachSelf()Z

    .line 97
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$1;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mUnitBackLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/Entity;->detachSelf()Z

    .line 98
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$1;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mUnitTopLayer:Lorg/anddev/andengine/entity/Entity;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/Entity;->detachSelf()Z

    .line 99
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$1;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mHealthBgSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->detachSelf()Z

    .line 100
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$1;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/Unit;->mHealthSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->detachSelf()Z

    .line 101
    return-void
.end method
