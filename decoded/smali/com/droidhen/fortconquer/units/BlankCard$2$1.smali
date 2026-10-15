.class Lcom/droidhen/fortconquer/units/BlankCard$2$1;
.super Lcom/droidhen/fortconquer/units/BlankCard;
.source "BlankCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/units/BlankCard$2;->newObject()Lcom/droidhen/fortconquer/units/BlankCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/droidhen/fortconquer/units/BlankCard$2;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/units/BlankCard$2;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/BlankCard$2$1;->this$1:Lcom/droidhen/fortconquer/units/BlankCard$2;

    .line 34
    invoke-direct {p0, v0, v0}, Lcom/droidhen/fortconquer/units/BlankCard;-><init>(Lcom/droidhen/fortconquer/units/BlankCard;Lcom/droidhen/fortconquer/units/BlankCard;)V

    return-void
.end method


# virtual methods
.method public onDetached()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/droidhen/fortconquer/units/BlankCard$2$1;->AUTO_POOL:Lcom/droidhen/fortconquer/kits/ObjectPool;

    invoke-interface {v0, p0}, Lcom/droidhen/fortconquer/kits/ObjectPool;->put(Ljava/lang/Object;)V

    .line 37
    return-void
.end method
