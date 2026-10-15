.class public Lorg/anddev/andengine/util/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAsync(Landroid/content/Context;IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;)V
    .locals 7
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pTitleResID"    # I
    .param p2, "pMessageResID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p3, "pCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p4, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<TT;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V

    .line 74
    return-void
.end method

.method public static doAsync(Landroid/content/Context;IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V
    .locals 7
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pTitleResID"    # I
    .param p2, "pMessageResID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p3, "pCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p4, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<TT;>;"
    .local p5, "pExceptionCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<Ljava/lang/Exception;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V

    .line 90
    return-void
.end method

.method public static doAsync(Landroid/content/Context;IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V
    .locals 7
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pTitleResID"    # I
    .param p2, "pMessageResID"    # I
    .param p6, "pCancelable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p3, "pCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p4, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<TT;>;"
    .local p5, "pExceptionCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<Ljava/lang/Exception;>;"
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V

    .line 98
    return-void
.end method

.method public static doAsync(Landroid/content/Context;IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Z)V
    .locals 7
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pTitleResID"    # I
    .param p2, "pMessageResID"    # I
    .param p5, "pCancelable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p3, "pCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p4, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V

    .line 82
    return-void
.end method

.method public static doAsync(Landroid/content/Context;IILorg/anddev/andengine/util/AsyncCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V
    .locals 3
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pTitleResID"    # I
    .param p2, "pMessageResID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
            "Lorg/anddev/andengine/util/AsyncCallable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p3, "pAsyncCallable":Lorg/anddev/andengine/util/AsyncCallable;, "Lorg/anddev/andengine/util/AsyncCallable<TT;>;"
    .local p4, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<TT;>;"
    .local p5, "pExceptionCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<Ljava/lang/Exception;>;"
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 227
    .local v0, "pd":Landroid/app/ProgressDialog;
    new-instance v1, Lorg/anddev/andengine/util/ActivityUtils$3;

    invoke-direct {v1, v0, p4}, Lorg/anddev/andengine/util/ActivityUtils$3;-><init>(Landroid/app/ProgressDialog;Lorg/anddev/andengine/util/Callback;)V

    invoke-interface {p3, v1, p5}, Lorg/anddev/andengine/util/AsyncCallable;->call(Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    .line 240
    return-void
.end method

.method public static doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;)V
    .locals 7
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pTitle"    # Ljava/lang/CharSequence;
    .param p2, "pMessage"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p3, "pCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p4, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<TT;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V

    .line 78
    return-void
.end method

.method public static doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V
    .locals 7
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pTitle"    # Ljava/lang/CharSequence;
    .param p2, "pMessage"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p3, "pCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p4, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<TT;>;"
    .local p5, "pExceptionCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<Ljava/lang/Exception;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V

    .line 94
    return-void
.end method

.method public static doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V
    .locals 8
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pTitle"    # Ljava/lang/CharSequence;
    .param p2, "pMessage"    # Ljava/lang/CharSequence;
    .param p6, "pCancelable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p3, "pCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p4, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<TT;>;"
    .local p5, "pExceptionCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<Ljava/lang/Exception;>;"
    new-instance v0, Lorg/anddev/andengine/util/ActivityUtils$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p6

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/util/ActivityUtils$1;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    .line 154
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/ActivityUtils$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    return-void
.end method

.method public static doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Z)V
    .locals 7
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pTitle"    # Ljava/lang/CharSequence;
    .param p2, "pMessage"    # Ljava/lang/CharSequence;
    .param p5, "pCancelable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p3, "pCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p4, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V

    .line 86
    return-void
.end method

.method public static doProgressAsync(Landroid/content/Context;ILorg/anddev/andengine/util/progress/ProgressCallable;Lorg/anddev/andengine/util/Callback;)V
    .locals 1
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pTitleResID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "I",
            "Lorg/anddev/andengine/util/progress/ProgressCallable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p2, "pCallable":Lorg/anddev/andengine/util/progress/ProgressCallable;, "Lorg/anddev/andengine/util/progress/ProgressCallable<TT;>;"
    .local p3, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/util/ActivityUtils;->doProgressAsync(Landroid/content/Context;ILorg/anddev/andengine/util/progress/ProgressCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    .line 159
    return-void
.end method

.method public static doProgressAsync(Landroid/content/Context;ILorg/anddev/andengine/util/progress/ProgressCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V
    .locals 6
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pTitleResID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "I",
            "Lorg/anddev/andengine/util/progress/ProgressCallable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p2, "pCallable":Lorg/anddev/andengine/util/progress/ProgressCallable;, "Lorg/anddev/andengine/util/progress/ProgressCallable<TT;>;"
    .local p3, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<TT;>;"
    .local p4, "pExceptionCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<Ljava/lang/Exception;>;"
    new-instance v0, Lorg/anddev/andengine/util/ActivityUtils$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/util/ActivityUtils$2;-><init>(Landroid/content/Context;ILorg/anddev/andengine/util/progress/ProgressCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    .line 222
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/ActivityUtils$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 223
    return-void
.end method

.method public static keepScreenOn(Landroid/app/Activity;)V
    .locals 2
    .param p0, "pActivity"    # Landroid/app/Activity;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 70
    return-void
.end method

.method public static requestFullscreen(Landroid/app/Activity;)V
    .locals 2
    .param p0, "pActivity"    # Landroid/app/Activity;

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 52
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 53
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 55
    return-void
.end method

.method public static setScreenBrightness(Landroid/app/Activity;F)V
    .locals 2
    .param p0, "pActivity"    # Landroid/app/Activity;
    .param p1, "pScreenBrightness"    # F

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 63
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 64
    .local v1, "windowLayoutParams":Landroid/view/WindowManager$LayoutParams;
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 66
    return-void
.end method
