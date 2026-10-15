.class Lcom/droidhen/fortconquer/scenes/CoinStoreScene$1;
.super Ljava/lang/Object;
.source "CoinStoreScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/scenes/CoinStoreScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 353
    invoke-static {}, Lcom/droidhen/fortconquer/TapjoyHelper;->showOffers()V

    .line 354
    return-void
.end method
