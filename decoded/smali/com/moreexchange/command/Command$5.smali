.class Lcom/moreexchange/command/Command$5;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moreexchange/command/Command;->sendPost(Ljava/util/List;Ljava/util/List;Lcom/moreexchange/command/Command$AdType;Lcom/moreexchange/command/Command$PostType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "errorResponse"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 362
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 356
    const-string v0, "------MoreExchange------"

    const-string v1, "sendPost Successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void
.end method
