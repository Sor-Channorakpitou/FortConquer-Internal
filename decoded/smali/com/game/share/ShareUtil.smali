.class public Lcom/game/share/ShareUtil;
.super Ljava/lang/Object;
.source "ShareUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static share(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 10
    sget-object v0, Lcom/game/share/ShareMsgType;->Empty:Lcom/game/share/ShareMsgType;

    invoke-static {p0, v1, v1, v0, p1}, Lcom/game/share/ShareUtil;->share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/game/share/ShareMsgType;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public static share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "score"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, 0x0

    sget-object v1, Lcom/game/share/ShareMsgType;->Score:Lcom/game/share/ShareMsgType;

    invoke-static {p0, p1, v0, v1, p2}, Lcom/game/share/ShareUtil;->share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/game/share/ShareMsgType;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/game/share/ShareMsgType;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "score"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "msgType"    # Lcom/game/share/ShareMsgType;
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-virtual {p3, p0, p1, p2}, Lcom/game/share/ShareMsgType;->format(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "message":Ljava/lang/String;
    invoke-static {p0, v0, p4}, Lcom/game/share/ShareUtil;->shareInternal(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "score"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 19
    sget-object v0, Lcom/game/share/ShareMsgType;->ScoreMode:Lcom/game/share/ShareMsgType;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/game/share/ShareUtil;->share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/game/share/ShareMsgType;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static shareForResult(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 45
    sget-object v3, Lcom/game/share/ShareMsgType;->Empty:Lcom/game/share/ShareMsgType;

    move-object v0, p0

    move-object v2, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/game/share/ShareUtil;->shareForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/game/share/ShareMsgType;Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public static shareForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "score"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    .line 51
    const/4 v2, 0x0

    sget-object v3, Lcom/game/share/ShareMsgType;->Score:Lcom/game/share/ShareMsgType;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/game/share/ShareUtil;->shareForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/game/share/ShareMsgType;Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method public static shareForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/game/share/ShareMsgType;Ljava/lang/String;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "score"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "msgType"    # Lcom/game/share/ShareMsgType;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "requestCode"    # I

    .prologue
    .line 63
    invoke-virtual {p3, p0, p1, p2}, Lcom/game/share/ShareMsgType;->format(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "message":Ljava/lang/String;
    invoke-static {p0, v0, p4, p5}, Lcom/game/share/ShareUtil;->shareInternalForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public static shareForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "score"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "requestCode"    # I

    .prologue
    .line 57
    sget-object v3, Lcom/game/share/ShareMsgType;->ScoreMode:Lcom/game/share/ShareMsgType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/game/share/ShareUtil;->shareForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/game/share/ShareMsgType;Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public static shareInternal(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_1

    .line 32
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 37
    :goto_0
    if-eqz p1, :cond_0

    .line 38
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void

    .line 35
    :cond_1
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static shareInternalForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_1

    .line 71
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    :goto_0
    if-eqz p1, :cond_0

    .line 77
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    :cond_0
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 80
    return-void

    .line 74
    :cond_1
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
