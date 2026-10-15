.class public Lorg/anddev/andengine/entity/scene/menu/item/SpriteMenuItem;
.super Lorg/anddev/andengine/entity/sprite/Sprite;
.source "SpriteMenuItem.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;


# instance fields
.field private final mID:I


# direct methods
.method public constructor <init>(ILorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 1
    .param p1, "pID"    # I
    .param p2, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0, v0, p2}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 30
    iput p1, p0, Lorg/anddev/andengine/entity/scene/menu/item/SpriteMenuItem;->mID:I

    .line 31
    return-void
.end method


# virtual methods
.method public getID()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/SpriteMenuItem;->mID:I

    return v0
.end method

.method public onSelected()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onUnselected()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
