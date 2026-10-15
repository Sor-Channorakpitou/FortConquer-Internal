.class Lcom/gamepromote/offerwall/ad/AdRewardMulti$ProcessThread;
.super Ljava/lang/Thread;
.source "AdRewardMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamepromote/offerwall/ad/AdRewardMulti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamepromote/offerwall/ad/AdRewardMulti;


# direct methods
.method constructor <init>(Lcom/gamepromote/offerwall/ad/AdRewardMulti;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/gamepromote/offerwall/ad/AdRewardMulti$ProcessThread;->this$0:Lcom/gamepromote/offerwall/ad/AdRewardMulti;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/gamepromote/offerwall/ad/AdRewardMulti$ProcessThread;->this$0:Lcom/gamepromote/offerwall/ad/AdRewardMulti;

    invoke-static {v1}, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->access$0(Lcom/gamepromote/offerwall/ad/AdRewardMulti;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/gamepromote/offerwall/ad/AdRewardMulti$ProcessThread;->this$0:Lcom/gamepromote/offerwall/ad/AdRewardMulti;

    invoke-static {v1}, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->access$1(Lcom/gamepromote/offerwall/ad/AdRewardMulti;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/gamepromote/offerwall/ad/AdRewardMulti$ProcessThread;->this$0:Lcom/gamepromote/offerwall/ad/AdRewardMulti;

    invoke-static {v1}, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->access$2(Lcom/gamepromote/offerwall/ad/AdRewardMulti;)Lcom/gamepromote/offerwall/RewardCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/gamepromote/offerwall/ad/AdRewardMulti$ProcessThread;->this$0:Lcom/gamepromote/offerwall/ad/AdRewardMulti;

    invoke-static {v2}, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->access$1(Lcom/gamepromote/offerwall/ad/AdRewardMulti;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/gamepromote/offerwall/RewardCallback;->getRewardFinished(Ljava/util/List;)V

    .line 163
    iget-object v1, p0, Lcom/gamepromote/offerwall/ad/AdRewardMulti$ProcessThread;->this$0:Lcom/gamepromote/offerwall/ad/AdRewardMulti;

    invoke-static {v1}, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->access$1(Lcom/gamepromote/offerwall/ad/AdRewardMulti;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/gamepromote/offerwall/ad/AdRewardMulti$ProcessThread;->this$0:Lcom/gamepromote/offerwall/ad/AdRewardMulti;

    invoke-static {v1}, Lcom/gamepromote/offerwall/ad/AdRewardMulti;->access$3(Lcom/gamepromote/offerwall/ad/AdRewardMulti;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 166
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
