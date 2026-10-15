.class Lcom/droidhen/fortconquer/units/Unit$4;
.super Lorg/anddev/andengine/entity/modifier/MoveByModifier;
.source "Unit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/units/Unit;->createMoveModifier()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/units/Unit;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/units/Unit;FFF)V
    .locals 0
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # F

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Unit$4;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    .line 240
    invoke-direct {p0, p2, p3, p4}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method protected onChangeValues(FLorg/anddev/andengine/entity/IEntity;FF)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p3, "pX"    # F
    .param p4, "pY"    # F

    .prologue
    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;->onChangeValues(FLorg/anddev/andengine/entity/IEntity;FF)V

    .line 245
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/Unit$4;->this$0:Lcom/droidhen/fortconquer/units/Unit;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/Unit;->updateRadarPosition()V

    .line 246
    return-void
.end method
