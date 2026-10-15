.class Lcom/droidhen/fortconquer/layer/ComfirmDlg$2;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/layer/ComfirmDlg$2;->this$0:Lcom/droidhen/fortconquer/layer/ComfirmDlg;

    .line 162
    invoke-direct {p0, p2, p3, p4}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;-><init>(FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V

    return-void
.end method


# virtual methods
.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 2
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    .line 164
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 165
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 166
    invoke-static {}, Lcom/droidhen/fortconquer/layer/ComfirmDlg;->cancel()V

    .line 167
    const/4 v0, 0x1

    return v0
.end method
