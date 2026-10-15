.class public abstract Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;
.super Lorg/anddev/andengine/engine/camera/hud/HUD;
.source "BaseOnScreenControl.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private mActivePointerID:I

.field private final mControlBase:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private final mControlKnob:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private mControlValueX:F

.field private mControlValueY:F

.field private final mOnScreenControlListener:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;


# direct methods
.method public constructor <init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FLorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V
    .locals 3
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p4, "pControlBaseTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p5, "pControlKnobTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p6, "pTimeBetweenUpdates"    # F
    .param p7, "pOnScreenControlListener"    # Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lorg/anddev/andengine/engine/camera/hud/HUD;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    .line 52
    invoke-virtual {p0, p3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->setCamera(Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 54
    iput-object p7, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mOnScreenControlListener:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;

    .line 56
    new-instance v0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$1;

    invoke-direct {v0, p0, p1, p2, p4}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$1;-><init>(Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 64
    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-direct {v0, v1, v1, p5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlKnob:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 65
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onHandleControlKnobReleased()V

    .line 68
    invoke-virtual {p0, p0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    .line 69
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 70
    new-instance v0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;

    new-instance v1, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;

    invoke-direct {v1, p0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;-><init>(Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;)V

    invoke-direct {v0, p6, v2, v1}, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;-><init>(FZLorg/anddev/andengine/engine/handler/timer/ITimerCallback;)V

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V

    .line 77
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 78
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlKnob:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 80
    invoke-virtual {p0, v2}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->setTouchAreaBindingEnabled(Z)V

    .line 81
    return-void
.end method

.method static synthetic access$0(Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;)Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mOnScreenControlListener:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;

    return-object v0
.end method

.method static synthetic access$1(Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;)F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueX:F

    return v0
.end method

.method static synthetic access$2(Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;)F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueY:F

    return v0
.end method

.method private updateControlKnob(FF)V
    .locals 7
    .param p1, "pTouchAreaLocalX"    # F
    .param p2, "pTouchAreaLocalY"    # F

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    .line 170
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 172
    .local v0, "controlBase":Lorg/anddev/andengine/entity/sprite/Sprite;
    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v3

    invoke-static {v5, v3, p1}, Lorg/anddev/andengine/util/MathUtils;->bringToBounds(FFF)F

    move-result v3

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v4

    div-float/2addr v3, v4

    sub-float v1, v3, v6

    .line 173
    .local v1, "relativeX":F
    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v3

    invoke-static {v5, v3, p2}, Lorg/anddev/andengine/util/MathUtils;->bringToBounds(FFF)F

    move-result v3

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    div-float/2addr v3, v4

    sub-float v2, v3, v6

    .line 175
    .local v2, "relativeY":F
    invoke-virtual {p0, v1, v2}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    .line 176
    return-void
.end method


# virtual methods
.method public getControlBase()Lorg/anddev/andengine/entity/sprite/Sprite;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/anddev/andengine/entity/sprite/Sprite;

    return-object v0
.end method

.method public getControlKnob()Lorg/anddev/andengine/entity/sprite/Sprite;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlKnob:Lorg/anddev/andengine/entity/sprite/Sprite;

    return-object v0
.end method

.method public getOnScreenControlListener()Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mOnScreenControlListener:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;

    return-object v0
.end method

.method protected onHandleControlBaseLeft()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    .line 131
    return-void
.end method

.method protected onHandleControlBaseTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 4
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 141
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v0

    .line 143
    .local v0, "pointerID":I
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 160
    :pswitch_0
    iget v1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    if-ne v1, v0, :cond_0

    .line 161
    invoke-direct {p0, p2, p3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->updateControlKnob(FF)V

    .line 166
    :cond_0
    :goto_0
    return v2

    .line 145
    :pswitch_1
    iget v1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    if-ne v1, v3, :cond_0

    .line 146
    iput v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    .line 147
    invoke-direct {p0, p2, p3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->updateControlKnob(FF)V

    goto :goto_0

    .line 153
    :pswitch_2
    iget v1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    if-ne v1, v0, :cond_0

    .line 154
    iput v3, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    .line 155
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onHandleControlKnobReleased()V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onHandleControlKnobReleased()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    .line 138
    return-void
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 2
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 105
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v0

    .line 106
    .local v0, "pointerID":I
    iget v1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    if-ne v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onHandleControlBaseLeft()V

    .line 109
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 112
    :pswitch_1
    const/4 v1, -0x1

    iput v1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onUpdateControlKnob(FF)V
    .locals 8
    .param p1, "pRelativeX"    # F
    .param p2, "pRelativeY"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 183
    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 184
    .local v0, "controlBase":Lorg/anddev/andengine/entity/sprite/Sprite;
    iget-object v2, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlKnob:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 186
    .local v2, "controlKnob":Lorg/anddev/andengine/entity/sprite/Sprite;
    mul-float v5, v6, p1

    iput v5, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueX:F

    .line 187
    mul-float v5, v6, p2

    iput v5, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueY:F

    .line 189
    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getSceneCenterCoordinates()[F

    move-result-object v1

    .line 190
    .local v1, "controlBaseSceneCenterCoordinates":[F
    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidthScaled()F

    move-result v6

    mul-float/2addr v6, p1

    add-float v3, v5, v6

    .line 191
    .local v3, "x":F
    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeightScaled()F

    move-result v6

    mul-float/2addr v6, p2

    add-float v4, v5, v6

    .line 193
    .local v4, "y":F
    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 194
    return-void
.end method

.method public refreshControlKnobPosition()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 123
    iget v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueX:F

    mul-float/2addr v0, v2

    iget v1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueY:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    .line 124
    return-void
.end method
