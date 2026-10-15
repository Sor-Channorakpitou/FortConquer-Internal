.class Lcom/gamepromote/offerwall/ad/AdVersion$ProcessThread;
.super Ljava/lang/Thread;
.source "AdVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamepromote/offerwall/ad/AdVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamepromote/offerwall/ad/AdVersion;


# direct methods
.method constructor <init>(Lcom/gamepromote/offerwall/ad/AdVersion;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/gamepromote/offerwall/ad/AdVersion$ProcessThread;->this$0:Lcom/gamepromote/offerwall/ad/AdVersion;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    iget-object v2, p0, Lcom/gamepromote/offerwall/ad/AdVersion$ProcessThread;->this$0:Lcom/gamepromote/offerwall/ad/AdVersion;

    invoke-static {v2}, Lcom/gamepromote/offerwall/ad/AdVersion;->access$0(Lcom/gamepromote/offerwall/ad/AdVersion;)I

    move-result v0

    .line 57
    .local v0, "newVersion":I
    if-lez v0, :cond_0

    .line 58
    sget-object v2, Lcom/gamepromote/offerwall/OfferWall;->GAME_CONTEXT:Landroid/content/Context;

    invoke-static {v2}, Lcom/gamepromote/offerwall/util/DataPreferences;->init(Landroid/content/Context;)V

    .line 59
    invoke-static {}, Lcom/gamepromote/offerwall/util/DataPreferences;->getOfferWallDataVersion()I

    move-result v1

    .line 60
    .local v1, "oldVersion":I
    if-le v0, v1, :cond_0

    .line 61
    invoke-static {v0}, Lcom/gamepromote/offerwall/util/DataPreferences;->setOfferWallDataVersion(I)V

    .line 62
    iget-object v2, p0, Lcom/gamepromote/offerwall/ad/AdVersion$ProcessThread;->this$0:Lcom/gamepromote/offerwall/ad/AdVersion;

    invoke-static {v2}, Lcom/gamepromote/offerwall/ad/AdVersion;->access$1(Lcom/gamepromote/offerwall/ad/AdVersion;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    .end local v1    # "oldVersion":I
    :cond_0
    iget-object v2, p0, Lcom/gamepromote/offerwall/ad/AdVersion$ProcessThread;->this$0:Lcom/gamepromote/offerwall/ad/AdVersion;

    invoke-static {v2}, Lcom/gamepromote/offerwall/ad/AdVersion;->access$2(Lcom/gamepromote/offerwall/ad/AdVersion;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    return-void
.end method
