.class public Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;
.super Lorg/anddev/andengine/entity/scene/background/ColorBackground;
.source "ParallaxBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;
    }
.end annotation


# instance fields
.field private final mParallaxEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mParallaxEntityCount:I

.field protected mParallaxValue:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1
    .param p1, "pRed"    # F
    .param p2, "pGreen"    # F
    .param p3, "pBlue"    # F

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;-><init>(FFF)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntities:Ljava/util/ArrayList;

    .line 37
    return-void
.end method


# virtual methods
.method public attachParallaxEntity(Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;)V
    .locals 1
    .param p1, "pParallaxEntity"    # Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget v0, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    .line 70
    return-void
.end method

.method public detachParallaxEntity(Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;)Z
    .locals 2
    .param p1, "pParallaxEntity"    # Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;

    .prologue
    .line 73
    iget v1, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    .line 74
    iget-object v1, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 75
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 76
    iget v1, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    .line 78
    :cond_0
    return v0
.end method

.method public onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 4
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 55
    iget v2, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxValue:F

    .line 56
    .local v2, "parallaxValue":F
    iget-object v1, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntities:Ljava/util/ArrayList;

    .line 58
    .local v1, "parallaxEntities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    if-lt v0, v3, :cond_0

    .line 61
    return-void

    .line 59
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;

    invoke-virtual {v3, p1, v2, p2}, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->onDraw(Ljavax/microedition/khronos/opengles/GL10;FLorg/anddev/andengine/engine/camera/Camera;)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setParallaxValue(F)V
    .locals 0
    .param p1, "pParallaxValue"    # F

    .prologue
    .line 44
    iput p1, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxValue:F

    .line 45
    return-void
.end method
