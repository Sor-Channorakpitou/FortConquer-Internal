.class public abstract Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;
.super Ljava/lang/Object;
.source "BaseTextureAtlasSource.java"

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;


# instance fields
.field protected mTexturePositionX:I

.field protected mTexturePositionY:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "pTexturePositionX"    # I
    .param p2, "pTexturePositionY"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;->mTexturePositionX:I

    .line 30
    iput p2, p0, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;->mTexturePositionY:I

    .line 31
    return-void
.end method


# virtual methods
.method public getTexturePositionX()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;->mTexturePositionX:I

    return v0
.end method

.method public getTexturePositionY()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;->mTexturePositionY:I

    return v0
.end method

.method public setTexturePositionX(I)V
    .locals 0
    .param p1, "pTexturePositionX"    # I

    .prologue
    .line 49
    iput p1, p0, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;->mTexturePositionX:I

    .line 50
    return-void
.end method

.method public setTexturePositionY(I)V
    .locals 0
    .param p1, "pTexturePositionY"    # I

    .prologue
    .line 54
    iput p1, p0, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;->mTexturePositionY:I

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;->mTexturePositionX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;->mTexturePositionY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
