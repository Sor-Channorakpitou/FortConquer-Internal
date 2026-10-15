.class public Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;
.super Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;
.source "AnalogOnScreenControl.java"

# interfaces
.implements Lorg/anddev/andengine/util/constants/TimeConstants;
.implements Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;
    }
.end annotation


# instance fields
.field private final mClickDetector:Lorg/anddev/andengine/input/touch/detector/ClickDetector;


# direct methods
.method public constructor <init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FJLorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;)V
    .locals 11
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p4, "pControlBaseTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p5, "pControlKnobTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p6, "pTimeBetweenUpdates"    # F
    .param p7, "pOnControlClickMaximumMilliseconds"    # J
    .param p9, "pAnalogOnScreenControlListener"    # Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;

    .prologue
    .line 41
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p9

    invoke-direct/range {v2 .. v9}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;-><init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FLorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V

    .line 29
    new-instance v2, Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    invoke-direct {v2, p0}, Lorg/anddev/andengine/input/touch/detector/ClickDetector;-><init>(Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;)V

    iput-object v2, p0, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    .line 42
    iget-object v2, p0, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->setTriggerClickMaximumMilliseconds(J)V

    .line 43
    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FLorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;)V
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p4, "pControlBaseTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p5, "pControlKnobTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p6, "pTimeBetweenUpdates"    # F
    .param p7, "pAnalogOnScreenControlListener"    # Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p7}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;-><init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FLorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V

    .line 29
    new-instance v0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/input/touch/detector/ClickDetector;-><init>(Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;)V

    iput-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    .line 37
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->setEnabled(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public getOnScreenControlListener()Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->getOnScreenControlListener()Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;

    return-object v0
.end method

.method public bridge synthetic getOnScreenControlListener()Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->getOnScreenControlListener()Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lorg/anddev/andengine/input/touch/detector/ClickDetector;Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 1
    .param p1, "pClickDetector"    # Lorg/anddev/andengine/input/touch/detector/ClickDetector;
    .param p2, "pTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->getOnScreenControlListener()Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;->onControlClick(Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;)V

    .line 69
    return-void
.end method

.method protected onHandleControlBaseTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 2
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    .line 73
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    .line 74
    invoke-super {p0, p1, p2, p3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onHandleControlBaseTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z

    move-result v0

    return v0
.end method

.method protected onUpdateControlKnob(FF)V
    .locals 4
    .param p1, "pRelativeX"    # F
    .param p2, "pRelativeY"    # F

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 79
    mul-float v1, p1, p1

    mul-float v2, p2, p2

    add-float/2addr v1, v2

    const/high16 v2, 0x3e800000    # 0.25f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 80
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-static {p2, p1}, Lorg/anddev/andengine/util/MathUtils;->atan2(FF)F

    move-result v0

    .line 83
    .local v0, "angleRad":F
    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    mul-float/2addr v1, v3

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    mul-float/2addr v2, v3

    invoke-super {p0, v1, v2}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0
.end method

.method public setOnControlClickEnabled(Z)V
    .locals 1
    .param p1, "pOnControlClickEnabled"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->setEnabled(Z)V

    .line 56
    return-void
.end method

.method public setOnControlClickMaximumMilliseconds(J)V
    .locals 1
    .param p1, "pOnControlClickMaximumMilliseconds"    # J

    .prologue
    .line 59
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->setTriggerClickMaximumMilliseconds(J)V

    .line 60
    return-void
.end method
