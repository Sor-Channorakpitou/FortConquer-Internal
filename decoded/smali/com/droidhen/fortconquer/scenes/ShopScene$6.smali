.class Lcom/droidhen/fortconquer/scenes/ShopScene$6;
.super Ljava/lang/Object;
.source "ShopScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/ShopScene;->createUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

.field private final synthetic val$currentIndex:I


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/ShopScene;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iput p2, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$6;->val$currentIndex:I

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$6;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$6;->val$currentIndex:I

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$13(Lcom/droidhen/fortconquer/scenes/ShopScene;I)V

    .line 357
    return-void
.end method
