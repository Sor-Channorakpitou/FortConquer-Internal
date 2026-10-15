.class Lcom/droidhen/fortconquer/scenes/SmartScene$3;
.super Ljava/lang/Object;
.source "SmartScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/SmartScene;->swithToScene()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/SmartScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/SmartScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/SmartScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/SmartScene;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "userIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sInstance:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v1}, Lcom/droidhen/fortconquer/CCPrefs;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sInstance:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v1}, Lcom/gamepromote/offerwall/OfferWall;->getInstance(Landroid/content/Context;)Lcom/gamepromote/offerwall/OfferWall;

    move-result-object v1

    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->sInstance:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v1, v2, v0}, Lcom/gamepromote/offerwall/OfferWall;->getAdReward(Lcom/gamepromote/offerwall/RewardCallback;Ljava/util/List;)V

    .line 100
    return-void
.end method
