.class Lcom/droidhen/fortconquer/component/CoinBarEntity$5;
.super Ljava/lang/Object;
.source "CoinBarEntity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/component/CoinBarEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/component/CoinBarEntity;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/component/CoinBarEntity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity$5;->this$0:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/droidhen/fortconquer/component/CoinBarEntity$5;->this$0:Lcom/droidhen/fortconquer/component/CoinBarEntity;

    invoke-static {v0}, Lcom/droidhen/fortconquer/component/CoinBarEntity;->access$0(Lcom/droidhen/fortconquer/component/CoinBarEntity;)Lcom/droidhen/fortconquer/scenes/SmartScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->back()V

    .line 71
    return-void
.end method
