.class Lcom/droidhen/fortconquer/units/BlankCard$1;
.super Ljava/lang/Object;
.source "BlankCard.java"

# interfaces
.implements Lcom/droidhen/fortconquer/kits/ObjectGenerator;


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
        "Ljava/lang/Object;",
        "Lcom/droidhen/fortconquer/kits/ObjectGenerator",
        "<",
        "Lcom/droidhen/fortconquer/units/BlankCard;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public newObject()Lcom/droidhen/fortconquer/units/BlankCard;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/droidhen/fortconquer/units/BlankCard;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/droidhen/fortconquer/units/BlankCard;-><init>(Lcom/droidhen/fortconquer/units/BlankCard;)V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/units/BlankCard$1;->newObject()Lcom/droidhen/fortconquer/units/BlankCard;

    move-result-object v0

    return-object v0
.end method
