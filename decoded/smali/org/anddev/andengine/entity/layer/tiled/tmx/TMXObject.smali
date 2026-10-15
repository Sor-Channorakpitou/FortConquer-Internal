.class public Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;
.super Ljava/lang/Object;
.source "TMXObject.java"

# interfaces
.implements Lorg/anddev/andengine/entity/layer/tiled/tmx/util/constants/TMXConstants;


# instance fields
.field private final mHeight:I

.field private final mName:Ljava/lang/String;

.field private final mTMXObjectProperties:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectProperty;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:Ljava/lang/String;

.field private final mWidth:I

.field private final mX:I

.field private final mY:I


# direct methods
.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "pAttributes"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;->mTMXObjectProperties:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    .line 36
    const-string v0, ""

    const-string v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;->mName:Ljava/lang/String;

    .line 37
    const-string v0, ""

    const-string v1, "type"

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;->mType:Ljava/lang/String;

    .line 38
    const-string v0, "x"

    invoke-static {p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;->mX:I

    .line 39
    const-string v0, "y"

    invoke-static {p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;->mY:I

    .line 40
    const-string v0, "width"

    invoke-static {p1, v0, v2}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;->mWidth:I

    .line 41
    const-string v0, "height"

    invoke-static {p1, v0, v2}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;->mHeight:I

    .line 42
    return-void
.end method


# virtual methods
.method public addTMXObjectProperty(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectProperty;)V
    .locals 1
    .param p1, "pTMXObjectProperty"    # Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectProperty;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;->mTMXObjectProperties:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;->mHeight:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTMXObjectProperties()Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;->mTMXObjectProperties:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;->mWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;->mY:I

    return v0
.end method
