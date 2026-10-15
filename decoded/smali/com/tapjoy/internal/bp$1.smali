.class final Lcom/tapjoy/internal/bp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bt;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 12
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->i()V

    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->s()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    const-string v2, "y"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->s()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->t()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->j()V

    return-object v0
.end method
