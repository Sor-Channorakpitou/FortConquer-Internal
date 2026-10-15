.class Lcom/moreexchange/command/Command$4;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moreexchange/command/Command;->sendInstallPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "errorResponse"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 307
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/moreexchange/command/Command;->access$2(Z)V

    .line 308
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 293
    invoke-static {}, Lcom/moreexchange/MoreExchange;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 294
    const-string v3, "MoreExchangeAdvertiserState"

    .line 293
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 295
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 297
    .local v0, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "install_post_successful"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 298
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 300
    const-string v2, "------MoreExchange------"

    const-string v3, "sendInstallPost Successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {v4}, Lcom/moreexchange/command/Command;->access$2(Z)V

    .line 302
    return-void
.end method
