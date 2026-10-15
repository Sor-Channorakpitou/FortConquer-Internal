.class Lcom/droidhen/fortconquer/scenes/ShopScene$7;
.super Ljava/lang/Object;
.source "ShopScene.java"

# interfaces
.implements Lcom/droidhen/fortconquer/kits/ObjectGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/ShopScene;->createUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/droidhen/fortconquer/kits/ObjectGenerator",
        "<",
        "Lcom/droidhen/andplugin/ComposedAnimatedButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/ShopScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newObject()Lcom/droidhen/andplugin/ComposedAnimatedButton;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 400
    new-instance v0, Lcom/droidhen/andplugin/ComposedAnimatedButton;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$14(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/droidhen/andplugin/PlistComposedTextureRegion;->deepCopy()Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    move-result-object v1

    invoke-direct {v0, v2, v2, v1}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$7;->newObject()Lcom/droidhen/andplugin/ComposedAnimatedButton;

    move-result-object v0

    return-object v0
.end method
