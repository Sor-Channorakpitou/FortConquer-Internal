.class Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$1;
.super Ljava/lang/Object;
.source "BuildableTextureAtlasTextureRegionFactory.java"

# interfaces
.implements Lorg/anddev/andengine/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory;->createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;Z)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/util/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic val$textureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;


# direct methods
.method constructor <init>(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$1;->val$textureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$1;->onCallback(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;)V

    return-void
.end method

.method public onCallback(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "pCallbackValue":Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;, "TT;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$1;->val$textureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getTexturePositionX()I

    move-result v1

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getTexturePositionY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->setTexturePosition(II)V

    .line 57
    return-void
.end method
