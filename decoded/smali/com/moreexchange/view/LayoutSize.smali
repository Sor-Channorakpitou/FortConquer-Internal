.class public Lcom/moreexchange/view/LayoutSize;
.super Ljava/lang/Object;
.source "LayoutSize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moreexchange/view/LayoutSize$Data;
    }
.end annotation


# static fields
.field public static final CENTER:I = -0x1

.field public static final HEAD:I = -0x3

.field public static final TAIL:I = -0x2


# instance fields
.field private _currentData:Lcom/moreexchange/view/LayoutSize$Data;


# direct methods
.method public constructor <init>(Lcom/moreexchange/view/LayoutSize$Data;)V
    .locals 2
    .param p1, "standardData"    # Lcom/moreexchange/view/LayoutSize$Data;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/moreexchange/view/LayoutSize$Data;

    sget-object v1, Lcom/moreexchange/view/Screen;->CURRENT_SCREEN:Lcom/moreexchange/view/Screen;

    invoke-direct {v0, v1, p1}, Lcom/moreexchange/view/LayoutSize$Data;-><init>(Lcom/moreexchange/view/Screen;Lcom/moreexchange/view/LayoutSize$Data;)V

    iput-object v0, p0, Lcom/moreexchange/view/LayoutSize;->_currentData:Lcom/moreexchange/view/LayoutSize$Data;

    .line 62
    return-void
.end method

.method public static getFullSize()Lcom/moreexchange/view/LayoutSize;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 65
    sget-object v1, Lcom/moreexchange/view/Screen;->CURRENT_SCREEN:Lcom/moreexchange/view/Screen;

    .line 66
    .local v1, "scr":Lcom/moreexchange/view/Screen;
    new-instance v6, Lcom/moreexchange/view/LayoutSize;

    new-instance v0, Lcom/moreexchange/view/LayoutSize$Data;

    invoke-virtual {v1}, Lcom/moreexchange/view/Screen;->getWidth()I

    move-result v4

    .line 67
    invoke-virtual {v1}, Lcom/moreexchange/view/Screen;->getHeight()I

    move-result v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/moreexchange/view/LayoutSize$Data;-><init>(Lcom/moreexchange/view/Screen;IIII)V

    .line 66
    invoke-direct {v6, v0}, Lcom/moreexchange/view/LayoutSize;-><init>(Lcom/moreexchange/view/LayoutSize$Data;)V

    return-object v6
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/moreexchange/view/LayoutSize;->_currentData:Lcom/moreexchange/view/LayoutSize$Data;

    invoke-static {v0}, Lcom/moreexchange/view/LayoutSize$Data;->access$4(Lcom/moreexchange/view/LayoutSize$Data;)I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/moreexchange/view/LayoutSize;->_currentData:Lcom/moreexchange/view/LayoutSize$Data;

    invoke-static {v1}, Lcom/moreexchange/view/LayoutSize$Data;->access$0(Lcom/moreexchange/view/LayoutSize$Data;)Lcom/moreexchange/view/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/moreexchange/view/Screen;->getWidth()I

    move-result v0

    .line 73
    .local v0, "screenWidth":I
    iget-object v1, p0, Lcom/moreexchange/view/LayoutSize;->_currentData:Lcom/moreexchange/view/LayoutSize$Data;

    invoke-static {v1}, Lcom/moreexchange/view/LayoutSize$Data;->access$1(Lcom/moreexchange/view/LayoutSize$Data;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 81
    iget-object v1, p0, Lcom/moreexchange/view/LayoutSize;->_currentData:Lcom/moreexchange/view/LayoutSize$Data;

    invoke-static {v1}, Lcom/moreexchange/view/LayoutSize$Data;->access$1(Lcom/moreexchange/view/LayoutSize$Data;)I

    move-result v1

    :goto_0
    return v1

    .line 75
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v1, p0, Lcom/moreexchange/view/LayoutSize;->_currentData:Lcom/moreexchange/view/LayoutSize$Data;

    invoke-static {v1}, Lcom/moreexchange/view/LayoutSize$Data;->access$2(Lcom/moreexchange/view/LayoutSize$Data;)I

    move-result v1

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v1, p0, Lcom/moreexchange/view/LayoutSize;->_currentData:Lcom/moreexchange/view/LayoutSize$Data;

    invoke-static {v1}, Lcom/moreexchange/view/LayoutSize$Data;->access$2(Lcom/moreexchange/view/LayoutSize$Data;)I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getTop()I
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lcom/moreexchange/view/LayoutSize;->_currentData:Lcom/moreexchange/view/LayoutSize$Data;

    invoke-static {v1}, Lcom/moreexchange/view/LayoutSize$Data;->access$0(Lcom/moreexchange/view/LayoutSize$Data;)Lcom/moreexchange/view/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/moreexchange/view/Screen;->getHeight()I

    move-result v0

    .line 86
    .local v0, "screenHeight":I
    iget-object v1, p0, Lcom/moreexchange/view/LayoutSize;->_currentData:Lcom/moreexchange/view/LayoutSize$Data;

    invoke-static {v1}, Lcom/moreexchange/view/LayoutSize$Data;->access$3(Lcom/moreexchange/view/LayoutSize$Data;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 94
    iget-object v1, p0, Lcom/moreexchange/view/LayoutSize;->_currentData:Lcom/moreexchange/view/LayoutSize$Data;

    invoke-static {v1}, Lcom/moreexchange/view/LayoutSize$Data;->access$3(Lcom/moreexchange/view/LayoutSize$Data;)I

    move-result v1

    :goto_0
    return v1

    .line 88
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v1, p0, Lcom/moreexchange/view/LayoutSize;->_currentData:Lcom/moreexchange/view/LayoutSize$Data;

    invoke-static {v1}, Lcom/moreexchange/view/LayoutSize$Data;->access$4(Lcom/moreexchange/view/LayoutSize$Data;)I

    move-result v1

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object v1, p0, Lcom/moreexchange/view/LayoutSize;->_currentData:Lcom/moreexchange/view/LayoutSize$Data;

    invoke-static {v1}, Lcom/moreexchange/view/LayoutSize$Data;->access$4(Lcom/moreexchange/view/LayoutSize$Data;)I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/moreexchange/view/LayoutSize;->_currentData:Lcom/moreexchange/view/LayoutSize$Data;

    invoke-static {v0}, Lcom/moreexchange/view/LayoutSize$Data;->access$2(Lcom/moreexchange/view/LayoutSize$Data;)I

    move-result v0

    return v0
.end method
