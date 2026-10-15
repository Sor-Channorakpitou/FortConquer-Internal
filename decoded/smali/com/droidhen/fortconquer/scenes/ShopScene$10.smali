.class Lcom/droidhen/fortconquer/scenes/ShopScene$10;
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
        "Lorg/anddev/andengine/entity/text/ChangeableText;",
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/droidhen/fortconquer/scenes/ShopScene$10;)Lcom/droidhen/fortconquer/scenes/ShopScene;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$10;->this$0:Lcom/droidhen/fortconquer/scenes/ShopScene;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ShopScene$10;->newObject()Lorg/anddev/andengine/entity/text/ChangeableText;

    move-result-object v0

    return-object v0
.end method

.method public newObject()Lorg/anddev/andengine/entity/text/ChangeableText;
    .locals 7

    .prologue
    .line 432
    new-instance v0, Lcom/droidhen/fortconquer/scenes/ShopScene$10$1;

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x43770000    # 247.0f

    sget-object v4, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->fTotalCoin:Lorg/anddev/andengine/opengl/font/Font;

    const-string v5, "0"

    const/16 v6, 0xa

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/droidhen/fortconquer/scenes/ShopScene$10$1;-><init>(Lcom/droidhen/fortconquer/scenes/ShopScene$10;FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    return-object v0
.end method
