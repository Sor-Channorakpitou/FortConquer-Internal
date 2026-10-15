.class public final Lcom/tapjoy/internal/am;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:F

.field private c:F

.field private d:I

.field private e:F

.field private f:I

.field private g:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/am;->a:Z

    .line 10
    iput v1, p0, Lcom/tapjoy/internal/am;->b:F

    .line 11
    iput v1, p0, Lcom/tapjoy/internal/am;->c:F

    .line 12
    iput v3, p0, Lcom/tapjoy/internal/am;->d:I

    .line 13
    iput v2, p0, Lcom/tapjoy/internal/am;->e:F

    .line 14
    iput v3, p0, Lcom/tapjoy/internal/am;->f:I

    .line 15
    iput v2, p0, Lcom/tapjoy/internal/am;->g:F

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/al;
    .locals 8

    .prologue
    .line 21
    new-instance v0, Lcom/tapjoy/internal/al;

    iget-boolean v1, p0, Lcom/tapjoy/internal/am;->a:Z

    iget v2, p0, Lcom/tapjoy/internal/am;->b:F

    iget v3, p0, Lcom/tapjoy/internal/am;->c:F

    iget v4, p0, Lcom/tapjoy/internal/am;->d:I

    iget v5, p0, Lcom/tapjoy/internal/am;->e:F

    iget v6, p0, Lcom/tapjoy/internal/am;->f:I

    iget v7, p0, Lcom/tapjoy/internal/am;->g:F

    invoke-direct/range {v0 .. v7}, Lcom/tapjoy/internal/al;-><init>(ZFFIFIF)V

    return-object v0
.end method
