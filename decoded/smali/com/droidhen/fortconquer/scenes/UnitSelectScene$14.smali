.class Lcom/droidhen/fortconquer/scenes/UnitSelectScene$14;
.super Lcom/droidhen/andplugin/ComposedAnimatedButton;
.source "UnitSelectScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/UnitSelectScene;->createBtns()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/UnitSelectScene;FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # Lcom/droidhen/andplugin/PlistComposedTextureRegion;
    .param p5, "$anonymous3"    # Ljava/lang/Runnable;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$14;->this$0:Lcom/droidhen/fortconquer/scenes/UnitSelectScene;

    .line 433
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/droidhen/andplugin/ComposedAnimatedButton;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 3
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    const/high16 v2, 0x41200000    # 10.0f

    .line 441
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$14;->getX()F

    move-result v0

    sub-float/2addr v0, v2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$14;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$14;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$14;->getY()F

    move-result v0

    sub-float/2addr v0, v2

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$14;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/UnitSelectScene$14;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
