.class public Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;
.super Ljava/lang/Object;
.source "BlackPawnTextureBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Node"
.end annotation


# instance fields
.field private mChildA:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

.field private mChildB:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

.field private final mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

.field private mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "pLeft"    # I
    .param p2, "pTop"    # I
    .param p3, "pWidth"    # I
    .param p4, "pHeight"    # I

    .prologue
    .line 179
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;-><init>(IIII)V

    invoke-direct {p0, v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;)V
    .locals 0

    .prologue
    .line 182
    .local p1, "pRect":Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    .line 184
    return-void
.end method

.method static synthetic access$0(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    return-object v0
.end method

.method private createChildren(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIIII)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;
    .locals 7
    .param p1, "pTextureAtlasSource"    # Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;
    .param p2, "pTextureWidth"    # I
    .param p3, "pTextureHeight"    # I
    .param p4, "pTextureSpacing"    # I
    .param p5, "pDeltaWidth"    # I
    .param p6, "pDeltaHeight"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    .line 287
    .local v0, "rect":Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;"
    if-lt p5, p6, :cond_0

    .line 289
    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    .line 290
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getLeft()I

    move-result v2

    .line 291
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getTop()I

    move-result v3

    .line 292
    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v4

    add-int/2addr v4, p4

    .line 293
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getHeight()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;-><init>(IIII)V

    .line 289
    iput-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildA:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    .line 296
    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    .line 297
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getLeft()I

    move-result v2

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v3

    add-int/2addr v3, p4

    add-int/2addr v2, v3

    .line 298
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getTop()I

    move-result v3

    .line 299
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getWidth()I

    move-result v4

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v5

    add-int/2addr v5, p4

    sub-int/2addr v4, v5

    .line 300
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getHeight()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;-><init>(IIII)V

    .line 296
    iput-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildB:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    .line 319
    :goto_0
    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildA:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->insert(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;III)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    move-result-object v1

    return-object v1

    .line 304
    :cond_0
    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    .line 305
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getLeft()I

    move-result v2

    .line 306
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getTop()I

    move-result v3

    .line 307
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getWidth()I

    move-result v4

    .line 308
    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v5

    add-int/2addr v5, p4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;-><init>(IIII)V

    .line 304
    iput-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildA:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    .line 311
    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    .line 312
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getLeft()I

    move-result v2

    .line 313
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getTop()I

    move-result v3

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v4

    add-int/2addr v4, p4

    add-int/2addr v3, v4

    .line 314
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getWidth()I

    move-result v4

    .line 315
    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getHeight()I

    move-result v5

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v6

    add-int/2addr v6, p4

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;-><init>(IIII)V

    .line 311
    iput-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildB:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    goto :goto_0
.end method


# virtual methods
.method public getChildA()Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildA:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    return-object v0
.end method

.method public getChildB()Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildB:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    return-object v0
.end method

.method public getRect()Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    return-object v0
.end method

.method public insert(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;III)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;
    .locals 22
    .param p1, "pTextureAtlasSource"    # Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;
    .param p2, "pTextureWidth"    # I
    .param p3, "pTextureHeight"    # I
    .param p4, "pTextureSpacing"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildA:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildB:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    if-eqz v4, :cond_1

    .line 212
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildA:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->insert(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;III)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    move-result-object v13

    .line 213
    .local v13, "newNode":Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;"
    if-eqz v13, :cond_0

    move-object/from16 p0, v13

    .line 279
    .end local v13    # "newNode":Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;"
    .end local p0    # "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;
    :goto_0
    return-object p0

    .line 216
    .restart local v13    # "newNode":Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;"
    .restart local p0    # "this":Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildB:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->insert(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;III)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    move-result-object p0

    goto :goto_0

    .line 219
    .end local v13    # "newNode":Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;, "Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    if-eqz v4, :cond_2

    .line 220
    const/16 p0, 0x0

    goto :goto_0

    .line 223
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v20

    .line 224
    .local v20, "textureSourceWidth":I
    invoke-interface/range {p1 .. p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v18

    .line 226
    .local v18, "textureSourceHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    invoke-virtual {v4}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getWidth()I

    move-result v17

    .line 227
    .local v17, "rectWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    invoke-virtual {v4}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getHeight()I

    move-result v14

    .line 229
    .local v14, "rectHeight":I
    move/from16 v0, v20

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    move/from16 v0, v18

    if-le v0, v14, :cond_4

    .line 230
    :cond_3
    const/16 p0, 0x0

    goto :goto_0

    .line 233
    :cond_4
    add-int v21, v20, p4

    .line 234
    .local v21, "textureSourceWidthWithSpacing":I
    add-int v19, v18, p4

    .line 236
    .local v19, "textureSourceHeightWithSpacing":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    invoke-virtual {v4}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getLeft()I

    move-result v15

    .line 237
    .local v15, "rectLeft":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    invoke-virtual {v4}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getTop()I

    move-result v16

    .line 239
    .local v16, "rectTop":I
    move/from16 v0, v18

    if-ne v0, v14, :cond_5

    add-int v4, v16, v18

    move/from16 v0, p3

    if-ne v4, v0, :cond_5

    const/4 v11, 0x1

    .line 240
    .local v11, "fitToBottomWithoutSpacing":Z
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    add-int v4, v15, v20

    move/from16 v0, p2

    if-ne v4, v0, :cond_6

    const/4 v12, 0x1

    .line 242
    .local v12, "fitToRightWithoutSpacing":Z
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 243
    move/from16 v0, v19

    if-ne v0, v14, :cond_7

    .line 244
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    goto :goto_0

    .line 239
    .end local v11    # "fitToBottomWithoutSpacing":Z
    .end local v12    # "fitToRightWithoutSpacing":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 240
    .restart local v11    # "fitToBottomWithoutSpacing":Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 246
    .restart local v12    # "fitToRightWithoutSpacing":Z
    :cond_7
    if-eqz v11, :cond_8

    .line 247
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    goto/16 :goto_0

    .line 252
    :cond_8
    if-eqz v12, :cond_c

    .line 253
    move/from16 v0, v19

    if-ne v0, v14, :cond_9

    .line 254
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    goto/16 :goto_0

    .line 256
    :cond_9
    if-eqz v11, :cond_a

    .line 257
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    goto/16 :goto_0

    .line 259
    :cond_a
    move/from16 v0, v19

    if-le v0, v14, :cond_b

    .line 260
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 263
    :cond_b
    sub-int v9, v17, v20

    sub-int v10, v14, v19

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v4 .. v10}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->createChildren(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIIII)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    move-result-object p0

    goto/16 :goto_0

    .line 267
    :cond_c
    if-eqz v11, :cond_f

    .line 268
    move/from16 v0, v21

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 269
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    goto/16 :goto_0

    .line 271
    :cond_d
    move/from16 v0, v21

    move/from16 v1, v17

    if-le v0, v1, :cond_e

    .line 272
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 274
    :cond_e
    sub-int v9, v17, v21

    sub-int v10, v14, v18

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v4 .. v10}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->createChildren(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIIII)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    move-result-object p0

    goto/16 :goto_0

    .line 276
    :cond_f
    move/from16 v0, v21

    move/from16 v1, v17

    if-gt v0, v1, :cond_10

    move/from16 v0, v19

    if-le v0, v14, :cond_11

    .line 277
    :cond_10
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 279
    :cond_11
    sub-int v9, v17, v21

    sub-int v10, v14, v19

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v4 .. v10}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->createChildren(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIIII)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    move-result-object p0

    goto/16 :goto_0
.end method
