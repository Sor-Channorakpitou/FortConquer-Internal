.class Lcom/droidhen/fortconquer/GameActivity$1;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/GameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 154
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    if-gtz v0, :cond_0

    .line 155
    invoke-static {}, Lcom/droidhen/fortconquer/AdController;->showAD()V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {}, Lcom/droidhen/fortconquer/AdController;->hideAD()V

    goto :goto_0
.end method
