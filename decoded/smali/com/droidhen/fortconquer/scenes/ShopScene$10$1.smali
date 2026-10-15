.class Lcom/droidhen/fortconquer/scenes/ShopScene$10$1;
.super Lorg/anddev/andengine/entity/text/ChangeableText;
.source "ShopScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/ShopScene$10;->newObject()Lorg/anddev/andengine/entity/text/ChangeableText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/droidhen/fortconquer/scenes/ShopScene$10;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/ShopScene$10;FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V
    .locals 6
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # Lorg/anddev/andengine/opengl/font/Font;
    .param p5, "$anonymous3"    # Ljava/lang/String;
    .param p6, "$anonymous4"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$10$1;->this$1:Lcom/droidhen/fortconquer/scenes/ShopScene$10;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 432
    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onDetached()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/ShopScene$10$1;->this$1:Lcom/droidhen/fortconquer/scenes/ShopScene$10;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/ShopScene$10;->access$1(Lcom/droidhen/fortconquer/scenes/ShopScene$10;)Lcom/droidhen/fortconquer/scenes/ShopScene;

    move-result-object v0

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/ShopScene;->access$18(Lcom/droidhen/fortconquer/scenes/ShopScene;)Lcom/droidhen/fortconquer/kits/GreedPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/droidhen/fortconquer/kits/GreedPool;->put(Ljava/lang/Object;)V

    .line 436
    return-void
.end method
