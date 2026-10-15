.class public Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;
.super Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;
.source "DigitalOnScreenControl.java"


# static fields
.field private static final ANGLE_DELTA:F = 22.5f

.field private static final EXTENT_DIAGONAL:F = 0.354f

.field private static final EXTENT_SIDE:F = 0.5f


# instance fields
.field private mAllowDiagonal:Z


# direct methods
.method public constructor <init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FLorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V
    .locals 9
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p4, "pControlBaseTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p5, "pControlKnobTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p6, "pTimeBetweenUpdates"    # F
    .param p7, "pOnScreenControlListener"    # Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;

    .prologue
    .line 36
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;-><init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FZLorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V

    .line 37
    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FZLorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V
    .locals 8
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p4, "pControlBaseTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p5, "pControlKnobTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .param p6, "pTimeBetweenUpdates"    # F
    .param p7, "pAllowDiagonal"    # Z
    .param p8, "pOnScreenControlListener"    # Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;

    .prologue
    .line 40
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;-><init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FLorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V

    .line 41
    iput-boolean p7, p0, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->mAllowDiagonal:Z

    .line 42
    return-void
.end method

.method private testDiagonalAngle(FF)Z
    .locals 2
    .param p1, "pTestAngle"    # F
    .param p2, "pActualAngle"    # F

    .prologue
    const/high16 v1, 0x41b40000    # 22.5f

    .line 110
    sub-float v0, p1, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    add-float v0, p1, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isAllowDiagonal()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->mAllowDiagonal:Z

    return v0
.end method

.method protected onUpdateControlKnob(FF)V
    .locals 8
    .param p1, "pRelativeX"    # F
    .param p2, "pRelativeY"    # F

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const v6, 0x3eb53f7d    # 0.354f

    const/high16 v5, -0x41000000    # -0.5f

    const v4, -0x414ac083    # -0.354f

    const/4 v3, 0x0

    .line 62
    cmpl-float v1, p1, v3

    if-nez v1, :cond_1

    cmpl-float v1, p2, v3

    if-nez v1, :cond_1

    .line 63
    invoke-super {p0, v3, v3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-boolean v1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->mAllowDiagonal:Z

    if-eqz v1, :cond_b

    .line 68
    invoke-static {p2, p1}, Lorg/anddev/andengine/util/MathUtils;->atan2(FF)F

    move-result v1

    invoke-static {v1}, Lorg/anddev/andengine/util/MathUtils;->radToDeg(F)F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    add-float v0, v1, v2

    .line 69
    .local v0, "angle":F
    invoke-direct {p0, v3, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-nez v1, :cond_2

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-direct {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    :cond_2
    invoke-super {p0, v5, v3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 71
    :cond_3
    const/high16 v1, 0x42340000    # 45.0f

    invoke-direct {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    invoke-super {p0, v4, v4}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 73
    :cond_4
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-direct {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 74
    invoke-super {p0, v3, v5}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 75
    :cond_5
    const/high16 v1, 0x43070000    # 135.0f

    invoke-direct {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 76
    invoke-super {p0, v6, v4}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 77
    :cond_6
    const/high16 v1, 0x43340000    # 180.0f

    invoke-direct {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 78
    invoke-super {p0, v7, v3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 79
    :cond_7
    const/high16 v1, 0x43610000    # 225.0f

    invoke-direct {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 80
    invoke-super {p0, v6, v6}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 81
    :cond_8
    const/high16 v1, 0x43870000    # 270.0f

    invoke-direct {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 82
    invoke-super {p0, v3, v7}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 83
    :cond_9
    const v1, 0x439d8000    # 315.0f

    invoke-direct {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 84
    invoke-super {p0, v4, v6}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 86
    :cond_a
    invoke-super {p0, v3, v3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 89
    .end local v0    # "angle":F
    :cond_b
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e

    .line 90
    cmpl-float v1, p1, v3

    if-lez v1, :cond_c

    .line 91
    invoke-super {p0, v7, v3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0

    .line 92
    :cond_c
    cmpg-float v1, p1, v3

    if-gez v1, :cond_d

    .line 93
    invoke-super {p0, v5, v3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0

    .line 94
    :cond_d
    cmpl-float v1, p1, v3

    if-nez v1, :cond_0

    .line 95
    invoke-super {p0, v3, v3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0

    .line 98
    :cond_e
    cmpl-float v1, p2, v3

    if-lez v1, :cond_f

    .line 99
    invoke-super {p0, v3, v7}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0

    .line 100
    :cond_f
    cmpg-float v1, p2, v3

    if-gez v1, :cond_10

    .line 101
    invoke-super {p0, v3, v5}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0

    .line 102
    :cond_10
    cmpl-float v1, p2, v3

    if-nez v1, :cond_0

    .line 103
    invoke-super {p0, v3, v3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0
.end method

.method public setAllowDiagonal(Z)V
    .locals 0
    .param p1, "pAllowDiagonal"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->mAllowDiagonal:Z

    .line 54
    return-void
.end method
