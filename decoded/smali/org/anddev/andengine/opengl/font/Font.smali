.class public Lorg/anddev/andengine/opengl/font/Font;
.super Ljava/lang/Object;
.source "Font.java"


# static fields
.field protected static final LETTER_EXTRA_WIDTH:I = 0xa

.field protected static final LETTER_LEFT_OFFSET:F = 0.0f

.field protected static final PADDING:I = 0x1


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field protected final mCanvas:Landroid/graphics/Canvas;

.field private final mCreateLetterTemporarySize:Lorg/anddev/andengine/opengl/font/Size;

.field private mCurrentTextureX:I

.field private mCurrentTextureY:I

.field protected final mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private final mGetLetterBitmapTemporaryRect:Landroid/graphics/Rect;

.field private final mGetLetterBoundsTemporaryRect:Landroid/graphics/Rect;

.field private final mGetStringWidthTemporaryRect:Landroid/graphics/Rect;

.field private final mLettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/font/Letter;",
            ">;"
        }
    .end annotation
.end field

.field private final mLineGap:I

.field private final mLineHeight:I

.field private final mManagedCharacterToLetterMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/anddev/andengine/opengl/font/Letter;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPaint:Landroid/graphics/Paint;

.field private final mTemporaryTextWidthFetchers:[F

.field private final mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

.field private final mTextureHeight:F

.field private final mTextureWidth:F


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V
    .locals 3
    .param p1, "pTexture"    # Lorg/anddev/andengine/opengl/texture/ITexture;
    .param p2, "pTypeface"    # Landroid/graphics/Typeface;
    .param p3, "pSize"    # F
    .param p4, "pAntiAlias"    # Z
    .param p5, "pColor"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureX:I

    .line 46
    iput v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureY:I

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mManagedCharacterToLetterMap:Landroid/util/SparseArray;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mLettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Lorg/anddev/andengine/opengl/font/Size;

    invoke-direct {v0}, Lorg/anddev/andengine/opengl/font/Size;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mCreateLetterTemporarySize:Lorg/anddev/andengine/opengl/font/Size;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mGetLetterBitmapTemporaryRect:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mGetStringWidthTemporaryRect:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mGetLetterBoundsTemporaryRect:Landroid/graphics/Rect;

    .line 62
    new-array v0, v2, [F

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mTemporaryTextWidthFetchers:[F

    .line 64
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mCanvas:Landroid/graphics/Canvas;

    .line 71
    iput-object p1, p0, Lorg/anddev/andengine/opengl/font/Font;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    .line 72
    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mTextureWidth:F

    .line 73
    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mTextureHeight:F

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    .line 76
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 77
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 79
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 87
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mLineHeight:I

    .line 88
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->leading:F

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mLineGap:I

    .line 89
    iput v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureX:I

    iput v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureY:I

    .line 90
    return-void
.end method

.method private createLetter(C)Lorg/anddev/andengine/opengl/font/Letter;
    .locals 14
    .param p1, "pCharacter"    # C

    .prologue
    .line 183
    iget v13, p0, Lorg/anddev/andengine/opengl/font/Font;->mTextureWidth:F

    .line 184
    .local v13, "textureWidth":F
    iget v12, p0, Lorg/anddev/andengine/opengl/font/Font;->mTextureHeight:F

    .line 186
    .local v12, "textureHeight":F
    iget-object v9, p0, Lorg/anddev/andengine/opengl/font/Font;->mCreateLetterTemporarySize:Lorg/anddev/andengine/opengl/font/Size;

    .line 187
    .local v9, "createLetterTemporarySize":Lorg/anddev/andengine/opengl/font/Size;
    invoke-direct {p0, p1, v9}, Lorg/anddev/andengine/opengl/font/Font;->getLetterBounds(CLorg/anddev/andengine/opengl/font/Size;)V

    .line 189
    invoke-virtual {v9}, Lorg/anddev/andengine/opengl/font/Size;->getWidth()F

    move-result v11

    .line 190
    .local v11, "letterWidth":F
    invoke-virtual {v9}, Lorg/anddev/andengine/opengl/font/Size;->getHeight()F

    move-result v10

    .line 192
    .local v10, "letterHeight":F
    iget v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureX:I

    int-to-float v1, v1

    add-float/2addr v1, v11

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    cmpl-float v1, v1, v13

    if-ltz v1, :cond_0

    .line 193
    const/4 v1, 0x1

    iput v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureX:I

    .line 194
    iget v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureY:I

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/font/Font;->getLineGap()I

    move-result v2

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/font/Font;->getLineHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureY:I

    .line 197
    :cond_0
    iget v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureX:I

    int-to-float v1, v1

    div-float v5, v1, v13

    .line 198
    .local v5, "letterTextureX":F
    iget v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureY:I

    int-to-float v1, v1

    div-float v6, v1, v12

    .line 199
    .local v6, "letterTextureY":F
    div-float v7, v11, v13

    .line 200
    .local v7, "letterTextureWidth":F
    div-float v8, v10, v12

    .line 202
    .local v8, "letterTextureHeight":F
    new-instance v0, Lorg/anddev/andengine/opengl/font/Letter;

    invoke-direct {p0, p1}, Lorg/anddev/andengine/opengl/font/Font;->getLetterAdvance(C)I

    move-result v2

    float-to-int v3, v11

    float-to-int v4, v10

    move v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/anddev/andengine/opengl/font/Letter;-><init>(CIIIFFFF)V

    .line 203
    .local v0, "letter":Lorg/anddev/andengine/opengl/font/Letter;
    iget v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureX:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v1, v13

    iput v1, v0, Lorg/anddev/andengine/opengl/font/Letter;->sourceLayoutX:F

    .line 204
    iget v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureY:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v1, v12

    iput v1, v0, Lorg/anddev/andengine/opengl/font/Letter;->sourceLayoutY:F

    .line 206
    iget v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureX:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v2, v11

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureX:I

    .line 208
    return-object v0
.end method

.method private getLetterAdvance(C)I
    .locals 3
    .param p1, "pCharacter"    # C

    .prologue
    .line 127
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mTemporaryTextWidthFetchers:[F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 128
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mTemporaryTextWidthFetchers:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getLetterBitmap(C)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "pCharacter"    # C

    .prologue
    const/4 v10, 0x2

    const/4 v1, 0x0

    .line 132
    iget-object v8, p0, Lorg/anddev/andengine/opengl/font/Font;->mGetLetterBitmapTemporaryRect:Landroid/graphics/Rect;

    .line 133
    .local v8, "getLetterBitmapTemporaryRect":Landroid/graphics/Rect;
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "characterAsString":Ljava/lang/String;
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v7, v2, v3, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 136
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/font/Font;->getLineHeight()I

    move-result v9

    .line 137
    .local v9, "lineHeight":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ge v0, v10, :cond_0

    .line 138
    .local v10, "width":I
    :goto_0
    add-int/lit8 v0, v10, 0x2

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v2, v9, 0x2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 139
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lorg/anddev/andengine/opengl/font/Font;->mBackgroundPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 145
    invoke-virtual {p0, v7}, Lorg/anddev/andengine/opengl/font/Font;->drawCharacterString(Ljava/lang/String;)V

    .line 147
    return-object v6

    .line 137
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "width":I
    :cond_0
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    goto :goto_0
.end method

.method private getLetterBounds(CLorg/anddev/andengine/opengl/font/Size;)V
    .locals 5
    .param p1, "pCharacter"    # C
    .param p2, "pSize"    # Lorg/anddev/andengine/opengl/font/Size;

    .prologue
    .line 160
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/anddev/andengine/opengl/font/Font;->mGetLetterBoundsTemporaryRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 161
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mGetLetterBoundsTemporaryRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/font/Font;->getLineHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/anddev/andengine/opengl/font/Size;->set(II)V

    .line 162
    return-void
.end method


# virtual methods
.method protected drawCharacterString(Ljava/lang/String;)V
    .locals 4
    .param p1, "pCharacterAsString"    # Ljava/lang/String;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 151
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    add-float/2addr v1, v3

    iget-object v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 152
    return-void
.end method

.method public declared-synchronized getLetter(C)Lorg/anddev/andengine/opengl/font/Letter;
    .locals 3
    .param p1, "pCharacter"    # C

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mManagedCharacterToLetterMap:Landroid/util/SparseArray;

    .line 172
    .local v1, "managedCharacterToLetterMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/anddev/andengine/opengl/font/Letter;>;"
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/font/Letter;

    .line 173
    .local v0, "letter":Lorg/anddev/andengine/opengl/font/Letter;
    if-nez v0, :cond_0

    .line 174
    invoke-direct {p0, p1}, Lorg/anddev/andengine/opengl/font/Font;->createLetter(C)Lorg/anddev/andengine/opengl/font/Letter;

    move-result-object v0

    .line 176
    iget-object v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mLettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    monitor-exit p0

    return-object v0

    .line 171
    .end local v0    # "letter":Lorg/anddev/andengine/opengl/font/Letter;
    .end local v1    # "managedCharacterToLetterMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/anddev/andengine/opengl/font/Letter;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getLineGap()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mLineGap:I

    return v0
.end method

.method public getLineHeight()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mLineHeight:I

    return v0
.end method

.method public getStringWidth(Ljava/lang/String;)I
    .locals 4
    .param p1, "pText"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lorg/anddev/andengine/opengl/font/Font;->mGetStringWidthTemporaryRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 156
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mGetStringWidthTemporaryRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    return-object v0
.end method

.method public varargs prepareLetters([C)V
    .locals 3
    .param p1, "pCharacters"    # [C

    .prologue
    .line 165
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 168
    return-void

    .line 165
    :cond_0
    aget-char v0, p1, v1

    .line 166
    .local v0, "character":C
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/opengl/font/Font;->getLetter(C)Lorg/anddev/andengine/opengl/font/Letter;

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized reload()V
    .locals 4

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mLettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;

    .line 118
    .local v1, "lettersPendingToBeDrawnToTexture":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/font/Letter;>;"
    iget-object v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mManagedCharacterToLetterMap:Landroid/util/SparseArray;

    .line 121
    .local v2, "managedCharacterToLetterMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/anddev/andengine/opengl/font/Letter;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 124
    monitor-exit p0

    return-void

    .line 122
    :cond_0
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/anddev/andengine/opengl/font/Letter;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    .end local v1    # "lettersPendingToBeDrawnToTexture":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/font/Letter;>;"
    .end local v2    # "managedCharacterToLetterMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/anddev/andengine/opengl/font/Letter;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized update(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/anddev/andengine/opengl/font/Font;->mLettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;

    .line 213
    .local v3, "lettersPendingToBeDrawnToTexture":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/font/Letter;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 214
    iget-object v6, p0, Lorg/anddev/andengine/opengl/font/Font;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v6, p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 216
    iget v5, p0, Lorg/anddev/andengine/opengl/font/Font;->mTextureWidth:F

    .line 217
    .local v5, "textureWidth":F
    iget v4, p0, Lorg/anddev/andengine/opengl/font/Font;->mTextureHeight:F

    .line 219
    .local v4, "textureHeight":F
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_1

    .line 228
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .end local v1    # "i":I
    .end local v4    # "textureHeight":F
    .end local v5    # "textureWidth":F
    :cond_0
    monitor-exit p0

    return-void

    .line 220
    .restart local v1    # "i":I
    .restart local v4    # "textureHeight":F
    .restart local v5    # "textureWidth":F
    :cond_1
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/anddev/andengine/opengl/font/Letter;

    .line 221
    .local v2, "letter":Lorg/anddev/andengine/opengl/font/Letter;
    iget-char v6, v2, Lorg/anddev/andengine/opengl/font/Letter;->mCharacter:C

    invoke-direct {p0, v6}, Lorg/anddev/andengine/opengl/font/Font;->getLetterBitmap(C)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 224
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/16 v6, 0xde1

    const/4 v7, 0x0

    iget v8, v2, Lorg/anddev/andengine/opengl/font/Letter;->sourceLayoutX:F

    mul-float/2addr v8, v5

    float-to-int v8, v8

    iget v9, v2, Lorg/anddev/andengine/opengl/font/Letter;->sourceLayoutY:F

    mul-float/2addr v9, v4

    float-to-int v9, v9

    invoke-static {v6, v7, v8, v9, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 226
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 212
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "i":I
    .end local v2    # "letter":Lorg/anddev/andengine/opengl/font/Letter;
    .end local v3    # "lettersPendingToBeDrawnToTexture":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/font/Letter;>;"
    .end local v4    # "textureHeight":F
    .end local v5    # "textureWidth":F
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
