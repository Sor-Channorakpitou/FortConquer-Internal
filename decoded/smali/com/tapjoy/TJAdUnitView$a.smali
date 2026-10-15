.class final Lcom/tapjoy/TJAdUnitView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/mraid/listener/MraidViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJAdUnitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJAdUnitView;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJAdUnitView;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJAdUnitView;B)V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/tapjoy/TJAdUnitView$a;-><init>(Lcom/tapjoy/TJAdUnitView;)V

    return-void
.end method


# virtual methods
.method public final onClose()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitView;->finish()V

    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 491
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    iget-object v1, v1, Lcom/tapjoy/TJAdUnitView;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v1, v1, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    if-eqz v1, :cond_1

    .line 493
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Uncaught"

    aput-object v2, v1, v0

    const-string v2, "uncaught"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "Error"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "error"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "not defined"

    aput-object v3, v1, v2

    .line 495
    const-string v2, "TJAdUnitView"

    const-string v3, "shouldClose..."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 500
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v3}, Lcom/tapjoy/TJAdUnitView;->handleClose()V

    .line 498
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_1
    return v5
.end method

.method public final onEventFired()Z
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method public final onExpand()Z
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public final onExpandClose()Z
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJAdUnitView;->handleWebViewOnPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->b(Lcom/tapjoy/TJAdUnitView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->c(Lcom/tapjoy/TJAdUnitView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->display()V

    .line 544
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->b:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->b:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 546
    :cond_1
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 513
    const-string v0, "TJAdUnitView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageStarted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->b(Lcom/tapjoy/TJAdUnitView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->c(Lcom/tapjoy/TJAdUnitView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->c(Lcom/tapjoy/TJAdUnitView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 527
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-boolean v3, v0, Lcom/tapjoy/TJAdUnitJSBridge;->customClose:Z

    .line 528
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-boolean v3, v0, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    .line 530
    :cond_1
    return-void
.end method

.method public final onReady()Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tapjoy/TJAdUnitView;->handleWebViewOnReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public final onResize()Z
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public final onResizeClose()Z
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 553
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    const-string v1, "Connection not properly established"

    invoke-virtual {v0, p1, v3, v1, p2}, Lcom/tapjoy/TJAdUnitView;->handleWebViewOnReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 635
    .end local p1    # "view":Landroid/webkit/WebView;
    :goto_0
    return v0

    .line 557
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    iput-boolean v3, v0, Lcom/tapjoy/TJAdUnitView;->i:Z

    .line 562
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v4, "https://ws.tapjoyads.com/"

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 565
    :goto_1
    const-string v4, "TJAdUnitView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "interceptURL: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with host "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    iget-object v4, v4, Lcom/tapjoy/TJAdUnitView;->b:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    iget-object v4, v4, Lcom/tapjoy/TJAdUnitView;->b:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v4}, Lcom/tapjoy/mraid/view/MraidView;->isMraid()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "mraid"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 570
    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 574
    :cond_1
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    invoke-static {v4}, Lcom/tapjoy/TJAdUnitView;->d(Lcom/tapjoy/TJAdUnitView;)I

    move-result v4

    if-ne v4, v7, :cond_2

    const-string v4, "offer_wall"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 576
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    const-string v1, "offer_wall"

    invoke-static {v0, v1}, Lcom/tapjoy/TJAdUnitView;->a(Lcom/tapjoy/TJAdUnitView;Ljava/lang/String;)V

    move v0, v2

    .line 577
    goto :goto_0

    .line 581
    :cond_2
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    invoke-static {v4}, Lcom/tapjoy/TJAdUnitView;->d(Lcom/tapjoy/TJAdUnitView;)I

    move-result v4

    if-ne v4, v7, :cond_3

    const-string v4, "tjvideo"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 583
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    const-string v1, "tjvideo"

    invoke-static {v0, v1}, Lcom/tapjoy/TJAdUnitView;->a(Lcom/tapjoy/TJAdUnitView;Ljava/lang/String;)V

    move v0, v2

    .line 584
    goto :goto_0

    .line 590
    :cond_3
    const-string v4, "tjvideo://"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 592
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    invoke-static {v0, p2}, Lcom/tapjoy/TJAdUnitView;->b(Lcom/tapjoy/TJAdUnitView;Ljava/lang/String;)V

    move v0, v2

    .line 593
    goto/16 :goto_0

    .line 598
    :cond_4
    const-string v4, "showOffers"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 600
    const-string v0, "TJAdUnitView"

    const-string v3, "showOffers"

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    new-instance v0, Lcom/tapjoy/TJCOffers;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    invoke-direct {v0, v3}, Lcom/tapjoy/TJCOffers;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCOffers;->showOffers(Lcom/tapjoy/TJOffersListener;)V

    move v0, v2

    .line 602
    goto/16 :goto_0

    .line 607
    :cond_5
    const-string v1, "dismiss"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 609
    const-string v0, "TJAdUnitView"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitView;->finish()V

    move v0, v2

    .line 611
    goto/16 :goto_0

    .line 618
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string v0, "tjyoutubevideo=true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getRedirectDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getRedirectDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 620
    :cond_8
    const-string v0, "TJAdUnitView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Open redirecting URL:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    check-cast p1, Lcom/tapjoy/mraid/view/MraidView;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-virtual {p1, p2}, Lcom/tapjoy/mraid/view/MraidView;->loadUrlStandard(Ljava/lang/String;)V

    move v0, v2

    .line 622
    goto/16 :goto_0

    .line 626
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_9
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    if-eqz v0, :cond_a

    .line 628
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$a;->a:Lcom/tapjoy/TJAdUnitView;

    iput-boolean v2, v0, Lcom/tapjoy/TJAdUnitView;->i:Z

    move v0, v3

    .line 629
    goto/16 :goto_0

    .line 634
    :cond_a
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v2

    .line 635
    goto/16 :goto_0
.end method
