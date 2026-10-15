.class public Lcom/gamepromote/offerwall/AdData;
.super Ljava/lang/Object;
.source "AdData.java"


# static fields
.field public static final ACTION_DOWNLOAD:I = 0x1

.field public static final ACTION_RATE:I = 0x2


# instance fields
.field private action:I

.field private aid:I

.field private description:Ljava/lang/String;

.field private game:Ljava/lang/String;

.field private gamePackage:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private referrer:Ljava/lang/String;

.field private reward:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "aid"    # I
    .param p2, "game"    # Ljava/lang/String;
    .param p3, "gamePackage"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "icon"    # Ljava/lang/String;
    .param p6, "action"    # I
    .param p7, "reward"    # I
    .param p8, "referrer"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/gamepromote/offerwall/AdData;->aid:I

    .line 20
    iput-object p2, p0, Lcom/gamepromote/offerwall/AdData;->game:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/gamepromote/offerwall/AdData;->gamePackage:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/gamepromote/offerwall/AdData;->description:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/gamepromote/offerwall/AdData;->icon:Ljava/lang/String;

    .line 24
    iput p6, p0, Lcom/gamepromote/offerwall/AdData;->action:I

    .line 25
    iput p7, p0, Lcom/gamepromote/offerwall/AdData;->reward:I

    .line 26
    iput-object p8, p0, Lcom/gamepromote/offerwall/AdData;->referrer:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/gamepromote/offerwall/AdData;->action:I

    return v0
.end method

.method public getAid()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/gamepromote/offerwall/AdData;->aid:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/gamepromote/offerwall/AdData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGame()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gamepromote/offerwall/AdData;->game:Ljava/lang/String;

    return-object v0
.end method

.method public getGamePackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/gamepromote/offerwall/AdData;->gamePackage:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/gamepromote/offerwall/AdData;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/gamepromote/offerwall/AdData;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public getReward()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/gamepromote/offerwall/AdData;->reward:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdData [aid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/gamepromote/offerwall/AdData;->aid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", game="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gamepromote/offerwall/AdData;->game:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gamePackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gamepromote/offerwall/AdData;->gamePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/gamepromote/offerwall/AdData;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gamepromote/offerwall/AdData;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/gamepromote/offerwall/AdData;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reward="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/gamepromote/offerwall/AdData;->reward:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/gamepromote/offerwall/AdData;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
