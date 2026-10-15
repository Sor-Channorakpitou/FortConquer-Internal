.class Lcom/game/featured/FeaturedHelper$8;
.super Ljava/lang/Object;
.source "FeaturedHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/featured/FeaturedHelper;->showFeaturedDialogAtUIThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/featured/FeaturedHelper;

.field private final synthetic val$dialogType:I


# direct methods
.method constructor <init>(Lcom/game/featured/FeaturedHelper;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/featured/FeaturedHelper$8;->this$0:Lcom/game/featured/FeaturedHelper;

    iput p2, p0, Lcom/game/featured/FeaturedHelper$8;->val$dialogType:I

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/game/featured/FeaturedHelper$8;->this$0:Lcom/game/featured/FeaturedHelper;

    iget v1, p0, Lcom/game/featured/FeaturedHelper$8;->val$dialogType:I

    invoke-static {v0, v1}, Lcom/game/featured/FeaturedHelper;->access$5(Lcom/game/featured/FeaturedHelper;I)V

    .line 517
    return-void
.end method
