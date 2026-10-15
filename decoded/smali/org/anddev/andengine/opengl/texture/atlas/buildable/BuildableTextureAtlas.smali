.class public Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;
.super Ljava/lang/Object;
.source "BuildableTextureAtlas.java"

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
        "A::",
        "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    .local p1, "pTextureAtlas":Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;, "TA;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    .line 41
    return-void
.end method


# virtual methods
.method public addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V
    .locals 1
    .param p2, "pTexturePositionX"    # I
    .param p3, "pTexturePositionY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    .local p1, "pTextureAtlasSource":Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;, "TT;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1, p2, p3}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V

    .line 119
    return-void
.end method

.method public addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;Lorg/anddev/andengine/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    .local p1, "pTextureAtlasSource":Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;, "TT;"
    .local p2, "pCallback":Lorg/anddev/andengine/util/Callback;, "Lorg/anddev/andengine/util/Callback<TT;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;

    invoke-direct {v1, p1, p2}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;-><init>(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;Lorg/anddev/andengine/util/Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public bind(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 103
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 104
    return-void
.end method

.method public build(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder",
            "<TT;TA;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder$TextureAtlasSourcePackingException;
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    .local p1, "pTextureAtlasSourcePackingAlgorithm":Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder<TT;TA;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder;->pack(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;Ljava/util/ArrayList;)V

    .line 179
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->setUpdateOnHardwareNeeded(Z)V

    .line 181
    return-void
.end method

.method public clearTextureAtlasSources()V
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->clearTextureAtlasSources()V

    .line 129
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 130
    return-void
.end method

.method public getHardwareTextureID()I
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getHardwareTextureID()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTextureOptions()Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getTextureOptions()Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTextureStateListener()Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->getTextureStateListener()Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;

    move-result-object v0

    return-object v0
.end method

.method public getTextureStateListener()Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getTextureStateListener()Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getWidth()I

    move-result v0

    return v0
.end method

.method public hasTextureStateListener()Z
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->hasTextureStateListener()Z

    move-result v0

    return v0
.end method

.method public isLoadedToHardware()Z
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->isLoadedToHardware()Z

    move-result v0

    return v0
.end method

.method public isUpdateOnHardwareNeeded()Z
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->isUpdateOnHardwareNeeded()Z

    move-result v0

    return v0
.end method

.method public loadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->loadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 89
    return-void
.end method

.method public reloadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->reloadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 99
    return-void
.end method

.method public removeTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;)V
    .locals 5
    .param p1, "pTextureAtlasSource"    # Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    .prologue
    .line 160
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    .line 161
    .local v2, "textureSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback<TT;>;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 169
    :goto_1
    return-void

    .line 162
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;

    .line 163
    .local v1, "textureSource":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback<TT;>;"
    invoke-static {v1}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->access$0(Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;)Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 164
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 165
    iget-object v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->setUpdateOnHardwareNeeded(Z)V

    goto :goto_1

    .line 161
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public removeTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V
    .locals 1
    .param p2, "pTexturePositionX"    # I
    .param p3, "pTexturePositionY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    .local p1, "pTextureAtlasSource":Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;, "TT;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1, p2, p3}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->removeTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V

    .line 124
    return-void
.end method

.method public setLoadedToHardware(Z)V
    .locals 1
    .param p1, "pLoadedToHardware"    # Z

    .prologue
    .line 73
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->setLoadedToHardware(Z)V

    .line 74
    return-void
.end method

.method public setUpdateOnHardwareNeeded(Z)V
    .locals 1
    .param p1, "pUpdateOnHardwareNeeded"    # Z

    .prologue
    .line 83
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->setUpdateOnHardwareNeeded(Z)V

    .line 84
    return-void
.end method

.method public unloadFromHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 93
    .local p0, "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->unloadFromHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 94
    return-void
.end method
