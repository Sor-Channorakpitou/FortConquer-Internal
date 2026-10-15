.class public Lcom/droidhen/andplugin/FlashMotionCache;
.super Ljava/lang/Object;
.source "FlashMotionCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;,
        Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    }
.end annotation


# static fields
.field public static INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;


# instance fields
.field private flashMotionInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/droidhen/andplugin/FlashMotionCache;

    invoke-direct {v0}, Lcom/droidhen/andplugin/FlashMotionCache;-><init>()V

    sput-object v0, Lcom/droidhen/andplugin/FlashMotionCache;->INSTANCE:Lcom/droidhen/andplugin/FlashMotionCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/droidhen/andplugin/FlashMotionCache;->flashMotionInfoCache:Ljava/util/HashMap;

    .line 22
    return-void
.end method

.method private findElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 221
    .local v3, "nlist":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 222
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 231
    return-object v4

    .line 223
    :cond_0
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 224
    .local v0, "child":Lorg/w3c/dom/Node;
    instance-of v6, v0, Lorg/w3c/dom/Element;

    if-eqz v6, :cond_2

    move-object v1, v0

    .line 225
    check-cast v1, Lorg/w3c/dom/Element;

    .line 226
    .local v1, "ele":Lorg/w3c/dom/Element;
    if-eqz p2, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 227
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v1    # "ele":Lorg/w3c/dom/Element;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getMotionInfo(Lorg/w3c/dom/Element;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    .locals 22
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 174
    new-instance v11, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    invoke-direct {v11}, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;-><init>()V

    .line 175
    .local v11, "motionInfo":Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    const-string v20, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->duration:I

    .line 177
    const-string v20, "source"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/droidhen/andplugin/FlashMotionCache;->findElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 178
    .local v3, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "Source"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/droidhen/andplugin/FlashMotionCache;->findElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 179
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "frameRate"

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "frameRateStr":Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "x"

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 181
    .local v15, "pXStr":Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "y"

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 182
    .local v16, "pYStr":Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "scaleX"

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 183
    .local v13, "pScaleXStr":Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "scaleY"

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 184
    .local v14, "pScaleYStr":Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "rotation"

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 185
    .local v12, "pRotationStr":Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "elementType"

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "elementType":Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "dimensions"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/droidhen/andplugin/FlashMotionCache;->findElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 188
    .local v4, "dChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "geom:Rectangle"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/droidhen/andplugin/FlashMotionCache;->findElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 189
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "left"

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 190
    .local v10, "leftStr":Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "top"

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 191
    .local v18, "topStr":Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "width"

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 192
    .local v19, "widthStr":Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "height"

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, "heightStr":Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "transformationPoint"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/droidhen/andplugin/FlashMotionCache;->findElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 195
    .local v17, "tChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "geom:Point"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/droidhen/andplugin/FlashMotionCache;->findElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 196
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "x"

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, "geomPointXStr":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v21, "y"

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 199
    .local v8, "geomPointYStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->frameRate:I

    .line 200
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pX:F

    .line 201
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pY:F

    .line 202
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pScaleX:F

    .line 203
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pScaleY:F

    .line 204
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->pRotation:F

    .line 205
    iput-object v5, v11, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->elementType:Ljava/lang/String;

    .line 206
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->top:F

    .line 207
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->left:F

    .line 208
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->width:F

    .line 209
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->height:F

    .line 210
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->geomPointX:F

    .line 211
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->geomPointY:F

    .line 213
    const-string v20, "Keyframe"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/droidhen/andplugin/FlashMotionCache;->findElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 214
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/droidhen/andplugin/FlashMotionCache;->parseKeyFrameInfo(Ljava/util/ArrayList;Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;)V

    .line 215
    return-object v11
.end method

