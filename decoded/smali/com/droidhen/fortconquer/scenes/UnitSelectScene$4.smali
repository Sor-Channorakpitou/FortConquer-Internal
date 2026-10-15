.class Lcom/droidhen/fortconquer/scenes/UnitSelectScene$4;
.super Ljava/lang/Object;
.source "UnitSelectScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/UnitSelectScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/droidhen/fortconquer/GameActivity;->mShopScene:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->setupScene()V

    .line 137
    return-void
.end method
