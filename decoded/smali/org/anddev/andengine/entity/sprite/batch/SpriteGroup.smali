.class public Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;
.super Lorg/anddev/andengine/entity/sprite/batch/DynamicSpriteBatch;
.source "SpriteGroup.java"


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;I)V
    .locals 1
    .param p1, "pTexture"    # Lorg/anddev/andengine/opengl/texture/ITexture;
    .param p2, "pCapacity"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/sprite/batch/DynamicSpriteBatch;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;I)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->setChildrenVisible(Z)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;ILorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;)V
    .locals 1
    .param p1, "pTexture"    # Lorg/anddev/andengine/opengl/texture/ITexture;
    .param p2, "pCapacity"    # I
    .param p3, "pSpriteBatchVertexBuffer"    # Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;
    .param p4, "pSpriteBatchTextureRegionBuffer"    # Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/batch/DynamicSpriteBatch;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;ILorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->setChildrenVisible(Z)V

    .line 44
    return-void
.end method

.method private assertCapacity()V
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->mCapacity:I

    if-lt v0, v1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This SpriteGroup has already reached its capacity ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->mCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public attachChild(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 2
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    instance-of v0, p1, Lorg/anddev/andengine/entity/sprite/BaseSprite;

    if-eqz v0, :cond_0

    .line 61
    check-cast p1, Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .end local p1    # "pEntity":Lorg/anddev/andengine/entity/IEntity;
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->attachChild(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    .line 65
    return-void

    .line 63
    .restart local p1    # "pEntity":Lorg/anddev/andengine/entity/IEntity;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A SpriteGroup can only handle children of type BaseSprite or subclasses of BaseSprite, like Sprite, TiledSprite or AnimatedSprite."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachChild(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V
    .locals 1
    .param p1, "pBaseSprite"    # Lorg/anddev/andengine/entity/sprite/BaseSprite;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->assertCapacity()V

    .line 69
    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->assertTexture(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    .line 70
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/DynamicSpriteBatch;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 71
    return-void
.end method

.method public attachChildren(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lorg/anddev/andengine/entity/sprite/BaseSprite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "pBaseSprites":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lorg/anddev/andengine/entity/sprite/BaseSprite;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 75
    .local v0, "baseSpriteCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 78
    return-void

    .line 76
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {p0, v2}, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->attachChild(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onUpdateSpriteBatch()Z
    .locals 4

    .prologue
    .line 82
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->mChildren:Lorg/anddev/andengine/util/SmartList;

    .line 83
    .local v1, "children":Lorg/anddev/andengine/util/SmartList;, "Lorg/anddev/andengine/util/SmartList<Lorg/anddev/andengine/entity/IEntity;>;"
    if-nez v1, :cond_0

    .line 84
    const/4 v3, 0x0

    .line 90
    :goto_0
    return v3

    .line 86
    :cond_0
    invoke-virtual {v1}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v0

    .line 87
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 90
    const/4 v3, 0x1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v1, v2}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-super {p0, v3}, Lorg/anddev/andengine/entity/sprite/batch/DynamicSpriteBatch;->drawWithoutChecks(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
