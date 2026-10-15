.class public Lcom/moreexchange/view/Screen;
.super Ljava/lang/Object;
.source "Screen.java"


# static fields
.field public static CURRENT_SCREEN:Lcom/moreexchange/view/Screen;

.field public static final WVGA:Lcom/moreexchange/view/Screen;


# instance fields
.field private _height:I

.field private _width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4
    new-instance v0, Lcom/moreexchange/view/Screen;

    const/16 v1, 0x1e0

    const/16 v2, 0x320

    invoke-direct {v0, v1, v2}, Lcom/moreexchange/view/Screen;-><init>(II)V

    sput-object v0, Lcom/moreexchange/view/Screen;->WVGA:Lcom/moreexchange/view/Screen;

    .line 20
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/moreexchange/view/Screen;->_width:I

    .line 9
    iput p2, p0, Lcom/moreexchange/view/Screen;->_height:I

    .line 10
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/moreexchange/view/Screen;->_height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/moreexchange/view/Screen;->_width:I

    return v0
.end method
