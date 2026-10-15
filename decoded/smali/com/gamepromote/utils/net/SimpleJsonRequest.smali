.class public Lcom/gamepromote/utils/net/SimpleJsonRequest;
.super Lcom/gamepromote/utils/net/AbstractPostRequest;
.source "SimpleJsonRequest.java"


# instance fields
.field private params:Lorg/json/JSONObject;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/gamepromote/utils/net/AbstractPostRequest;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/gamepromote/utils/net/SimpleJsonRequest;->url:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/gamepromote/utils/net/SimpleJsonRequest;->params:Lorg/json/JSONObject;

    .line 15
    return-void
.end method


# virtual methods
.method protected getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "application/json"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/gamepromote/utils/net/SimpleJsonRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public writeData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/gamepromote/utils/net/SimpleJsonRequest;->params:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/gamepromote/utils/net/SimpleJsonRequest;->params:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gamepromote/utils/net/SimpleJsonRequest;->write(Ljava/lang/String;)V

    .line 27
    :cond_0
    return-void
.end method
