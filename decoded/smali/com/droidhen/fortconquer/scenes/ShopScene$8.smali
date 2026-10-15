.class Lcom/droidhen/fortconquer/scenes/ShopScene$8;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$8;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/droidhen/fortconquer/scenes/ShopScene$8;)Lcom/droidhen/fortconquer/scenes/ShopScene;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$8;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$8;->newObject()Lorg/anddev/andengine/entity/sprite/Sprite;

    move-result-object v0

    return-object v0
.end method

.method public newObject()Lorg/anddev/andengine/entity/sprite/Sprite;
    .locals 4

    .prologue
    .line 407
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ShopScene$8$1;

    const/high16 v1, 0x41900000    # 18.0f

    const/high16 v2, 0x43720000    # 242.0f

    sget-object v3, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->rIconCoin:Lcom/droidhen/andplugin/PlistTextureRegion;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/droidhen/fortconquer/scenes/ShopScene$8$1;-><init>(Lcom/droidhen/fortconquer/scenes/ShopScene$8;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    return-object v0
.end method
