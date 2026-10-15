.class Lcom/droidhen/fortconquer/scenes/ShopScene$9;
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
        "Lorg/anddev/andengine/entity/sprite/Sprite;",
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/droidhen/fortconquer/scenes/ShopScene$9;)Lcom/droidhen/fortconquer/scenes/ShopScene;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$9;->newObject()Lorg/anddev/andengine/entity/sprite/Sprite;

    move-result-object v0

    return-object v0
.end method

.method public newObject()Lorg/anddev/andengine/entity/sprite/Sprite;
    .locals 4

    .prologue
    .line 419
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ShopScene$9$1;

    const/high16 v1, 0x42740000    # 61.0f

    const/high16 v2, 0x43720000    # 242.0f

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$9;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    invoke-static {v3}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$16(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/andplugin/PlistTextureRegion;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/droidhen/fortconquer/scenes/ShopScene$9$1;-><init>(Lcom/droidhen/fortconquer/scenes/ShopScene$9;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    return-object v0
.end method
