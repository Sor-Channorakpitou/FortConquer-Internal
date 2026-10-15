.class public Lcom/droidhen/fortconquer/scenes/SmartSpriteGroup;
.super Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;
.source "SmartSpriteGroup.java"


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;I)V
    .locals 0
    .param p1, "pTexture"    # Lorg/anddev/andengine/opengl/texture/ITexture;
    .param p2, "pCapacity"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;I)V

    .line 13
    return-void
.end method


# virtual methods
.method public declared-synchronized attachChild(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V
    .locals 1
    .param p1, "pBaseSprite"    # Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .prologue
    .line 18
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->detachSelf()Z

    .line 19
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->attachChild(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized attachChild(Lorg/anddev/andengine/entity/IEntity;I)Z
    .locals 1
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p2, "pIndex"    # I

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->detachSelf()Z

    .line 26
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->attachChild(Lorg/anddev/andengine/entity/IEntity;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
