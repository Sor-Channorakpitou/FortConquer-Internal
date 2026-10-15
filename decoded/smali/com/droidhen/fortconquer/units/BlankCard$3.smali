.class Lcom/droidhen/fortconquer/units/BlankCard$3;
.super Lcom/droidhen/fortconquer/kits/GreedPool;
.source "BlankCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/units/BlankCard;->initPool()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/droidhen/fortconquer/kits/GreedPool",
        "<",
        "Lcom/droidhen/fortconquer/units/BlankCard;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/kits/ObjectGenerator;I)V
    .locals 0
    .param p2, "$anonymous1"    # I

    .prologue
    .line 30
    .local p1, "$anonymous0":Lcom/droidhen/fortconquer/kits/ObjectGenerator;, "Lcom/droidhen/fortconquer/kits/ObjectGenerator<Lcom/droidhen/fortconquer/units/BlankCard;>;"
    invoke-direct {p0, p1, p2}, Lcom/droidhen/fortconquer/kits/GreedPool;-><init>(Lcom/droidhen/fortconquer/kits/ObjectGenerator;I)V

    .line 1
    return-void
.end method


# virtual methods
.method public get()Lcom/droidhen/fortconquer/units/BlankCard;
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Lcom/droidhen/fortconquer/kits/GreedPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/units/BlankCard;

    .line 44
    .local v0, "card":Lcom/droidhen/fortconquer/units/BlankCard;
    :goto_0
    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/BlankCard;->hasParent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    return-object v0

    .line 45
    :cond_0
    invoke-super {p0}, Lcom/droidhen/fortconquer/kits/GreedPool;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "card":Lcom/droidhen/fortconquer/units/BlankCard;
    check-cast v0, Lcom/droidhen/fortconquer/units/BlankCard;

    .restart local v0    # "card":Lcom/droidhen/fortconquer/units/BlankCard;
    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/BlankCard$3;->get()Lcom/droidhen/fortconquer/units/BlankCard;

    move-result-object v0

    return-object v0
.end method
