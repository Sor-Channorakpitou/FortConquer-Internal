.class public Lorg/anddev/andengine/engine/options/RenderOptions;
.super Ljava/lang/Object;
.source "RenderOptions.java"


# instance fields
.field private mDisableExtensionDrawTexture:Z

.field private mDisableExtensionVertexBufferObjects:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lorg/anddev/andengine/engine/options/RenderOptions;->mDisableExtensionVertexBufferObjects:Z

    .line 20
    iput-boolean v0, p0, Lorg/anddev/andengine/engine/options/RenderOptions;->mDisableExtensionDrawTexture:Z

    .line 10
    return-void
.end method


# virtual methods
.method public disableExtensionDrawTexture()Lorg/anddev/andengine/engine/options/RenderOptions;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/options/RenderOptions;->setDisableExtensionDrawTexture(Z)Lorg/anddev/andengine/engine/options/RenderOptions;

    move-result-object v0

    return-object v0
.end method

.method public disableExtensionVertexBufferObjects()Lorg/anddev/andengine/engine/options/RenderOptions;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/options/RenderOptions;->setDisableExtensionVertexBufferObjects(Z)Lorg/anddev/andengine/engine/options/RenderOptions;

    move-result-object v0

    return-object v0
.end method

.method public enableExtensionDrawTexture()Lorg/anddev/andengine/engine/options/RenderOptions;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/options/RenderOptions;->setDisableExtensionDrawTexture(Z)Lorg/anddev/andengine/engine/options/RenderOptions;

    move-result-object v0

    return-object v0
.end method

.method public enableExtensionVertexBufferObjects()Lorg/anddev/andengine/engine/options/RenderOptions;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/options/RenderOptions;->setDisableExtensionVertexBufferObjects(Z)Lorg/anddev/andengine/engine/options/RenderOptions;

    move-result-object v0

    return-object v0
.end method

.method public isDisableExtensionDrawTexture()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/options/RenderOptions;->mDisableExtensionDrawTexture:Z

    return v0
.end method

.method public isDisableExtensionVertexBufferObjects()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/options/RenderOptions;->mDisableExtensionVertexBufferObjects:Z

    return v0
.end method

.method public setDisableExtensionDrawTexture(Z)Lorg/anddev/andengine/engine/options/RenderOptions;
    .locals 0
    .param p1, "pDisableExtensionDrawTexture"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lorg/anddev/andengine/engine/options/RenderOptions;->mDisableExtensionDrawTexture:Z

    .line 67
    return-object p0
.end method

.method public setDisableExtensionVertexBufferObjects(Z)Lorg/anddev/andengine/engine/options/RenderOptions;
    .locals 0
    .param p1, "pDisableExtensionVertexBufferObjects"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lorg/anddev/andengine/engine/options/RenderOptions;->mDisableExtensionVertexBufferObjects:Z

    .line 47
    return-object p0
.end method
