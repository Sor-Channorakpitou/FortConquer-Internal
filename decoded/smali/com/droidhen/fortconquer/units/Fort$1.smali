.class Lcom/droidhen/fortconquer/units/Fort$1;
.super Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;
.source "Fort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/units/Fort;->createFortShakeModifier()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/units/Fort;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/units/Fort;Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V
    .locals 0
    .param p2, "$anonymous0"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/Fort$1;->this$0:Lcom/droidhen/fortconquer/units/Fort;

    .line 148
    invoke-direct {p0, p2, p3}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;->reset()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/units/Fort$1;->mFinished:Z

    .line 153
    return-void
.end method
