.class Lcom/droidhen/fortconquer/GameActivity$3;
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
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 171
    sget v0, Lcom/droidhen/fortconquer/GameActivity;->sBoughtCoin:I

    if-gtz v0, :cond_0

    .line 172
    invoke-static {}, Lcom/droidhen/fortconquer/GameActivity;->access$0()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 173
    :cond_0
    return-void
.end method
