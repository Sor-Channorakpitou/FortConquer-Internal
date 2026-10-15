.class Lcom/droidhen/fortconquer/component/CoinBarEntity$2;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mStartMenuScene:Lcom/droidhen/fortconquer/scenes/StartMenuScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/StartMenuScene;->setupScene()V

    .line 50
    return-void
.end method
