.class Lcom/droidhen/fortconquer/GameActivity$10;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/GameActivity;->storeBuyCoin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/GameActivity;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/GameActivity$10;->this$0:Lcom/droidhen/fortconquer/GameActivity;

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 805
    invoke-static {}, Lcom/droidhen/fortconquer/AdController;->hideAD()V

    .line 806
    return-void
.end method
