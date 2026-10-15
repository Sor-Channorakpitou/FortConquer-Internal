.class public Lcom/tapjoy/OldTapjoyVideoData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 97
    return-void
.end method

.method public getClickURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tapjoy/OldTapjoyVideoData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tapjoy/OldTapjoyVideoData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tapjoy/OldTapjoyVideoData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getIconURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tapjoy/OldTapjoyVideoData;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tapjoy/OldTapjoyVideoData;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tapjoy/OldTapjoyVideoData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tapjoy/OldTapjoyVideoData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tapjoy/OldTapjoyVideoData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getWebviewURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tapjoy/OldTapjoyVideoData;->h:Ljava/lang/String;

    return-object v0
.end method

.method public setClickURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "clickURL"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tapjoy/OldTapjoyVideoData;->c:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setCurrencyAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "currencyAmount"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tapjoy/OldTapjoyVideoData;->f:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setCurrencyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "currencyName"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tapjoy/OldTapjoyVideoData;->e:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setIconURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconURL"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tapjoy/OldTapjoyVideoData;->g:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setLocalFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "absolutePath"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tapjoy/OldTapjoyVideoData;->i:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setOfferID(Ljava/lang/String;)V
    .locals 0
    .param p1, "offerID"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/tapjoy/OldTapjoyVideoData;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setVideoAdName(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoAdName"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tapjoy/OldTapjoyVideoData;->d:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setVideoURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoURL"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tapjoy/OldTapjoyVideoData;->b:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setWebviewURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "webviewURL"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tapjoy/OldTapjoyVideoData;->h:Ljava/lang/String;

    .line 58
    return-void
.end method
