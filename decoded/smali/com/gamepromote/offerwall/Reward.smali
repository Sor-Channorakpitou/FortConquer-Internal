.class public Lcom/gamepromote/offerwall/Reward;
.super Ljava/lang/Object;
.source "Reward.java"


# static fields
.field public static final ACTION_DOWNLOAD:I = 0x1

.field public static final ACTION_RATE:I = 0x2


# instance fields
.field private action:I

.field private count:I

.field private game:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "action"    # I
    .param p3, "game"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/gamepromote/offerwall/Reward;->uid:Ljava/lang/String;

    .line 13
    iput p1, p0, Lcom/gamepromote/offerwall/Reward;->count:I

    .line 14
    iput p2, p0, Lcom/gamepromote/offerwall/Reward;->action:I

    .line 15
    iput-object p3, p0, Lcom/gamepromote/offerwall/Reward;->game:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "action"    # I
    .param p3, "game"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/gamepromote/offerwall/Reward;->uid:Ljava/lang/String;

    .line 19
    iput p1, p0, Lcom/gamepromote/offerwall/Reward;->count:I

    .line 20
    iput p2, p0, Lcom/gamepromote/offerwall/Reward;->action:I

    .line 21
    iput-object p3, p0, Lcom/gamepromote/offerwall/Reward;->game:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/gamepromote/offerwall/Reward;->uid:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getRewardCoin()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/gamepromote/offerwall/Reward;->count:I

    return v0
.end method

.method public getRewardGame()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gamepromote/offerwall/Reward;->game:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardReason()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/gamepromote/offerwall/Reward;->action:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/gamepromote/offerwall/Reward;->uid:Ljava/lang/String;

    return-object v0
.end method
