.class public Lcom/tapjoy/TapjoyVideo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/tapjoy/TapjoyVideo;

.field private static b:Lcom/tapjoy/TJVideoListener;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/tapjoy/OldTapjoyVideoData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyVideo;->a:Lcom/tapjoy/TapjoyVideo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideo;->c:Landroid/content/Context;

    .line 24
    sput-object p0, Lcom/tapjoy/TapjoyVideo;->a:Lcom/tapjoy/TapjoyVideo;

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyVideo;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/tapjoy/TapjoyVideo;->a:Lcom/tapjoy/TapjoyVideo;

    return-object v0
.end method

.method public static videoComplete()V
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/tapjoy/TapjoyVideo;->b:Lcom/tapjoy/TJVideoListener;

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/tapjoy/TapjoyVideo;->b:Lcom/tapjoy/TJVideoListener;

    invoke-interface {v0}, Lcom/tapjoy/TJVideoListener;->onVideoComplete()V

    .line 124
    :cond_0
    return-void
.end method

.method public static videoError(I)V
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 103
    sget-object v0, Lcom/tapjoy/TapjoyVideo;->b:Lcom/tapjoy/TJVideoListener;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/tapjoy/TapjoyVideo;->b:Lcom/tapjoy/TJVideoListener;

    invoke-interface {v0, p0}, Lcom/tapjoy/TJVideoListener;->onVideoError(I)V

    .line 106
    :cond_0
    return-void
.end method

.method public static videoStart()V
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/tapjoy/TapjoyVideo;->b:Lcom/tapjoy/TJVideoListener;

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/tapjoy/TapjoyVideo;->b:Lcom/tapjoy/TJVideoListener;

    invoke-interface {v0}, Lcom/tapjoy/TJVideoListener;->onVideoStart()V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public setVideoListener(Lcom/tapjoy/TJVideoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tapjoy/TJVideoListener;

    .prologue
    .line 94
    sput-object p1, Lcom/tapjoy/TapjoyVideo;->b:Lcom/tapjoy/TJVideoListener;

    .line 95
    return-void
.end method

.method public startVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "videoID"    # Ljava/lang/String;
    .param p2, "currencyName"    # Ljava/lang/String;
    .param p3, "currencyAmount"    # Ljava/lang/String;
    .param p4, "clickURL"    # Ljava/lang/String;
    .param p5, "webviewURL"    # Ljava/lang/String;
    .param p6, "videoURL"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 43
    const-string v1, "TapjoyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting video activity with video: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 47
    :cond_0
    const-string v1, "TapjoyVideo"

    const-string v2, "aborting video playback... invalid or missing parameter"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_0
    return v0

    .line 52
    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 54
    new-instance v0, Lcom/tapjoy/OldTapjoyVideoData;

    invoke-direct {v0}, Lcom/tapjoy/OldTapjoyVideoData;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    .line 55
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v0, p1}, Lcom/tapjoy/OldTapjoyVideoData;->setOfferID(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v0, p2}, Lcom/tapjoy/OldTapjoyVideoData;->setCurrencyName(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v0, p3}, Lcom/tapjoy/OldTapjoyVideoData;->setCurrencyAmount(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v0, p4}, Lcom/tapjoy/OldTapjoyVideoData;->setClickURL(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v0, p5}, Lcom/tapjoy/OldTapjoyVideoData;->setWebviewURL(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v0, p6}, Lcom/tapjoy/OldTapjoyVideoData;->setVideoURL(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v0, p2}, Lcom/tapjoy/OldTapjoyVideoData;->setCurrencyName(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v0, p3}, Lcom/tapjoy/OldTapjoyVideoData;->setCurrencyAmount(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v0, p4}, Lcom/tapjoy/OldTapjoyVideoData;->setClickURL(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v0, p5}, Lcom/tapjoy/OldTapjoyVideoData;->setWebviewURL(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v0, p6}, Lcom/tapjoy/OldTapjoyVideoData;->setVideoURL(Ljava/lang/String;)V

    .line 72
    const-string v0, "TapjoyVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "videoToPlay: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v2}, Lcom/tapjoy/OldTapjoyVideoData;->getOfferId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "TapjoyVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "amount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v2}, Lcom/tapjoy/OldTapjoyVideoData;->getCurrencyAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "TapjoyVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currency: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v2}, Lcom/tapjoy/OldTapjoyVideoData;->getCurrencyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "TapjoyVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clickURL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v2}, Lcom/tapjoy/OldTapjoyVideoData;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "TapjoyVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "webviewURL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v2}, Lcom/tapjoy/OldTapjoyVideoData;->getWebviewURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "TapjoyVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "videoURL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v2}, Lcom/tapjoy/OldTapjoyVideoData;->getVideoURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->c:Landroid/content/Context;

    const-class v2, Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    const-string v1, "VIDEO_DATA"

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->d:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 86
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 62
    :cond_2
    const-string v1, "TapjoyVideo"

    const-string v2, "no video data and no video url - aborting playback..."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
