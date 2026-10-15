.class Lcom/droidhen/fortconquer/layer/ComfirmDlg$1;
.super Lcom/droidhen/andplugin/ComposedAnimatedSprite;
.source "ComfirmDlg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/layer/ComfirmDlg;->initSprite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/layer/ComfirmDlg;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/layer/ComfirmDlg;FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V
    .locals 0
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg$1;->this$0:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    .line 152
    invoke-direct {p0, p2, p3, p4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 159
    iget-object v0, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg$1;->this$0:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    invoke-static {v0}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->access$1(Lcom/droidhen/fortconquer/layer/ComfirmDlg;)Lorg/anddev/andengine/entity/primitive/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 1
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    .line 154
    invoke-static {}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->access$0()V

    .line 155
    const/4 v0, 0x1

    return v0
.end method
