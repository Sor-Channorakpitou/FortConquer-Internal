.class Lcom/droidhen/fortconquer/component/Guide$1;
.super Lcom/droidhen/fortconquer/component/CoverWithHole;
.source "Guide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/component/Guide;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/component/Guide;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/component/Guide;FFFFFFFF)V
    .locals 9
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # F
    .param p5, "$anonymous3"    # F
    .param p6, "$anonymous4"    # F
    .param p7, "$anonymous5"    # F
    .param p8, "$anonymous6"    # F
    .param p9, "$anonymous7"    # F

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/component/Guide$1;->this$0:Lcom/droidhen/fortconquer/component/Guide;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 90
    invoke-direct/range {v0 .. v8}, Lcom/droidhen/fortconquer/component/CoverWithHole;-><init>(FFFFFFFF)V

    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/droidhen/fortconquer/component/CoverWithHole;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/component/Guide;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/component/Guide;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
