.class Lcom/droidhen/fortconquer/scenes/ShopScene$8$1;
.super Lorg/anddev/andengine/entity/sprite/Sprite;
.source "ShopScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/ShopScene$8;->newObject()Lorg/anddev/andengine/entity/sprite/Sprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/droidhen/fortconquer/scenes/ShopScene$8;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/ShopScene$8;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 0
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$8$1;->this$1:Lcom/droidhen/fortconquer/scenes/ShopScene$8;

    .line 407
    invoke-direct {p0, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    return-void
.end method


# virtual methods
.method public onDetached()V
    .locals 1

    .prologue
    .line 410
    invoke-super {p0}, Lorg/anddev/andengine/entity/sprite/Sprite;->onDetached()V

    .line 411
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$8$1;->this$1:Lcom/droidhen/fortconquer/scenes/ShopScene$8;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/ShopScene$8;->access$1(Lcom/droidhen/fortconquer/scenes/ShopScene$8;)Lcom/droidhen/fortconquer/scenes/ShopScene;

    move-result-object v0

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$15(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/kits/ObjectPool;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/droidhen/fortconquer/kits/ObjectPool;->put(Ljava/lang/Object;)V

    .line 412
    return-void
.end method
