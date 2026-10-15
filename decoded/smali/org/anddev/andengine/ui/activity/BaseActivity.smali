.class public abstract Lorg/anddev/andengine/ui/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/ui/activity/BaseActivity$CancelledException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected doAsync(IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;)V
    .locals 6
    .param p1, "pTitleResID"    # I
    .param p2, "pMessageResID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p3, "pCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p4, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/ui/activity/BaseActivity;->doAsync(IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    .line 58
    return-void
.end method

.method protected doAsync(IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V
    .locals 0
    .param p1, "pTitleResID"    # I
    .param p2, "pMessageResID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
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
    .line 73
    .local p3, "pCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p4, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<TT;>;"
    .local p5, "pExceptionCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<Ljava/lang/Exception;>;"
    invoke-static/range {p0 .. p5}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    .line 74
    return-void
.end method

.method protected doAsync(IILorg/anddev/andengine/util/AsyncCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V
    .locals 0
    .param p1, "pTitleResID"    # I
    .param p2, "pMessageResID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
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
    .line 120
    .local p3, "pAsyncCallable":Lorg/anddev/andengine/util/AsyncCallable;, "Lorg/anddev/andengine/util/AsyncCallable<TT;>;"
    .local p4, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<TT;>;"
    .local p5, "pExceptionCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<Ljava/lang/Exception;>;"
    invoke-static/range {p0 .. p5}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;IILorg/anddev/andengine/util/AsyncCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    .line 121
    return-void
.end method

.method protected doProgressAsync(ILorg/anddev/andengine/util/progress/ProgressCallable;Lorg/anddev/andengine/util/Callback;)V
    .locals 1
    .param p1, "pTitleResID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lorg/anddev/andengine/util/progress/ProgressCallable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "pCallable":Lorg/anddev/andengine/util/progress/ProgressCallable;, "Lorg/anddev/andengine/util/progress/ProgressCallable<TT;>;"
    .local p3, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/ui/activity/BaseActivity;->doProgressAsync(ILorg/anddev/andengine/util/progress/ProgressCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    .line 89
    return-void
.end method

.method protected doProgressAsync(ILorg/anddev/andengine/util/progress/ProgressCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V
    .locals 0
    .param p1, "pTitleResID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
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
    .line 104
    .local p2, "pCallable":Lorg/anddev/andengine/util/progress/ProgressCallable;, "Lorg/anddev/andengine/util/progress/ProgressCallable<TT;>;"
    .local p3, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<TT;>;"
    .local p4, "pExceptionCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<Ljava/lang/Exception;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/util/ActivityUtils;->doProgressAsync(Landroid/content/Context;ILorg/anddev/andengine/util/progress/ProgressCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    .line 105
    return-void
.end method