.method private parseKeyFrameInfo(Ljava/util/ArrayList;Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;)V
    .locals 19
    .param p2, "motionInfo"    # Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Element;",
            ">;",
            "Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "keyFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 90
    .local v4, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v4, :cond_0

    .line 170
    return-void

    .line 91
    :cond_0
    new-instance v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;

    invoke-direct {v10}, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;-><init>()V

    .line 93
    .local v10, "info":Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 95
    .local v6, "element":Lorg/w3c/dom/Element;
    const-string v17, "index"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "indexStr":Ljava/lang/String;
    const-string v17, "firstFrame"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "firstFrameStr":Ljava/lang/String;
    const-string v17, "rotation"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 98
    .local v16, "rotationStr":Ljava/lang/String;
    const-string v17, "x"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 99
    .local v14, "pXStr":Ljava/lang/String;
    const-string v17, "y"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 100
    .local v15, "pYStr":Ljava/lang/String;
    const-string v17, "scaleX"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 101
    .local v12, "pScaleXStr":Ljava/lang/String;
    const-string v17, "scaleY"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 102
    .local v13, "pScaleYStr":Ljava/lang/String;
    const-string v17, "blank"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 104
    .local v11, "pBlankStr":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->index:I

    .line 105
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1

    .line 106
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->firstFrame:I

    .line 107
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_2

    .line 108
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->rotation:F

    .line 109
    :cond_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_3

    .line 110
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pX:F

    .line 111
    :cond_3
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_4

    .line 112
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pY:F

    .line 113
    :cond_4
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_5

    .line 114
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleX:F

    .line 115
    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_6

    .line 116
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleY:F

    .line 117
    :cond_6
    const-string v17, "blank"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_e

    .line 118
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    iput-boolean v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->bBlank:Z

    .line 121
    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v8, v0, :cond_8

    const-string v17, "rotation"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 123
    const-string v17, "skewX"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    const-string v17, "skewY"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 125
    const-string v17, "skewX"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 126
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_7

    .line 127
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->rotation:F

    .line 128
    :cond_7
    const-string v17, "skewY"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 129
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_8

    .line 130
    iget v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->rotation:F

    move/from16 v17, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    add-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->rotation:F

    .line 141
    :cond_8
    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v8, v0, :cond_9

    const-string v17, "x"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 143
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->keyFrameCache:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->keyFrameCache:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pX:F

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pX:F

    .line 145
    :cond_9
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v8, v0, :cond_a

    const-string v17, "y"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 147
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->keyFrameCache:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->keyFrameCache:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pY:F

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pY:F

    .line 149
    :cond_a
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v8, v0, :cond_b

    const-string v17, "scaleX"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 151
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->keyFrameCache:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->keyFrameCache:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleX:F

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleX:F

    .line 153
    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v8, v0, :cond_c

    const-string v17, "scaleY"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 155
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->keyFrameCache:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->keyFrameCache:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleY:F

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->pScaleY:F

    .line 158
    :cond_c
    const-string v17, "tweens"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lcom/droidhen/andplugin/FlashMotionCache;->findElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 159
    .local v3, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_d

    .line 161
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Element;

    const-string v18, "SimpleEase"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/droidhen/andplugin/FlashMotionCache;->findElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 162
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Element;

    const-string v18, "ease"

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "easeStr":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->ease:F

    .line 166
    .end local v5    # "easeStr":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->keyFrameCache:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 119
    .end local v3    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    :cond_e
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->bBlank:Z

    goto/16 :goto_1

    .line 132
    :cond_f
    const-string v17, "skewX"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 134
    const-string v17, "skewX"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 135
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_8

    .line 136
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->rotation:F

    goto/16 :goto_2

    .line 139
    :cond_10
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->keyFrameCache:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->keyFrameCache:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->rotation:F

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;->rotation:F

    goto/16 :goto_2
.end method

.method private parseMotion(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    .locals 5
    .param p1, "assetMgr"    # Landroid/content/res/AssetManager;
    .param p2, "motionFullPath"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    invoke-static {p1, p2}, Lcom/droidhen/andplugin/XMLUtil;->openDocument(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 78
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 79
    .local v3, "root":Lorg/w3c/dom/Element;
    invoke-direct {p0, v3}, Lcom/droidhen/andplugin/FlashMotionCache;->getMotionInfo(Lorg/w3c/dom/Element;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    move-result-object v2

    .line 80
    .local v2, "motionInfo":Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    iput-object p2, v2, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->fileFullPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return-object v2

    .line 83
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "motionInfo":Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    .end local v3    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public getMotionInfos(Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v1, p0, Lcom/droidhen/andplugin/FlashMotionCache;->flashMotionInfoCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    .line 30
    .local v0, "info":Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    return-object v0
.end method

.method public initMotionInfos(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    .locals 4
    .param p1, "assetMgr"    # Landroid/content/res/AssetManager;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v2, p0, Lcom/droidhen/andplugin/FlashMotionCache;->flashMotionInfoCache:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    .line 35
    .local v0, "info":Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
    if-nez v0, :cond_0

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "motionFullPath":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/droidhen/andplugin/FlashMotionCache;->parseMotion(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;

    move-result-object v0

    .line 38
    iget-object v2, p0, Lcom/droidhen/andplugin/FlashMotionCache;->flashMotionInfoCache:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .end local v1    # "motionFullPath":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public restoreMotionData(Ljava/io/InputStream;)Z
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 62
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    .local v1, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/droidhen/andplugin/FlashMotionCache;->flashMotionInfoCache:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const/4 v2, 0x1

    .line 70
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    :goto_0
    return v2

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public saveMotionData(Ljava/io/FileOutputStream;)Z
    .locals 3
    .param p1, "fos"    # Ljava/io/FileOutputStream;

    .prologue
    .line 46
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 48
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    iget-object v2, p0, Lcom/droidhen/andplugin/FlashMotionCache;->flashMotionInfoCache:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 50
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/4 v2, 0x1

    .line 56
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    :goto_0
    return v2

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    const/4 v2, 0x0

    goto :goto_0
.end method
