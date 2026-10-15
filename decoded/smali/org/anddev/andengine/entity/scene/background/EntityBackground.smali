.class public Lorg/anddev/andengine/entity/scene/background/EntityBackground;
.super Lorg/anddev/andengine/entity/scene/background/ColorBackground;
.source "EntityBackground.java"


# instance fields
.field protected mEntity:Lorg/anddev/andengine/entity/IEntity;


# direct methods
.method public constructor <init>(FFFLorg/anddev/andengine/entity/IEntity;)V
    .locals 0
    .param p1, "pRed"    # F
    .param p2, "pGreen"    # F
    .param p3, "pBlue"    # F
    .param p4, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;-><init>(FFF)V

    .line 36
    iput-object p4, p0, Lorg/anddev/andengine/entity/scene/background/EntityBackground;->mEntity:Lorg/anddev/andengine/entity/IEntity;

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/background/EntityBackground;->mEntity:Lorg/anddev/andengine/entity/IEntity;

    .line 32
    return-void
.end method


# virtual methods
.method public onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 50
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/background/EntityBackground;->mEntity:Lorg/anddev/andengine/entity/IEntity;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/IEntity;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 51
    return-void
.end method
