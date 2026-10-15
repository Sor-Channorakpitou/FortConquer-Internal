.class Lcom/droidhen/fortconquer/layer/GiftPackageDlg$2;
.super Lcom/droidhen/andplugin/ComposedAnimatedSprite;
.source "GiftPackageDlg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->initSprite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/layer/GiftPackageDlg;FFLcom/droidhen/andplugin/PlistComposedTextureRegion;)V
    .locals 0
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # Lcom/droidhen/andplugin/PlistComposedTextureRegion;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg$2;->this$0:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

    .line 120
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
    .line 122
    invoke-static {}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->access$2()Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

    move-result-object v0

    invoke-static {v0}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->access$3(Lcom/droidhen/fortconquer/layer/GiftPackageDlg;)Lcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/droidhen/fortconquer/layer/GiftPackageDlg$GiftCallBack;->onCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->stopAllSounds()V

    .line 125
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 128
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
