.class public Lcom/moreexchange/view/LayoutSize$Data;
.super Ljava/lang/Object;
.source "LayoutSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moreexchange/view/LayoutSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private _height:I

.field private _left:I

.field private _parentHeight:F

.field private _parentWidth:F

.field private _screen:Lcom/moreexchange/view/Screen;

.field private _top:I

.field private _width:I


# direct methods
.method public constructor <init>(Lcom/moreexchange/view/Screen;IIII)V
    .locals 8
    .param p1, "screen"    # Lcom/moreexchange/view/Screen;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v6, -0x1

    .line 25
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/moreexchange/view/LayoutSize$Data;-><init>(Lcom/moreexchange/view/Screen;IIIIII)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/moreexchange/view/Screen;IIIIII)V
    .locals 1
    .param p1, "screen"    # Lcom/moreexchange/view/Screen;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "parentWidth"    # I
    .param p7, "parentHeight"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/moreexchange/view/LayoutSize$Data;->_screen:Lcom/moreexchange/view/Screen;

    .line 16
    iput p2, p0, Lcom/moreexchange/view/LayoutSize$Data;->_left:I

    .line 17
    iput p3, p0, Lcom/moreexchange/view/LayoutSize$Data;->_top:I

    .line 18
    iput p4, p0, Lcom/moreexchange/view/LayoutSize$Data;->_width:I

    .line 19
    iput p5, p0, Lcom/moreexchange/view/LayoutSize$Data;->_height:I

    .line 20
    int-to-float v0, p7

    iput v0, p0, Lcom/moreexchange/view/LayoutSize$Data;->_parentHeight:F

    .line 21
    int-to-float v0, p6

    iput v0, p0, Lcom/moreexchange/view/LayoutSize$Data;->_parentWidth:F

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/moreexchange/view/Screen;Lcom/moreexchange/view/LayoutSize$Data;)V
    .locals 11
    .param p1, "screen"    # Lcom/moreexchange/view/Screen;
    .param p2, "seed"    # Lcom/moreexchange/view/LayoutSize$Data;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/moreexchange/view/LayoutSize$Data;->_screen:Lcom/moreexchange/view/Screen;

    .line 30
    iget-object v7, p0, Lcom/moreexchange/view/LayoutSize$Data;->_screen:Lcom/moreexchange/view/Screen;

    invoke-virtual {v7}, Lcom/moreexchange/view/Screen;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v10

    iget-object v8, p2, Lcom/moreexchange/view/LayoutSize$Data;->_screen:Lcom/moreexchange/view/Screen;

    invoke-virtual {v8}, Lcom/moreexchange/view/Screen;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 31
    .local v5, "scaleX":F
    iget-object v7, p0, Lcom/moreexchange/view/LayoutSize$Data;->_screen:Lcom/moreexchange/view/Screen;

    invoke-virtual {v7}, Lcom/moreexchange/view/Screen;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v10

    iget-object v8, p2, Lcom/moreexchange/view/LayoutSize$Data;->_screen:Lcom/moreexchange/view/Screen;

    invoke-virtual {v8}, Lcom/moreexchange/view/Screen;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 32
    .local v6, "scaleY":F
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 33
    .local v4, "scale":F
    iget v7, p2, Lcom/moreexchange/view/LayoutSize$Data;->_width:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    iput v7, p0, Lcom/moreexchange/view/LayoutSize$Data;->_width:I

    .line 34
    iget v7, p2, Lcom/moreexchange/view/LayoutSize$Data;->_height:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    iput v7, p0, Lcom/moreexchange/view/LayoutSize$Data;->_height:I

    .line 35
    iget v7, p2, Lcom/moreexchange/view/LayoutSize$Data;->_parentWidth:F

    mul-float/2addr v7, v4

    iput v7, p0, Lcom/moreexchange/view/LayoutSize$Data;->_parentWidth:F

    .line 36
    iget v7, p2, Lcom/moreexchange/view/LayoutSize$Data;->_parentHeight:F

    mul-float/2addr v7, v4

    iput v7, p0, Lcom/moreexchange/view/LayoutSize$Data;->_parentHeight:F

    .line 37
    iget v7, p2, Lcom/moreexchange/view/LayoutSize$Data;->_left:I

    if-gez v7, :cond_0

    .line 38
    iget v7, p2, Lcom/moreexchange/view/LayoutSize$Data;->_left:I

    iput v7, p0, Lcom/moreexchange/view/LayoutSize$Data;->_left:I

    .line 45
    :goto_0
    iget v7, p2, Lcom/moreexchange/view/LayoutSize$Data;->_top:I

    if-gez v7, :cond_3

    .line 46
    iget v7, p2, Lcom/moreexchange/view/LayoutSize$Data;->_top:I

    iput v7, p0, Lcom/moreexchange/view/LayoutSize$Data;->_top:I

    .line 55
    :goto_1
    return-void

    .line 40
    :cond_0
    iget v7, p0, Lcom/moreexchange/view/LayoutSize$Data;->_parentWidth:F

    cmpg-float v7, v7, v9

    if-gez v7, :cond_1

    invoke-virtual {p1}, Lcom/moreexchange/view/Screen;->getWidth()I

    move-result v7

    int-to-float v2, v7

    .line 41
    .local v2, "pw":F
    :goto_2
    iget v7, p2, Lcom/moreexchange/view/LayoutSize$Data;->_parentWidth:F

    cmpg-float v7, v7, v9

    if-gez v7, :cond_2

    iget-object v7, p2, Lcom/moreexchange/view/LayoutSize$Data;->_screen:Lcom/moreexchange/view/Screen;

    .line 42
    invoke-virtual {v7}, Lcom/moreexchange/view/Screen;->getWidth()I

    move-result v7

    int-to-float v3, v7

    .line 43
    .local v3, "pwInSeed":F
    :goto_3
    iget v7, p2, Lcom/moreexchange/view/LayoutSize$Data;->_left:I

    int-to-float v7, v7

    iget v8, p2, Lcom/moreexchange/view/LayoutSize$Data;->_width:I

    int-to-float v8, v8

    sub-float v8, v3, v8

    div-float/2addr v7, v8

    iget v8, p0, Lcom/moreexchange/view/LayoutSize$Data;->_width:I

    int-to-float v8, v8

    sub-float v8, v2, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/moreexchange/view/LayoutSize$Data;->_left:I

    goto :goto_0

    .line 40
    .end local v2    # "pw":F
    .end local v3    # "pwInSeed":F
    :cond_1
    iget v2, p0, Lcom/moreexchange/view/LayoutSize$Data;->_parentWidth:F

    goto :goto_2

    .line 42
    .restart local v2    # "pw":F
    :cond_2
    iget v3, p2, Lcom/moreexchange/view/LayoutSize$Data;->_parentWidth:F

    goto :goto_3

    .line 48
    .end local v2    # "pw":F
    :cond_3
    iget v7, p0, Lcom/moreexchange/view/LayoutSize$Data;->_parentHeight:F

    cmpg-float v7, v7, v9

    if-gez v7, :cond_4

    invoke-virtual {p1}, Lcom/moreexchange/view/Screen;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 50
    .local v0, "ph":F
    :goto_4
    iget v7, p2, Lcom/moreexchange/view/LayoutSize$Data;->_parentHeight:F

    cmpg-float v7, v7, v9

    if-gez v7, :cond_5

    iget-object v7, p2, Lcom/moreexchange/view/LayoutSize$Data;->_screen:Lcom/moreexchange/view/Screen;

    .line 51
    invoke-virtual {v7}, Lcom/moreexchange/view/Screen;->getHeight()I

    move-result v7

    int-to-float v1, v7

    .line 52
    .local v1, "phInSeed":F
    :goto_5
    iget v7, p2, Lcom/moreexchange/view/LayoutSize$Data;->_top:I

    int-to-float v7, v7

    iget v8, p2, Lcom/moreexchange/view/LayoutSize$Data;->_height:I

    int-to-float v8, v8

    sub-float v8, v1, v8

    div-float/2addr v7, v8

    iget v8, p0, Lcom/moreexchange/view/LayoutSize$Data;->_height:I

    int-to-float v8, v8

    sub-float v8, v0, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/moreexchange/view/LayoutSize$Data;->_top:I

    goto :goto_1

    .line 49
    .end local v0    # "ph":F
    .end local v1    # "phInSeed":F
    :cond_4
    iget v0, p0, Lcom/moreexchange/view/LayoutSize$Data;->_parentHeight:F

    goto :goto_4

    .line 51
    .restart local v0    # "ph":F
    :cond_5
    iget v1, p2, Lcom/moreexchange/view/LayoutSize$Data;->_parentHeight:F

    goto :goto_5
.end method

.method static synthetic access$0(Lcom/moreexchange/view/LayoutSize$Data;)Lcom/moreexchange/view/Screen;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/moreexchange/view/LayoutSize$Data;->_screen:Lcom/moreexchange/view/Screen;

    return-object v0
.end method

.method static synthetic access$1(Lcom/moreexchange/view/LayoutSize$Data;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/moreexchange/view/LayoutSize$Data;->_left:I

    return v0
.end method

.method static synthetic access$2(Lcom/moreexchange/view/LayoutSize$Data;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/moreexchange/view/LayoutSize$Data;->_width:I

    return v0
.end method

.method static synthetic access$3(Lcom/moreexchange/view/LayoutSize$Data;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/moreexchange/view/LayoutSize$Data;->_top:I

    return v0
.end method

.method static synthetic access$4(Lcom/moreexchange/view/LayoutSize$Data;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/moreexchange/view/LayoutSize$Data;->_height:I

    return v0
.end method
