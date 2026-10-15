.class public Lorg/anddev/andengine/entity/scene/background/SpriteBackground;
.super Lorg/anddev/andengine/entity/scene/background/EntityBackground;
.source "SpriteBackground.java"


# direct methods
.method public constructor <init>(FFFLorg/anddev/andengine/entity/sprite/BaseSprite;)V
    .locals 0
    .param p1, "pRed"    # F
    .param p2, "pGreen"    # F
    .param p3, "pBlue"    # F
    .param p4, "pBaseSprite"    # Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/scene/background/EntityBackground;-><init>(FFFLorg/anddev/andengine/entity/IEntity;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V
    .locals 0
    .param p1, "pBaseSprite"    # Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/scene/background/EntityBackground;-><init>(Lorg/anddev/andengine/entity/IEntity;)V

    .line 27
    return-void
.end method
