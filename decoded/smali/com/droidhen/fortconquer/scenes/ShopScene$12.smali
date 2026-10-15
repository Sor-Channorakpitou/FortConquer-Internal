.class Lcom/droidhen/fortconquer/scenes/ShopScene$12;
.super Lcom/droidhen/andplugin/ComposedAnimatedButton;
.source "ShopScene.java"


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


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/ShopScene;FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # Lcom/droidhen/andplugin/PlistComposedTextureRegion;
    .param p5, "$anonymous3"    # Ljava/lang/Runnable;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    .line 441
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 454
    invoke-super {p0, p1, p2}, Lcom/droidhen/andplugin/ComposedAnimatedButton;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$12;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/ShopScene;->mGoodsLayer:Lcom/droidhen/fortconquer/layer/DragLayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/layer/DragLayer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
