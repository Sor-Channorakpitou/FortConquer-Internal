.class Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr$1;
.super Ljava/lang/Object;
.source "UICommonTextureMgr.java"

# interfaces
.implements Lcom/droidhen/fortconquer/kits/ObjectGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr;->createSprite()V
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
        "Lorg/anddev/andengine/entity/primitive/Rectangle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UICommonTextureMgr$1;->newObject()Lorg/anddev/andengine/entity/primitive/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public newObject()Lorg/anddev/andengine/entity/primitive/Rectangle;
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 181
    new-instance v0, Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-direct {v0, v2, v2, v1, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    .line 182
    .local v0, "rect":Lorg/anddev/andengine/entity/primitive/Rectangle;
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setColor(FFFF)V

    .line 183
    return-object v0
.end method
